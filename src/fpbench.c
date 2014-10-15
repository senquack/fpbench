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

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <assert.h>

#include "fpbench.h"
#include "misc.h"
#include "bench_add.h"
#include "bench_mul.h"
#include "bench_div.h"
#include "bench_sqrt.h"
#include "bench_conv.h"

const char *fpbench_version_str = "1.0";

char *csv_output_filename = "fpbench_csv_output.txt";
char *summary_output_filename = "fpbench_summary_output.txt";

// In these arrays: *val1: first operands, *val2: second operands, *result: results of operation
float    fval1[ASIZE_32BIT],  fval2[ASIZE_32BIT], fresult[ASIZE_32BIT]; // Float arrays
int32_t  xval1[ASIZE_32BIT], xval2[ASIZE_32BIT], xresult[ASIZE_32BIT];  // 16.16 Fixed-point array
double   dval1[ASIZE_64BIT], dval2[ASIZE_64BIT], dresult[ASIZE_64BIT];  // Double arrays
int32_t i32val1[ASIZE_32BIT], i32val2[ASIZE_32BIT], i32result[ASIZE_32BIT];  // 32-bit int arrays
int64_t i64val1[ASIZE_64BIT], i64val2[ASIZE_64BIT], i64result[ASIZE_64BIT];  // 64-bit int arrays 

// First entry in an a linked-list of structs holding table of best times & text-descriptions of all benchmarks.
struct summary_entry {  
   char desc[128];      // text description of benchmark entry
   uint64_t time;       // time in nanoseconds
   struct summary_entry *next_entry;   // next entry in linked list
   int   is_separator_entry;     // is this a dummy entry indicating the end of a group of benchmarks?
} *summary;

int summary_num_entries = 0;

void insert_summary_entry(char *desc,  uint64_t time, int is_separator_entry )  
{
   static struct summary_entry *cur_entry_ptr = NULL; // Pointer to next unfilled entry in list
   if (summary_num_entries == 0) {
      // This is the first entry in the list: allocate memory for top entry of list and point to it
      cur_entry_ptr = summary = malloc(sizeof(struct summary_entry));
      assert(summary);
   }
   summary_num_entries++;
   strcpy(cur_entry_ptr->desc, desc);
   cur_entry_ptr->time = time;
   cur_entry_ptr->next_entry = malloc(sizeof(struct summary_entry));    // Allocate memory for next entry
   cur_entry_ptr->is_separator_entry = is_separator_entry;
   assert(cur_entry_ptr->next_entry);  // Did we get more memory? Hopefully.
   cur_entry_ptr = cur_entry_ptr->next_entry;
}


void print_csv_summary_to_file(FILE *fp, struct summary_entry *entries, int num_entries, int iterations)
{
   // print a line of comma-separated descriptions:
   struct summary_entry *entry_ptr = entries;
   int printed_first_line_element = 0;
   for (int i = 0; (i < num_entries) && entry_ptr; i++) {
      if (!entry_ptr->is_separator_entry) {
         if (!printed_first_line_element) {
            printed_first_line_element = 1;
         } else {
            fprintf(fp, ",");
         }
         fprintf(fp, "%s", entry_ptr->desc); 
      }
      entry_ptr = entry_ptr->next_entry;
   }
   fprintf(fp, "\n");

   // then, print a line of comma-separated list of iterations-a-second
   entry_ptr = entries;
   printed_first_line_element = 0;
   for (int i = 0; (i < num_entries) && entry_ptr; i++) {
      if (!entry_ptr->is_separator_entry) {
         if (!printed_first_line_element) {
            printed_first_line_element = 1;
         } else {
            fprintf(fp, ",");
         }
         // OLD, BAD CODE:
//         fprintf(fp, "%.12f", 1000000000.0 / (double)entry_ptr->time );   // print # of iterations a second
         fprintf(fp, "%.7f", 1000.0 / ((double)entry_ptr->time / (double)iterations / (double)(ASIZE_32BIT)));   // print # of iterations a second
      }
      entry_ptr = entry_ptr->next_entry;
   }
   fprintf(fp, "\n");
}

void print_summary_to_file(FILE *fp, struct summary_entry *entries, int num_entries, int iterations)
{
   assert(fp);

   struct summary_entry *entry_ptr = entries;
   fprintf(fp, "\n");
   fprintf(fp, "+------------------------------------------------------------------------------+\n");
   fprintf(fp, "|                               FPBENCH SUMMARY                                |\n");
   fprintf(fp, "+------------------------------------------------------------------------------+\n");
   fprintf(fp, "| Iterations: %-24d | Math ops per iteration: %-13d |\n", iterations, ASIZE_32BIT);
   fprintf(fp, "+------------------------------------------------------------------------------+\n\n");

   fprintf(fp, "+------------------------------------------------------------------------------+\n");
   fprintf(fp, "| Benchmark description               |  ns / operation   | millions of op / s |\n");
   fprintf(fp, "|                                     | (lower = better)  |  (higher = better) |\n");
   fprintf(fp, "+------------------------------------------------------------------------------+\n");

   for (int i = 0; (i < num_entries) && entry_ptr; i++) {
      if ( entry_ptr->is_separator_entry ) {
         fprintf(fp, "+------------------------------------------------------------------------------+\n");
      } else {
         // OLD, BAD CODE:
//          fprintf(fp, "| %-41s|%17.7f | %15.7f|\n", entry_ptr->desc,
//            (double)entry_ptr->time / (double)iterations / 1000.0,
//            1000000000.0 / (double)entry_ptr->time);
         fprintf(fp, "| %-36s|%19.4f|%20.6f|\n", entry_ptr->desc, 
               (double)entry_ptr->time / (double)iterations / (double)ASIZE_32BIT,  // Time to complete 1 op in nanoseconds
               1000.0 / ((double)entry_ptr->time / (double)iterations / (double)ASIZE_32BIT));  // Million oper's / sec
      }
      entry_ptr = entry_ptr->next_entry;
   }
}

// Free all data previously allocated for linked list starting at entries
void free_summary(struct summary_entry *summary, int num_entries)
{
   struct summary_entry *entry_ptr = summary;
   if (num_entries == 0) return;
   for (int i = 0; (i < num_entries) && entry_ptr; i++) {
      struct summary_entry *next_entry = entry_ptr->next_entry;
      free(entry_ptr);
      entry_ptr = next_entry;
   }
   if (entry_ptr) free(entry_ptr);  // Free the next_entry pointer in the last node of the list
}

void bench_addition(int iterations)
{
   int best_entry;
   struct bench_entry bench_entries[4];

   bench_entries[0].desc = "Unrolled 4  times";
   bench_entries[1].desc = "Unrolled 8  times";
   bench_entries[2].desc = "Unrolled 16 times";   
   bench_entries[3].desc = "Unrolled 32 times";   

   printf("\nADDITION BENCHMARKS:\n");
   printf("Float:\n");
   fill_float_array(fval1, 0.0001, 16383.0);    
   fill_float_array(fval2, 0.0001, 16383.0);    
   bench_entries[0].func = bench_float_add_4;
   bench_entries[1].func = bench_float_add_8; 
   bench_entries[2].func = bench_float_add_16;
   bench_entries[3].func = bench_float_add_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("ADDITION (float)", bench_entries[best_entry].time, 0);

   printf("Double:\n");
   fill_double_array(dval1, 0.0001, 16383.0);      
   fill_double_array(dval2, 0.0001, 16383.0);      
   bench_entries[0].func = bench_double_add_4; 
   bench_entries[1].func = bench_double_add_8; 
   bench_entries[2].func = bench_double_add_16;
   bench_entries[3].func = bench_double_add_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("ADDITION (double)", bench_entries[best_entry].time, 0);

   printf("Fixed-point 16.16:\n");
   fill_float_array(fval1, 0.0001, 16383.0);    
   fill_float_array(fval2, 0.0001, 16383.0);    
   fill_fixed_array_from_float_array(xval1, fval1);
   fill_fixed_array_from_float_array(xval2, fval2);
   bench_entries[0].func = bench_fixed_add_4; 
   bench_entries[1].func = bench_fixed_add_8;  
   bench_entries[2].func = bench_fixed_add_16;
   bench_entries[3].func = bench_fixed_add_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("ADDITION (fixed-point 16.16)", bench_entries[best_entry].time, 0);

   printf("32-bit integer:\n");
   fill_i32_array(i32val1, 0xFFFFFFFF);
   fill_i32_array(i32val2, 0xFFFFFFFF);   
   bench_entries[0].func = bench_i32_add_4;   
   bench_entries[1].func = bench_i32_add_8;  
   bench_entries[2].func = bench_i32_add_16;
   bench_entries[3].func = bench_i32_add_32; 
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("ADDITION (32-bit integer)", bench_entries[best_entry].time, 0);

   printf("64-bit integer:\n");
   fill_i64_array(i64val1, 0xFFFFFFFFFFFFFFFF);
   fill_i64_array(i64val2, 0xFFFFFFFFFFFFFFFF);
   bench_entries[0].func = bench_i64_add_4; 
   bench_entries[1].func = bench_i64_add_8; 
   bench_entries[2].func = bench_i64_add_16;
   bench_entries[3].func = bench_i64_add_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("ADDITION (64-bit integer)", bench_entries[best_entry].time, 0);

   insert_summary_entry("", 0, 1);
}

void bench_multiplication(int iterations)
{
   int best_entry;
   struct bench_entry bench_entries[4];
   bench_entries[0].desc = "Unrolled 4  times";
   bench_entries[1].desc = "Unrolled 8  times";
   bench_entries[2].desc = "Unrolled 16 times";   
   bench_entries[3].desc = "Unrolled 32 times";   

   printf("\nMULTIPLICATION BENCHMARKS:\n");
   printf("Float:\n");
   fill_float_array(fval1, 0.001, 181.0);    
   fill_float_array(fval2, 0.001, 181.0);
   bench_entries[0].func = bench_float_mul_4; 
   bench_entries[1].func = bench_float_mul_8; 
   bench_entries[2].func = bench_float_mul_16;
   bench_entries[3].func = bench_float_mul_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("MULTIPLICATION (float)", bench_entries[best_entry].time, 0);

   printf("Double:\n");
   fill_double_array(dval1, 0.001, 181.0);      
   fill_double_array(dval2, 0.001, 181.0);
   bench_entries[0].func = bench_double_mul_4; 
   bench_entries[1].func = bench_double_mul_8; 
   bench_entries[2].func = bench_double_mul_16;
   bench_entries[3].func = bench_double_mul_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("MULTIPLICATION (double)", bench_entries[best_entry].time, 0);

   printf("Fixed-point (16.16):\n");
   fill_float_array(fval1, 0.001, 181.0);    // Don't want overflow
   fill_float_array(fval2, 0.001, 181.0);
   fill_fixed_array_from_float_array(xval1, fval1);
   fill_fixed_array_from_float_array(xval2, fval2);
   bench_entries[0].func = bench_fixed_mul_4;  
   bench_entries[1].func = bench_fixed_mul_8;  
   bench_entries[2].func = bench_fixed_mul_16; 
   bench_entries[3].func = bench_fixed_mul_32; 
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("MULTIPLICATION (fixed-point 16.16)", bench_entries[best_entry].time, 0);

   printf("32-bit integer:\n");
   fill_i32_array(i32val1, 0xFFFF);
   fill_i32_array(i32val2, 0xFFFF);
   bench_entries[0].func = bench_i32_mul_4;  
   bench_entries[1].func = bench_i32_mul_8; 
   bench_entries[2].func = bench_i32_mul_16;
   bench_entries[3].func = bench_i32_mul_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("MULTIPLICATION (32-bit integer)", bench_entries[best_entry].time, 0);

   printf("64-bit integer:\n");
   fill_i64_array(i64val1, 0xFFFFFFFF);
   fill_i64_array(i64val2, 0xFFFFFFFF);
   bench_entries[0].func = bench_i64_mul_4; 
   bench_entries[1].func = bench_i64_mul_8; 
   bench_entries[2].func = bench_i64_mul_16;
   bench_entries[3].func = bench_i64_mul_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("MULTIPLICATION (64-bit integer)", bench_entries[best_entry].time, 0);

   insert_summary_entry("", 0, 1);
}

void bench_division(int iterations)
{
   int best_entry;
   struct bench_entry bench_entries[4];
   bench_entries[0].desc = "Unrolled 4  times";
   bench_entries[1].desc = "Unrolled 8  times";
   bench_entries[2].desc = "Unrolled 16 times";   
   bench_entries[3].desc = "Unrolled 32 times";   

   printf("\nDIVISION BENCHMARKS:\n");
   printf("Float:\n");   
   fill_float_array(fval1, 1, 3072);
   fill_float_array(fval2, 0.1, 4096);
   bench_entries[0].func = bench_float_div_4;    
   bench_entries[1].func = bench_float_div_8;    
   bench_entries[2].func = bench_float_div_16;   
   bench_entries[3].func = bench_float_div_32;   
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("DIVISION (float)", bench_entries[best_entry].time, 0);

   printf("Double:\n");
   fill_double_array(dval1, 1, 3072);
   fill_double_array(dval2, 0.1, 4096);
   bench_entries[0].func = bench_double_div_4;  
   bench_entries[1].func = bench_double_div_8; 
   bench_entries[2].func = bench_double_div_16;
   bench_entries[3].func = bench_double_div_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("DIVISION (double)", bench_entries[best_entry].time, 0);

   printf("Fixed-point 16.16:\n");
   fill_float_array(fval1, 1, 3072);      // Don't want overflow
   fill_float_array(fval2, 0.1, 4096);
   fill_fixed_array_from_float_array(xval1, fval1);
   fill_fixed_array_from_float_array(xval2, fval2);
   bench_entries[0].func = bench_fixed_div_4; 
   bench_entries[1].func = bench_fixed_div_8;
   bench_entries[2].func = bench_fixed_div_16;
   bench_entries[3].func = bench_fixed_div_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("DIVISION (fixed-point 16.16)", bench_entries[best_entry].time, 0);

   printf("32-bit integer:\n");
   fill_i32_array(i32val1, 0xFFFFFFFF);
   fill_i32_array(i32val2, 0xFFFF);
   bench_entries[0].func = bench_i32_div_4; 
   bench_entries[1].func = bench_i32_div_8; 
   bench_entries[2].func = bench_i32_div_16;
   bench_entries[3].func = bench_i32_div_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("DIVISION (32-bit integer)", bench_entries[best_entry].time, 0);

   printf("64-bit integer:\n");
   fill_i64_array(i64val1, 0xFFFFFFFFFFFFFFFF);
   fill_i64_array(i64val2, 0xFFFFFFFF);
   bench_entries[0].func = bench_i64_div_4; 
   bench_entries[1].func = bench_i64_div_8; 
   bench_entries[2].func = bench_i64_div_16;
   bench_entries[3].func = bench_i64_div_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("DIVISION (64-bit integer)", bench_entries[best_entry].time, 0);

   insert_summary_entry("", 0, 1);
}

void bench_squareroot(int iterations)
{
   int best_entry;
   struct bench_entry bench_entries[4];
   bench_entries[0].desc = "Unrolled 4  times";
   bench_entries[1].desc = "Unrolled 8  times";
   bench_entries[2].desc = "Unrolled 16 times";   
   bench_entries[3].desc = "Unrolled 32 times";   

   printf("\nSQUARE ROOT BENCHMARKS:\n");
   printf("Float:\n");
   fill_float_array(fval1, 0.00001, 32768);
   bench_entries[0].func = bench_float_sqrt_4; 
   bench_entries[1].func = bench_float_sqrt_8; 
   bench_entries[2].func = bench_float_sqrt_16;
   bench_entries[3].func = bench_float_sqrt_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("SQUARE ROOT (float)", bench_entries[best_entry].time, 0);

   printf("Float (fast-inverse):\n");
   fill_float_array(fval1, 0.00001, 32768);
   bench_entries[0].func = bench_quake_sqrt_4; 
   bench_entries[1].func = bench_quake_sqrt_8; 
   bench_entries[2].func = bench_quake_sqrt_16;
   bench_entries[3].func = bench_quake_sqrt_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("SQUARE ROOT FAST-INVERSE (float)", bench_entries[best_entry].time, 0);

   printf("Fixed-point 16.16:\n");
   fill_float_array(fval1, 0.00001, 32768);
   fill_fixed_array_from_float_array(xval1, fval1);
   bench_entries[0].func = bench_fixed_sqrt_4; 
   bench_entries[1].func = bench_fixed_sqrt_8; 
   bench_entries[2].func = bench_fixed_sqrt_16;
   bench_entries[3].func = bench_fixed_sqrt_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("SQUARE ROOT (fixed-point 16.16)", bench_entries[best_entry].time, 0);

   printf("Double:\n");
   fill_double_array(dval1, 0.00001, 32768);    // Do a direct comparison of above
   bench_entries[0].func = bench_double_sqrt_4; 
   bench_entries[1].func = bench_double_sqrt_8; 
   bench_entries[2].func = bench_double_sqrt_16;
   bench_entries[3].func = bench_double_sqrt_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("SQUARE ROOT (double)", bench_entries[best_entry].time, 0);

   printf("Double (approximation):\n");
   fill_double_array(dval1, 0.00001, 32768); // Do a direct comparison of above
   bench_entries[0].func = bench_approx_double_sqrt_4;
   bench_entries[1].func = bench_approx_double_sqrt_8;
   bench_entries[2].func = bench_approx_double_sqrt_16;
   bench_entries[3].func = bench_approx_double_sqrt_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("SQUARE ROOT APPROXIMATION (double)", bench_entries[best_entry].time, 0);

   insert_summary_entry("", 0, 1);
}

void bench_conversions(int iterations)
{
   int best_entry;
   struct bench_entry bench_entries[4];
   bench_entries[0].desc = "Unrolled 4  times";
   bench_entries[1].desc = "Unrolled 8  times";
   bench_entries[2].desc = "Unrolled 16 times";   
   bench_entries[3].desc = "Unrolled 32 times";   

   printf("\nCONVERSION BENCHMARKS:\n");
   fill_float_array(fval1, 0.00001, 0xFFFFFFFF);
   fill_double_array(dval1, 0.00001, 0xFFFFFFFF);
   fill_i32_array(i32val1, 0xFFFFFFFF);
   
   printf("32-bit integer to float:\n");
   bench_entries[0].func = bench_int32_to_float_conv_4;
   bench_entries[1].func = bench_int32_to_float_conv_8;
   bench_entries[2].func = bench_int32_to_float_conv_16;
   bench_entries[3].func = bench_int32_to_float_conv_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("CONVERT (32-bit integer to float)", bench_entries[best_entry].time, 0);

   printf("Float to 32-bit integer:\n");
   bench_entries[0].func = bench_float_to_int32_conv_4;
   bench_entries[1].func = bench_float_to_int32_conv_8;
   bench_entries[2].func = bench_float_to_int32_conv_16;
   bench_entries[3].func = bench_float_to_int32_conv_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("CONVERT (float to 32-bit integer)", bench_entries[best_entry].time, 0);

   printf("32-bit integer to double:\n");
   bench_entries[0].func = bench_int32_to_double_conv_4;
   bench_entries[1].func = bench_int32_to_double_conv_8;
   bench_entries[2].func = bench_int32_to_double_conv_16;
   bench_entries[3].func = bench_int32_to_double_conv_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("CONVERT (32-bit integer to double)", bench_entries[best_entry].time, 0);

   printf("Double to 32-bit integer:\n");
   bench_entries[0].func = bench_double_to_int32_conv_4;
   bench_entries[1].func = bench_double_to_int32_conv_8;
   bench_entries[2].func = bench_double_to_int32_conv_16;
   bench_entries[3].func = bench_double_to_int32_conv_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("CONVERT (double to 32-bit integer)", bench_entries[best_entry].time, 0);

   printf("64-bit integer to double:\n");
   bench_entries[0].func = bench_int64_to_double_conv_4;
   bench_entries[1].func = bench_int64_to_double_conv_8;
   bench_entries[2].func = bench_int64_to_double_conv_16;
   bench_entries[3].func = bench_int64_to_double_conv_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("CONVERT (64-bit integer to double)", bench_entries[best_entry].time, 0);

   printf("Double to 64-bit integer:\n");
   bench_entries[0].func = bench_double_to_int64_conv_4;
   bench_entries[1].func = bench_double_to_int64_conv_8;
   bench_entries[2].func = bench_double_to_int64_conv_16;
   bench_entries[3].func = bench_double_to_int64_conv_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("CONVERT (double to 64-bit integer)", bench_entries[best_entry].time, 0);

   insert_summary_entry("", 0, 1);
}

int main(int argc, char **argv)
{
   srand48(0xDEADBEEF); // Seed RNG with the same constant always for consistent comparisons across runs

   int iterations = 0;
   if (argc < 2) {
      printf("Missing argument: number of iterations\n");
      printf("Running with default reference value:  30000 iterations\n");
      iterations = 30000;
   } else {
      iterations = atoi(argv[1]);
   }

   printf("        --- FPBENCH v%s - Math Speed Comparison --- \n", fpbench_version_str);
   printf("Copyright (c) 2014 Dan Silsby  (dansilsby <AT> gmail <DOT> com)\n");
   printf("Project homepage:   https://github.com/senquack/fpbench\n\n");
  
   printf("Before each timing, sync(), fflush() and a 1-second delay are executed.\n");
   printf("Each benchmark consists of four internal versions:\n");
   printf("The first with inner loop unrolled 4-fold, the second 8-fold,\n");
   printf("the third 16-fold, and the fourth 32-fold. All of these are run twice,\n");
   printf("and the fastest of the two times is the one recorded.\n\n");
   printf("Reported size of floats on this architecture:\t%d\n", (int)sizeof(float)*8);
   printf("Reported size of doubles on this architecture:\t%d\n", (int)sizeof(double)*8);
   printf("Benchmark requested: %u iterations.\n", iterations);
   printf("Number of computations issued per iteration: %d\n", ASIZE_32BIT);

   printf("\n'*' denotes the best time of a benchmark's unloopings:\n");

   sync();
   usleep(1000000);
   
   bench_addition(iterations);
   bench_multiplication(iterations);
   bench_division(iterations);
   bench_squareroot(iterations);
   bench_conversions(iterations);

   if (strlen(summary_output_filename) > 0) {
      FILE *fp;
      fp = fopen(summary_output_filename, "w");
      if (!fp) {
         printf("Error opening file for writing: %s\n", summary_output_filename);
      } else {
         print_summary_to_file(fp, summary, summary_num_entries, iterations);
         fclose(fp);
      }
      // Also print a copy to the screen:
      print_summary_to_file(stdout, summary, summary_num_entries, iterations);
   }


   if (strlen(csv_output_filename) > 0) {
      FILE *fp;
      fp = fopen(csv_output_filename, "w");
      if (!fp) {
         printf("Error opening file for writing: %s\n", csv_output_filename);
      } else {
         print_csv_summary_to_file(fp, summary, summary_num_entries, iterations);
         fclose(fp);
      }
   }
   
   free_summary(summary, summary_num_entries);

   printf("A copy of this summary has been written to:\n\t%s\n", summary_output_filename);
   printf("A comma-separated-values list has been written to:\n\t%s\n", csv_output_filename);
   printf("When reporting a benchmark, please include these two files along with\n"
         "the file 'fpbench_binary_and_assembly.tar.bz2' from your build folder,\n"
         "if you built fpbench from source.\n");
   return 0;
}
