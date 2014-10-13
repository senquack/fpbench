#include "fpbench.h"
#include "bench_div.h"

#define BENCH_FLOAT_DIV_CHUNK    fresult[i] = fval1[i] / fval2[i];   i++;  \
                                 fresult[i] = fval1[i] / fval2[i];   i++;  \
                                 fresult[i] = fval1[i] / fval2[i];   i++;  \
                                 fresult[i] = fval1[i] / fval2[i];   i++;

void bench_float_div_4(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_DIV_CHUNK
      }
   }
}

void bench_float_div_8(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
      }
   }
}

void bench_float_div_16(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
      }
   }
}

void bench_float_div_32(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
      }
   }
}


#define BENCH_DOUBLE_DIV_CHUNK      dresult[i] = dval1[i] / dval2[i];   i++;  \
                                    dresult[i] = dval1[i] / dval2[i];   i++;  \
                                    dresult[i] = dval1[i] / dval2[i];   i++;  \
                                    dresult[i] = dval1[i] / dval2[i];   i++;

void bench_double_div_4(uint32_t iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_DIV_CHUNK
      }
   }
}

void bench_double_div_8(uint32_t iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
      }
   }
}

void bench_double_div_16(uint32_t iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
      }
   }
}

void bench_double_div_32(uint32_t iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
      }
   }
}


#define BENCH_FIXED_DIV_CHUNK    xresult[i] = FDIV(xval1[i], xval2[i]);    i++;  \
                                 xresult[i] = FDIV(xval1[i], xval2[i]);    i++;  \
                                 xresult[i] = FDIV(xval1[i], xval2[i]);    i++;  \
                                 xresult[i] = FDIV(xval1[i], xval2[i]);    i++;

void bench_fixed_div_4(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_DIV_CHUNK
      }
   }
}

void bench_fixed_div_8(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
      }
   }
}

void bench_fixed_div_16(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
      }
   }
}

void bench_fixed_div_32(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
      }
   }
}


#define BENCH_I32_DIV_CHUNK      i32result[i] = i32val1[i] / i32val2[i];   i++;  \
                                 i32result[i] = i32val1[i] / i32val2[i];   i++;  \
                                 i32result[i] = i32val1[i] / i32val2[i];   i++;  \
                                 i32result[i] = i32val1[i] / i32val2[i];   i++;

void bench_i32_div_4(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_DIV_CHUNK
      }
   }
}

void bench_i32_div_8(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
      }
   }
}

void bench_i32_div_16(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
      }
   }
}

void bench_i32_div_32(uint32_t iterations)
{
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
      }
   }
}


#define BENCH_I64_DIV_CHUNK      i64result[i] = i64val1[i] / i64val2[i];   i++;  \
                                 i64result[i] = i64val1[i] / i64val2[i];   i++;  \
                                 i64result[i] = i64val1[i] / i64val2[i];   i++;  \
                                 i64result[i] = i64val1[i] / i64val2[i];   i++;

void bench_i64_div_4(uint32_t iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_DIV_CHUNK
      }
   }
}

void bench_i64_div_8(uint32_t iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
      }
   }
}

void bench_i64_div_16(uint32_t iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
      }
   }
}

void bench_i64_div_32(uint32_t iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;
   uint32_t i;
   for (uint32_t iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
      }
   }
}
