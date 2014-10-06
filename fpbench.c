#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include <unistd.h>
#include <math.h>
#include <sys/time.h>

// There will be two arrays of test data for each test, and each will be sized so that, combined,
//	they will not exceed the 16KB data cache of the GCW Zero:
//  sizeof(float) == sizeof(int32_t) == 4; (4 * 1792) * 2 = 14336
//	Thanks to Nebuleon for the advice.
#define ASIZE	1792	
#ifdef PENTIUM_M
#define CACHE_SIZE_IN_WORDS 524288	// this is for my penium-M with 2MB cache
#else
#define CACHE_SIZE_IN_WORDS 65536	// Size of L2 cache in words, this is for a 256KB 32-bit L2 cache
#endif

float fval1[ASIZE], fval2[ASIZE], fresult[ASIZE];		// Float arrays: first operands, second operands, results
int32_t xval1[ASIZE], xval2[ASIZE], xresult[ASIZE];	// 16.16 Fixed-point arrays: first operands, second operands, results
static uint32_t dummy_array[CACHE_SIZE_IN_WORDS];	// Dummy array for flushing of 256KB L2 and 16KB L1 d-cache


// Fixed-point math routines:
#define f2x(x) ((int)((x) * 65536.0f))	 // convert float to 16.16 fixed point
#define x2f(x) ((float)(x) / 65536.0f)	// convert fixed point 16.16 to float
#define INT2FNUM(x) ((x)<<16) // Convert from 32-bit int to fixed number
#define FNUM2INT(x) ((x)>>16) // Convert from fixed number to 32-bit int
#define FMUL(x,y) (int)(((long long)(x)*(y))>>16)
#define FDIV(x,y) (int32_t)(((int64_t)x << 16) / y)
#define FSQRT(x) fpsqrt(x)

// Fast 16.16 fixed-point square root routine:
// Credit for this fast sqrt goes to Wilco Dijkstra http://www.finesse.demon.co.uk/steven/sqrt.html
#define iter1(N) \
    try = root + (1 << (N)); \
    if (n >= try << (N))   \
    {   n -= try << (N);   \
        root |= 2 << (N); \
    }
unsigned int fpsqrt (unsigned int n)
{
    unsigned int root = 0, try;
    iter1 (15);    iter1 (14);    iter1 (13);    iter1 (12);
    iter1 (11);    iter1 (10);    iter1 ( 9);    iter1 ( 8);
    iter1 ( 7);    iter1 ( 6);    iter1 ( 5);    iter1 ( 4);
    iter1 ( 3);    iter1 ( 2);    iter1 ( 1);    iter1 ( 0);
//    return root >> 1;
    return root << 7;	//senquack - convert to 16.16 fixed point while also dividing by 2
}

void flush_cache()
{
	for (int i = 0; i < CACHE_SIZE_IN_WORDS; i++) {
		dummy_array[i] = rand();
	}
}

uint64_t timer(int begin)
{
	static struct timeval begin_time = {.tv_sec=0, .tv_usec=0};
	struct timeval end_time = {.tv_sec=0, .tv_usec=0};
	if (begin) {
		// Begin timing and exit:
		sync();
		fflush(NULL);
		flush_cache();
		usleep(500000);
		gettimeofday(&begin_time,NULL);
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
//	printf("Operation took %llu microseconds.\n\n", usecs);
	return usecs;
}

uint64_t avg_of_3_runs(void (*benchmark)(uint32_t), int iterations)
{
	uint64_t a,b,c, avg_time;
	timer(1);
	benchmark(iterations);
	a = timer(0);
	timer(1);
	benchmark(iterations);
	b = timer(0);
	timer(1);
	benchmark(iterations);
	c = timer(0);
	avg_time = (a + b + c) / 3;
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
	return avg_time;
}

void fill_float_array(float *array, int all_positive)
{
	// Fill data array with fairly random distribution of numbers less than the value of 32768 (max a 16.16 FP can hold)
	for (int i = 0; i < ASIZE; i++) {
		int x,y;
		x = rand() + 1;
		y = rand() + 1;
		if (!all_positive) {
			x *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
			y *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
		}
		array[i] = (float)x / (float)y;
		// At this point, the numbers are not very large at all: randomly increase or decrease them:
		switch(rand() % 3) {
			case 0:
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
				if (array[i] >= 32767) {
					array[i] = 16384.16384;	// Nice median value
				} else if (array[i] <= -32767) {
					array[i] = -16384.16384;	// Nice median value
				}
				break;
			case 2:
				// Number has a one-in-three chance of becoming smaller:
				array[i] /= (rand()%10 + 1);	
				break;
			case 3:
				// Number has a one-in-three chance of being left along
				break;
			default:
				break;
		}
		if (array[i] == 0.0) array[i] = 0.12345; // We don't want any zeroes in the array
//		printf("n:%f\n", array[i]);
	}
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
		fixed_array[i] = f2x(float_array[i]);
//		if (FNUM2INT(fixed_array[i]) == 0) {
//			printf("Replacing 0 in fixed array with dummy value..\n");
//			printf("Old fixed-point value: %u, converted to int: %d\n", fixed_array[i], FNUM2INT(fixed_array[i]));
//			fixed_array[i] = f2x(314.159);	// don't want any zeroes in the array
//			num_corrections++;
//		}
	}
//	printf("number of corrections: %d\n", num_corrections);
}

void fill_arrays()
{
	/* NOTE: one of the arrays will have some numbers negative, the other array will have all positive:
	  	(fval1, for use with square root benchmark) */
	fill_float_array(fval1, 1);	// The 1 signifies that all values will be positive in this array
	fill_float_array(fval2, 0);
	fill_fixed_array_from_float_array(xval1, fval1);	
	fill_fixed_array_from_float_array(xval2, fval2);
}

void bench_float_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] - fval2[i];
		}
	}
}

void bench_fixed_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] - xval2[i];
		}
	}
}

void bench_subtraction(uint32_t iterations)
{
	fill_arrays();	
	printf("\nSUBTRACTION BENCHMARKS:\n");
	printf("\tFloat subtraction:\n\t");
	avg_of_3_runs(&bench_float_sub, iterations);
	printf("\tFixed-point 16.16 subtraction:\n\t");
	avg_of_3_runs(&bench_fixed_sub, iterations);
	printf("\tNote: skipping integer timing; will be same as fixed-point.\n");
}

void bench_float_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] + fval2[i];
		}
	}
}

void bench_fixed_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] + xval2[i];
		}
	}
}

void bench_addition(uint32_t iterations)
{
	fill_arrays();	
	printf("\nADDITION BENCHMARKS:\n");
	printf("\tFloat addition:\n\t");
	avg_of_3_runs(&bench_float_add, iterations);
	printf("\tFixed-point 16.16 addition:\n\t");
	avg_of_3_runs(&bench_fixed_add, iterations);
	printf("\tNote: skipping integer timing; will be same as fixed-point.\n");
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] * fval2[i];
		}
	}
}

void bench_fixed_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FMUL(xval1[i], xval2[i]);
		}
	}
}

void bench_integer_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] * xval2[i];
		}
	}
}

void bench_multiplication(uint32_t iterations)
{
	fill_arrays();	
	printf("\nMULTIPLICATION BENCHMARKS:\n");
	printf("\tFloat multiplication:\n\t");
	avg_of_3_runs(&bench_float_mul, iterations);
	bench_float_mul(iterations);
	printf("\tFixed-point 16.16 multiplication:\n\t");
	avg_of_3_runs(&bench_fixed_mul, iterations);
	printf("\tInteger multiplication:\n\t");
	avg_of_3_runs(&bench_integer_mul, iterations);
}

void bench_float_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] / fval2[i];
		}
	}
}

void bench_fixed_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FDIV(xval1[i], xval2[i]);
		}
	}
}

void bench_integer_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] / xval2[i];
		}
	}
}

void bench_division(uint32_t iterations)
{
	fill_arrays();	
	printf("\nDIVISION BENCHMARKS:\n");
	printf("\tFloat Division:\n\t");
	avg_of_3_runs(&bench_float_div, iterations);
	printf("\tFixed-point 16.16 Division:\n\t");
	avg_of_3_runs(&bench_fixed_div, iterations);
	printf("\tInteger Division:\n\t");
	avg_of_3_runs(&bench_integer_div, iterations);
}

void bench_float_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = sqrtf(fval1[i]);
		}
	}
}

void bench_fixed_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FSQRT(xval1[i]);
		}
	}
}

void bench_squareroot(uint32_t iterations)
{
	fill_arrays();	
	printf("\nSQUARE-ROOT BENCHMARKS:\n");
	printf("\tFloat Square Root:\n\t");
	avg_of_3_runs(&bench_float_sqrt, iterations);
	printf("\tFixed-point 16.16 Square Root:\n\t");
	avg_of_3_runs(&bench_fixed_sqrt, iterations);
}

int main(int argc, char **argv)
{
	srand(time(NULL));
	uint32_t iterations = 0;
	if (argc < 2) {
		printf("Missing argument: number of iterations\n");
		return 1;
	} else {
		iterations = atoi(argv[1]);
	}

	printf("32-bit Floating Point vs. 16.16 Fixed-point Math Speed Comparison\n");
	printf("Written by Dan Silsby  dansilsby <AT> gmail <DOT> com\n");
	printf("NOTE: before each benchmark is timed, sync(), fflush(),\n"
			"a L2 cache flush, and .5 second delay are all executed.\n");
	printf("Times reported are an average of 3 of these benchmark runs.\n\n");
	printf("Benchmark requested: %u iterations over %u-length arrays.\n", iterations, ASIZE);
	printf("Reported sizeof(float) on this architecture: %d\n\n", sizeof(float));

	bench_addition(iterations);
	bench_subtraction(iterations);
	bench_multiplication(iterations);
	bench_division(iterations);
	bench_squareroot(iterations);

	// Important: this is to ensure that the flushing of cache via dummy_array is never optimized out:
	return (dummy_array[0] == dummy_array[CACHE_SIZE_IN_WORDS-1]);
}
