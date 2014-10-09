#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include <unistd.h>
#include <math.h>
#include <sys/time.h>

/* There will be two arrays of test data for each test, and one results array.
 *	Each test data array will be sized so that, combined, they will not exceed 
 *	the 16KB data cache of the GCW Zero:
 * sizeof(float) == sizeof(int32_t) == 4; (4 * 1792) * 2 = 14336
 *	Thanks to Nebuleon for the advice.	*/
#define ASIZE_32BIT	1792					// NOTE: this must be a multiple of 32 to support loop-unrolling #defines
#define ASIZE_64BIT	(ASIZE_32BIT/2)

// In these arrays: *val1: first operands, *val2: second operands, *result: results of operation
float		fval1[ASIZE_32BIT], fval2[ASIZE_32BIT], fresult[ASIZE_32BIT];	// Float arrays
int32_t	xval1[ASIZE_32BIT], xval2[ASIZE_32BIT], xresult[ASIZE_32BIT];	// 16.16 Fixed-point array
double	dval1[ASIZE_64BIT], dval2[ASIZE_64BIT], dresult[ASIZE_64BIT];	// Double arrays
uint32_t	i32val1[ASIZE_32BIT], i32val2[ASIZE_32BIT], i32result[ASIZE_32BIT];	// 32-bit int arrays
uint64_t	i64val1[ASIZE_64BIT], i64val2[ASIZE_64BIT], i64result[ASIZE_64BIT];	// 64-bit int arrays	

// Fixed-point math routines:
#define f2x(x) ((int32_t)((x) * 65536.0f))	 // convert float to 16.16 fixed point
#define x2f(x) ((float)(x) / 65536.0f)	// convert fixed point 16.16 to float
#define INT2FNUM(x) ((x)<<16) // Convert from 32-bit int to fixed number
#define FNUM2INT(x) ((x)>>16) // Convert from fixed number to 32-bit int
#define FMUL(x,y) (int32_t)(((int64_t)(x)*(y))>>16)
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
//    return root >> 1;		// This was originally written for integer math
    return root << 7;	// Instead, convert to 16.16 fixed point while also dividing by 2
}

// the famous Quake square root
float magic_sqrt (float number)
{
   int32_t i;
   float f = 1.5, x = number/2, y = number;
   i  = * ( uint32_t * ) &y;
   i   = 0x5f3759df - ( i >> 1 );
   y = * ( float * ) &i;
   y = y * (f - x*y*y);
   return number * y;
}

// 64-bit double approximation of square root:
// (credit to http://www.azillionmonkeys.com/qed/sqroot.html)
double approximate_double_sqrt (double y) 
{
	double x, z, tempf;
	uint32_t *tfptr = ((uint32_t *)&tempf) + 1;

	tempf = y;
	*tfptr = (0xbfcdd90a - *tfptr)>>1; /* estimate of 1/sqrt(y) */
	x =  tempf;
	z =  y*0.5;                        /* hoist out the "/2"    */
	x = (1.5*x) - (x*x)*(x*z);         /* iteration formula     */
	x = (1.5*x) - (x*x)*(x*z);
	x = (1.5*x) - (x*x)*(x*z);
	x = (1.5*x) - (x*x)*(x*z);
	x = (1.5*x) - (x*x)*(x*z);
	return x*y;
}

uint64_t timer(int begin)
{
	static struct timeval begin_time = {.tv_sec=0, .tv_usec=0};
	struct timeval end_time = {.tv_sec=0, .tv_usec=0};
	if (begin) {
		// Begin timing and exit:
		sync();
		fflush(NULL);
		usleep(500000);
		gettimeofday(&begin_time,NULL);
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
	return usecs;
}

uint64_t avg_of_3_runs(void (*benchmark)(uint32_t), unsigned int iterations)
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

/* Fill data array with random distribution of numbers within min_range-max_range. */
void fill_float_array(float *array, double min_range, double max_range)
{
	for (int i = 0; i < ASIZE_32BIT; i++) {
		double tmp = drand48();	// Start with a random double between 0 and 1.0
		tmp *= (lrand48() % 2) ? 1.0 : max_range;	// Number has a 50% chance of being left this small value

		while (tmp < min_range) {
			tmp = drand48() * max_range;			// get a new number if it was below min_range
		}
		
		array[i] = (float)tmp;
	}
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
	for (int i = 0; i < ASIZE_32BIT; i++) {
		fixed_array[i] = f2x(float_array[i]);
	}
}

/* Fill data array with random distribution of numbers within min_range-max_range. */
void fill_double_array(double *array, double min_range, double max_range)
{
	for (int i = 0; i < ASIZE_64BIT; i++) {
		double tmp = drand48();	// Start with a random double between 0 and 1.0
		tmp *= (lrand48() % 2) ? 1.0 : max_range;	// Number has a 50% chance of being left a small value

		while (tmp < min_range) {
			tmp = drand48() * max_range;			// get a new number if it was below min_range
		}
				
		array[i] = tmp;
	}
}

/* Fill data array with random distribution of numbers within 1 to max_range.
 * Range specifications are limited in practicality to a choice of 2^32 or 2^16 
 */
void fill_i32_array(uint32_t *array, uint32_t max_range)
{
	for (int i = 0; i < ASIZE_32BIT; i++) {
		uint32_t tmp = 1;		// Ensure no division by zero
		if (max_range > 0xFFFF) {
			tmp = lrand48();	// Assign random 32-bit non-negative int
		} else {
			tmp = lrand48() % 0x10000;
		}

		if (tmp == 0) tmp++;		// Ensure no division-by-zero
		array[i] = tmp;
	}
}

/* Fill data array with random distribution of numbers within 1 to max_range.
 * Range specifications are limited in practicality to a choice of 2^64, 2^32, 2^16 
 */
void fill_i64_array(uint64_t *array, uint64_t max_range)
{
	for (int i = 0; i < ASIZE_64BIT; i++) {
		uint64_t tmp = 1;
		if (max_range > 0xFFFFFFFF) {				// Is our range greater than 2^32?
			tmp = (uint64_t)lrand48() << 32;		// 	Assign a random 32-bit number to upper half
			tmp |= (uint64_t)lrand48();			// 	And assign one to the lower half.
		} else if (max_range > 0xFFFF) {			// Is our range greater than 2^16?
			tmp = lrand48();							//		Assign random 32-bit number just to lower half.
		} else {
			tmp = lrand48() % 0x10000;		// Our range must be 1-2^16 
		}

		if (tmp == 0) tmp++;		// Ensure no division-by-zero
		array[i] = tmp;
	}
}

void bench_float_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
#elif MANUAL_UNROLL_4
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
			fresult[i] = fval1[i] + fval2[i];	 i++;
#endif
			fresult[i] = fval1[i] + fval2[i];
		}
	}
}

void bench_double_add(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit array is half as big as the others.
	iterations *= 2;
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_64BIT; i++) {
#ifdef MANUAL_UNROLL_32
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
#elif MANUAL_UNROLL_4
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
			dresult[i] = dval1[i] + dval2[i];	 i++;
#endif
			dresult[i] = dval1[i] + dval2[i];
		}
	}
}

void bench_fixed_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
#elif MANUAL_UNROLL_4
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
			xresult[i] = xval1[i] + xval2[i];	 i++;
#endif
			xresult[i] = xval1[i] + xval2[i];
		}
	}
}

void bench_i32_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
#elif MANUAL_UNROLL_4
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
			i32result[i] = i32val1[i] + i32val2[i];	 i++;
#endif
			i32result[i] = i32val1[i] + i32val2[i];
		}
	}
}

void bench_i64_add(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit array is half as big as the others.
	iterations *= 2;
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_64BIT; i++) {
#ifdef MANUAL_UNROLL_32
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
#elif MANUAL_UNROLL_4
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
			i64result[i] = i64val1[i] + i64val2[i];	 i++;
#endif
			i64result[i] = i64val1[i] + i64val2[i];
		}
	}
}

void bench_addition(uint32_t iterations)
{
	printf("\nADDITION BENCHMARKS:\n");
	printf("Float:\n\t");
	fill_float_array(fval1, 0.0001, 16383.0);		
	fill_float_array(fval2, 0.0001, 16383.0);		
	avg_of_3_runs(&bench_float_add, iterations);
	printf("Double:\n\t");
	fill_double_array(dval1, 0.0001, 16383.0);		
	fill_double_array(dval2, 0.0001, 16383.0);		
	avg_of_3_runs(&bench_double_add, iterations);
	printf("Fixed-point 16.16 (signed 32-bit integer):\n\t");
	fill_float_array(fval1, 0.0001, 16383.0);		
	fill_float_array(fval2, 0.0001, 16383.0);		
	fill_fixed_array_from_float_array(xval1, fval1);
	fill_fixed_array_from_float_array(xval2, fval2);
	avg_of_3_runs(&bench_fixed_add, iterations);
	printf("32-bit (unsigned) integer:\n\t");
	fill_i32_array(i32val1, 0xFFFFFFFF);
	fill_i32_array(i32val2, 0xFFFFFFFF);	
	avg_of_3_runs(&bench_i32_add, iterations);
	printf("64-bit integer:\n\t");
	fill_i64_array(i64val1, 0xFFFFFFFFFFFFFFFF);
	fill_i64_array(i64val2, 0xFFFFFFFFFFFFFFFF);
	avg_of_3_runs(&bench_i64_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
#elif MANUAL_UNROLL_4
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
			fresult[i] = fval1[i] * fval2[i];	i++;
#endif
			fresult[i] = fval1[i] * fval2[i];
		}
	}
}

void bench_double_mul(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit array is half as big as the others.
	iterations *= 2;
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_64BIT; i++) {
#ifdef MANUAL_UNROLL_32
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
#elif MANUAL_UNROLL_4
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
			dresult[i] = dval1[i] * dval2[i];	i++;
#endif
			dresult[i] = dval1[i] * dval2[i];
		}
	}
}

void bench_fixed_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
#elif MANUAL_UNROLL_4
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
			xresult[i] = FMUL(xval1[i], xval2[i]);		i++;
#endif
			xresult[i] = FMUL(xval1[i], xval2[i]);
		}
	}
}

void bench_i32_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
#elif MANUAL_UNROLL_4
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
			i32result[i] = i32val1[i] * i32val2[i];	i++;
#endif
			i32result[i] = i32val1[i] * i32val2[i];
		}
	}
}

void bench_i64_mul(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit array is half as big as the others.
	iterations *= 2;
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_64BIT; i++) {
#ifdef MANUAL_UNROLL_32
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
#elif MANUAL_UNROLL_4
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
			i64result[i] = i64val1[i] * i64val2[i];	i++;
#endif
			i64result[i] = i64val1[i] * i64val2[i];
		}
	}
}

void bench_multiplication(uint32_t iterations)
{
	printf("\nMULTIPLICATION BENCHMARKS:\n");
	printf("Float:\n\t");
	fill_float_array(fval1, 0.001, 181.0);		
	fill_float_array(fval2, 0.001, 181.0);
	avg_of_3_runs(&bench_float_mul, iterations);
	printf("Double:\n\t");
	fill_double_array(dval1, 0.001, 181.0);		
	fill_double_array(dval2, 0.001, 181.0);
	avg_of_3_runs(&bench_double_mul, iterations);
	printf("Fixed-point:\n\t");
	fill_float_array(fval1, 0.001, 181.0);		// Don't want overflow
	fill_float_array(fval2, 0.001, 181.0);
	fill_fixed_array_from_float_array(xval1, fval1);
	fill_fixed_array_from_float_array(xval2, fval2);
	avg_of_3_runs(&bench_fixed_mul, iterations);
	printf("32-bit integer:\n\t");
	fill_i32_array(i32val1, 0xFFFF);
	fill_i32_array(i32val2, 0xFFFF);
	avg_of_3_runs(&bench_i32_mul, iterations);
	printf("64-bit integer:\n\t");
	fill_i64_array(i64val1, 0xFFFFFFFF);
	fill_i64_array(i64val2, 0xFFFFFFFF);
	avg_of_3_runs(&bench_i64_mul, iterations);
}

void bench_float_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
#elif MANUAL_UNROLL_4
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
			fresult[i] = fval1[i] / fval2[i];	i++;
#endif
			fresult[i] = fval1[i] / fval2[i];
		}
	}
}

void bench_double_div(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit array is half as big as the others.
	iterations *= 2;
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_64BIT; i++) {
#ifdef MANUAL_UNROLL_32
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
#elif MANUAL_UNROLL_4
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
			dresult[i] = dval1[i] / dval2[i];	i++;
#endif
			dresult[i] = dval1[i] / dval2[i];
		}
	}
}

void bench_fixed_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
#elif MANUAL_UNROLL_4
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
			xresult[i] = FDIV(xval1[i], xval2[i]);		i++;
#endif
			xresult[i] = FDIV(xval1[i], xval2[i]);
		}
	}
}

void bench_i32_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
#elif MANUAL_UNROLL_4
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
			i32result[i] = i32val1[i] / i32val2[i];	i++;
#endif
			i32result[i] = i32val1[i] / i32val2[i];	
		}
	}
}

void bench_i64_div(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit array is half as big as the others.
	iterations *= 2;
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_64BIT; i++) {
#ifdef MANUAL_UNROLL_32
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
#elif MANUAL_UNROLL_4
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
			i64result[i] = i64val1[i] / i64val2[i];	i++;
#endif
			i64result[i] = i64val1[i] / i64val2[i];
		}
	}
}

void bench_division(uint32_t iterations)
{
	printf("\nDIVISION BENCHMARKS:\n");

	printf("Float:\n\t");
	fill_float_array(fval1, 1, 3072);
	fill_float_array(fval2, 0.1, 4096);
	avg_of_3_runs(&bench_float_div, iterations);

	printf("Double:\n\t");
	fill_double_array(dval1, 1, 3072);
	fill_double_array(dval2, 0.1, 4096);
	avg_of_3_runs(&bench_double_div, iterations);

	printf("Fixed-point 16.16:\n\t");
	fill_float_array(fval1, 1, 3072);		// Don't want overflow
	fill_float_array(fval2, 0.1, 4096);
	fill_fixed_array_from_float_array(xval1, fval1);
	fill_fixed_array_from_float_array(xval2, fval2);
	avg_of_3_runs(&bench_fixed_div, iterations);

	printf("32-bit integer:\n\t");
	fill_i32_array(i32val1, 0xFFFFFFFF);
	fill_i32_array(i32val2, 0xFFFF);
	avg_of_3_runs(&bench_i32_div, iterations);

	printf("64-bit integer:\n\t");
	fill_i64_array(i64val1, 0xFFFFFFFFFFFFFFFF);
	fill_i64_array(i64val2, 0xFFFFFFFF);
	avg_of_3_runs(&bench_i64_div, iterations);
}

void bench_float_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
#elif MANUAL_UNROLL_4
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
			fresult[i] = sqrtf(fval1[i]);	i++;
#endif
			fresult[i] = sqrtf(fval1[i]);
		}
	}
}

void bench_quake_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
#elif MANUAL_UNROLL_4
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
			fresult[i] = magic_sqrt(fval1[i]);	i++;
#endif
			fresult[i] = magic_sqrt(fval1[i]);
		}
	}
}

void bench_double_sqrt(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit array is half as big as the others.
	iterations *= 2;
	for (int iter = 0; iter < iterations; iter++) {		
		for (int i=0; i < ASIZE_64BIT; i++) {
#ifdef MANUAL_UNROLL_32
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
#elif MANUAL_UNROLL_4
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
			dresult[i] = sqrt(dval1[i]);	i++;
#endif
			dresult[i] = sqrt(dval1[i]);
		}
	}
}

void bench_approximate_double_sqrt(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit array is half as big as the others.
	iterations *= 2;
	for (int iter = 0; iter < iterations; iter++) {		
		for (int i=0; i < ASIZE_64BIT; i++) {
#ifdef MANUAL_UNROLL_32
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
#elif MANUAL_UNROLL_4
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
			dresult[i] = approximate_double_sqrt(dval1[i]);		i++;
#endif
			dresult[i] = approximate_double_sqrt(dval1[i]);
		}
	}
}

void bench_fixed_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE_32BIT; i++) {
#ifdef MANUAL_UNROLL_32
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
#elif MANUAL_UNROLL_4
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
			xresult[i] = FSQRT(xval1[i]);		i++;
#endif
			xresult[i] = FSQRT(xval1[i]);
		}
	}
}

void bench_squareroot(uint32_t iterations)
{
	printf("\nSQUARE-ROOT BENCHMARKS:\n");
	fill_float_array(fval1, 0.00001, 32768);
	printf("Float:\n\t");
	avg_of_3_runs(&bench_float_sqrt, iterations);

//	fill_float_array(fval1, 0.00001, 32768);	// Do a direct comparison of above
	printf("Float (Quake sqrt):\n\t");
	avg_of_3_runs(&bench_quake_sqrt, iterations);

//	fill_float_array(fval1, 0.00001, 32768);	// Do a direct comparison of above
	fill_fixed_array_from_float_array(xval1, fval1);
	printf("Fixed-point 16.16:\n\t");
	avg_of_3_runs(&bench_fixed_sqrt, iterations);

	fill_double_array(dval1, 0.00001, 32768);		// Do a direct comparison of above
	printf("Double:\n\t");
	avg_of_3_runs(&bench_double_sqrt, iterations);

//	fill_double_array(dval1, 0.00001, 32768);	// Do a direct comparison of above
	printf("Double (approximate sqrt):\n\t");
	avg_of_3_runs(&bench_approximate_double_sqrt, iterations);

}

int main(int argc, char **argv)
{
	srand48(0xDEADBEEF);	// Seed RNG with the same constant always for consistent comparisons across runs

	unsigned int iterations = 0;
	if (argc < 2) {
		printf("Missing argument: number of iterations\n");
		return 1;
	} else {
		iterations = atoi(argv[1]);
	}

	printf("FPBENCH - Math Speed Comparison\n");
	printf("Written by Dan Silsby  dansilsby <AT> gmail <DOT> com\n");
	printf("NOTE: before each benchmark is timed, sync(), fflush(),\n"
			"and .5 second delay are all executed.\n");
	printf("Each time reported is an average of 3 benchmark runs.\n\n");
#ifdef MANUAL_UNROLL_4
	printf("COMPILED WITH MANUAL 4-FOLD UNROLLING OF LOOPS\n");
#elif MANUAL_UNROLL_32
	printf("COMPILED WITH MANUAL 32-FOLD UNROLLING OF LOOPS\n");
#else
	printf("COMPILED WITH NO MANUAL UNROLLING OF LOOPS\n");
#endif
	printf("Reported size of floats on this architecture:\t%d\n", sizeof(float)*8);
	printf("Reported size of doubles on this architecture:\t%d\n", sizeof(double)*8);
	printf("Benchmark requested: %u iterations.\n\n", iterations);

	sync();
	usleep(1000000);
	
	bench_addition(iterations);
	bench_multiplication(iterations);
	bench_division(iterations);
	bench_squareroot(iterations);

	return 0;
}
