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
#include "bench_rand.h"
#include "stdlib.h"

static uint32_t g_seed;
static uint32_t rand_r_seed_val;

//Used to seed the generator.
void seed_fast_rand( uint32_t seed )
{
   g_seed = seed;
}

void seed_rand_r(uint32_t seed)
{
   rand_r_seed_val = seed;
}

// fast_rand routine returns one integer, similar output value range as C lib.

int32_t fast_rand()
{
   g_seed = (214013*g_seed+2531011);

//   return (g_seed>>16)&0x7FFF;
   uint32_t retval = (g_seed>>16)&0x7FFF;
   return (int)retval;
}


// Marsaglia's xorshf generator

static unsigned long x=123456789, y=362436069, z=521288629;
int32_t xorshf96(void) {          //period 2^96-1
   unsigned long t;
   x ^= x << 16;
   x ^= x >> 5;
   x ^= x << 1;

   t = x;
   x = y;
   y = z;
   z = t ^ x ^ y;

//   return z;    // (Line in original algorithm, as this function
                  //  originally returned a uint32_t

   //Produce an int out of the return value, since that is what rand() returns
   // and it's a fairer comparison and closer to what I need in my other code
   uint32_t retval = z & 0x7FFFFFFF;
   return (int)retval;
}

//#define BENCH_FLOAT_ADD_CHUNK fresult[i] = fval1[i] + fval2[i];   i++; \
//                              fresult[i] = fval1[i] + fval2[i];   i++; \
//                              fresult[i] = fval1[i] + fval2[i];   i++; \
//                              fresult[i] = fval1[i] + fval2[i];   i++; 
//#endif
//
//void bench_float_add_4(int iterations)
//{
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_32BIT;) {
//         BENCH_FLOAT_ADD_CHUNK
//      }
//   }
//}
//
//void bench_float_add_8(int iterations)
//{
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_32BIT;) {
//         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
//      }
//   }
//}
//
//void bench_float_add_16(int iterations)
//{
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_32BIT;) {
//         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
//         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
//      }
//   }
//}
//
//void bench_float_add_32(int iterations)
//{
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_32BIT;) {
//         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
//         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
//         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
//         BENCH_FLOAT_ADD_CHUNK   BENCH_FLOAT_ADD_CHUNK
//      }
//   }
//}
//
//
//#ifdef SELF_ASSIGN
//#define BENCH_DOUBLE_ADD_CHUNK   dval1[i] = dval1[i] + dval2[i];    i++; \
//                                 dval1[i] = dval1[i] + dval2[i];    i++; \
//                                 dval1[i] = dval1[i] + dval2[i];    i++; \
//                                 dval1[i] = dval1[i] + dval2[i];    i++; 
//#else
//#define BENCH_DOUBLE_ADD_CHUNK   dresult[i] = dval1[i] + dval2[i];    i++; \
//                                 dresult[i] = dval1[i] + dval2[i];    i++; \
//                                 dresult[i] = dval1[i] + dval2[i];    i++; \
//                                 dresult[i] = dval1[i] + dval2[i];    i++; 
//#endif
//
//void bench_double_add_4(int iterations)
//{
//   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
//   iterations *= 2;
//
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_64BIT;) {
//         BENCH_DOUBLE_ADD_CHUNK
//      }
//   }
//}
//
//void bench_double_add_8(int iterations)
//{
//   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
//   iterations *= 2;
//
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_64BIT;) {
//         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
//      }
//   }
//}
//
//void bench_double_add_16(int iterations)
//{
//   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
//   iterations *= 2;
//
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_64BIT;) {
//         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
//         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
//      }
//   }
//}
//
//void bench_double_add_32(int iterations)
//{
//   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
//   iterations *= 2;
//
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_64BIT;) {
//         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
//         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
//         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
//         BENCH_DOUBLE_ADD_CHUNK  BENCH_DOUBLE_ADD_CHUNK
//      }
//   }
//}
//
//
//#ifdef SELF_ASSIGN
//#define BENCH_FIXED_ADD_CHUNK    xval1[i] = xval1[i] + xval2[i];    i++; \
//                                 xval1[i] = xval1[i] + xval2[i];    i++; \
//                                 xval1[i] = xval1[i] + xval2[i];    i++; \
//                                 xval1[i] = xval1[i] + xval2[i];    i++; 
//#else
//#define BENCH_FIXED_ADD_CHUNK    xresult[i] = xval1[i] + xval2[i];    i++; \
//                                 xresult[i] = xval1[i] + xval2[i];    i++; \
//                                 xresult[i] = xval1[i] + xval2[i];    i++; \
//                                 xresult[i] = xval1[i] + xval2[i];    i++; 
//#endif
//
//void bench_fixed_add_4(int iterations)
//{
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_32BIT;) {
//         BENCH_FIXED_ADD_CHUNK
//      }
//   }
//}
//
//void bench_fixed_add_8(int iterations)
//{
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_32BIT;) {
//         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
//      }
//   }
//}
//
//void bench_fixed_add_16(int iterations)
//{
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_32BIT;) {
//         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
//         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
//      }
//   }
//}
//
//void bench_fixed_add_32(int iterations)
//{
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_32BIT;) {
//         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
//         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
//         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
//         BENCH_FIXED_ADD_CHUNK   BENCH_FIXED_ADD_CHUNK
//      }
//   }
//}


#define BENCH_RAND_CHUNK   i32val1[i] = rand();    i++; \
                           i32val1[i] = rand();    i++; \
                           i32val1[i] = rand();    i++; \
                           i32val1[i] = rand();    i++;

void bench_rand_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_RAND_CHUNK
      }
   }
}

void bench_rand_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_RAND_CHUNK  BENCH_RAND_CHUNK
      }
   }
}

void bench_rand_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_RAND_CHUNK  BENCH_RAND_CHUNK
         BENCH_RAND_CHUNK  BENCH_RAND_CHUNK
      }
   }
}

void bench_rand_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_RAND_CHUNK  BENCH_RAND_CHUNK
         BENCH_RAND_CHUNK  BENCH_RAND_CHUNK
         BENCH_RAND_CHUNK  BENCH_RAND_CHUNK
         BENCH_RAND_CHUNK  BENCH_RAND_CHUNK
      }
   }
}

#define BENCH_RAND_R_CHUNK   i32val1[i] = rand_r(&rand_r_seed_val);    i++; \
                             i32val1[i] = rand_r(&rand_r_seed_val);    i++; \
                             i32val1[i] = rand_r(&rand_r_seed_val);    i++; \
                             i32val1[i] = rand_r(&rand_r_seed_val);    i++;

void bench_rand_r_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_RAND_R_CHUNK
      }
   }
}

void bench_rand_r_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_RAND_R_CHUNK  BENCH_RAND_R_CHUNK
      }
   }
}

void bench_rand_r_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_RAND_R_CHUNK  BENCH_RAND_R_CHUNK
         BENCH_RAND_R_CHUNK  BENCH_RAND_R_CHUNK
      }
   }
}

void bench_rand_r_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_RAND_R_CHUNK  BENCH_RAND_R_CHUNK
         BENCH_RAND_R_CHUNK  BENCH_RAND_R_CHUNK
         BENCH_RAND_R_CHUNK  BENCH_RAND_R_CHUNK
         BENCH_RAND_R_CHUNK  BENCH_RAND_R_CHUNK
      }
   }
}

#define BENCH_FAST_RAND_CHUNK   i32val1[i] = fast_rand();    i++; \
                                i32val1[i] = fast_rand();    i++; \
                                i32val1[i] = fast_rand();    i++; \
                                i32val1[i] = fast_rand();    i++;

void bench_fast_rand_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FAST_RAND_CHUNK
      }
   }
}

void bench_fast_rand_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FAST_RAND_CHUNK  BENCH_FAST_RAND_CHUNK
      }
   }
}

void bench_fast_rand_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FAST_RAND_CHUNK  BENCH_FAST_RAND_CHUNK
         BENCH_FAST_RAND_CHUNK  BENCH_FAST_RAND_CHUNK
      }
   }
}

void bench_fast_rand_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FAST_RAND_CHUNK  BENCH_FAST_RAND_CHUNK
         BENCH_FAST_RAND_CHUNK  BENCH_FAST_RAND_CHUNK
         BENCH_FAST_RAND_CHUNK  BENCH_FAST_RAND_CHUNK
         BENCH_FAST_RAND_CHUNK  BENCH_FAST_RAND_CHUNK
      }
   }
}

#define BENCH_XORSHF96_CHUNK   i32val1[i] = xorshf96();    i++; \
                               i32val1[i] = xorshf96();    i++; \
                               i32val1[i] = xorshf96();    i++; \
                               i32val1[i] = xorshf96();    i++;

void bench_xorshf96_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_XORSHF96_CHUNK
      }
   }
}

void bench_xorshf96_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_XORSHF96_CHUNK  BENCH_XORSHF96_CHUNK
      }
   }
}

void bench_xorshf96_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_XORSHF96_CHUNK  BENCH_XORSHF96_CHUNK
         BENCH_XORSHF96_CHUNK  BENCH_XORSHF96_CHUNK
      }
   }
}

void bench_xorshf96_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_XORSHF96_CHUNK  BENCH_XORSHF96_CHUNK
         BENCH_XORSHF96_CHUNK  BENCH_XORSHF96_CHUNK
         BENCH_XORSHF96_CHUNK  BENCH_XORSHF96_CHUNK
         BENCH_XORSHF96_CHUNK  BENCH_XORSHF96_CHUNK
      }
   }
}

//#ifdef SELF_ASSIGN
//#define BENCH_I64_ADD_CHUNK      i64val1[i] = i64val1[i] + i64val2[i];    i++; \
//                                 i64val1[i] = i64val1[i] + i64val2[i];    i++; \
//                                 i64val1[i] = i64val1[i] + i64val2[i];    i++; \
//                                 i64val1[i] = i64val1[i] + i64val2[i];    i++;
//#else
//#define BENCH_I64_ADD_CHUNK      i64result[i] = i64val1[i] + i64val2[i];    i++; \
//                                 i64result[i] = i64val1[i] + i64val2[i];    i++; \
//                                 i64result[i] = i64val1[i] + i64val2[i];    i++; \
//                                 i64result[i] = i64val1[i] + i64val2[i];    i++;
//#endif
//
//void bench_i64_add_4(int iterations)
//{
//   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
//   iterations *= 2;
//
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_64BIT;) {
//         BENCH_I64_ADD_CHUNK
//      }
//   }
//}
//
//void bench_i64_add_8(int iterations)
//{
//   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
//   iterations *= 2;
//
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_64BIT;) {
//         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
//      }
//   }
//}
//
//void bench_i64_add_16(int iterations)
//{
//   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
//   iterations *= 2;
//
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_64BIT;) {
//         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
//         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
//      }
//   }
//}
//
//void bench_i64_add_32(int iterations)
//{
//   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
//   iterations *= 2;
//
//   int i;
//   for (int iter = 0; iter < iterations; iter++) {
//      for (i=0; i < ASIZE_64BIT;) {
//         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
//         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
//         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
//         BENCH_I64_ADD_CHUNK  BENCH_I64_ADD_CHUNK
//      }
//   }
//}
