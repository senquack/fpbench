#ifndef BENCH_CONV_H
#define BENCH_CONV_H

void bench_int32_to_float_conversion_4(uint32_t iterations);
void bench_int32_to_float_conversion_8(uint32_t iterations);
void bench_int32_to_float_conversion_16(uint32_t iterations);
void bench_int32_to_float_conversion_32(uint32_t iterations);

void bench_float_to_int32_conversion_4(uint32_t iterations);
void bench_float_to_int32_conversion_8(uint32_t iterations);
void bench_float_to_int32_conversion_16(uint32_t iterations);
void bench_float_to_int32_conversion_32(uint32_t iterations);

void bench_int32_to_double_conversion_4(uint32_t iterations);
void bench_int32_to_double_conversion_8(uint32_t iterations);
void bench_int32_to_double_conversion_16(uint32_t iterations);
void bench_int32_to_double_conversion_32(uint32_t iterations);

void bench_double_to_int32_conversion_4(uint32_t iterations);
void bench_double_to_int32_conversion_8(uint32_t iterations);
void bench_double_to_int32_conversion_16(uint32_t iterations);
void bench_double_to_int32_conversion_32(uint32_t iterations);

#endif //BENCH_CONV_H
