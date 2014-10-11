#include "fpbench.h"
#include "bench_add.h"

#define BENCH_FLOAT_ADD_CHUNK fresult[i] = fval1[i] + fval2[i];	i++; \
										fresult[i] = fval1[i] + fval2[i];	i++; \
										fresult[i] = fval1[i] + fval2[i];	i++; \
										fresult[i] = fval1[i] + fval2[i];	i++; 

void bench_float_add_4(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_FLOAT_ADD_CHUNK
		}
	}
}

void bench_float_add_8(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_FLOAT_ADD_CHUNK	BENCH_FLOAT_ADD_CHUNK
		}
	}
}

void bench_float_add_16(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_FLOAT_ADD_CHUNK	BENCH_FLOAT_ADD_CHUNK	BENCH_FLOAT_ADD_CHUNK	BENCH_FLOAT_ADD_CHUNK
		}
	}
}

void bench_float_add_32(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_FLOAT_ADD_CHUNK	BENCH_FLOAT_ADD_CHUNK	BENCH_FLOAT_ADD_CHUNK	BENCH_FLOAT_ADD_CHUNK
			BENCH_FLOAT_ADD_CHUNK	BENCH_FLOAT_ADD_CHUNK	BENCH_FLOAT_ADD_CHUNK	BENCH_FLOAT_ADD_CHUNK
		}
	}
}


#define BENCH_DOUBLE_ADD_CHUNK	dresult[i] = dval1[i] + dval2[i];	 i++;	\
											dresult[i] = dval1[i] + dval2[i];	 i++; \
											dresult[i] = dval1[i] + dval2[i];	 i++; \
											dresult[i] = dval1[i] + dval2[i];	 i++; 

void bench_double_add_4(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
	iterations *= 2;

	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_64BIT;) {
			BENCH_DOUBLE_ADD_CHUNK
		}
	}
}

void bench_double_add_8(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
	iterations *= 2;

	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_64BIT;) {
			BENCH_DOUBLE_ADD_CHUNK	BENCH_DOUBLE_ADD_CHUNK
		}
	}
}

void bench_double_add_16(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
	iterations *= 2;

	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_64BIT;) {
			BENCH_DOUBLE_ADD_CHUNK	BENCH_DOUBLE_ADD_CHUNK	BENCH_DOUBLE_ADD_CHUNK	BENCH_DOUBLE_ADD_CHUNK
		}
	}
}

void bench_double_add_32(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
	iterations *= 2;

	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_64BIT;) {
			BENCH_DOUBLE_ADD_CHUNK	BENCH_DOUBLE_ADD_CHUNK	BENCH_DOUBLE_ADD_CHUNK	BENCH_DOUBLE_ADD_CHUNK
			BENCH_DOUBLE_ADD_CHUNK	BENCH_DOUBLE_ADD_CHUNK	BENCH_DOUBLE_ADD_CHUNK	BENCH_DOUBLE_ADD_CHUNK
		}
	}
}


#define BENCH_FIXED_ADD_CHUNK		xresult[i] = xval1[i] + xval2[i];	 i++; \
											xresult[i] = xval1[i] + xval2[i];	 i++; \
											xresult[i] = xval1[i] + xval2[i];	 i++; \
											xresult[i] = xval1[i] + xval2[i];	 i++; 

void bench_fixed_add_4(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_FIXED_ADD_CHUNK
		}
	}
}

void bench_fixed_add_8(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_FIXED_ADD_CHUNK	BENCH_FIXED_ADD_CHUNK
		}
	}
}

void bench_fixed_add_16(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_FIXED_ADD_CHUNK	BENCH_FIXED_ADD_CHUNK	BENCH_FIXED_ADD_CHUNK	BENCH_FIXED_ADD_CHUNK
		}
	}
}

void bench_fixed_add_32(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_FIXED_ADD_CHUNK	BENCH_FIXED_ADD_CHUNK	BENCH_FIXED_ADD_CHUNK	BENCH_FIXED_ADD_CHUNK
			BENCH_FIXED_ADD_CHUNK	BENCH_FIXED_ADD_CHUNK	BENCH_FIXED_ADD_CHUNK	BENCH_FIXED_ADD_CHUNK
		}
	}
}


#define BENCH_I32_ADD_CHUNK	i32result[i] = i32val1[i] + i32val2[i];	 i++; \
										i32result[i] = i32val1[i] + i32val2[i];	 i++; \
										i32result[i] = i32val1[i] + i32val2[i];	 i++; \
										i32result[i] = i32val1[i] + i32val2[i];	 i++;

void bench_i32_add_4(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_I32_ADD_CHUNK
		}
	}
}

void bench_i32_add_8(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_I32_ADD_CHUNK	BENCH_I32_ADD_CHUNK
		}
	}
}

void bench_i32_add_16(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_I32_ADD_CHUNK	BENCH_I32_ADD_CHUNK 	BENCH_I32_ADD_CHUNK	BENCH_I32_ADD_CHUNK
		}
	}
}

void bench_i32_add_32(uint32_t iterations)
{
	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_32BIT;) {
			BENCH_I32_ADD_CHUNK	BENCH_I32_ADD_CHUNK 	BENCH_I32_ADD_CHUNK	BENCH_I32_ADD_CHUNK
			BENCH_I32_ADD_CHUNK	BENCH_I32_ADD_CHUNK 	BENCH_I32_ADD_CHUNK	BENCH_I32_ADD_CHUNK
		}
	}
}

#define BENCH_I64_ADD_CHUNK		i64result[i] = i64val1[i] + i64val2[i];	 i++; \
											i64result[i] = i64val1[i] + i64val2[i];	 i++; \
											i64result[i] = i64val1[i] + i64val2[i];	 i++; \
											i64result[i] = i64val1[i] + i64val2[i];	 i++;

void bench_i64_add_4(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
	iterations *= 2;

	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_64BIT;) {
			BENCH_I64_ADD_CHUNK
		}
	}
}

void bench_i64_add_8(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
	iterations *= 2;

	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_64BIT;) {
			BENCH_I64_ADD_CHUNK	BENCH_I64_ADD_CHUNK
		}
	}
}

void bench_i64_add_16(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
	iterations *= 2;

	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_64BIT;) {
			BENCH_I64_ADD_CHUNK	BENCH_I64_ADD_CHUNK
			BENCH_I64_ADD_CHUNK	BENCH_I64_ADD_CHUNK
		}
	}
}

void bench_i64_add_32(uint32_t iterations)
{
	// Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
	iterations *= 2;

	uint32_t i;
	for (uint32_t iter = 0; iter < iterations; iter++) {
		for (i=0; i < ASIZE_64BIT;) {
			BENCH_I64_ADD_CHUNK	BENCH_I64_ADD_CHUNK	BENCH_I64_ADD_CHUNK	BENCH_I64_ADD_CHUNK
			BENCH_I64_ADD_CHUNK	BENCH_I64_ADD_CHUNK	BENCH_I64_ADD_CHUNK	BENCH_I64_ADD_CHUNK
		}
	}
}
