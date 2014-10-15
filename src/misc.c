#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <unistd.h>
#include <assert.h>

#include "fpbench.h"
#include "misc.h"

/* timer(1); begins timing and exits, returning 0
 * timer(0); ends timing and returns time-elapsed-in-nanoseconds since issuing timer(1) 
 */
uint64_t timer(int begin)
{
   static struct timespec begin_time = {.tv_sec=0, .tv_nsec=0};
   struct timespec end_time = {.tv_sec=0, .tv_nsec=0};
   if (begin) {
      // Begin timing and exit:
      sync();
      fflush(NULL);
      usleep(1000000);
#ifdef NO_MONOTONIC_CLOCK
      if (clock_gettime(CLOCK_REALTIME, &begin_time) == -1)
#else
      if (clock_gettime(CLOCK_MONOTONIC_RAW, &begin_time) == -1)
#endif
         printf("ERROR: clock_gettime does not support CLOCK_MONOTONIC_RAW\n");
      return 0;
   }
   // End timing and display results:
#ifdef NO_MONOTONIC_CLOCK
   if (clock_gettime(CLOCK_REALTIME, &end_time) == -1)
#else
   if (clock_gettime(CLOCK_MONOTONIC_RAW, &end_time) == -1)
#endif
      printf("ERROR: clock_gettime does not support CLOCK_MONOTONIC_RAW\n");
   uint64_t begin_nanoseconds = ((uint64_t) begin_time.tv_sec * 1000000000) + begin_time.tv_nsec;
   uint64_t end_nanoseconds = ((uint64_t)end_time.tv_sec * 1000000000) + end_time.tv_nsec;
   uint64_t nanoseconds_taken = end_nanoseconds - begin_nanoseconds;
   return nanoseconds_taken;
}

/* best_of_2_runs() takes two arguments:
 * ARG1: Pointer to a specific benchmark bench_entry
 * ARG2: Number of iterations to pass to said function
 * and sets bench_entry->time to the number of nanoseconds timer() reports for the faster of the two runs.
 */
void best_of_2_runs(struct bench_entry *entry, int iterations)
{
   uint64_t a,b;
   timer(1);
   entry->func(iterations);
   a = timer(0);
   timer(1);
   entry->func(iterations);
   b = timer(0);
   entry->time = (a < b) ? a : b;
}

void print_bench_entries(struct bench_entry *bench_entries, int num_entries, 
                           int best_time_index, int iterations)
{
   for (int i=0; i < num_entries; i++) {
      printf("\t%s:\t%llu ns,\t or %f secs", 
            bench_entries[i].desc, (long long unsigned int)bench_entries[i].time, bench_entries[i].time / 1000000000.0);
      if (bench_entries[i].is_best_time)
         printf(" *\n");
      else
         printf("\n");
   }
}

/* run_bench_entries():
 * Runs all benchmarks in bench_entries for # of iterations passed to it.
 * Fills bench_entries time elements with times reported and also marks which was best.
 * Prints the list of timings of the bench entries.
 * Returns bench_entries[] index of the best time found of all functions in it 
 */
int run_bench_entries(struct bench_entry *bench_entries, int num_entries, int iterations)
{
   assert(num_entries != 0);

   int best_time_index = 0;                   // index of best entry found, start at first
   uint64_t best_time_so_far = 0xFFFFFFFFFFFFFFFF; // A ridiculously high time to start comparing to

   for (int i=0; i < num_entries; i++) {
      bench_entries[i].is_best_time = 0;
      best_of_2_runs(&bench_entries[i], iterations);
      if (bench_entries[i].time < best_time_so_far) {
         best_time_index = i;
         best_time_so_far = bench_entries[i].time;
      }
   }

   bench_entries[best_time_index].is_best_time = 1;
   print_bench_entries(bench_entries, num_entries, best_time_index, iterations);
   return best_time_index;
}

/* fill_float_array(): Fill data array with random distribution of floats within range min_range-max_range.
 * ARG1: pointer to float[ASIZE_32BIT] array to fill
 * ARG2: minimum range of acceptable numbers
 * ARG3: max range of acceptable numbers
 */
void fill_float_array(float *array, double min_range, double max_range)
{
   for (int i = 0; i < ASIZE_32BIT; i++) {
      double tmp = drand48(); // Start with a random double between 0 and 1.0
      tmp *= (lrand48() % 2) ? 1.0 : max_range; // Number has a 50% chance of being left this small value

      while (tmp < min_range) {
         tmp = drand48() * max_range;        // get a new number if it was below min_range
      }
      
      array[i] = (float)tmp;
   }
}

/* fill_fixed_array(): Fill data array with fixed-point versions of floats in *float_array.
 * ARG1: pointer to int32_t[ASIZE_32BIT] array of 16.16 fixed-point numbers to fill
 * ARG2: pointer to float[ASIZE_32BIT] array to convert from
 */
void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
   for (int i = 0; i < ASIZE_32BIT; i++) {
      fixed_array[i] = f2x(float_array[i]);
   }
}

/* fill_double_array(): Fill data array with randomly-generated doubles within range min_range-max_range.
 * ARG1: pointer to double[ASIZE_64BIT] array to fill
 * ARG2: minimum range of acceptable numbers
 * ARG3: max range of acceptable numbers
 */
void fill_double_array(double *array, double min_range, double max_range)
{
   for (int i = 0; i < ASIZE_64BIT; i++) {
      double tmp = drand48(); // Start with a random double between 0 and 1.0
      tmp *= (lrand48() % 2) ? 1.0 : max_range; // Number has a 50% chance of being left a small value

      while (tmp < min_range) {
         tmp = drand48() * max_range;        // get a new number if it was below min_range
      }
            
      array[i] = tmp;
   }
}

/* fill_i32_array(): Fill array with random distribution of 32-bit integers within range 1-max_range.
 * ARG1: pointer to array of unsigned integers of size ASIZE_32BIT to fill 
 * ARG2: maximum range: Range can be limited in practicality to a choice of numbers below either 2^31 or 2^16
 */
void fill_i32_array(int32_t *array, int max_range)
{
   for (int i = 0; i < ASIZE_32BIT; i++) {
      int32_t tmp;    // Ensure no division by zero
      if (max_range > 0xFFFF) {
         tmp = lrand48();  // Assign random 31-bit non-negative int
      } else {
         tmp = lrand48() % 0x10000;
      }

      if (tmp == 0) tmp++;    // Ensure no division-by-zero
      array[i] = tmp;
   }
}

/* fill_i64_array(): Fill array with random distribution of 64-bit integers within range 1-max_range.
 * ARG1: pointer to array of unsigned integers of size ASIZE_64BIT to fill 
 * ARG2: maximum range: Range can be limited in practicality to a choice of numbers below either 2^64, 2^32 or 2^16
 */
void fill_i64_array(int64_t *array, int64_t max_range)
{
   for (int i = 0; i < ASIZE_64BIT; i++) {
      int64_t tmp = 1;
      if (max_range > 0xFFFFFFFF) {          // Is our range greater than 2^32?
         tmp = (uint64_t) lrand48() << 32;    //    Assign a random 31-bit number to upper half
         tmp |= (uint64_t) lrand48();         //    And assign one to the lower half.
      } else if (max_range > 0xFFFF) {       // Is our range greater than 2^16?
         tmp = lrand48();                    //    Assign random 31-bit number just to lower half.
      } else {
         tmp = lrand48() % 0x10000;    // Our range must be 1-2^16 
      }

      if (tmp == 0) tmp++;    // Ensure no division-by-zero
      array[i] = tmp;
   }
}
