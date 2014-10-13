#include "fpbench.h"
#include "bench_conv.h"


#define BENCH_INT32_TO_FLOAT_CONV_CHUNK   fresult[i] = (float)i32val1[i];  i++; \
                                          fresult[i] = (float)i32val1[i];  i++; \
                                          fresult[i] = (float)i32val1[i];  i++; \
                                          fresult[i] = (float)i32val1[i];  i++;

void bench_int32_to_float_conv_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_INT32_TO_FLOAT_CONV_CHUNK
      }
   }
}

void bench_int32_to_float_conv_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_INT32_TO_FLOAT_CONV_CHUNK     BENCH_INT32_TO_FLOAT_CONV_CHUNK
      }
   }
}

void bench_int32_to_float_conv_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_INT32_TO_FLOAT_CONV_CHUNK     BENCH_INT32_TO_FLOAT_CONV_CHUNK 
         BENCH_INT32_TO_FLOAT_CONV_CHUNK     BENCH_INT32_TO_FLOAT_CONV_CHUNK
      }
   }
}

void bench_int32_to_float_conv_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_INT32_TO_FLOAT_CONV_CHUNK     BENCH_INT32_TO_FLOAT_CONV_CHUNK 
         BENCH_INT32_TO_FLOAT_CONV_CHUNK     BENCH_INT32_TO_FLOAT_CONV_CHUNK
         BENCH_INT32_TO_FLOAT_CONV_CHUNK     BENCH_INT32_TO_FLOAT_CONV_CHUNK 
         BENCH_INT32_TO_FLOAT_CONV_CHUNK     BENCH_INT32_TO_FLOAT_CONV_CHUNK
      }
   }
}


#define BENCH_FLOAT_TO_INT32_CONV_CHUNK   i32result[i] = (int32_t)fval1[i];  i++;  \
                                          i32result[i] = (int32_t)fval1[i];  i++;  \
                                          i32result[i] = (int32_t)fval1[i];  i++;  \
                                          i32result[i] = (int32_t)fval1[i];  i++;

void bench_float_to_int32_conv_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_TO_INT32_CONV_CHUNK
      }
   }
}

void bench_float_to_int32_conv_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_TO_INT32_CONV_CHUNK  BENCH_FLOAT_TO_INT32_CONV_CHUNK
      }
   }
}

void bench_float_to_int32_conv_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_TO_INT32_CONV_CHUNK  BENCH_FLOAT_TO_INT32_CONV_CHUNK
         BENCH_FLOAT_TO_INT32_CONV_CHUNK  BENCH_FLOAT_TO_INT32_CONV_CHUNK
      }
   }
}

void bench_float_to_int32_conv_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_TO_INT32_CONV_CHUNK  BENCH_FLOAT_TO_INT32_CONV_CHUNK
         BENCH_FLOAT_TO_INT32_CONV_CHUNK  BENCH_FLOAT_TO_INT32_CONV_CHUNK
         BENCH_FLOAT_TO_INT32_CONV_CHUNK  BENCH_FLOAT_TO_INT32_CONV_CHUNK
         BENCH_FLOAT_TO_INT32_CONV_CHUNK  BENCH_FLOAT_TO_INT32_CONV_CHUNK
      }
   }
}


#define BENCH_INT32_TO_DOUBLE_CONV_CHUNK     dresult[i] = (double)i32val1[i]; i++; \
                                             dresult[i] = (double)i32val1[i]; i++; \
                                             dresult[i] = (double)i32val1[i]; i++; \
                                             dresult[i] = (double)i32val1[i]; i++;

void bench_int32_to_double_conv_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_INT32_TO_DOUBLE_CONV_CHUNK
      }
   }
}

void bench_int32_to_double_conv_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_INT32_TO_DOUBLE_CONV_CHUNK    BENCH_INT32_TO_DOUBLE_CONV_CHUNK
      }
   }
}

void bench_int32_to_double_conv_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_INT32_TO_DOUBLE_CONV_CHUNK    BENCH_INT32_TO_DOUBLE_CONV_CHUNK
         BENCH_INT32_TO_DOUBLE_CONV_CHUNK    BENCH_INT32_TO_DOUBLE_CONV_CHUNK
      }
   }
}

void bench_int32_to_double_conv_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_INT32_TO_DOUBLE_CONV_CHUNK    BENCH_INT32_TO_DOUBLE_CONV_CHUNK
         BENCH_INT32_TO_DOUBLE_CONV_CHUNK    BENCH_INT32_TO_DOUBLE_CONV_CHUNK
         BENCH_INT32_TO_DOUBLE_CONV_CHUNK    BENCH_INT32_TO_DOUBLE_CONV_CHUNK
         BENCH_INT32_TO_DOUBLE_CONV_CHUNK    BENCH_INT32_TO_DOUBLE_CONV_CHUNK
      }
   }
}


#define BENCH_DOUBLE_TO_INT32_CONV_CHUNK     i32result[i] = (int32_t)dval1[i];  i++; \
                                             i32result[i] = (int32_t)dval1[i];  i++; \
                                             i32result[i] = (int32_t)dval1[i];  i++; \
                                             i32result[i] = (int32_t)dval1[i];  i++;

void bench_double_to_int32_conv_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_TO_INT32_CONV_CHUNK
      }
   }
}

void bench_double_to_int32_conv_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_TO_INT32_CONV_CHUNK    BENCH_DOUBLE_TO_INT32_CONV_CHUNK
      }
   }
}

void bench_double_to_int32_conv_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_TO_INT32_CONV_CHUNK    BENCH_DOUBLE_TO_INT32_CONV_CHUNK
         BENCH_DOUBLE_TO_INT32_CONV_CHUNK    BENCH_DOUBLE_TO_INT32_CONV_CHUNK
      }
   }
}

void bench_double_to_int32_conv_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_TO_INT32_CONV_CHUNK    BENCH_DOUBLE_TO_INT32_CONV_CHUNK
         BENCH_DOUBLE_TO_INT32_CONV_CHUNK    BENCH_DOUBLE_TO_INT32_CONV_CHUNK
         BENCH_DOUBLE_TO_INT32_CONV_CHUNK    BENCH_DOUBLE_TO_INT32_CONV_CHUNK
         BENCH_DOUBLE_TO_INT32_CONV_CHUNK    BENCH_DOUBLE_TO_INT32_CONV_CHUNK
      }
   }
}

#define BENCH_INT64_TO_DOUBLE_CONV_CHUNK     dresult[i] = (double)i64val1[i]; i++; \
                                             dresult[i] = (double)i64val1[i]; i++; \
                                             dresult[i] = (double)i64val1[i]; i++; \
                                             dresult[i] = (double)i64val1[i]; i++;

void bench_int64_to_double_conv_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_INT64_TO_DOUBLE_CONV_CHUNK
      }
   }
}

void bench_int64_to_double_conv_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_INT64_TO_DOUBLE_CONV_CHUNK    BENCH_INT64_TO_DOUBLE_CONV_CHUNK
      }
   }
}

void bench_int64_to_double_conv_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_INT64_TO_DOUBLE_CONV_CHUNK    BENCH_INT64_TO_DOUBLE_CONV_CHUNK
         BENCH_INT64_TO_DOUBLE_CONV_CHUNK    BENCH_INT64_TO_DOUBLE_CONV_CHUNK
      }
   }
}

void bench_int64_to_double_conv_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_INT64_TO_DOUBLE_CONV_CHUNK    BENCH_INT64_TO_DOUBLE_CONV_CHUNK
         BENCH_INT64_TO_DOUBLE_CONV_CHUNK    BENCH_INT64_TO_DOUBLE_CONV_CHUNK
         BENCH_INT64_TO_DOUBLE_CONV_CHUNK    BENCH_INT64_TO_DOUBLE_CONV_CHUNK
         BENCH_INT64_TO_DOUBLE_CONV_CHUNK    BENCH_INT64_TO_DOUBLE_CONV_CHUNK
      }
   }
}

#define BENCH_DOUBLE_TO_INT64_CONV_CHUNK     i32result[i] = (int64_t)dval1[i];  i++; \
                                             i32result[i] = (int64_t)dval1[i];  i++; \
                                             i32result[i] = (int64_t)dval1[i];  i++; \
                                             i32result[i] = (int64_t)dval1[i];  i++;

void bench_double_to_int64_conv_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_TO_INT64_CONV_CHUNK
      }
   }
}

void bench_double_to_int64_conv_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_TO_INT64_CONV_CHUNK    BENCH_DOUBLE_TO_INT64_CONV_CHUNK
      }
   }
}

void bench_double_to_int64_conv_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_TO_INT64_CONV_CHUNK    BENCH_DOUBLE_TO_INT64_CONV_CHUNK
         BENCH_DOUBLE_TO_INT64_CONV_CHUNK    BENCH_DOUBLE_TO_INT64_CONV_CHUNK
      }
   }
}

void bench_double_to_int64_conv_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i = 0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_TO_INT64_CONV_CHUNK    BENCH_DOUBLE_TO_INT64_CONV_CHUNK
         BENCH_DOUBLE_TO_INT64_CONV_CHUNK    BENCH_DOUBLE_TO_INT64_CONV_CHUNK
         BENCH_DOUBLE_TO_INT64_CONV_CHUNK    BENCH_DOUBLE_TO_INT64_CONV_CHUNK
         BENCH_DOUBLE_TO_INT64_CONV_CHUNK    BENCH_DOUBLE_TO_INT64_CONV_CHUNK
      }
   }
}
