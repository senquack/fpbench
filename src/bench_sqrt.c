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

#include <math.h>
#include "fpbench.h"
#include "bench_sqrt.h"

// Fast 16.16 fixed-point square root routine:
// Credit for this fast sqrt goes to Wilco Dijkstra http://www.finesse.demon.co.uk/steven/sqrt.html
#define iter1(N)              \
    try = root + (1 << (N));  \
    if (n >= try << (N))      \
    {   n -= try << (N);      \
        root |= 2 << (N);     \
    }
static uint32_t fpsqrt (uint32_t n)
{
    uint32_t root = 0, try;
    iter1 (15);    iter1 (14);    iter1 (13);    iter1 (12);
    iter1 (11);    iter1 (10);    iter1 ( 9);    iter1 ( 8);
    iter1 ( 7);    iter1 ( 6);    iter1 ( 5);    iter1 ( 4);
    iter1 ( 3);    iter1 ( 2);    iter1 ( 1);    iter1 ( 0);
//    return root >> 1;    // This was originally written for integer math
    return root << 7;   // Instead, convert to 16.16 fixed point while also dividing by 2
}

// the famous Quake square root
static float magic_sqrt (float number)
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
static double approx_double_sqrt (double y) 
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


#define BENCH_FLOAT_SQRT_CHUNK      fval1[i] = sqrtf(fval1[i]); i++;  \
                                    fval1[i] = sqrtf(fval1[i]); i++;  \
                                    fval1[i] = sqrtf(fval1[i]); i++;  \
                                    fval1[i] = sqrtf(fval1[i]); i++;

void bench_float_sqrt_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_SQRT_CHUNK
      }
   }
}

void bench_float_sqrt_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_SQRT_CHUNK  BENCH_FLOAT_SQRT_CHUNK
      }
   }
}

void bench_float_sqrt_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_SQRT_CHUNK  BENCH_FLOAT_SQRT_CHUNK
         BENCH_FLOAT_SQRT_CHUNK  BENCH_FLOAT_SQRT_CHUNK
      }
   }
}

void bench_float_sqrt_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_SQRT_CHUNK  BENCH_FLOAT_SQRT_CHUNK
         BENCH_FLOAT_SQRT_CHUNK  BENCH_FLOAT_SQRT_CHUNK
         BENCH_FLOAT_SQRT_CHUNK  BENCH_FLOAT_SQRT_CHUNK
         BENCH_FLOAT_SQRT_CHUNK  BENCH_FLOAT_SQRT_CHUNK
      }
   }
}


#define BENCH_QUAKE_SQRT_CHUNK      fresult[i] = magic_sqrt(fval1[i]);  i++; \
                                    fresult[i] = magic_sqrt(fval1[i]);  i++; \
                                    fresult[i] = magic_sqrt(fval1[i]);  i++; \
                                    fresult[i] = magic_sqrt(fval1[i]);  i++;

void bench_quake_sqrt_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_QUAKE_SQRT_CHUNK
      }
   }
}

void bench_quake_sqrt_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_QUAKE_SQRT_CHUNK  BENCH_QUAKE_SQRT_CHUNK
      }
   }
}

void bench_quake_sqrt_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_QUAKE_SQRT_CHUNK  BENCH_QUAKE_SQRT_CHUNK
         BENCH_QUAKE_SQRT_CHUNK  BENCH_QUAKE_SQRT_CHUNK
      }
   }
}

void bench_quake_sqrt_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_QUAKE_SQRT_CHUNK  BENCH_QUAKE_SQRT_CHUNK
         BENCH_QUAKE_SQRT_CHUNK  BENCH_QUAKE_SQRT_CHUNK
         BENCH_QUAKE_SQRT_CHUNK  BENCH_QUAKE_SQRT_CHUNK
         BENCH_QUAKE_SQRT_CHUNK  BENCH_QUAKE_SQRT_CHUNK
      }
   }
}


#define BENCH_DOUBLE_SQRT_CHUNK     dresult[i] = sqrt(dval1[i]);  i++; \
                                    dresult[i] = sqrt(dval1[i]);  i++; \
                                    dresult[i] = sqrt(dval1[i]);  i++; \
                                    dresult[i] = sqrt(dval1[i]);  i++;

void bench_double_sqrt_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_SQRT_CHUNK
      }
   }
}

void bench_double_sqrt_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_SQRT_CHUNK    BENCH_DOUBLE_SQRT_CHUNK
      }
   }
}

void bench_double_sqrt_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_SQRT_CHUNK    BENCH_DOUBLE_SQRT_CHUNK
         BENCH_DOUBLE_SQRT_CHUNK    BENCH_DOUBLE_SQRT_CHUNK
      }
   }
}

void bench_double_sqrt_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_SQRT_CHUNK    BENCH_DOUBLE_SQRT_CHUNK
         BENCH_DOUBLE_SQRT_CHUNK    BENCH_DOUBLE_SQRT_CHUNK
         BENCH_DOUBLE_SQRT_CHUNK    BENCH_DOUBLE_SQRT_CHUNK
         BENCH_DOUBLE_SQRT_CHUNK    BENCH_DOUBLE_SQRT_CHUNK
      }
   }
}


#define BENCH_APPROX_DOUBLE_SQRT_CHUNK    dresult[i] = approx_double_sqrt(dval1[i]); i++; \
                                          dresult[i] = approx_double_sqrt(dval1[i]); i++; \
                                          dresult[i] = approx_double_sqrt(dval1[i]); i++; \
                                          dresult[i] = approx_double_sqrt(dval1[i]); i++;

void bench_approx_double_sqrt_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_APPROX_DOUBLE_SQRT_CHUNK
      }
   }
}

void bench_approx_double_sqrt_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_APPROX_DOUBLE_SQRT_CHUNK   BENCH_APPROX_DOUBLE_SQRT_CHUNK
      }
   }
}

void bench_approx_double_sqrt_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_APPROX_DOUBLE_SQRT_CHUNK   BENCH_APPROX_DOUBLE_SQRT_CHUNK
         BENCH_APPROX_DOUBLE_SQRT_CHUNK   BENCH_APPROX_DOUBLE_SQRT_CHUNK
      }
   }
}

void bench_approx_double_sqrt_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_APPROX_DOUBLE_SQRT_CHUNK   BENCH_APPROX_DOUBLE_SQRT_CHUNK
         BENCH_APPROX_DOUBLE_SQRT_CHUNK   BENCH_APPROX_DOUBLE_SQRT_CHUNK
         BENCH_APPROX_DOUBLE_SQRT_CHUNK   BENCH_APPROX_DOUBLE_SQRT_CHUNK
         BENCH_APPROX_DOUBLE_SQRT_CHUNK   BENCH_APPROX_DOUBLE_SQRT_CHUNK
      }
   }
}


#define BENCH_FIXED_SQRT_CHUNK      xresult[i] = FSQRT(xval1[i]);    i++;  \
                                    xresult[i] = FSQRT(xval1[i]);    i++;  \
                                    xresult[i] = FSQRT(xval1[i]);    i++;  \
                                    xresult[i] = FSQRT(xval1[i]);    i++;

void bench_fixed_sqrt_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_SQRT_CHUNK
      }
   }
}

void bench_fixed_sqrt_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_SQRT_CHUNK  BENCH_FIXED_SQRT_CHUNK
      }
   }
}

void bench_fixed_sqrt_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_SQRT_CHUNK  BENCH_FIXED_SQRT_CHUNK
         BENCH_FIXED_SQRT_CHUNK  BENCH_FIXED_SQRT_CHUNK
      }
   }
}

void bench_fixed_sqrt_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FIXED_SQRT_CHUNK  BENCH_FIXED_SQRT_CHUNK
         BENCH_FIXED_SQRT_CHUNK  BENCH_FIXED_SQRT_CHUNK
         BENCH_FIXED_SQRT_CHUNK  BENCH_FIXED_SQRT_CHUNK
         BENCH_FIXED_SQRT_CHUNK  BENCH_FIXED_SQRT_CHUNK
      }
   }
}
