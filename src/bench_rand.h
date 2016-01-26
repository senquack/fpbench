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

#ifndef BENCH_RAND_H
#define BENCH_RAND_H
void seed_fast_rand( uint32_t seed );
void seed_rand_r(uint32_t seed);

void bench_rand_4(int iterations);
void bench_rand_8(int iterations);
void bench_rand_16(int iterations);
void bench_rand_32(int iterations);

void bench_rand_r_4(int iterations);
void bench_rand_r_8(int iterations);
void bench_rand_r_16(int iterations);
void bench_rand_r_32(int iterations);

void bench_fast_rand_4(int iterations);
void bench_fast_rand_8(int iterations);
void bench_fast_rand_16(int iterations);
void bench_fast_rand_32(int iterations);

void bench_xorshf96_4(int iterations);
void bench_xorshf96_8(int iterations);
void bench_xorshf96_16(int iterations);
void bench_xorshf96_32(int iterations);

#endif //BENCH_RAND_H
