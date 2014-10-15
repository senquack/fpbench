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

#ifndef BENCH_ADD_H
#define BENCH_ADD_H
void bench_float_add_4(int iterations);
void bench_float_add_8(int iterations);
void bench_float_add_16(int iterations);
void bench_float_add_32(int iterations);

void bench_double_add_4(int iterations);
void bench_double_add_8(int iterations);
void bench_double_add_16(int iterations);
void bench_double_add_32(int iterations);

void bench_fixed_add_4(int iterations);
void bench_fixed_add_8(int iterations);
void bench_fixed_add_16(int iterations);
void bench_fixed_add_32(int iterations);

void bench_i32_add_4(int iterations);
void bench_i32_add_8(int iterations);
void bench_i32_add_16(int iterations);
void bench_i32_add_32(int iterations);

void bench_i64_add_4(int iterations);
void bench_i64_add_8(int iterations);
void bench_i64_add_16(int iterations);
void bench_i64_add_32(int iterations);
#endif //BENCH_ADD_H
