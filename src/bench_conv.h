/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* FPBench - Math speed test
* FPBench homepage: https://github.com/senquack/fpbench
* Copyright (C) 2014 Daniel Silsby
* *
* This program is free software; you can redistribute it and/or modify *
* it under the terms of the GNU General Public License as published by *
* the Free Software Foundation; either version 2 of the License, or *
* any later version. *
* *
* This program is distributed in the hope that it will be useful, *
* but WITHOUT ANY WARRANTY; without even the implied warranty of *
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the *
* GNU General Public License for more details. *
* *
* You should have received a copy of the GNU General Public License *
* along with this program; if not, write to the *
* Free Software Foundation, Inc., *
* 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

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
