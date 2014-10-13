#ifndef BENCH_SQRT_H
#define BENCH_SQRT_H
void bench_float_sqrt_4(int iterations);
void bench_float_sqrt_8(int iterations);
void bench_float_sqrt_16(int iterations);
void bench_float_sqrt_32(int iterations);

void bench_quake_sqrt_4(int iterations);
void bench_quake_sqrt_8(int iterations);
void bench_quake_sqrt_16(int iterations);
void bench_quake_sqrt_32(int iterations);

void bench_double_sqrt_4(int iterations);
void bench_double_sqrt_8(int iterations);
void bench_double_sqrt_16(int iterations);
void bench_double_sqrt_32(int iterations);

void bench_approx_double_sqrt_4(int iterations);
void bench_approx_double_sqrt_8(int iterations);
void bench_approx_double_sqrt_16(int iterations);
void bench_approx_double_sqrt_32(int iterations);

void bench_fixed_sqrt_4(int iterations);
void bench_fixed_sqrt_8(int iterations);
void bench_fixed_sqrt_16(int iterations);
void bench_fixed_sqrt_32(int iterations);
#endif //BENCH_SQRT_H
