#include "fpbench.h"
#include "bench_div.h"

#ifdef SELF_ASSIGN
#define BENCH_FLOAT_DIV_CHUNK    fval1[i] = fval1[i] / fval2[i];   i++;  \
                                 fval1[i] = fval1[i] / fval2[i];   i++;  \
                                 fval1[i] = fval1[i] / fval2[i];   i++;  \
                                 fval1[i] = fval1[i] / fval2[i];   i++;
#else
#define BENCH_FLOAT_DIV_CHUNK    fresult[i] = fval1[i] / fval2[i];   i++;  \
                                 fresult[i] = fval1[i] / fval2[i];   i++;  \
                                 fresult[i] = fval1[i] / fval2[i];   i++;  \
                                 fresult[i] = fval1[i] / fval2[i];   i++;
#endif

void bench_float_div_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_DIV_CHUNK
      }
   }
}

void bench_float_div_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
      }
   }
}

void bench_float_div_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
      }
   }
}

void bench_float_div_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
         BENCH_FLOAT_DIV_CHUNK   BENCH_FLOAT_DIV_CHUNK
      }
   }
}


#ifdef SELF_ASSIGN
#define BENCH_DOUBLE_DIV_CHUNK      dval1[i] = dval1[i] / dval2[i];   i++;  \
                                    dval1[i] = dval1[i] / dval2[i];   i++;  \
                                    dval1[i] = dval1[i] / dval2[i];   i++;  \
                                    dval1[i] = dval1[i] / dval2[i];   i++;
#else
#define BENCH_DOUBLE_DIV_CHUNK      dresult[i] = dval1[i] / dval2[i];   i++;  \
                                    dresult[i] = dval1[i] / dval2[i];   i++;  \
                                    dresult[i] = dval1[i] / dval2[i];   i++;  \
                                    dresult[i] = dval1[i] / dval2[i];   i++;
#endif

void bench_double_div_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_DIV_CHUNK
      }
   }
}

void bench_double_div_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
      }
   }
}

void bench_double_div_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
      }
   }
}

void bench_double_div_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
         BENCH_DOUBLE_DIV_CHUNK  BENCH_DOUBLE_DIV_CHUNK
      }
   }
}


#ifdef SELF_ASSIGN
#define BENCH_FIXED_DIV_CHUNK    xval1[i] = FDIV(xval1[i], xval2[i]);    i++;  \
                                 xval1[i] = FDIV(xval1[i], xval2[i]);    i++;  \
                                 xval1[i] = FDIV(xval1[i], xval2[i]);    i++;  \
                                 xval1[i] = FDIV(xval1[i], xval2[i]);    i++;
#else
#define BENCH_FIXED_DIV_CHUNK    xresult[i] = FDIV(xval1[i], xval2[i]);    i++;  \
                                 xresult[i] = FDIV(xval1[i], xval2[i]);    i++;  \
                                 xresult[i] = FDIV(xval1[i], xval2[i]);    i++;  \
                                 xresult[i] = FDIV(xval1[i], xval2[i]);    i++;
#endif

void bench_fixed_div_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_DIV_CHUNK
      }
   }
}

void bench_fixed_div_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
      }
   }
}

void bench_fixed_div_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
      }
   }
}

void bench_fixed_div_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
         BENCH_FIXED_DIV_CHUNK   BENCH_FIXED_DIV_CHUNK
      }
   }
}


#ifdef SELF_ASSIGN
#define BENCH_I32_DIV_CHUNK      i32val1[i] = i32val1[i] / i32val2[i];   i++;  \
                                 i32val1[i] = i32val1[i] / i32val2[i];   i++;  \
                                 i32val1[i] = i32val1[i] / i32val2[i];   i++;  \
                                 i32val1[i] = i32val1[i] / i32val2[i];   i++;
#else
#define BENCH_I32_DIV_CHUNK      i32result[i] = i32val1[i] / i32val2[i];   i++;  \
                                 i32result[i] = i32val1[i] / i32val2[i];   i++;  \
                                 i32result[i] = i32val1[i] / i32val2[i];   i++;  \
                                 i32result[i] = i32val1[i] / i32val2[i];   i++;
#endif

void bench_i32_div_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_DIV_CHUNK
      }
   }
}

void bench_i32_div_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
      }
   }
}

void bench_i32_div_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
      }
   }
}

void bench_i32_div_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
         BENCH_I32_DIV_CHUNK  BENCH_I32_DIV_CHUNK
      }
   }
}


#ifdef SELF_ASSIGN
#define BENCH_I64_DIV_CHUNK      i64val1[i] = i64val1[i] / i64val2[i];   i++;  \
                                 i64val1[i] = i64val1[i] / i64val2[i];   i++;  \
                                 i64val1[i] = i64val1[i] / i64val2[i];   i++;  \
                                 i64val1[i] = i64val1[i] / i64val2[i];   i++;
#else
#define BENCH_I64_DIV_CHUNK      i32result[i] = i64val1[i] / i64val2[i];   i++;  \
                                 i32result[i] = i64val1[i] / i64val2[i];   i++;  \
                                 i32result[i] = i64val1[i] / i64val2[i];   i++;  \
                                 i32result[i] = i64val1[i] / i64val2[i];   i++;
#endif

void bench_i64_div_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_DIV_CHUNK
      }
   }
}

void bench_i64_div_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
      }
   }
}

void bench_i64_div_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
      }
   }
}

void bench_i64_div_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
         BENCH_I64_DIV_CHUNK  BENCH_I64_DIV_CHUNK
      }
   }
}
