/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* FPBench - Math speed test
* FPBench homepage: https://github.com/senquack/fpbench
* Copyright (C) 2014 Daniel Silsby
* *
* This program is free software; you can redistribute it and/or modify *
* it under the terms of the GNU General Public License as published by *
* the Free Software Foundation; either version 2 of the License, or *
* any later version. *
* *
* This program is distributed in the hope that it will be useful, *
* but WITHOUT ANY WARRANTY; without even the implied warranty of *
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the *
* GNU General Public License for more details. *
* *
* You should have received a copy of the GNU General Public License *
* along with this program; if not, write to the *
* Free Software Foundation, Inc., *
* 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

#include "fpbench.h"
#include "bench_mul.h"

// We do not bother with SELF_ASSIGN option here, as no platform seems to benefit from it

#define BENCH_FLOAT_MUL_CHUNK    fresult[i] = fval1[i] * fval2[i];   i++; \
                                 fresult[i] = fval1[i] * fval2[i];   i++; \
                                 fresult[i] = fval1[i] * fval2[i];   i++; \
                                 fresult[i] = fval1[i] * fval2[i];   i++;

void bench_float_mul_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_MUL_CHUNK
      }
   }
}

void bench_float_mul_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_MUL_CHUNK   BENCH_FLOAT_MUL_CHUNK
      }
   }
}

void bench_float_mul_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_MUL_CHUNK   BENCH_FLOAT_MUL_CHUNK
         BENCH_FLOAT_MUL_CHUNK   BENCH_FLOAT_MUL_CHUNK
      }
   }
}

void bench_float_mul_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_MUL_CHUNK   BENCH_FLOAT_MUL_CHUNK
         BENCH_FLOAT_MUL_CHUNK   BENCH_FLOAT_MUL_CHUNK
         BENCH_FLOAT_MUL_CHUNK   BENCH_FLOAT_MUL_CHUNK
         BENCH_FLOAT_MUL_CHUNK   BENCH_FLOAT_MUL_CHUNK
      }
   }
}

#define BENCH_DOUBLE_MUL_CHUNK   dresult[i] = dval1[i] * dval2[i];   i++; \
                                 dresult[i] = dval1[i] * dval2[i];   i++; \
                                 dresult[i] = dval1[i] * dval2[i];   i++; \
                                 dresult[i] = dval1[i] * dval2[i];   i++;

void bench_double_mul_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_MUL_CHUNK
      }
   }
}

void bench_double_mul_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_MUL_CHUNK  BENCH_DOUBLE_MUL_CHUNK
      }
   }
}

void bench_double_mul_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_MUL_CHUNK  BENCH_DOUBLE_MUL_CHUNK
         BENCH_DOUBLE_MUL_CHUNK  BENCH_DOUBLE_MUL_CHUNK
      }
   }
}

void bench_double_mul_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_MUL_CHUNK  BENCH_DOUBLE_MUL_CHUNK
         BENCH_DOUBLE_MUL_CHUNK  BENCH_DOUBLE_MUL_CHUNK
         BENCH_DOUBLE_MUL_CHUNK  BENCH_DOUBLE_MUL_CHUNK
         BENCH_DOUBLE_MUL_CHUNK  BENCH_DOUBLE_MUL_CHUNK
      }
   }
}

#define BENCH_FIXED_MUL_CHUNK    xresult[i] = FMUL(xval1[i], xval2[i]);    i++;  \
                                 xresult[i] = FMUL(xval1[i], xval2[i]);    i++;  \
                                 xresult[i] = FMUL(xval1[i], xval2[i]);    i++;  \
                                 xresult[i] = FMUL(xval1[i], xval2[i]);    i++;

void bench_fixed_mul_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_MUL_CHUNK
      }
   }
}

void bench_fixed_mul_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_MUL_CHUNK   BENCH_FIXED_MUL_CHUNK
      }
   }
}

void bench_fixed_mul_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_MUL_CHUNK   BENCH_FIXED_MUL_CHUNK
         BENCH_FIXED_MUL_CHUNK   BENCH_FIXED_MUL_CHUNK
      }
   }
}

void bench_fixed_mul_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_MUL_CHUNK   BENCH_FIXED_MUL_CHUNK
         BENCH_FIXED_MUL_CHUNK   BENCH_FIXED_MUL_CHUNK
         BENCH_FIXED_MUL_CHUNK   BENCH_FIXED_MUL_CHUNK
         BENCH_FIXED_MUL_CHUNK   BENCH_FIXED_MUL_CHUNK
      }
   }
}

// We do not bother with SELF_ASSIGN option here, as no platform seems to benefit from it:

#define BENCH_I32_MUL_CHUNK      i32result[i] = i32val1[i] * i32val2[i];   i++;  \
                                 i32result[i] = i32val1[i] * i32val2[i];   i++;  \
                                 i32result[i] = i32val1[i] * i32val2[i];   i++;  \
                                 i32result[i] = i32val1[i] * i32val2[i];   i++;

void bench_i32_mul_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_MUL_CHUNK
      }
   }
}

void bench_i32_mul_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_MUL_CHUNK  BENCH_I32_MUL_CHUNK
      }
   }
}

void bench_i32_mul_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_MUL_CHUNK  BENCH_I32_MUL_CHUNK  BENCH_I32_MUL_CHUNK  BENCH_I32_MUL_CHUNK
      }
   }
}

void bench_i32_mul_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_I32_MUL_CHUNK  BENCH_I32_MUL_CHUNK  BENCH_I32_MUL_CHUNK  BENCH_I32_MUL_CHUNK
         BENCH_I32_MUL_CHUNK  BENCH_I32_MUL_CHUNK  BENCH_I32_MUL_CHUNK  BENCH_I32_MUL_CHUNK
      }
   }
}

#define BENCH_I64_MUL_CHUNK      i64result[i] = i64val1[i] * i64val2[i];   i++;  \
                                 i64result[i] = i64val1[i] * i64val2[i];   i++;  \
                                 i64result[i] = i64val1[i] * i64val2[i];   i++;  \
                                 i64result[i] = i64val1[i] * i64val2[i];   i++;

void bench_i64_mul_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_MUL_CHUNK
      }
   }
}

void bench_i64_mul_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_MUL_CHUNK  BENCH_I64_MUL_CHUNK
      }
   }
}

void bench_i64_mul_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_MUL_CHUNK  BENCH_I64_MUL_CHUNK
         BENCH_I64_MUL_CHUNK  BENCH_I64_MUL_CHUNK
      }
   }
}

void bench_i64_mul_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_I64_MUL_CHUNK  BENCH_I64_MUL_CHUNK
         BENCH_I64_MUL_CHUNK  BENCH_I64_MUL_CHUNK
         BENCH_I64_MUL_CHUNK  BENCH_I64_MUL_CHUNK
         BENCH_I64_MUL_CHUNK  BENCH_I64_MUL_CHUNK
      }
   }
}
