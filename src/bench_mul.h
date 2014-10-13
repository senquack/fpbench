#ifndef BENCH_MUL_H
#define BENCH_MUL_H
void bench_float_mul_4(int iterations);
void bench_float_mul_8(int iterations);
void bench_float_mul_16(int iterations);
void bench_float_mul_32(int iterations);

void bench_double_mul_4(int iterations);
void bench_double_mul_8(int iterations);
void bench_double_mul_16(int iterations);
void bench_double_mul_32(int iterations);

void bench_fixed_mul_4(int iterations);
void bench_fixed_mul_8(int iterations);
void bench_fixed_mul_16(int iterations);
void bench_fixed_mul_32(int iterations);

void bench_i32_mul_4(int iterations);
void bench_i32_mul_8(int iterations);
void bench_i32_mul_16(int iterations);
void bench_i32_mul_32(int iterations);

void bench_i64_mul_4(int iterations);
void bench_i64_mul_8(int iterations);
void bench_i64_mul_16(int iterations);
void bench_i64_mul_32(int iterations);
#endif //BENCH_MUL_H
