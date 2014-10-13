#ifndef BENCH_CONV_H
#define BENCH_CONV_H

void bench_int32_to_float_conv_4(int iterations);
void bench_int32_to_float_conv_8(int iterations);
void bench_int32_to_float_conv_16(int iterations);
void bench_int32_to_float_conv_32(int iterations);

void bench_float_to_int32_conv_4(int iterations);
void bench_float_to_int32_conv_8(int iterations);
void bench_float_to_int32_conv_16(int iterations);
void bench_float_to_int32_conv_32(int iterations);

void bench_int32_to_double_conv_4(int iterations);
void bench_int32_to_double_conv_8(int iterations);
void bench_int32_to_double_conv_16(int iterations);
void bench_int32_to_double_conv_32(int iterations);

void bench_double_to_int32_conv_4(int iterations);
void bench_double_to_int32_conv_8(int iterations);
void bench_double_to_int32_conv_16(int iterations);
void bench_double_to_int32_conv_32(int iterations);

void bench_int64_to_double_conv_4(int iterations);
void bench_int64_to_double_conv_8(int iterations);
void bench_int64_to_double_conv_16(int iterations);
void bench_int64_to_double_conv_32(int iterations);

void bench_double_to_int64_conv_4(int iterations);
void bench_double_to_int64_conv_8(int iterations);
void bench_double_to_int64_conv_16(int iterations);
void bench_double_to_int64_conv_32(int iterations);
#endif //BENCH_CONV_H
