#ifndef BENCH_DIV_H
#define BENCH_DIV_H
void bench_float_DIV_4(uint32_t iterations);
void bench_float_DIV_8(uint32_t iterations);
void bench_float_DIV_16(uint32_t iterations);
void bench_float_DIV_32(uint32_t iterations);

void bench_double_DIV_4(uint32_t iterations);
void bench_double_DIV_8(uint32_t iterations);
void bench_double_DIV_16(uint32_t iterations);
void bench_double_DIV_32(uint32_t iterations);

void bench_fixed_DIV_4(uint32_t iterations);
void bench_fixed_DIV_8(uint32_t iterations);
void bench_fixed_DIV_16(uint32_t iterations);
void bench_fixed_DIV_32(uint32_t iterations);

void bench_i32_DIV_4(uint32_t iterations);
void bench_i32_DIV_8(uint32_t iterations);
void bench_i32_DIV_16(uint32_t iterations);
void bench_i32_DIV_32(uint32_t iterations);

void bench_i64_DIV_4(uint32_t iterations);
void bench_i64_DIV_8(uint32_t iterations);
void bench_i64_DIV_16(uint32_t iterations);
void bench_i64_DIV_32(uint32_t iterations);
#endif //BENCH_DIV_H
