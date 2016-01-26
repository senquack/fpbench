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
#include "bench_trig.h"

#define SIN_TABLE_ELEMS ((360 + 90)*4)
static float sin_table[SIN_TABLE_ELEMS];    // 1/4 degree accuracy

void populate_sin_table(void)
{
   double x = 0;
   int i;
   for (i=0; i < SIN_TABLE_ELEMS; i++, x += 0.25f) {
      sin_table[i] = (float)sin(x * M_PI / 180.0);
   }
}

static float lookup_sin_deg(float deg)
{
   while (deg > 360.0f) {
      deg -= 360.0f;
   }
   while (deg < 0.0f) {
      deg += 360.0f;
   }

   deg *= 4.0f;
   int idx = (int)(deg + 0.5f);
   return sin_table[idx];
}

static float lookup_sin_rad(float rad)
{
   float deg = rad * (180.0f / (float)M_PI);
   while (deg > 360.0f) {
      deg -= 360.0f;
   }
   while (deg < 0.0f) {
      deg += 360.0f;
   }

   deg *= 4.0f;
   int idx = (int)(deg + 0.5f);
   return sin_table[idx];
}

//NOTE: this is very inaccurate as input comes close to pi/2, need to figure out why:
// 3-term Taylor series expansion:
static inline float approx_sin_3_terms(float in) 
{
   float sign = 1.0f;
   if (in < 0.0f) {
      sign = -1.0f;
   }

   float x = in;

   while (x > (M_PI / 2.0f)) {
      x -= M_PI;
      sign *= -1.0f;
   }

   while (x < -(M_PI / 2.0f)) {
      x += M_PI;
      sign *= -1.0f;
   }

   float res = (1.0f - (((x * x) / (3.0f * 2.0f)) + ((x * x * x * x) / (5.0f * 4.0f * 3.0f * 2.0f))
               - ((x * x * x * x * x * x) / (7.0f * 6.0f * 5.0f * 4.0f * 3.0f * 2.0f)))) * x;
   return res * sign;
}

static inline float approx_sin_deg_3_terms(float in)
{
   return approx_sin_3_terms(in * M_PI / 180.0f);
}

//NOTE: Does not seem to improve on inaccuracy-close-to-pi/2 problem of above function:
/*
static inline float approx_sin_4_terms(float in) 
{
   float sign = 1.0f;
   if (in < 0.0f) {
      sign = -1.0f;
   }

   float x = in;

   while (x > (M_PI / 2.0f)) {
      x -= M_PI;
      sign *= -1.0f;
   }

   while (x < -(M_PI / 2.0f)) {
      x += M_PI;
      sign *= -1.0f;
   }

   float res = (x - (((x * x * x) / (3.0f * 2.0f)) + ((x * x * x * x * x) / (5.0f * 4.0f * 3.0f * 2.0f))
               - ((x * x * x * x * x * x * x) / (7.0f * 6.0f * 5.0f * 4.0f * 3.0f * 2.0f)))
               + ((x * x * x * x * x * x * x * x * x) / (9.0f * 8.0f * 7.0f * 6.0f * 5.0f * 4.0f * 3.0f * 2.0f)));

   return res * sign;
}
*/

float approx_sin_n_terms(float x, int j)
{
   float sign = 1.0f;
   if (x < 0.0f) {
      sign = -1.0f;
   }

   while (x > (M_PI / 2.0f)) {
      x -= M_PI;
      sign *= -1.0f;
   }

   while (x < -(M_PI / 2.0f)) {
      x += M_PI;
      sign *= -1.0f;
   }

    float val = 1.0f;

    for (float k = j - 1; k >= 0; k-=1.0f)
        val = 1.0f - x*x/(2.0f*k+2.0f)/(2.0f*k+3.0f)*val;

    return x * val * sign;
}


#define BENCH_FLOAT_SINF_CHUNK      fresult[i] = sinf(fval1[i] * ((float)M_PI / 180.0f)); i++;  \
                                    fresult[i] = sinf(fval1[i] * ((float)M_PI / 180.0f)); i++;  \
                                    fresult[i] = sinf(fval1[i] * ((float)M_PI / 180.0f)); i++;  \
                                    fresult[i] = sinf(fval1[i] * ((float)M_PI / 180.0f)); i++;

void bench_float_sinf_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_SINF_CHUNK
      }
   }
}

void bench_float_sinf_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_SINF_CHUNK  BENCH_FLOAT_SINF_CHUNK
      }
   }
}

void bench_float_sinf_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_SINF_CHUNK  BENCH_FLOAT_SINF_CHUNK
            BENCH_FLOAT_SINF_CHUNK  BENCH_FLOAT_SINF_CHUNK
      }
   }
}

void bench_float_sinf_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_FLOAT_SINF_CHUNK  BENCH_FLOAT_SINF_CHUNK
            BENCH_FLOAT_SINF_CHUNK  BENCH_FLOAT_SINF_CHUNK
            BENCH_FLOAT_SINF_CHUNK  BENCH_FLOAT_SINF_CHUNK
            BENCH_FLOAT_SINF_CHUNK  BENCH_FLOAT_SINF_CHUNK
      }
   }
}


#define BENCH_DOUBLE_SIN_CHUNK      dresult[i] = sin(dval1[i] * (M_PI / 180.0));  i++; \
                                    dresult[i] = sin(dval1[i] * (M_PI / 180.0));  i++; \
                                    dresult[i] = sin(dval1[i] * (M_PI / 180.0));  i++; \
                                    dresult[i] = sin(dval1[i] * (M_PI / 180.0));  i++;

void bench_double_sin_4(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_SIN_CHUNK
      }
   }
}

void bench_double_sin_8(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_SIN_CHUNK    BENCH_DOUBLE_SIN_CHUNK
      }
   }
}

void bench_double_sin_16(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_SIN_CHUNK    BENCH_DOUBLE_SIN_CHUNK
         BENCH_DOUBLE_SIN_CHUNK    BENCH_DOUBLE_SIN_CHUNK
      }
   }
}

void bench_double_sin_32(int iterations)
{
   // Do twice the number of iterations because our 64-bit arrays are half as big as the 32-bit arrays.
   iterations *= 2;

   int i;
   for (int iter = 0; iter < iterations; iter++) {     
      for (i=0; i < ASIZE_64BIT;) {
         BENCH_DOUBLE_SIN_CHUNK    BENCH_DOUBLE_SIN_CHUNK
         BENCH_DOUBLE_SIN_CHUNK    BENCH_DOUBLE_SIN_CHUNK
         BENCH_DOUBLE_SIN_CHUNK    BENCH_DOUBLE_SIN_CHUNK
         BENCH_DOUBLE_SIN_CHUNK    BENCH_DOUBLE_SIN_CHUNK
      }
   }
}


#define BENCH_APPROX_FLOAT_SIN_CHUNK      fresult[i] = approx_sin_deg_3_terms(fval1[i]); i++;  \
                                          fresult[i] = approx_sin_deg_3_terms(fval1[i]); i++;  \
                                          fresult[i] = approx_sin_deg_3_terms(fval1[i]); i++;  \
                                          fresult[i] = approx_sin_deg_3_terms(fval1[i]); i++;

void bench_approx_float_sin_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_CHUNK
      }
   }
}

void bench_approx_float_sin_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_CHUNK  BENCH_APPROX_FLOAT_SIN_CHUNK
      }
   }
}

void bench_approx_float_sin_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_CHUNK  BENCH_APPROX_FLOAT_SIN_CHUNK
         BENCH_APPROX_FLOAT_SIN_CHUNK  BENCH_APPROX_FLOAT_SIN_CHUNK
      }
   }
}

void bench_approx_float_sin_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_CHUNK  BENCH_APPROX_FLOAT_SIN_CHUNK
         BENCH_APPROX_FLOAT_SIN_CHUNK  BENCH_APPROX_FLOAT_SIN_CHUNK
         BENCH_APPROX_FLOAT_SIN_CHUNK  BENCH_APPROX_FLOAT_SIN_CHUNK
         BENCH_APPROX_FLOAT_SIN_CHUNK  BENCH_APPROX_FLOAT_SIN_CHUNK
      }
   }
}


#define BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK      fresult[i] = approx_sin_n_terms(fval1[i],3); i++;  \
                                                  fresult[i] = approx_sin_n_terms(fval1[i],3); i++;  \
                                                  fresult[i] = approx_sin_n_terms(fval1[i],3); i++;  \
                                                  fresult[i] = approx_sin_n_terms(fval1[i],3); i++;

void bench_approx_float_sin_3_terms_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK
      }
   }
}

void bench_approx_float_sin_3_terms_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK
      }
   }
}

void bench_approx_float_sin_3_terms_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK
         BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK
      }
   }
}

void bench_approx_float_sin_3_terms_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK
         BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK
         BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK
         BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_3_TERMS_CHUNK
      }
   }
}

#define BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK      fresult[i] = approx_sin_n_terms(fval1[i],4); i++;  \
                                                  fresult[i] = approx_sin_n_terms(fval1[i],4); i++;  \
                                                  fresult[i] = approx_sin_n_terms(fval1[i],4); i++;  \
                                                  fresult[i] = approx_sin_n_terms(fval1[i],4); i++;


void bench_approx_float_sin_4_terms_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK
      }
   }
}

void bench_approx_float_sin_4_terms_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK
      }
   }
}

void bench_approx_float_sin_4_terms_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK
         BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK
      }
   }
}

void bench_approx_float_sin_4_terms_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK
         BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK
         BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK
         BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK  BENCH_APPROX_FLOAT_SIN_4_TERMS_CHUNK
      }
   }
}


#define BENCH_LOOKUP_FLOAT_SIN_CHUNK      fresult[i] = lookup_sin_deg(fval1[i]); i++;  \
                                          fresult[i] = lookup_sin_deg(fval1[i]); i++;  \
                                          fresult[i] = lookup_sin_deg(fval1[i]); i++;  \
                                          fresult[i] = lookup_sin_deg(fval1[i]); i++;

void bench_lookup_float_sin_4(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_LOOKUP_FLOAT_SIN_CHUNK
      }
   }
}

void bench_lookup_float_sin_8(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_LOOKUP_FLOAT_SIN_CHUNK  BENCH_LOOKUP_FLOAT_SIN_CHUNK
      }
   }
}

void bench_lookup_float_sin_16(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_LOOKUP_FLOAT_SIN_CHUNK  BENCH_LOOKUP_FLOAT_SIN_CHUNK
         BENCH_LOOKUP_FLOAT_SIN_CHUNK  BENCH_LOOKUP_FLOAT_SIN_CHUNK
      }
   }
}

void bench_lookup_float_sin_32(int iterations)
{
   int i;
   for (int iter = 0; iter < iterations; iter++) {
      for (i=0; i < ASIZE_32BIT;) {
         BENCH_LOOKUP_FLOAT_SIN_CHUNK  BENCH_LOOKUP_FLOAT_SIN_CHUNK
         BENCH_LOOKUP_FLOAT_SIN_CHUNK  BENCH_LOOKUP_FLOAT_SIN_CHUNK
         BENCH_LOOKUP_FLOAT_SIN_CHUNK  BENCH_LOOKUP_FLOAT_SIN_CHUNK
         BENCH_LOOKUP_FLOAT_SIN_CHUNK  BENCH_LOOKUP_FLOAT_SIN_CHUNK
      }
   }
}

//experiment/debug:
#include "stdlib.h"
#include "stdio.h"
void test_trig()
{
//   srand(0xDEADBEEF);
   srand48(0xDEADBEEF); // Seed RNG with the same constant always for consistent comparisons across runs
   populate_sin_table();
   float f_result, t_result, a3_result, a4_result, l_result;
   double d_result;
   
   for (int i = 0; i < 50; i++) {
      float deg = (float)(drand48() * (360.0f + 90.0f));
      f_result = sinf(deg * M_PI / 180.0f);
      d_result = sin(deg * M_PI / 180.0);
//      a_result = approx_sin_deg(deg);
      t_result = approx_sin_deg_3_terms(deg);
      a3_result = approx_sin_n_terms((deg *( M_PI / 180.0f)), 3);
      a4_result = approx_sin_n_terms((deg *( M_PI / 180.0f)), 4);
      l_result = lookup_sin_deg(deg);
      printf("Deg: %f\tF: %f D: %f T: %f A3: %f A4: %f L: %f\n", deg, f_result, d_result, t_result, a3_result, a4_result, l_result);
   }
}


