#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
////#include <time.h>	// PROBABLY CAN DELETE THIS ONE 
#include <unistd.h>
//#include <math.h>

#include "fpbench.h"
#include "misc.h"
#include "bench_add.h"
#include "bench_mul.h"
#include "bench_div.h"
#include "bench_sqrt.h"
#include "bench_conv.h"

// In these arrays: *val1: first operands, *val2: second operands, *result: results of operation
float		fval1[ASIZE_32BIT], fval2[ASIZE_32BIT], fresult[ASIZE_32BIT];	// Float arrays
int32_t	xval1[ASIZE_32BIT], xval2[ASIZE_32BIT], xresult[ASIZE_32BIT];	// 16.16 Fixed-point array
double	dval1[ASIZE_64BIT], dval2[ASIZE_64BIT], dresult[ASIZE_64BIT];	// Double arrays
uint32_t	i32val1[ASIZE_32BIT], i32val2[ASIZE_32BIT], i32result[ASIZE_32BIT];	// 32-bit int arrays
uint64_t	i64val1[ASIZE_64BIT], i64val2[ASIZE_64BIT], i64result[ASIZE_64BIT];	// 64-bit int arrays	

void bench_addition(uint32_t iterations)
{
	printf("\nADDITION BENCHMARKS:\n");
	printf("Float:\n");
	fill_float_array(fval1, 0.0001, 16383.0);		
	fill_float_array(fval2, 0.0001, 16383.0);		
	best_of_3_runs(&bench_float_add_4, iterations);
	best_of_3_runs(&bench_float_add_8, iterations);
	best_of_3_runs(&bench_float_add_16, iterations);
	best_of_3_runs(&bench_float_add_32, iterations);

//	printf("Double:\n\t");
//	fill_double_array(dval1, 0.0001, 16383.0);		
//	fill_double_array(dval2, 0.0001, 16383.0);		
//	best_of_3_runs(&bench_double_add, iterations);
//	printf("Fixed-point 16.16:\n\t");
//	fill_float_array(fval1, 0.0001, 16383.0);		
//	fill_float_array(fval2, 0.0001, 16383.0);		
//	fill_fixed_array_from_float_array(xval1, fval1);
//	fill_fixed_array_from_float_array(xval2, fval2);
//	best_of_3_runs(&bench_fixed_add, iterations);
	printf("32-bit integer:\n\t");
	fill_i32_array(i32val1, 0xFFFFFFFF);
	fill_i32_array(i32val2, 0xFFFFFFFF);	
	best_of_3_runs(&bench_i32_add_4, iterations);
	best_of_3_runs(&bench_i32_add_8, iterations);
	best_of_3_runs(&bench_i32_add_16, iterations);
	best_of_3_runs(&bench_i32_add_32, iterations);
	printf("64-bit integer:\n\t");
	fill_i64_array(i64val1, 0xFFFFFFFFFFFFFFFF);
	fill_i64_array(i64val2, 0xFFFFFFFFFFFFFFFF);
	best_of_3_runs(&bench_i64_add_4, iterations);
	best_of_3_runs(&bench_i64_add_8, iterations);
	best_of_3_runs(&bench_i64_add_16, iterations);
	best_of_3_runs(&bench_i64_add_32, iterations);
}

//void bench_multiplication(uint32_t iterations)
//{
//	printf("\nMULTIPLICATION BENCHMARKS:\n");
//	printf("Float:\n\t");
//	fill_float_array(fval1, 0.001, 181.0);		
//	fill_float_array(fval2, 0.001, 181.0);
//	best_of_3_runs(&bench_float_mul, iterations);
//	printf("Double:\n\t");
//	fill_double_array(dval1, 0.001, 181.0);		
//	fill_double_array(dval2, 0.001, 181.0);
//	best_of_3_runs(&bench_double_mul, iterations);
//	printf("Fixed-point:\n\t");
//	fill_float_array(fval1, 0.001, 181.0);		// Don't want overflow
//	fill_float_array(fval2, 0.001, 181.0);
//	fill_fixed_array_from_float_array(xval1, fval1);
//	fill_fixed_array_from_float_array(xval2, fval2);
//	best_of_3_runs(&bench_fixed_mul, iterations);
//	printf("32-bit integer:\n\t");
//	fill_i32_array(i32val1, 0xFFFF);
//	fill_i32_array(i32val2, 0xFFFF);
//	best_of_3_runs(&bench_i32_mul, iterations);
//	printf("64-bit integer:\n\t");
//	fill_i64_array(i64val1, 0xFFFFFFFF);
//	fill_i64_array(i64val2, 0xFFFFFFFF);
//	best_of_3_runs(&bench_i64_mul, iterations);
//}
//
//void bench_division(uint32_t iterations)
//{
//	printf("\nDIVISION BENCHMARKS:\n");
//
//	printf("Float:\n\t");
//	fill_float_array(fval1, 1, 3072);
//	fill_float_array(fval2, 0.1, 4096);
//	best_of_3_runs(&bench_float_div, iterations);
//
//	printf("Double:\n\t");
//	fill_double_array(dval1, 1, 3072);
//	fill_double_array(dval2, 0.1, 4096);
//	best_of_3_runs(&bench_double_div, iterations);
//
//	printf("Fixed-point 16.16:\n\t");
//	fill_float_array(fval1, 1, 3072);		// Don't want overflow
//	fill_float_array(fval2, 0.1, 4096);
//	fill_fixed_array_from_float_array(xval1, fval1);
//	fill_fixed_array_from_float_array(xval2, fval2);
//	best_of_3_runs(&bench_fixed_div, iterations);
//
//	printf("32-bit integer:\n\t");
//	fill_i32_array(i32val1, 0xFFFFFFFF);
//	fill_i32_array(i32val2, 0xFFFF);
//	best_of_3_runs(&bench_i32_div, iterations);
//
//	printf("64-bit integer:\n\t");
//	fill_i64_array(i64val1, 0xFFFFFFFFFFFFFFFF);
//	fill_i64_array(i64val2, 0xFFFFFFFF);
//	best_of_3_runs(&bench_i64_div, iterations);
//}
//
//void bench_squareroot(uint32_t iterations)
//{
//	printf("\nSQUARE-ROOT BENCHMARKS:\n");
//	fill_float_array(fval1, 0.00001, 32768);
//	printf("Float:\n\t");
//	best_of_3_runs(&bench_float_sqrt, iterations);
//
////	fill_float_array(fval1, 0.00001, 32768);	// Do a direct comparison of above
//	printf("Float (Quake sqrt):\n\t");
//	best_of_3_runs(&bench_quake_sqrt, iterations);
//
////	fill_float_array(fval1, 0.00001, 32768);	// Do a direct comparison of above
//	fill_fixed_array_from_float_array(xval1, fval1);
//	printf("Fixed-point 16.16:\n\t");
//	best_of_3_runs(&bench_fixed_sqrt, iterations);
//
//	fill_double_array(dval1, 0.00001, 32768);		// Do a direct comparison of above
//	printf("Double:\n\t");
//	best_of_3_runs(&bench_double_sqrt, iterations);
//
////	fill_double_array(dval1, 0.00001, 32768);	// Do a direct comparison of above
//	printf("Double (approximate sqrt):\n\t");
//	best_of_3_runs(&bench_approx_double_sqrt, iterations);
//}
//
//void bench_conversions(uint32_t iterations)
//{
//	printf("\nCONVERSION BENCHMARKS:\n");
//	fill_float_array(fval1, 0.00001, 0xFFFFFFFF);
//	fill_double_array(dval1, 0.00001, 0xFFFFFFFF);
//	fill_i32_array(i32val1, 0xFFFFFFFF);
//	
//	printf("32-bit integer to float:\n\t");
//	best_of_3_runs(&bench_int32_to_float_conversion, iterations);
//
//	printf("32-bit integer to double:\n\t");
//	best_of_3_runs(&bench_int32_to_double_conversion, iterations);
//
//	printf("Float to 32-bit integer:\n\t");
//	best_of_3_runs(&bench_float_to_int32_conversion, iterations);
//
//	printf("Double to 32-bit integer:\n\t");
//	best_of_3_runs(&bench_double_to_int32_conversion, iterations);
//}




//void bench_addition(uint32_t iterations)
//{
//	printf("\nADDITION BENCHMARKS:\n");
//	printf("Float:\n\t");
//	fill_float_array(fval1, 0.0001, 16383.0);		
//	fill_float_array(fval2, 0.0001, 16383.0);		
//	best_of_3_runs(&bench_float_add, iterations);
//	printf("Double:\n\t");
//	fill_double_array(dval1, 0.0001, 16383.0);		
//	fill_double_array(dval2, 0.0001, 16383.0);		
//	best_of_3_runs(&bench_double_add, iterations);
//	printf("Fixed-point 16.16:\n\t");
//	fill_float_array(fval1, 0.0001, 16383.0);		
//	fill_float_array(fval2, 0.0001, 16383.0);		
//	fill_fixed_array_from_float_array(xval1, fval1);
//	fill_fixed_array_from_float_array(xval2, fval2);
//	best_of_3_runs(&bench_fixed_add, iterations);
//	printf("32-bit integer:\n\t");
//	fill_i32_array(i32val1, 0xFFFFFFFF);
//	fill_i32_array(i32val2, 0xFFFFFFFF);	
//	best_of_3_runs(&bench_i32_add, iterations);
//	printf("64-bit integer:\n\t");
//	fill_i64_array(i64val1, 0xFFFFFFFFFFFFFFFF);
//	fill_i64_array(i64val2, 0xFFFFFFFFFFFFFFFF);
//	best_of_3_runs(&bench_i64_add, iterations);
//}
//
//void bench_multiplication(uint32_t iterations)
//{
//	printf("\nMULTIPLICATION BENCHMARKS:\n");
//	printf("Float:\n\t");
//	fill_float_array(fval1, 0.001, 181.0);		
//	fill_float_array(fval2, 0.001, 181.0);
//	best_of_3_runs(&bench_float_mul, iterations);
//	printf("Double:\n\t");
//	fill_double_array(dval1, 0.001, 181.0);		
//	fill_double_array(dval2, 0.001, 181.0);
//	best_of_3_runs(&bench_double_mul, iterations);
//	printf("Fixed-point:\n\t");
//	fill_float_array(fval1, 0.001, 181.0);		// Don't want overflow
//	fill_float_array(fval2, 0.001, 181.0);
//	fill_fixed_array_from_float_array(xval1, fval1);
//	fill_fixed_array_from_float_array(xval2, fval2);
//	best_of_3_runs(&bench_fixed_mul, iterations);
//	printf("32-bit integer:\n\t");
//	fill_i32_array(i32val1, 0xFFFF);
//	fill_i32_array(i32val2, 0xFFFF);
//	best_of_3_runs(&bench_i32_mul, iterations);
//	printf("64-bit integer:\n\t");
//	fill_i64_array(i64val1, 0xFFFFFFFF);
//	fill_i64_array(i64val2, 0xFFFFFFFF);
//	best_of_3_runs(&bench_i64_mul, iterations);
//}
//
//void bench_division(uint32_t iterations)
//{
//	printf("\nDIVISION BENCHMARKS:\n");
//
//	printf("Float:\n\t");
//	fill_float_array(fval1, 1, 3072);
//	fill_float_array(fval2, 0.1, 4096);
//	best_of_3_runs(&bench_float_div, iterations);
//
//	printf("Double:\n\t");
//	fill_double_array(dval1, 1, 3072);
//	fill_double_array(dval2, 0.1, 4096);
//	best_of_3_runs(&bench_double_div, iterations);
//
//	printf("Fixed-point 16.16:\n\t");
//	fill_float_array(fval1, 1, 3072);		// Don't want overflow
//	fill_float_array(fval2, 0.1, 4096);
//	fill_fixed_array_from_float_array(xval1, fval1);
//	fill_fixed_array_from_float_array(xval2, fval2);
//	best_of_3_runs(&bench_fixed_div, iterations);
//
//	printf("32-bit integer:\n\t");
//	fill_i32_array(i32val1, 0xFFFFFFFF);
//	fill_i32_array(i32val2, 0xFFFF);
//	best_of_3_runs(&bench_i32_div, iterations);
//
//	printf("64-bit integer:\n\t");
//	fill_i64_array(i64val1, 0xFFFFFFFFFFFFFFFF);
//	fill_i64_array(i64val2, 0xFFFFFFFF);
//	best_of_3_runs(&bench_i64_div, iterations);
//}
//
//void bench_squareroot(uint32_t iterations)
//{
//	printf("\nSQUARE-ROOT BENCHMARKS:\n");
//	fill_float_array(fval1, 0.00001, 32768);
//	printf("Float:\n\t");
//	best_of_3_runs(&bench_float_sqrt, iterations);
//
////	fill_float_array(fval1, 0.00001, 32768);	// Do a direct comparison of above
//	printf("Float (Quake sqrt):\n\t");
//	best_of_3_runs(&bench_quake_sqrt, iterations);
//
////	fill_float_array(fval1, 0.00001, 32768);	// Do a direct comparison of above
//	fill_fixed_array_from_float_array(xval1, fval1);
//	printf("Fixed-point 16.16:\n\t");
//	best_of_3_runs(&bench_fixed_sqrt, iterations);
//
//	fill_double_array(dval1, 0.00001, 32768);		// Do a direct comparison of above
//	printf("Double:\n\t");
//	best_of_3_runs(&bench_double_sqrt, iterations);
//
////	fill_double_array(dval1, 0.00001, 32768);	// Do a direct comparison of above
//	printf("Double (approximate sqrt):\n\t");
//	best_of_3_runs(&bench_approx_double_sqrt, iterations);
//}
//
//void bench_conversions(uint32_t iterations)
//{
//	printf("\nCONVERSION BENCHMARKS:\n");
//	fill_float_array(fval1, 0.00001, 0xFFFFFFFF);
//	fill_double_array(dval1, 0.00001, 0xFFFFFFFF);
//	fill_i32_array(i32val1, 0xFFFFFFFF);
//	
//	printf("32-bit integer to float:\n\t");
//	best_of_3_runs(&bench_int32_to_float_conversion, iterations);
//
//	printf("32-bit integer to double:\n\t");
//	best_of_3_runs(&bench_int32_to_double_conversion, iterations);
//
//	printf("Float to 32-bit integer:\n\t");
//	best_of_3_runs(&bench_float_to_int32_conversion, iterations);
//
//	printf("Double to 32-bit integer:\n\t");
//	best_of_3_runs(&bench_double_to_int32_conversion, iterations);
//}

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
	printf("Before each benchmark is timed, sync(), fflush(),\n"
			"and .5 second delay are all executed.\n");
	printf("Each benchmark consists of four internal versions:\n");
	printf("The first with inner loop unrolled 4-fold, the second 8-fold,\n");
	printf("the third 16-fold, and the fourth 32-fold.\n");
	printf("All of these are run twice, and the fastest of the two times is\n");
	printf("the one used. Of the four unrolled times reported, an asterisk\n");
	printf("is placed beside the fastest of the four.\n");
	printf("Reported size of floats on this architecture:\t%d\n", sizeof(float)*8);
	printf("Reported size of doubles on this architecture:\t%d\n", sizeof(double)*8);
	printf("Benchmark requested: %u iterations.\n\n", iterations);

	sync();
	usleep(1000000);
	
	bench_addition(iterations);
//	bench_multiplication(iterations);
//	bench_division(iterations);
//	bench_squareroot(iterations);
//	bench_conversions(iterations);

	return 0;
}
