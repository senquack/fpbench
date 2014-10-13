#include "fpbench.h"
#include "bench_add.h"

#ifdef SELF_ASSIGN
#define BENCH_FLOAT_ADD_CHUNK fval1[i] = fval1[i] + fval2[i];   i++; \
                              fval1[i] = fval1[i] + fval2[i];   i++; \
                              fval1[i] = fval1[i] + fval2[i];   i++; \
                              fval1[i] = fval1[i] + fval2[i];   i++; 
#else
#define BENCH_FLOAT_ADD_CHUNK fresult[i] = fval1[i] + fval2[i];   i++; \
                              fresult[i] = fval1[i] + fval2[i];   i++; \
                              fresult[i] = fval1[i] + fval2[i];   i++; \
                              fresult[i] = fval1[i] + fval2[i];   i++; 
#endif

void bench_float_add_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_ADD_CHUNK
      }
   }
}

void bench_float_add_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
      }
   }
}

void bench_float_add_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
      }
   }
}

void bench_float_add_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
      }
   }
}


#ifdef SELF_ASSIGN
#define BENCH_DOUBLE_ADD_CHUNK   dval1[i] = dval1[i] + dval2[i];    i++; \
                                 dval1[i] = dval1[i] + dval2[i];    i++; \
                                 dval1[i] = dval1[i] + dval2[i];    i++; \
                                 dval1[i] = dval1[i] + dval2[i];    i++; 
#else
#define BENCH_DOUBLE_ADD_CHUNK   dresult[i] = dval1[i] + dval2[i];    i++; \
                                 dresult[i] = dval1[i] + dval2[i];    i++; \
                                 dresult[i] = dval1[i] + dval2[i];    i++; \
                                 dresult[i] = dval1[i] + dval2[i];    i++; 
#endif

void bench_double_add_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_ADD_CHUNK
      }
   }
}

void bench_double_add_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
      }
   }
}

void bench_double_add_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
      }
   }
}

void bench_double_add_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
      }
   }
}


#ifdef SELF_ASSIGN
#define BENCH_FIXED_ADD_CHUNK    xval1[i] = xval1[i] + xval2[i];    i++; \
                                 xval1[i] = xval1[i] + xval2[i];    i++; \
                                 xval1[i] = xval1[i] + xval2[i];    i++; \
                                 xval1[i] = xval1[i] + xval2[i];    i++; 
#else
#define BENCH_FIXED_ADD_CHUNK    xresult[i] = xval1[i] + xval2[i];    i++; \
                                 xresult[i] = xval1[i] + xval2[i];    i++; \
                                 xresult[i] = xval1[i] + xval2[i];    i++; \
                                 xresult[i] = xval1[i] + xval2[i];    i++; 
#endif

void bench_fixed_add_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_ADD_CHUNK
      }
   }
}

void bench_fixed_add_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
      }
   }
}

void bench_fixed_add_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
      }
   }
}

void bench_fixed_add_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
      }
   }
}


#ifdef SELF_ASSIGN
#define BENCH_I32_ADD_CHUNK   i32val1[i] = i32val1[i] + i32val2[i];    i++; \
                              i32val1[i] = i32val1[i] + i32val2[i];    i++; \
                              i32val1[i] = i32val1[i] + i32val2[i];    i++; \
                              i32val1[i] = i32val1[i] + i32val2[i];    i++;
#else
#define BENCH_I32_ADD_CHUNK   i32result[i] = i32val1[i] + i32val2[i];    i++; \
                              i32result[i] = i32val1[i] + i32val2[i];    i++; \
                              i32result[i] = i32val1[i] + i32val2[i];    i++; \
                              i32result[i] = i32val1[i] + i32val2[i];    i++;
#endif

void bench_i32_add_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_ADD_CHUNK
      }
   }
}

void bench_i32_add_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_ADD_CHUNK  BENCH_I32_ADD_CHUNK
      }
   }
}

void bench_i32_add_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_ADD_CHUNK  BENCH_I32_ADD_CHUNK
         BENCH_I32_ADD_CHUNK  BENCH_I32_ADD_CHUNK
      }
   }
}

void bench_i32_add_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_ADD_CHUNK  BENCH_I32_ADD_CHUNK
         BENCH_I32_ADD_CHUNK  BENCH_I32_ADD_CHUNK
         BENCH_I32_ADD_CHUNK  BENCH_I32_ADD_CHUNK
         BENCH_I32_ADD_CHUNK  BENCH_I32_ADD_CHUNK
      }
   }
}

#ifdef SELF_ASSIGN
#define BENCH_I64_ADD_CHUNK      i64val1[i] = i64val1[i] + i64val2[i];    i++; \
                                 i64val1[i] = i64val1[i] + i64val2[i];    i++; \
                                 i64val1[i] = i64val1[i] + i64val2[i];    i++; \
                                 i64val1[i] = i64val1[i] + i64val2[i];    i++;
#else
#define BENCH_I64_ADD_CHUNK      i64result[i] = i64val1[i] + i64val2[i];    i++; \
                                 i64result[i] = i64val1[i] + i64val2[i];    i++; \
                                 i64result[i] = i64val1[i] + i64val2[i];    i++; \
                                 i64result[i] = i64val1[i] + i64val2[i];    i++;
#endif

void bench_i64_add_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_ADD_CHUNK
      }
   }
}

void bench_i64_add_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
      }
   }
}

void bench_i64_add_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
      }
   }
}

void bench_i64_add_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
      }
   }
}
