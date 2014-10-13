#ifndef MISC_H
#define MISC_H
struct bench_entry { 
   void (*func)(uint32_t);
   uint64_t time;          // Time in microseconds benchmark took
   uint32_t is_best_time;  // Is this the best time of all the benches in the array?   
   char* desc;             // Text description of this benchmark
}; 
                  
uint64_t timer(int begin);
void best_of_2_runs(struct bench_entry *entry, unsigned int iterations);
//uint64_t best_of_3_runs(void (*benchmark)(uint32_t), unsigned int iterations);
void print_bench_entries(struct bench_entry *bench_entries, uint32_t num_entries, 
                           uint32_t best_time_index, uint32_t iterations);
uint32_t run_bench_entries(struct bench_entry *bench_entries, uint32_t num_entries, uint32_t iterations);
void fill_float_array(float *array, double min_range, double max_range);
void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array);
void fill_double_array(double *array, double min_range, double max_range);
void fill_i32_array(uint32_t *array, uint32_t max_range);
void fill_i64_array(uint64_t *array, uint64_t max_range);
#endif //MISC_H
