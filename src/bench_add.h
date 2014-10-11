#ifndef BENCH_ADD_H
#define BENCH_ADD_H
void bench_float_add_4(uint32_t iterations);
void bench_float_add_8(uint32_t iterations);
void bench_float_add_16(uint32_t iterations);
void bench_float_add_32(uint32_t iterations);

void bench_double_add_4(uint32_t iterations);
void bench_double_add_8(uint32_t iterations);
void bench_double_add_16(uint32_t iterations);
void bench_double_add_32(uint32_t iterations);

void bench_fixed_add_4(uint32_t iterations);
void bench_fixed_add_8(uint32_t iterations);
void bench_fixed_add_16(uint32_t iterations);
void bench_fixed_add_32(uint32_t iterations);

void bench_i32_add_4(uint32_t iterations);
void bench_i32_add_8(uint32_t iterations);
void bench_i32_add_16(uint32_t iterations);
void bench_i32_add_32(uint32_t iterations);

void bench_i64_add_4(uint32_t iterations);
void bench_i64_add_8(uint32_t iterations);
void bench_i64_add_16(uint32_t iterations);
void bench_i64_add_32(uint32_t iterations);
#endif //BENCH_ADD_H
