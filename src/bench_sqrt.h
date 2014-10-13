#ifndef BENCH_SQRT_H
#define BENCH_SQRT_H
void bench_float_sqrt_4(uint32_t iterations);
void bench_float_sqrt_8(uint32_t iterations);
void bench_float_sqrt_16(uint32_t iterations);
void bench_float_sqrt_32(uint32_t iterations);

void bench_quake_sqrt_4(uint32_t iterations);
void bench_quake_sqrt_8(uint32_t iterations);
void bench_quake_sqrt_16(uint32_t iterations);
void bench_quake_sqrt_32(uint32_t iterations);

void bench_double_sqrt_4(uint32_t iterations);
void bench_double_sqrt_8(uint32_t iterations);
void bench_double_sqrt_16(uint32_t iterations);
void bench_double_sqrt_32(uint32_t iterations);

void bench_approx_double_sqrt_4(uint32_t iterations);
void bench_approx_double_sqrt_8(uint32_t iterations);
void bench_approx_double_sqrt_16(uint32_t iterations);
void bench_approx_double_sqrt_32(uint32_t iterations);

void bench_fixed_sqrt_4(uint32_t iterations);
void bench_fixed_sqrt_8(uint32_t iterations);
void bench_fixed_sqrt_16(uint32_t iterations);
void bench_fixed_sqrt_32(uint32_t iterations);
#endif //BENCH_SQRT_H
