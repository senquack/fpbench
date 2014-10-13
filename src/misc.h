#ifndef MISC_H
#define MISC_H
struct bench_entry { 
   void (*func)(int);
   uint64_t time;          // Time in nanoseconds benchmark took
   int is_best_time;       // Is this the best time of all the benches in the array?   
   char* desc;             // Text description of this benchmark
}; 
                  
uint64_t timer(int begin);
void best_of_2_runs(struct bench_entry *entry, int iterations);
//uint64_t best_of_3_runs(void (*benchmark)(int), unsigned int iterations);
void print_bench_entries(struct bench_entry *bench_entries, int num_entries, 
                           int best_time_index, int iterations);
int run_bench_entries(struct bench_entry *bench_entries, int num_entries, int iterations);
void fill_float_array(float *array, double min_range, double max_range);
void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array);
void fill_double_array(double *array, double min_range, double max_range);
void fill_i32_array(int32_t *array, int32_t max_range);
void fill_i64_array(int64_t *array, int64_t max_range);
#endif //MISC_H
