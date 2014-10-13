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

const char *csv_output_filename = "fpbench_csv_output.txt";

// In these arrays: *val1: first operands, *val2: second operands, *result: results of operation
float    fval1[ASIZE_32BIT],  fval2[ASIZE_32BIT], fresult[ASIZE_32BIT]; // Float arrays
int32_t  xval1[ASIZE_32BIT], xval2[ASIZE_32BIT], xresult[ASIZE_32BIT];  // 16.16 Fixed-point array
double   dval1[ASIZE_64BIT], dval2[ASIZE_64BIT], dresult[ASIZE_64BIT];  // Double arrays
uint32_t i32val1[ASIZE_32BIT], i32val2[ASIZE_32BIT], i32result[ASIZE_32BIT];  // 32-bit int arrays
uint64_t i64val1[ASIZE_64BIT], i64val2[ASIZE_64BIT], i64result[ASIZE_64BIT];  // 64-bit int arrays 

// First entry in an a linked-list of structs holding table of best times & text-descriptions of all benchmarks.
struct summary_entry {  
   char desc[128];
   uint64_t time;
   struct summary_entry *next_entry;
} *summary;

//int summary_ptr = summary;  // Pointer to current unfilled entry in summary's linked list
int summary_num_entries = 0;

void insert_summary_entry(char *desc,  uint64_t time )      
{
// static struct summary_entry *cur_entry_ptr = &summary;   // Pointer to next unfilled entry in list
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
   assert(cur_entry_ptr->next_entry);  // Did we get more memory? Hopefully.
   cur_entry_ptr = cur_entry_ptr->next_entry;
}

void print_csv_summary_to_file(const char *filename, struct summary_entry *entries, int num_entries, int iterations)
{
   if (strlen(filename) == 0) return;
   FILE *fp;
   fp = fopen(filename, "w");
   if (!fp) {
      printf("Error opening file for writing: %s\n", filename);
      return;
   }

   // print a line of comma-separated descriptions:
   struct summary_entry *entry_ptr = entries;
   int printed_first_line_element = 0;
   for (int i = 0; (i < num_entries) && entry_ptr; i++) {
      if (!printed_first_line_element) {
         printed_first_line_element = 1;
      } else {
         fprintf(fp, ",");
      }
      fprintf(fp, "%s", entry_ptr->desc); 
      entry_ptr = entry_ptr->next_entry;
   }
   fprintf(fp, "\n");

   // then, print a line of comma-separated times:
   entry_ptr = entries;
   printed_first_line_element = 0;
   for (int i = 0; (i < num_entries) && entry_ptr; i++) {
      if (!printed_first_line_element) {
         printed_first_line_element = 1;
      } else {
         fprintf(fp, ",");
      }
      fprintf(fp, "%llu", entry_ptr->time); 
      entry_ptr = entry_ptr->next_entry;
   }
   fprintf(fp, "\n");
   fclose(fp);
}

void print_summary(struct summary_entry *entries, int num_entries, int iterations)
{
   struct summary_entry *entry_ptr = entries;
   printf("\n=======================================================\n");
   printf(  "========================SUMMARY========================\n");
   printf(  "=======================================================\n");
   for (int i = 0; (i < num_entries) && entry_ptr; i++) {
      printf("%s:\t\t\t\t%.2f microsecs per iteration\n", entry_ptr->desc, (double)entry_ptr->time / (double)iterations);
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

void bench_addition(uint32_t iterations)
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
   insert_summary_entry("ADDITION (float)", bench_entries[best_entry].time);

   printf("Double:\n");
   fill_double_array(dval1, 0.0001, 16383.0);      
   fill_double_array(dval2, 0.0001, 16383.0);      
   bench_entries[0].func = bench_double_add_4; 
   bench_entries[1].func = bench_double_add_8; 
   bench_entries[2].func = bench_double_add_16;
   bench_entries[3].func = bench_double_add_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("ADDITION (double)", bench_entries[best_entry].time);

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
   insert_summary_entry("ADDITION (fixed-point 16.16)", bench_entries[best_entry].time);

   printf("32-bit integer:\n");
   fill_i32_array(i32val1, 0xFFFFFFFF);
   fill_i32_array(i32val2, 0xFFFFFFFF);   
   bench_entries[0].func = bench_i32_add_4;   
   bench_entries[1].func = bench_i32_add_8;  
   bench_entries[2].func = bench_i32_add_16;
   bench_entries[3].func = bench_i32_add_32; 
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("ADDITION (32-bit integer)", bench_entries[best_entry].time);

   printf("64-bit integer:\n");
   fill_i64_array(i64val1, 0xFFFFFFFFFFFFFFFF);
   fill_i64_array(i64val2, 0xFFFFFFFFFFFFFFFF);
   bench_entries[0].func = bench_i64_add_4; 
   bench_entries[1].func = bench_i64_add_8; 
   bench_entries[2].func = bench_i64_add_16;
   bench_entries[3].func = bench_i64_add_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("ADDITION (64-bit integer)", bench_entries[best_entry].time);
}

void bench_multiplication(uint32_t iterations)
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
   insert_summary_entry("MULTIPLICATION (float)", bench_entries[best_entry].time);

   printf("Double:\n");
   fill_double_array(dval1, 0.001, 181.0);      
   fill_double_array(dval2, 0.001, 181.0);
   bench_entries[0].func = bench_double_mul_4; 
   bench_entries[1].func = bench_double_mul_8; 
   bench_entries[2].func = bench_double_mul_16;
   bench_entries[3].func = bench_double_mul_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("MULTIPLICATION (double)", bench_entries[best_entry].time);

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
   insert_summary_entry("MULTIPLICATION (fixed-point 16.16) ", bench_entries[best_entry].time);

   printf("32-bit integer:\n");
   fill_i32_array(i32val1, 0xFFFF);
   fill_i32_array(i32val2, 0xFFFF);
   bench_entries[0].func = bench_i32_mul_4;  
   bench_entries[1].func = bench_i32_mul_8; 
   bench_entries[2].func = bench_i32_mul_16;
   bench_entries[3].func = bench_i32_mul_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("MULTIPLICATION (32-bit integer)", bench_entries[best_entry].time);

   printf("64-bit integer:\n");
   fill_i64_array(i64val1, 0xFFFFFFFF);
   fill_i64_array(i64val2, 0xFFFFFFFF);
   bench_entries[0].func = bench_i64_mul_4; 
   bench_entries[1].func = bench_i64_mul_8; 
   bench_entries[2].func = bench_i64_mul_16;
   bench_entries[3].func = bench_i64_mul_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("MULTIPLICATION (64-bit integer)", bench_entries[best_entry].time);
}

void bench_division(uint32_t iterations)
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
   insert_summary_entry("DIVISION (float)", bench_entries[best_entry].time);

   printf("Double:\n");
   fill_double_array(dval1, 1, 3072);
   fill_double_array(dval2, 0.1, 4096);
   bench_entries[0].func = bench_double_div_4;  
   bench_entries[1].func = bench_double_div_8; 
   bench_entries[2].func = bench_double_div_16;
   bench_entries[3].func = bench_double_div_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("DIVISION (double)", bench_entries[best_entry].time);

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
   insert_summary_entry("DIVISION (fixed-point 16.16)", bench_entries[best_entry].time);

   printf("32-bit integer:\n");
   fill_i32_array(i32val1, 0xFFFFFFFF);
   fill_i32_array(i32val2, 0xFFFF);
   bench_entries[0].func = bench_i32_div_4; 
   bench_entries[1].func = bench_i32_div_8; 
   bench_entries[2].func = bench_i32_div_16;
   bench_entries[3].func = bench_i32_div_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("DIVISION (32-bit integer)", bench_entries[best_entry].time);

   printf("64-bit integer:\n");
   fill_i64_array(i64val1, 0xFFFFFFFFFFFFFFFF);
   fill_i64_array(i64val2, 0xFFFFFFFF);
   bench_entries[0].func = bench_i64_div_4; 
   bench_entries[1].func = bench_i64_div_8; 
   bench_entries[2].func = bench_i64_div_16;
   bench_entries[3].func = bench_i64_div_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("DIVISION (64-bit integer)", bench_entries[best_entry].time);
}

void bench_squareroot(uint32_t iterations)
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
   insert_summary_entry("SQUARE ROOT (float)", bench_entries[best_entry].time);

// fill_float_array(fval1, 0.00001, 32768);  // Do a direct comparison of above
   printf("Float (fast-inverse):\n");
   bench_entries[0].func = bench_quake_sqrt_4; 
   bench_entries[1].func = bench_quake_sqrt_8; 
   bench_entries[2].func = bench_quake_sqrt_16;
   bench_entries[3].func = bench_quake_sqrt_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("SQUARE ROOT FAST-INVERSE (float)", bench_entries[best_entry].time);

// fill_float_array(fval1, 0.00001, 32768);  // Do a direct comparison of above
   fill_fixed_array_from_float_array(xval1, fval1);
   printf("Fixed-point 16.16:\n");
   bench_entries[0].func = bench_fixed_sqrt_4; 
   bench_entries[1].func = bench_fixed_sqrt_8; 
   bench_entries[2].func = bench_fixed_sqrt_16;
   bench_entries[3].func = bench_fixed_sqrt_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("SQUARE ROOT (fixed-point 16.16)", bench_entries[best_entry].time);

   printf("Double:\n");
   fill_double_array(dval1, 0.00001, 32768);    // Do a direct comparison of above
   bench_entries[0].func = bench_double_sqrt_4; 
   bench_entries[1].func = bench_double_sqrt_8; 
   bench_entries[2].func = bench_double_sqrt_16;
   bench_entries[3].func = bench_double_sqrt_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("SQUARE ROOT (double)", bench_entries[best_entry].time);

// fill_double_array(dval1, 0.00001, 32768); // Do a direct comparison of above
   printf("Double (approximation):\n");
   bench_entries[0].func = bench_approx_double_sqrt_4;
   bench_entries[1].func = bench_approx_double_sqrt_8;
   bench_entries[2].func = bench_approx_double_sqrt_16;
   bench_entries[3].func = bench_approx_double_sqrt_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("SQUARE ROOT APPROXIMATION (double)", bench_entries[best_entry].time);
}

void bench_conversions(uint32_t iterations)
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
   insert_summary_entry("CONVERT (32-bit integer to float)", bench_entries[best_entry].time);

   printf("Float to 32-bit integer:\n");
   bench_entries[0].func = bench_float_to_int32_conv_4;
   bench_entries[1].func = bench_float_to_int32_conv_8;
   bench_entries[2].func = bench_float_to_int32_conv_16;
   bench_entries[3].func = bench_float_to_int32_conv_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("CONVERT (float to 32-bit integer)", bench_entries[best_entry].time);

   printf("32-bit integer to double:\n");
   bench_entries[0].func = bench_int32_to_double_conv_4;
   bench_entries[1].func = bench_int32_to_double_conv_8;
   bench_entries[2].func = bench_int32_to_double_conv_16;
   bench_entries[3].func = bench_int32_to_double_conv_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("CONVERT (32-bit integer to double)", bench_entries[best_entry].time);

   printf("Double to 32-bit integer:\n");
   bench_entries[0].func = bench_double_to_int32_conv_4;
   bench_entries[1].func = bench_double_to_int32_conv_8;
   bench_entries[2].func = bench_double_to_int32_conv_16;
   bench_entries[3].func = bench_double_to_int32_conv_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("CONVERT (double to 32-bit integer)", bench_entries[best_entry].time);

   printf("64-bit integer to double:\n");
   bench_entries[0].func = bench_int64_to_double_conv_4;
   bench_entries[1].func = bench_int64_to_double_conv_8;
   bench_entries[2].func = bench_int64_to_double_conv_16;
   bench_entries[3].func = bench_int64_to_double_conv_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("CONVERT (64-bit integer to double)", bench_entries[best_entry].time);

   printf("Double to 64-bit integer:\n");
   bench_entries[0].func = bench_double_to_int64_conv_4;
   bench_entries[1].func = bench_double_to_int64_conv_8;
   bench_entries[2].func = bench_double_to_int64_conv_16;
   bench_entries[3].func = bench_double_to_int64_conv_32;
   best_entry = run_bench_entries(bench_entries, 4, iterations);
   insert_summary_entry("CONVERT (double to 64-bit integer)", bench_entries[best_entry].time);
}

int main(int argc, char **argv)
{
   srand48(0xDEADBEEF); // Seed RNG with the same constant always for consistent comparisons across runs

   unsigned int iterations = 0;
   if (argc < 2) {
      printf("Missing argument: number of iterations\n");
      return 1;
   } else {
      iterations = atoi(argv[1]);
   }

   printf("FPBENCH - Math Speed Comparison\n");
   printf("Written by Dan Silsby  dansilsby <AT> gmail <DOT> com\n");
   printf("Before each benchmark is timed, sync(), fflush(),\n"
         "and .5 second delay are all executed.\n");
   printf("Each benchmark consists of four internal versions:\n");
   printf("The first with inner loop unrolled 4-fold, the second 8-fold,\n");
   printf("the third 16-fold, and the fourth 32-fold.\n");
   printf("All of these are run twice, and the fastest of the two times is\n");
   printf("the one used. Of the four unrolled times reported, an asterisk\n");
   printf("is placed beside the fastest of the four.\n");
   printf("Reported size of floats on this architecture:\t%d\n", sizeof(float)*8);
   printf("Reported size of doubles on this architecture:\t%d\n", sizeof(double)*8);
   printf("Benchmark requested: %u iterations.\n\n", iterations);
   printf("'*' beside a time denotes the best time of that benchmark's unloopings:\n");

   sync();
   usleep(1000000);
   
   bench_addition(iterations);
   bench_multiplication(iterations);
   bench_division(iterations);
   bench_squareroot(iterations);
   bench_conversions(iterations);

   print_csv_summary_to_file(csv_output_filename, summary, summary_num_entries, iterations);
   print_summary(summary, summary_num_entries, iterations);
   free_summary(summary, summary_num_entries);

   return 0;
}
