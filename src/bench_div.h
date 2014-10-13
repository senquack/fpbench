#ifndef BENCH_DIV_H
#define BENCH_DIV_H
void bench_float_div_4(uint32_t iterations);
void bench_float_div_8(uint32_t iterations);
void bench_float_div_16(uint32_t iterations);
void bench_float_div_32(uint32_t iterations);

void bench_double_div_4(uint32_t iterations);
void bench_double_div_8(uint32_t iterations);
void bench_double_div_16(uint32_t iterations);
void bench_double_div_32(uint32_t iterations);

void bench_fixed_div_4(uint32_t iterations);
void bench_fixed_div_8(uint32_t iterations);
void bench_fixed_div_16(uint32_t iterations);
void bench_fixed_div_32(uint32_t iterations);

void bench_i32_div_4(uint32_t iterations);
void bench_i32_div_8(uint32_t iterations);
void bench_i32_div_16(uint32_t iterations);
void bench_i32_div_32(uint32_t iterations);

void bench_i64_div_4(uint32_t iterations);
void bench_i64_div_8(uint32_t iterations);
void bench_i64_div_16(uint32_t iterations);
void bench_i64_div_32(uint32_t iterations);
#endif //BENCH_div_H
