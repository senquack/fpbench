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

#ifndef BENCH_DIV_H
#define BENCH_DIV_H
void bench_float_div_4(int iterations);
void bench_float_div_8(int iterations);
void bench_float_div_16(int iterations);
void bench_float_div_32(int iterations);

void bench_double_div_4(int iterations);
void bench_double_div_8(int iterations);
void bench_double_div_16(int iterations);
void bench_double_div_32(int iterations);

void bench_fixed_div_4(int iterations);
void bench_fixed_div_8(int iterations);
void bench_fixed_div_16(int iterations);
void bench_fixed_div_32(int iterations);

void bench_i32_div_4(int iterations);
void bench_i32_div_8(int iterations);
void bench_i32_div_16(int iterations);
void bench_i32_div_32(int iterations);

void bench_i64_div_4(int iterations);
void bench_i64_div_8(int iterations);
void bench_i64_div_16(int iterations);
void bench_i64_div_32(int iterations);
#endif //BENCH_div_H
