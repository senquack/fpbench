#ifndef MISC_H
#define MISC_H
uint64_t timer(int begin);
uint64_t best_of_3_runs(void (*benchmark)(uint32_t), unsigned int iterations);
void fill_float_array(float *array, double min_range, double max_range);
void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array);
void fill_double_array(double *array, double min_range, double max_range);
void fill_i32_array(uint32_t *array, uint32_t max_range);
void fill_i64_array(uint64_t *array, uint64_t max_range);
#endif //MISC_H
