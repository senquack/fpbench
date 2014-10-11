#ifndef FPBENCH_H
#define FPBENCH_H
#include <stdint.h>

/* There will be two arrays of test data for each test, and one results array.
 *	The results and two data arrays will be sized so that, combined, they will not exceed 
 *	16KB, in order to fit into L1 data cache.
 * sizeof(float) == sizeof(int32_t) == 4; (4 * 896) * 3 = 10752
 *	Thanks to Nebuleon for the advice.	*/
#define ASIZE_32BIT	896					// NOTE: this must be a multiple of 64 to support loop-unrolling #defines
#define ASIZE_64BIT	(ASIZE_32BIT/2)

// In these arrays: *val1: first operands, *val2: second operands, *result: results of operation
extern float		fval1[ASIZE_32BIT], fval2[ASIZE_32BIT], fresult[ASIZE_32BIT];	// Float arrays
extern int32_t	xval1[ASIZE_32BIT], xval2[ASIZE_32BIT], xresult[ASIZE_32BIT];	// 16.16 Fixed-point array
extern double	dval1[ASIZE_64BIT], dval2[ASIZE_64BIT], dresult[ASIZE_64BIT];	// Double arrays
extern uint32_t	i32val1[ASIZE_32BIT], i32val2[ASIZE_32BIT], i32result[ASIZE_32BIT];	// 32-bit int arrays
extern uint64_t	i64val1[ASIZE_64BIT], i64val2[ASIZE_64BIT], i64result[ASIZE_64BIT];	// 64-bit int arrays	

// Fixed-point math routines:
#define f2x(x) ((int32_t)((x) * 65536.0f))	 // convert float to 16.16 fixed point
#define x2f(x) ((float)(x) / 65536.0f)	// convert fixed point 16.16 to float
#define INT2FNUM(x) ((x)<<16) // Convert from 32-bit int to fixed number
#define FNUM2INT(x) ((x)>>16) // Convert from fixed number to 32-bit int
#define FMUL(x,y) (int32_t)(((int64_t)(x)*(y))>>16)
#define FDIV(x,y) (int32_t)(((int64_t)x << 16) / y)
#define FSQRT(x) fpsqrt(x)

#endif // FPBENCH_H


