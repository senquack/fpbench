
fpbench.o:     file format elf32-i386


Disassembly of section .text:

00000000 <bench_float_sub>:
	fill_fixed_array_from_float_array(xval1, fval1);	
	fill_fixed_array_from_float_array(xval2, fval2);
}

void bench_float_sub(uint32_t iterations)
{
   0:	8b 4c 24 04          	mov    0x4(%esp),%ecx
	for (int iter = 0; iter < iterations; iter++) {
   4:	31 d2                	xor    %edx,%edx
   6:	85 c9                	test   %ecx,%ecx
   8:	74 39                	je     43 <bench_float_sub+0x43>
   a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	fill_fixed_array_from_float_array(xval1, fval1);	
	fill_fixed_array_from_float_array(xval2, fval2);
}

void bench_float_sub(uint32_t iterations)
{
  10:	31 c0                	xor    %eax,%eax
  12:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] - fval2[i];
  20:	d9 04 85 00 00 00 00 	flds   0x0(,%eax,4)
  27:	d8 24 85 00 00 00 00 	fsubs  0x0(,%eax,4)
  2e:	d9 1c 85 00 00 00 00 	fstps  0x0(,%eax,4)
}

void bench_float_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
  35:	40                   	inc    %eax
  36:	3d 00 07 00 00       	cmp    $0x700,%eax
  3b:	75 e3                	jne    20 <bench_float_sub+0x20>
	fill_fixed_array_from_float_array(xval2, fval2);
}

void bench_float_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
  3d:	42                   	inc    %edx
  3e:	39 ca                	cmp    %ecx,%edx
  40:	75 ce                	jne    10 <bench_float_sub+0x10>
  42:	c3                   	ret    
  43:	c3                   	ret    
  44:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  4a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000050 <bench_fixed_sub>:
		}
	}
}

void bench_fixed_sub(uint32_t iterations)
{
  50:	53                   	push   %ebx
	for (int iter = 0; iter < iterations; iter++) {
  51:	31 c9                	xor    %ecx,%ecx
		}
	}
}

void bench_fixed_sub(uint32_t iterations)
{
  53:	8b 5c 24 08          	mov    0x8(%esp),%ebx
	for (int iter = 0; iter < iterations; iter++) {
  57:	85 db                	test   %ebx,%ebx
  59:	74 37                	je     92 <bench_fixed_sub+0x42>
  5b:	90                   	nop
  5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		}
	}
}

void bench_fixed_sub(uint32_t iterations)
{
  60:	31 c0                	xor    %eax,%eax
  62:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] - xval2[i];
  70:	8b 14 85 00 00 00 00 	mov    0x0(,%eax,4),%edx
  77:	2b 14 85 00 00 00 00 	sub    0x0(,%eax,4),%edx
  7e:	89 14 85 00 00 00 00 	mov    %edx,0x0(,%eax,4)
}

void bench_fixed_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
  85:	40                   	inc    %eax
  86:	3d 00 07 00 00       	cmp    $0x700,%eax
  8b:	75 e3                	jne    70 <bench_fixed_sub+0x20>
	}
}

void bench_fixed_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
  8d:	41                   	inc    %ecx
  8e:	39 d9                	cmp    %ebx,%ecx
  90:	75 ce                	jne    60 <bench_fixed_sub+0x10>
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] - xval2[i];
		}
	}
}
  92:	5b                   	pop    %ebx
  93:	c3                   	ret    
  94:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  9a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000000a0 <bench_float_add>:
	printf("\tFixed-point 16.16 subtraction:\n\t");
	avg_of_3_runs(&bench_fixed_sub, iterations);
}

void bench_float_add(uint32_t iterations)
{
  a0:	8b 4c 24 04          	mov    0x4(%esp),%ecx
	for (int iter = 0; iter < iterations; iter++) {
  a4:	31 d2                	xor    %edx,%edx
  a6:	85 c9                	test   %ecx,%ecx
  a8:	74 39                	je     e3 <bench_float_add+0x43>
  aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	printf("\tFixed-point 16.16 subtraction:\n\t");
	avg_of_3_runs(&bench_fixed_sub, iterations);
}

void bench_float_add(uint32_t iterations)
{
  b0:	31 c0                	xor    %eax,%eax
  b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] + fval2[i];
  c0:	d9 04 85 00 00 00 00 	flds   0x0(,%eax,4)
  c7:	d8 04 85 00 00 00 00 	fadds  0x0(,%eax,4)
  ce:	d9 1c 85 00 00 00 00 	fstps  0x0(,%eax,4)
}

void bench_float_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
  d5:	40                   	inc    %eax
  d6:	3d 00 07 00 00       	cmp    $0x700,%eax
  db:	75 e3                	jne    c0 <bench_float_add+0x20>
	avg_of_3_runs(&bench_fixed_sub, iterations);
}

void bench_float_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
  dd:	42                   	inc    %edx
  de:	39 ca                	cmp    %ecx,%edx
  e0:	75 ce                	jne    b0 <bench_float_add+0x10>
  e2:	c3                   	ret    
  e3:	c3                   	ret    
  e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000000f0 <bench_fixed_add>:
		}
	}
}

void bench_fixed_add(uint32_t iterations)
{
  f0:	53                   	push   %ebx
	for (int iter = 0; iter < iterations; iter++) {
  f1:	31 c9                	xor    %ecx,%ecx
		}
	}
}

void bench_fixed_add(uint32_t iterations)
{
  f3:	8b 5c 24 08          	mov    0x8(%esp),%ebx
	for (int iter = 0; iter < iterations; iter++) {
  f7:	85 db                	test   %ebx,%ebx
  f9:	74 37                	je     132 <bench_fixed_add+0x42>
  fb:	90                   	nop
  fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		}
	}
}

void bench_fixed_add(uint32_t iterations)
{
 100:	31 c0                	xor    %eax,%eax
 102:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] + xval2[i];
 110:	8b 14 85 00 00 00 00 	mov    0x0(,%eax,4),%edx
 117:	03 14 85 00 00 00 00 	add    0x0(,%eax,4),%edx
 11e:	89 14 85 00 00 00 00 	mov    %edx,0x0(,%eax,4)
}

void bench_fixed_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 125:	40                   	inc    %eax
 126:	3d 00 07 00 00       	cmp    $0x700,%eax
 12b:	75 e3                	jne    110 <bench_fixed_add+0x20>
	}
}

void bench_fixed_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 12d:	41                   	inc    %ecx
 12e:	39 d9                	cmp    %ebx,%ecx
 130:	75 ce                	jne    100 <bench_fixed_add+0x10>
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] + xval2[i];
		}
	}
}
 132:	5b                   	pop    %ebx
 133:	c3                   	ret    
 134:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 13a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000140 <bench_float_mul>:
	printf("\tFixed-point 16.16 addition:\n\t");
	avg_of_3_runs(&bench_fixed_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
 140:	8b 4c 24 04          	mov    0x4(%esp),%ecx
	for (int iter = 0; iter < iterations; iter++) {
 144:	31 d2                	xor    %edx,%edx
 146:	85 c9                	test   %ecx,%ecx
 148:	74 39                	je     183 <bench_float_mul+0x43>
 14a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	printf("\tFixed-point 16.16 addition:\n\t");
	avg_of_3_runs(&bench_fixed_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
 150:	31 c0                	xor    %eax,%eax
 152:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] * fval2[i];
 160:	d9 04 85 00 00 00 00 	flds   0x0(,%eax,4)
 167:	d8 0c 85 00 00 00 00 	fmuls  0x0(,%eax,4)
 16e:	d9 1c 85 00 00 00 00 	fstps  0x0(,%eax,4)
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 175:	40                   	inc    %eax
 176:	3d 00 07 00 00       	cmp    $0x700,%eax
 17b:	75 e3                	jne    160 <bench_float_mul+0x20>
	avg_of_3_runs(&bench_fixed_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 17d:	42                   	inc    %edx
 17e:	39 ca                	cmp    %ecx,%edx
 180:	75 ce                	jne    150 <bench_float_mul+0x10>
 182:	c3                   	ret    
 183:	c3                   	ret    
 184:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 18a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000190 <bench_fixed_mul>:
		}
	}
}

void bench_fixed_mul(uint32_t iterations)
{
 190:	56                   	push   %esi
 191:	53                   	push   %ebx
	for (int iter = 0; iter < iterations; iter++) {
 192:	31 db                	xor    %ebx,%ebx
		}
	}
}

void bench_fixed_mul(uint32_t iterations)
{
 194:	8b 74 24 0c          	mov    0xc(%esp),%esi
	for (int iter = 0; iter < iterations; iter++) {
 198:	85 f6                	test   %esi,%esi
 19a:	74 3b                	je     1d7 <bench_fixed_mul+0x47>
 19c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		}
	}
}

void bench_fixed_mul(uint32_t iterations)
{
 1a0:	31 c9                	xor    %ecx,%ecx
 1a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FMUL(xval1[i], xval2[i]);
 1b0:	8b 04 8d 00 00 00 00 	mov    0x0(,%ecx,4),%eax
 1b7:	f7 2c 8d 00 00 00 00 	imull  0x0(,%ecx,4)
 1be:	0f ac d0 10          	shrd   $0x10,%edx,%eax
 1c2:	89 04 8d 00 00 00 00 	mov    %eax,0x0(,%ecx,4)
}

void bench_fixed_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 1c9:	41                   	inc    %ecx
 1ca:	81 f9 00 07 00 00    	cmp    $0x700,%ecx
 1d0:	75 de                	jne    1b0 <bench_fixed_mul+0x20>
	}
}

void bench_fixed_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 1d2:	43                   	inc    %ebx
 1d3:	39 f3                	cmp    %esi,%ebx
 1d5:	75 c9                	jne    1a0 <bench_fixed_mul+0x10>
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FMUL(xval1[i], xval2[i]);
		}
	}
}
 1d7:	5b                   	pop    %ebx
 1d8:	5e                   	pop    %esi
 1d9:	c3                   	ret    
 1da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000001e0 <bench_integer_mul>:

void bench_integer_mul(uint32_t iterations)
{
 1e0:	53                   	push   %ebx
	for (int iter = 0; iter < iterations; iter++) {
 1e1:	31 c9                	xor    %ecx,%ecx
		}
	}
}

void bench_integer_mul(uint32_t iterations)
{
 1e3:	8b 5c 24 08          	mov    0x8(%esp),%ebx
	for (int iter = 0; iter < iterations; iter++) {
 1e7:	85 db                	test   %ebx,%ebx
 1e9:	74 38                	je     223 <bench_integer_mul+0x43>
 1eb:	90                   	nop
 1ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		}
	}
}

void bench_integer_mul(uint32_t iterations)
{
 1f0:	31 c0                	xor    %eax,%eax
 1f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] * xval2[i];
 200:	8b 14 85 00 00 00 00 	mov    0x0(,%eax,4),%edx
 207:	0f af 14 85 00 00 00 	imul   0x0(,%eax,4),%edx
 20e:	00 
 20f:	89 14 85 00 00 00 00 	mov    %edx,0x0(,%eax,4)
}

void bench_integer_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 216:	40                   	inc    %eax
 217:	3d 00 07 00 00       	cmp    $0x700,%eax
 21c:	75 e2                	jne    200 <bench_integer_mul+0x20>
	}
}

void bench_integer_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 21e:	41                   	inc    %ecx
 21f:	39 d9                	cmp    %ebx,%ecx
 221:	75 cd                	jne    1f0 <bench_integer_mul+0x10>
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] * xval2[i];
		}
	}
}
 223:	5b                   	pop    %ebx
 224:	c3                   	ret    
 225:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000230 <bench_float_div>:
	printf("\tInteger multiplication:\n\t");
	avg_of_3_runs(&bench_integer_mul, iterations);
}

void bench_float_div(uint32_t iterations)
{
 230:	8b 4c 24 04          	mov    0x4(%esp),%ecx
	for (int iter = 0; iter < iterations; iter++) {
 234:	31 d2                	xor    %edx,%edx
 236:	85 c9                	test   %ecx,%ecx
 238:	74 39                	je     273 <bench_float_div+0x43>
 23a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	printf("\tInteger multiplication:\n\t");
	avg_of_3_runs(&bench_integer_mul, iterations);
}

void bench_float_div(uint32_t iterations)
{
 240:	31 c0                	xor    %eax,%eax
 242:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] / fval2[i];
 250:	d9 04 85 00 00 00 00 	flds   0x0(,%eax,4)
 257:	d8 34 85 00 00 00 00 	fdivs  0x0(,%eax,4)
 25e:	d9 1c 85 00 00 00 00 	fstps  0x0(,%eax,4)
}

void bench_float_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 265:	40                   	inc    %eax
 266:	3d 00 07 00 00       	cmp    $0x700,%eax
 26b:	75 e3                	jne    250 <bench_float_div+0x20>
	avg_of_3_runs(&bench_integer_mul, iterations);
}

void bench_float_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 26d:	42                   	inc    %edx
 26e:	39 ca                	cmp    %ecx,%edx
 270:	75 ce                	jne    240 <bench_float_div+0x10>
 272:	c3                   	ret    
 273:	c3                   	ret    
 274:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 27a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000280 <bench_fixed_div>:
		}
	}
}

void bench_fixed_div(uint32_t iterations)
{
 280:	55                   	push   %ebp
 281:	57                   	push   %edi
 282:	56                   	push   %esi
	for (int iter = 0; iter < iterations; iter++) {
 283:	31 f6                	xor    %esi,%esi
		}
	}
}

void bench_fixed_div(uint32_t iterations)
{
 285:	53                   	push   %ebx
 286:	83 ec 1c             	sub    $0x1c,%esp
 289:	8b 7c 24 30          	mov    0x30(%esp),%edi
	for (int iter = 0; iter < iterations; iter++) {
 28d:	85 ff                	test   %edi,%edi
 28f:	74 63                	je     2f4 <bench_fixed_div+0x74>
 291:	eb 0d                	jmp    2a0 <bench_fixed_div+0x20>
 293:	90                   	nop
 294:	90                   	nop
 295:	90                   	nop
 296:	90                   	nop
 297:	90                   	nop
 298:	90                   	nop
 299:	90                   	nop
 29a:	90                   	nop
 29b:	90                   	nop
 29c:	90                   	nop
 29d:	90                   	nop
 29e:	90                   	nop
 29f:	90                   	nop
		}
	}
}

void bench_fixed_div(uint32_t iterations)
{
 2a0:	31 db                	xor    %ebx,%ebx
 2a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FDIV(xval1[i], xval2[i]);
 2b0:	8b 04 9d 00 00 00 00 	mov    0x0(,%ebx,4),%eax
 2b7:	8b 0c 9d 00 00 00 00 	mov    0x0(,%ebx,4),%ecx
 2be:	99                   	cltd   
 2bf:	89 cd                	mov    %ecx,%ebp
 2c1:	0f a4 c2 10          	shld   $0x10,%eax,%edx
 2c5:	c1 fd 1f             	sar    $0x1f,%ebp
 2c8:	c1 e0 10             	shl    $0x10,%eax
 2cb:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 2cf:	89 6c 24 0c          	mov    %ebp,0xc(%esp)
 2d3:	89 04 24             	mov    %eax,(%esp)
 2d6:	89 54 24 04          	mov    %edx,0x4(%esp)
 2da:	e8 fc ff ff ff       	call   2db <bench_fixed_div+0x5b>
 2df:	89 04 9d 00 00 00 00 	mov    %eax,0x0(,%ebx,4)
}

void bench_fixed_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 2e6:	43                   	inc    %ebx
 2e7:	81 fb 00 07 00 00    	cmp    $0x700,%ebx
 2ed:	75 c1                	jne    2b0 <bench_fixed_div+0x30>
	}
}

void bench_fixed_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 2ef:	46                   	inc    %esi
 2f0:	39 fe                	cmp    %edi,%esi
 2f2:	75 ac                	jne    2a0 <bench_fixed_div+0x20>
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FDIV(xval1[i], xval2[i]);
		}
	}
}
 2f4:	83 c4 1c             	add    $0x1c,%esp
 2f7:	5b                   	pop    %ebx
 2f8:	5e                   	pop    %esi
 2f9:	5f                   	pop    %edi
 2fa:	5d                   	pop    %ebp
 2fb:	c3                   	ret    
 2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000300 <bench_integer_div>:

void bench_integer_div(uint32_t iterations)
{
 300:	56                   	push   %esi
 301:	53                   	push   %ebx
	for (int iter = 0; iter < iterations; iter++) {
 302:	31 db                	xor    %ebx,%ebx
		}
	}
}

void bench_integer_div(uint32_t iterations)
{
 304:	8b 74 24 0c          	mov    0xc(%esp),%esi
	for (int iter = 0; iter < iterations; iter++) {
 308:	85 f6                	test   %esi,%esi
 30a:	74 38                	je     344 <bench_integer_div+0x44>
 30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		}
	}
}

void bench_integer_div(uint32_t iterations)
{
 310:	31 c9                	xor    %ecx,%ecx
 312:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] / xval2[i];
 320:	8b 04 8d 00 00 00 00 	mov    0x0(,%ecx,4),%eax
 327:	99                   	cltd   
 328:	f7 3c 8d 00 00 00 00 	idivl  0x0(,%ecx,4)
 32f:	89 04 8d 00 00 00 00 	mov    %eax,0x0(,%ecx,4)
}

void bench_integer_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 336:	41                   	inc    %ecx
 337:	81 f9 00 07 00 00    	cmp    $0x700,%ecx
 33d:	75 e1                	jne    320 <bench_integer_div+0x20>
	}
}

void bench_integer_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 33f:	43                   	inc    %ebx
 340:	39 f3                	cmp    %esi,%ebx
 342:	75 cc                	jne    310 <bench_integer_div+0x10>
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] / xval2[i];
		}
	}
}
 344:	5b                   	pop    %ebx
 345:	5e                   	pop    %esi
 346:	c3                   	ret    
 347:	89 f6                	mov    %esi,%esi
 349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000350 <bench_float_sqrt>:
	printf("\tInteger Division:\n\t");
	avg_of_3_runs(&bench_integer_div, iterations);
}

void bench_float_sqrt(uint32_t iterations)
{
 350:	8b 4c 24 04          	mov    0x4(%esp),%ecx
	for (int iter = 0; iter < iterations; iter++) {
 354:	31 d2                	xor    %edx,%edx
 356:	85 c9                	test   %ecx,%ecx
 358:	74 34                	je     38e <bench_float_sqrt+0x3e>
 35a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	printf("\tInteger Division:\n\t");
	avg_of_3_runs(&bench_integer_div, iterations);
}

void bench_float_sqrt(uint32_t iterations)
{
 360:	31 c0                	xor    %eax,%eax
 362:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = sqrtf(fval1[i]);
 370:	d9 04 85 00 00 00 00 	flds   0x0(,%eax,4)
 377:	d9 fa                	fsqrt  
 379:	d9 1c 85 00 00 00 00 	fstps  0x0(,%eax,4)
}

void bench_float_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 380:	40                   	inc    %eax
 381:	3d 00 07 00 00       	cmp    $0x700,%eax
 386:	75 e8                	jne    370 <bench_float_sqrt+0x20>
	avg_of_3_runs(&bench_integer_div, iterations);
}

void bench_float_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 388:	42                   	inc    %edx
 389:	39 ca                	cmp    %ecx,%edx
 38b:	75 d3                	jne    360 <bench_float_sqrt+0x10>
 38d:	c3                   	ret    
 38e:	66 90                	xchg   %ax,%ax
 390:	c3                   	ret    
 391:	eb 0d                	jmp    3a0 <fpsqrt>
 393:	90                   	nop
 394:	90                   	nop
 395:	90                   	nop
 396:	90                   	nop
 397:	90                   	nop
 398:	90                   	nop
 399:	90                   	nop
 39a:	90                   	nop
 39b:	90                   	nop
 39c:	90                   	nop
 39d:	90                   	nop
 39e:	90                   	nop
 39f:	90                   	nop

000003a0 <fpsqrt>:
    if (n >= try << (N))   \
    {   n -= try << (N);   \
        root |= 2 << (N); \
    }
unsigned int fpsqrt (unsigned int n)
{
 3a0:	53                   	push   %ebx
 3a1:	8b 54 24 08          	mov    0x8(%esp),%edx
    unsigned int root = 0, try;
    iter1 (15);    iter1 (14);    iter1 (13);    iter1 (12);
 3a5:	81 fa ff ff ff 3f    	cmp    $0x3fffffff,%edx
 3ab:	0f 86 1f 01 00 00    	jbe    4d0 <fpsqrt+0x130>
 3b1:	81 ea 00 00 00 40    	sub    $0x40000000,%edx
 3b7:	b9 00 00 00 50       	mov    $0x50000000,%ecx
 3bc:	b8 00 00 01 00       	mov    $0x10000,%eax
 3c1:	39 ca                	cmp    %ecx,%edx
 3c3:	72 07                	jb     3cc <fpsqrt+0x2c>
 3c5:	29 ca                	sub    %ecx,%edx
 3c7:	0d 00 80 00 00       	or     $0x8000,%eax
 3cc:	8d 88 00 20 00 00    	lea    0x2000(%eax),%ecx
 3d2:	c1 e1 0d             	shl    $0xd,%ecx
 3d5:	39 ca                	cmp    %ecx,%edx
 3d7:	72 07                	jb     3e0 <fpsqrt+0x40>
 3d9:	29 ca                	sub    %ecx,%edx
 3db:	0d 00 40 00 00       	or     $0x4000,%eax
 3e0:	8d 88 00 10 00 00    	lea    0x1000(%eax),%ecx
 3e6:	c1 e1 0c             	shl    $0xc,%ecx
 3e9:	39 ca                	cmp    %ecx,%edx
 3eb:	72 07                	jb     3f4 <fpsqrt+0x54>
 3ed:	29 ca                	sub    %ecx,%edx
 3ef:	0d 00 20 00 00       	or     $0x2000,%eax
    iter1 (11);    iter1 (10);    iter1 ( 9);    iter1 ( 8);
 3f4:	8d 88 00 08 00 00    	lea    0x800(%eax),%ecx
 3fa:	c1 e1 0b             	shl    $0xb,%ecx
 3fd:	39 ca                	cmp    %ecx,%edx
 3ff:	72 07                	jb     408 <fpsqrt+0x68>
 401:	29 ca                	sub    %ecx,%edx
 403:	0d 00 10 00 00       	or     $0x1000,%eax
 408:	8d 88 00 04 00 00    	lea    0x400(%eax),%ecx
 40e:	c1 e1 0a             	shl    $0xa,%ecx
 411:	39 ca                	cmp    %ecx,%edx
 413:	72 07                	jb     41c <fpsqrt+0x7c>
 415:	29 ca                	sub    %ecx,%edx
 417:	0d 00 08 00 00       	or     $0x800,%eax
 41c:	8d 88 00 02 00 00    	lea    0x200(%eax),%ecx
 422:	c1 e1 09             	shl    $0x9,%ecx
 425:	39 ca                	cmp    %ecx,%edx
 427:	72 07                	jb     430 <fpsqrt+0x90>
 429:	29 ca                	sub    %ecx,%edx
 42b:	0d 00 04 00 00       	or     $0x400,%eax
 430:	8d 88 00 01 00 00    	lea    0x100(%eax),%ecx
 436:	c1 e1 08             	shl    $0x8,%ecx
 439:	39 ca                	cmp    %ecx,%edx
 43b:	72 07                	jb     444 <fpsqrt+0xa4>
 43d:	29 ca                	sub    %ecx,%edx
 43f:	0d 00 02 00 00       	or     $0x200,%eax
    iter1 ( 7);    iter1 ( 6);    iter1 ( 5);    iter1 ( 4);
 444:	8d 88 80 00 00 00    	lea    0x80(%eax),%ecx
 44a:	c1 e1 07             	shl    $0x7,%ecx
 44d:	39 ca                	cmp    %ecx,%edx
 44f:	72 07                	jb     458 <fpsqrt+0xb8>
 451:	29 ca                	sub    %ecx,%edx
 453:	0d 00 01 00 00       	or     $0x100,%eax
 458:	8d 48 40             	lea    0x40(%eax),%ecx
 45b:	c1 e1 06             	shl    $0x6,%ecx
 45e:	39 ca                	cmp    %ecx,%edx
 460:	72 07                	jb     469 <fpsqrt+0xc9>
 462:	29 ca                	sub    %ecx,%edx
 464:	0d 80 00 00 00       	or     $0x80,%eax
 469:	8d 48 20             	lea    0x20(%eax),%ecx
 46c:	c1 e1 05             	shl    $0x5,%ecx
 46f:	39 ca                	cmp    %ecx,%edx
 471:	72 05                	jb     478 <fpsqrt+0xd8>
 473:	29 ca                	sub    %ecx,%edx
 475:	83 c8 40             	or     $0x40,%eax
 478:	8d 48 10             	lea    0x10(%eax),%ecx
 47b:	c1 e1 04             	shl    $0x4,%ecx
 47e:	39 ca                	cmp    %ecx,%edx
 480:	72 05                	jb     487 <fpsqrt+0xe7>
 482:	29 ca                	sub    %ecx,%edx
 484:	83 c8 20             	or     $0x20,%eax
    iter1 ( 3);    iter1 ( 2);    iter1 ( 1);    iter1 ( 0);
 487:	8d 0c c5 40 00 00 00 	lea    0x40(,%eax,8),%ecx
 48e:	39 ca                	cmp    %ecx,%edx
 490:	72 05                	jb     497 <fpsqrt+0xf7>
 492:	29 ca                	sub    %ecx,%edx
 494:	83 c8 10             	or     $0x10,%eax
 497:	8d 0c 85 10 00 00 00 	lea    0x10(,%eax,4),%ecx
 49e:	39 ca                	cmp    %ecx,%edx
 4a0:	72 05                	jb     4a7 <fpsqrt+0x107>
 4a2:	29 ca                	sub    %ecx,%edx
 4a4:	83 c8 08             	or     $0x8,%eax
 4a7:	8d 4c 00 04          	lea    0x4(%eax,%eax,1),%ecx
 4ab:	39 ca                	cmp    %ecx,%edx
 4ad:	72 05                	jb     4b4 <fpsqrt+0x114>
 4af:	29 ca                	sub    %ecx,%edx
 4b1:	83 c8 04             	or     $0x4,%eax
 4b4:	8d 58 01             	lea    0x1(%eax),%ebx
 4b7:	89 c1                	mov    %eax,%ecx
 4b9:	83 c9 02             	or     $0x2,%ecx
 4bc:	39 da                	cmp    %ebx,%edx
 4be:	0f 43 c1             	cmovae %ecx,%eax
//    return root >> 1;
    return root << 7;	//senquack - convert to 16.16 fixed point while also dividing by 2
 4c1:	c1 e0 07             	shl    $0x7,%eax
}
 4c4:	5b                   	pop    %ebx
 4c5:	c3                   	ret    
 4c6:	8d 76 00             	lea    0x0(%esi),%esi
 4c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
        root |= 2 << (N); \
    }
unsigned int fpsqrt (unsigned int n)
{
    unsigned int root = 0, try;
    iter1 (15);    iter1 (14);    iter1 (13);    iter1 (12);
 4d0:	b9 00 00 00 10       	mov    $0x10000000,%ecx
    {   n -= try << (N);   \
        root |= 2 << (N); \
    }
unsigned int fpsqrt (unsigned int n)
{
    unsigned int root = 0, try;
 4d5:	31 c0                	xor    %eax,%eax
 4d7:	e9 e5 fe ff ff       	jmp    3c1 <fpsqrt+0x21>
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004e0 <bench_fixed_sqrt>:
		}
	}
}

void bench_fixed_sqrt(uint32_t iterations)
{
 4e0:	57                   	push   %edi
 4e1:	56                   	push   %esi
	for (int iter = 0; iter < iterations; iter++) {
 4e2:	31 f6                	xor    %esi,%esi
		}
	}
}

void bench_fixed_sqrt(uint32_t iterations)
{
 4e4:	53                   	push   %ebx
 4e5:	83 ec 04             	sub    $0x4,%esp
 4e8:	8b 7c 24 14          	mov    0x14(%esp),%edi
	for (int iter = 0; iter < iterations; iter++) {
 4ec:	85 ff                	test   %edi,%edi
 4ee:	74 34                	je     524 <bench_fixed_sqrt+0x44>
		}
	}
}

void bench_fixed_sqrt(uint32_t iterations)
{
 4f0:	31 db                	xor    %ebx,%ebx
 4f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FSQRT(xval1[i]);
 500:	8b 04 9d 00 00 00 00 	mov    0x0(,%ebx,4),%eax
 507:	89 04 24             	mov    %eax,(%esp)
 50a:	e8 fc ff ff ff       	call   50b <bench_fixed_sqrt+0x2b>
 50f:	89 04 9d 00 00 00 00 	mov    %eax,0x0(,%ebx,4)
}

void bench_fixed_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 516:	43                   	inc    %ebx
 517:	81 fb 00 07 00 00    	cmp    $0x700,%ebx
 51d:	75 e1                	jne    500 <bench_fixed_sqrt+0x20>
	}
}

void bench_fixed_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 51f:	46                   	inc    %esi
 520:	39 fe                	cmp    %edi,%esi
 522:	75 cc                	jne    4f0 <bench_fixed_sqrt+0x10>
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FSQRT(xval1[i]);
		}
	}
}
 524:	5b                   	pop    %ebx
 525:	5b                   	pop    %ebx
 526:	5e                   	pop    %esi
 527:	5f                   	pop    %edi
 528:	c3                   	ret    
 529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000530 <flush_cache>:
//    return root >> 1;
    return root << 7;	//senquack - convert to 16.16 fixed point while also dividing by 2
}

void flush_cache()
{
 530:	53                   	push   %ebx
	for (int i = 0; i < CACHE_SIZE_IN_WORDS; i++) {
 531:	31 db                	xor    %ebx,%ebx
//    return root >> 1;
    return root << 7;	//senquack - convert to 16.16 fixed point while also dividing by 2
}

void flush_cache()
{
 533:	83 ec 08             	sub    $0x8,%esp
 536:	8d 76 00             	lea    0x0(%esi),%esi
 539:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int i = 0; i < CACHE_SIZE_IN_WORDS; i++) {
		dummy_array[i] = rand();
 540:	e8 fc ff ff ff       	call   541 <flush_cache+0x11>
 545:	89 04 9d 00 00 00 00 	mov    %eax,0x0(,%ebx,4)
    return root << 7;	//senquack - convert to 16.16 fixed point while also dividing by 2
}

void flush_cache()
{
	for (int i = 0; i < CACHE_SIZE_IN_WORDS; i++) {
 54c:	43                   	inc    %ebx
 54d:	81 fb 00 00 08 00    	cmp    $0x80000,%ebx
 553:	75 eb                	jne    540 <flush_cache+0x10>
		dummy_array[i] = rand();
	}
}
 555:	83 c4 08             	add    $0x8,%esp
 558:	5b                   	pop    %ebx
 559:	c3                   	ret    
 55a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000560 <timer>:

uint64_t timer(int begin)
{
 560:	83 ec 2c             	sub    $0x2c,%esp
	static struct timeval begin_time = {.tv_sec=0, .tv_usec=0};
	struct timeval end_time = {.tv_sec=0, .tv_usec=0};
 563:	31 c0                	xor    %eax,%eax
 565:	89 44 24 18          	mov    %eax,0x18(%esp)
 569:	31 c0                	xor    %eax,%eax
 56b:	89 44 24 1c          	mov    %eax,0x1c(%esp)
	if (begin) {
 56f:	8b 44 24 30          	mov    0x30(%esp),%eax
 573:	85 c0                	test   %eax,%eax
 575:	75 39                	jne    5b0 <timer+0x50>
		usleep(500000);
		gettimeofday(&begin_time,NULL);
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
 577:	31 c0                	xor    %eax,%eax
 579:	89 44 24 04          	mov    %eax,0x4(%esp)
 57d:	8d 44 24 18          	lea    0x18(%esp),%eax
 581:	89 04 24             	mov    %eax,(%esp)
 584:	e8 fc ff ff ff       	call   585 <timer+0x25>
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
 589:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 58d:	69 54 24 18 40 42 0f 	imul   $0xf4240,0x18(%esp),%edx
 594:	00 
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
 595:	8b 0d 04 00 20 00    	mov    0x200004,%ecx
		gettimeofday(&begin_time,NULL);
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
 59b:	01 c2                	add    %eax,%edx
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
 59d:	69 05 00 00 20 00 c0 	imul   $0xfff0bdc0,0x200000,%eax
 5a4:	bd f0 ff 
//	printf("Operation took %llu microseconds.\n\n", usecs);
	return usecs;
}
 5a7:	83 c4 2c             	add    $0x2c,%esp
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
 5aa:	29 c8                	sub    %ecx,%eax
		gettimeofday(&begin_time,NULL);
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
 5ac:	01 d0                	add    %edx,%eax
 5ae:	99                   	cltd   
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
//	printf("Operation took %llu microseconds.\n\n", usecs);
	return usecs;
}
 5af:	c3                   	ret    
{
	static struct timeval begin_time = {.tv_sec=0, .tv_usec=0};
	struct timeval end_time = {.tv_sec=0, .tv_usec=0};
	if (begin) {
		// Begin timing and exit:
		sync();
 5b0:	e8 fc ff ff ff       	call   5b1 <timer+0x51>
		fflush(NULL);
 5b5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 5bc:	e8 fc ff ff ff       	call   5bd <timer+0x5d>
		flush_cache();
 5c1:	e8 fc ff ff ff       	call   5c2 <timer+0x62>
		usleep(500000);
 5c6:	c7 04 24 20 a1 07 00 	movl   $0x7a120,(%esp)
 5cd:	e8 fc ff ff ff       	call   5ce <timer+0x6e>
		gettimeofday(&begin_time,NULL);
 5d2:	31 c0                	xor    %eax,%eax
 5d4:	89 44 24 04          	mov    %eax,0x4(%esp)
 5d8:	c7 04 24 00 00 20 00 	movl   $0x200000,(%esp)
 5df:	e8 fc ff ff ff       	call   5e0 <timer+0x80>
 5e4:	31 c0                	xor    %eax,%eax
 5e6:	31 d2                	xor    %edx,%edx
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
//	printf("Operation took %llu microseconds.\n\n", usecs);
	return usecs;
}
 5e8:	83 c4 2c             	add    $0x2c,%esp
 5eb:	c3                   	ret    
 5ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005f0 <avg_of_3_runs>:

uint64_t avg_of_3_runs(void (*benchmark)(uint32_t), int iterations)
{
 5f0:	83 ec 4c             	sub    $0x4c,%esp
 5f3:	89 5c 24 3c          	mov    %ebx,0x3c(%esp)
 5f7:	8b 5c 24 54          	mov    0x54(%esp),%ebx
 5fb:	89 74 24 40          	mov    %esi,0x40(%esp)
 5ff:	89 7c 24 44          	mov    %edi,0x44(%esp)
 603:	89 6c 24 48          	mov    %ebp,0x48(%esp)
 607:	8b 6c 24 50          	mov    0x50(%esp),%ebp
	uint64_t a,b,c, avg_time;
	timer(1);
 60b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 612:	e8 fc ff ff ff       	call   613 <avg_of_3_runs+0x23>
	benchmark(iterations);
 617:	89 1c 24             	mov    %ebx,(%esp)
 61a:	ff d5                	call   *%ebp
	a = timer(0);
 61c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 623:	e8 fc ff ff ff       	call   624 <avg_of_3_runs+0x34>
	timer(1);
 628:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
uint64_t avg_of_3_runs(void (*benchmark)(uint32_t), int iterations)
{
	uint64_t a,b,c, avg_time;
	timer(1);
	benchmark(iterations);
	a = timer(0);
 62f:	89 44 24 20          	mov    %eax,0x20(%esp)
 633:	89 54 24 24          	mov    %edx,0x24(%esp)
	timer(1);
 637:	e8 fc ff ff ff       	call   638 <avg_of_3_runs+0x48>
	benchmark(iterations);
 63c:	89 1c 24             	mov    %ebx,(%esp)
 63f:	ff d5                	call   *%ebp
	b = timer(0);
 641:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 648:	e8 fc ff ff ff       	call   649 <avg_of_3_runs+0x59>
	timer(1);
 64d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
	timer(1);
	benchmark(iterations);
	a = timer(0);
	timer(1);
	benchmark(iterations);
	b = timer(0);
 654:	89 c6                	mov    %eax,%esi
 656:	89 d7                	mov    %edx,%edi
	timer(1);
 658:	e8 fc ff ff ff       	call   659 <avg_of_3_runs+0x69>
	benchmark(iterations);
 65d:	89 1c 24             	mov    %ebx,(%esp)
 660:	ff d5                	call   *%ebp
	c = timer(0);
 662:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 669:	e8 fc ff ff ff       	call   66a <avg_of_3_runs+0x7a>
	avg_time = (a + b + c) / 3;
 66e:	03 74 24 20          	add    0x20(%esp),%esi
 672:	13 7c 24 24          	adc    0x24(%esp),%edi
 676:	01 c6                	add    %eax,%esi
 678:	b8 03 00 00 00       	mov    $0x3,%eax
 67d:	11 d7                	adc    %edx,%edi
 67f:	31 d2                	xor    %edx,%edx
 681:	89 34 24             	mov    %esi,(%esp)
 684:	89 7c 24 04          	mov    %edi,0x4(%esp)
 688:	89 44 24 08          	mov    %eax,0x8(%esp)
 68c:	89 54 24 0c          	mov    %edx,0xc(%esp)
 690:	e8 fc ff ff ff       	call   691 <avg_of_3_runs+0xa1>
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
 695:	85 d2                	test   %edx,%edx
 697:	66 0f 6e c0          	movd   %eax,%xmm0
 69b:	66 0f 6e ca          	movd   %edx,%xmm1
	benchmark(iterations);
	b = timer(0);
	timer(1);
	benchmark(iterations);
	c = timer(0);
	avg_time = (a + b + c) / 3;
 69f:	89 c6                	mov    %eax,%esi
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
 6a1:	66 0f 62 c1          	punpckldq %xmm1,%xmm0
	benchmark(iterations);
	b = timer(0);
	timer(1);
	benchmark(iterations);
	c = timer(0);
	avg_time = (a + b + c) / 3;
 6a5:	89 d7                	mov    %edx,%edi
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
 6a7:	66 0f d6 44 24 28    	movq   %xmm0,0x28(%esp)
 6ad:	df 6c 24 28          	fildll 0x28(%esp)
 6b1:	78 45                	js     6f8 <avg_of_3_runs+0x108>
}

__extern_always_inline int
printf (__const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
 6b3:	b8 00 00 00 00       	mov    $0x0,%eax
 6b8:	dc 0d 00 00 00 00    	fmull  0x0
 6be:	89 74 24 08          	mov    %esi,0x8(%esp)
 6c2:	89 7c 24 0c          	mov    %edi,0xc(%esp)
 6c6:	89 44 24 04          	mov    %eax,0x4(%esp)
 6ca:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 6d1:	dd 5c 24 10          	fstpl  0x10(%esp)
 6d5:	e8 fc ff ff ff       	call   6d6 <avg_of_3_runs+0xe6>
	return avg_time;
}
 6da:	89 f0                	mov    %esi,%eax
 6dc:	89 fa                	mov    %edi,%edx
 6de:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 6e2:	8b 74 24 40          	mov    0x40(%esp),%esi
 6e6:	8b 7c 24 44          	mov    0x44(%esp),%edi
 6ea:	8b 6c 24 48          	mov    0x48(%esp),%ebp
 6ee:	83 c4 4c             	add    $0x4c,%esp
 6f1:	c3                   	ret    
 6f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	b = timer(0);
	timer(1);
	benchmark(iterations);
	c = timer(0);
	avg_time = (a + b + c) / 3;
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
 6f8:	d8 05 00 00 00 00    	fadds  0x0
 6fe:	eb b3                	jmp    6b3 <avg_of_3_runs+0xc3>

00000700 <fill_float_array>:
	return avg_time;
}

void fill_float_array(float *array, int all_positive)
{
 700:	55                   	push   %ebp
 701:	57                   	push   %edi
 702:	56                   	push   %esi
	// Fill data array with fairly random distribution of numbers less than the value of 32768 (max a 16.16 FP can hold)
	for (int i = 0; i < ASIZE; i++) {
 703:	31 f6                	xor    %esi,%esi
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
	return avg_time;
}

void fill_float_array(float *array, int all_positive)
{
 705:	53                   	push   %ebx
 706:	83 ec 1c             	sub    $0x1c,%esp
 709:	8b 7c 24 34          	mov    0x34(%esp),%edi
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
				if (array[i] >= 32767) {
					array[i] = 16384.16384;	// Nice median value
				} else if (array[i] <= -32767) {
					array[i] = -16384.16384;	// Nice median value
 70d:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 711:	eb 6d                	jmp    780 <fill_float_array+0x80>
 713:	90                   	nop
 714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		array[i] = (float)x / (float)y;
		// At this point, the numbers are not very large at all: randomly increase or decrease them:
		switch(rand() % 3) {
			case 0:
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
 718:	d9 5c 24 08          	fstps  0x8(%esp)
 71c:	e8 fc ff ff ff       	call   71d <fill_float_array+0x1d>
 721:	89 c1                	mov    %eax,%ecx
 723:	b8 ad 8b db 68       	mov    $0x68db8bad,%eax
 728:	f7 e9                	imul   %ecx
 72a:	89 c8                	mov    %ecx,%eax
 72c:	c1 f8 1f             	sar    $0x1f,%eax
 72f:	c1 fa 0b             	sar    $0xb,%edx
 732:	29 c2                	sub    %eax,%edx
 734:	69 d2 88 13 00 00    	imul   $0x1388,%edx,%edx
 73a:	29 d1                	sub    %edx,%ecx
 73c:	41                   	inc    %ecx
 73d:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 741:	db 44 24 0c          	fildl  0xc(%esp)
 745:	d8 4c 24 08          	fmuls  0x8(%esp)
 749:	d9 13                	fsts   (%ebx)
				if (array[i] >= 32767) {
 74b:	d9 05 08 00 00 00    	flds   0x8
 751:	d9 c9                	fxch   %st(1)
 753:	db f1                	fcomi  %st(1),%st
 755:	dd d9                	fstp   %st(1)
 757:	0f 82 0b 01 00 00    	jb     868 <fill_float_array+0x168>
 75d:	dd d8                	fstp   %st(0)
					array[i] = 16384.16384;	// Nice median value
 75f:	b8 54 00 80 46       	mov    $0x46800054,%eax
 764:	89 03                	mov    %eax,(%ebx)
 766:	89 44 24 04          	mov    %eax,0x4(%esp)
 76a:	d9 44 24 04          	flds   0x4(%esp)
}

void fill_float_array(float *array, int all_positive)
{
	// Fill data array with fairly random distribution of numbers less than the value of 32768 (max a 16.16 FP can hold)
	for (int i = 0; i < ASIZE; i++) {
 76e:	46                   	inc    %esi
				// Number has a one-in-three chance of being left along
				break;
			default:
				break;
		}
		if (array[i] == 0.0) array[i] = 0.12345; // We don't want any zeroes in the array
 76f:	d9 1b                	fstps  (%ebx)
}

void fill_float_array(float *array, int all_positive)
{
	// Fill data array with fairly random distribution of numbers less than the value of 32768 (max a 16.16 FP can hold)
	for (int i = 0; i < ASIZE; i++) {
 771:	83 c3 04             	add    $0x4,%ebx
 774:	81 fe 00 07 00 00    	cmp    $0x700,%esi
 77a:	0f 84 a3 00 00 00    	je     823 <fill_float_array+0x123>
		int x,y;
		x = rand() + 1;
 780:	e8 fc ff ff ff       	call   781 <fill_float_array+0x81>
 785:	40                   	inc    %eax
 786:	89 44 24 08          	mov    %eax,0x8(%esp)
		y = rand() + 1;
 78a:	e8 fc ff ff ff       	call   78b <fill_float_array+0x8b>
		if (!all_positive) {
 78f:	85 ff                	test   %edi,%edi
{
	// Fill data array with fairly random distribution of numbers less than the value of 32768 (max a 16.16 FP can hold)
	for (int i = 0; i < ASIZE; i++) {
		int x,y;
		x = rand() + 1;
		y = rand() + 1;
 791:	8d 68 01             	lea    0x1(%eax),%ebp
		if (!all_positive) {
 794:	0f 84 96 00 00 00    	je     830 <fill_float_array+0x130>
			x *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
			y *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
		}
		array[i] = (float)x / (float)y;
 79a:	89 6c 24 0c          	mov    %ebp,0xc(%esp)
 79e:	db 44 24 08          	fildl  0x8(%esp)
 7a2:	db 44 24 0c          	fildl  0xc(%esp)
 7a6:	de f9                	fdivrp %st,%st(1)
 7a8:	d9 1b                	fstps  (%ebx)
		// At this point, the numbers are not very large at all: randomly increase or decrease them:
		switch(rand() % 3) {
 7aa:	e8 fc ff ff ff       	call   7ab <fill_float_array+0xab>
			case 0:
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
 7af:	d9 03                	flds   (%ebx)
			x *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
			y *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
		}
		array[i] = (float)x / (float)y;
		// At this point, the numbers are not very large at all: randomly increase or decrease them:
		switch(rand() % 3) {
 7b1:	89 c1                	mov    %eax,%ecx
 7b3:	b8 56 55 55 55       	mov    $0x55555556,%eax
 7b8:	f7 e9                	imul   %ecx
 7ba:	89 c8                	mov    %ecx,%eax
 7bc:	c1 f8 1f             	sar    $0x1f,%eax
 7bf:	29 c2                	sub    %eax,%edx
 7c1:	8d 04 52             	lea    (%edx,%edx,2),%eax
 7c4:	29 c1                	sub    %eax,%ecx
 7c6:	0f 84 4c ff ff ff    	je     718 <fill_float_array+0x18>
 7cc:	83 f9 02             	cmp    $0x2,%ecx
 7cf:	75 32                	jne    803 <fill_float_array+0x103>
					array[i] = -16384.16384;	// Nice median value
				}
				break;
			case 2:
				// Number has a one-in-three chance of becoming smaller:
				array[i] /= (rand()%10 + 1);	
 7d1:	d9 5c 24 08          	fstps  0x8(%esp)
 7d5:	e8 fc ff ff ff       	call   7d6 <fill_float_array+0xd6>
 7da:	ba 67 66 66 66       	mov    $0x66666667,%edx
 7df:	89 c1                	mov    %eax,%ecx
 7e1:	f7 ea                	imul   %edx
 7e3:	89 c8                	mov    %ecx,%eax
 7e5:	c1 f8 1f             	sar    $0x1f,%eax
 7e8:	c1 fa 02             	sar    $0x2,%edx
 7eb:	29 c2                	sub    %eax,%edx
 7ed:	8d 04 92             	lea    (%edx,%edx,4),%eax
 7f0:	01 c0                	add    %eax,%eax
 7f2:	29 c1                	sub    %eax,%ecx
 7f4:	41                   	inc    %ecx
 7f5:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 7f9:	db 44 24 0c          	fildl  0xc(%esp)
 7fd:	d8 7c 24 08          	fdivrs 0x8(%esp)
 801:	d9 13                	fsts   (%ebx)
				// Number has a one-in-three chance of being left along
				break;
			default:
				break;
		}
		if (array[i] == 0.0) array[i] = 0.12345; // We don't want any zeroes in the array
 803:	d9 ee                	fldz   
 805:	df f1                	fcomip %st(1),%st
 807:	d9 05 04 00 00 00    	flds   0x4
 80d:	db c9                	fcmovne %st(1),%st
 80f:	dd d9                	fstp   %st(1)
}

void fill_float_array(float *array, int all_positive)
{
	// Fill data array with fairly random distribution of numbers less than the value of 32768 (max a 16.16 FP can hold)
	for (int i = 0; i < ASIZE; i++) {
 811:	46                   	inc    %esi
				// Number has a one-in-three chance of being left along
				break;
			default:
				break;
		}
		if (array[i] == 0.0) array[i] = 0.12345; // We don't want any zeroes in the array
 812:	d9 1b                	fstps  (%ebx)
}

void fill_float_array(float *array, int all_positive)
{
	// Fill data array with fairly random distribution of numbers less than the value of 32768 (max a 16.16 FP can hold)
	for (int i = 0; i < ASIZE; i++) {
 814:	83 c3 04             	add    $0x4,%ebx
 817:	81 fe 00 07 00 00    	cmp    $0x700,%esi
 81d:	0f 85 5d ff ff ff    	jne    780 <fill_float_array+0x80>
				break;
		}
		if (array[i] == 0.0) array[i] = 0.12345; // We don't want any zeroes in the array
//		printf("n:%f\n", array[i]);
	}
}
 823:	83 c4 1c             	add    $0x1c,%esp
 826:	5b                   	pop    %ebx
 827:	5e                   	pop    %esi
 828:	5f                   	pop    %edi
 829:	5d                   	pop    %ebp
 82a:	c3                   	ret    
 82b:	90                   	nop
 82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	for (int i = 0; i < ASIZE; i++) {
		int x,y;
		x = rand() + 1;
		y = rand() + 1;
		if (!all_positive) {
			x *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
 830:	e8 fc ff ff ff       	call   831 <fill_float_array+0x131>
 835:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 839:	83 e0 01             	and    $0x1,%eax
 83c:	83 f8 01             	cmp    $0x1,%eax
 83f:	19 c0                	sbb    %eax,%eax
 841:	83 e0 02             	and    $0x2,%eax
 844:	48                   	dec    %eax
 845:	0f af c1             	imul   %ecx,%eax
 848:	89 44 24 08          	mov    %eax,0x8(%esp)
			y *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
 84c:	e8 fc ff ff ff       	call   84d <fill_float_array+0x14d>
 851:	83 e0 01             	and    $0x1,%eax
 854:	83 f8 01             	cmp    $0x1,%eax
 857:	19 c0                	sbb    %eax,%eax
 859:	83 e0 02             	and    $0x2,%eax
 85c:	48                   	dec    %eax
 85d:	0f af e8             	imul   %eax,%ebp
 860:	e9 35 ff ff ff       	jmp    79a <fill_float_array+0x9a>
 865:	8d 76 00             	lea    0x0(%esi),%esi
			case 0:
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
				if (array[i] >= 32767) {
					array[i] = 16384.16384;	// Nice median value
				} else if (array[i] <= -32767) {
 868:	d9 05 0c 00 00 00    	flds   0xc
 86e:	df f1                	fcomip %st(1),%st
 870:	72 91                	jb     803 <fill_float_array+0x103>
 872:	dd d8                	fstp   %st(0)
					array[i] = -16384.16384;	// Nice median value
 874:	b8 54 00 80 c6       	mov    $0xc6800054,%eax
 879:	89 03                	mov    %eax,(%ebx)
 87b:	89 44 24 04          	mov    %eax,0x4(%esp)
 87f:	d9 44 24 04          	flds   0x4(%esp)
 883:	e9 e6 fe ff ff       	jmp    76e <fill_float_array+0x6e>
 888:	90                   	nop
 889:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000890 <fill_fixed_array_from_float_array>:
//		printf("n:%f\n", array[i]);
	}
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
 890:	53                   	push   %ebx
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
 891:	31 c0                	xor    %eax,%eax
//		printf("n:%f\n", array[i]);
	}
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
 893:	83 ec 04             	sub    $0x4,%esp
 896:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
 89a:	8b 4c 24 10          	mov    0x10(%esp),%ecx
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
		fixed_array[i] = f2x(float_array[i]);
 89e:	d9 05 10 00 00 00    	flds   0x10
 8a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi
 8b0:	d9 04 81             	flds   (%ecx,%eax,4)
 8b3:	d8 c9                	fmul   %st(1),%st
 8b5:	d9 1c 24             	fstps  (%esp)
 8b8:	f3 0f 2c 14 24       	cvttss2si (%esp),%edx
 8bd:	89 14 83             	mov    %edx,(%ebx,%eax,4)
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
 8c0:	40                   	inc    %eax
 8c1:	3d 00 07 00 00       	cmp    $0x700,%eax
 8c6:	75 e8                	jne    8b0 <fill_fixed_array_from_float_array+0x20>
 8c8:	dd d8                	fstp   %st(0)
//			fixed_array[i] = f2x(314.159);	// don't want any zeroes in the array
//			num_corrections++;
//		}
	}
//	printf("number of corrections: %d\n", num_corrections);
}
 8ca:	5b                   	pop    %ebx
 8cb:	5b                   	pop    %ebx
 8cc:	c3                   	ret    
 8cd:	8d 76 00             	lea    0x0(%esi),%esi

000008d0 <fill_arrays>:

void fill_arrays()
{
 8d0:	83 ec 2c             	sub    $0x2c,%esp
	/* NOTE: one of the arrays will have some numbers negative, the other array will have all positive:
	  	(fval1, for use with square root benchmark) */
	fill_float_array(fval1, 1);	// The 1 signifies that all values will be positive in this array
 8d3:	b8 01 00 00 00       	mov    $0x1,%eax
 8d8:	89 44 24 04          	mov    %eax,0x4(%esp)
 8dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8e3:	e8 fc ff ff ff       	call   8e4 <fill_arrays+0x14>
	fill_float_array(fval2, 0);
 8e8:	31 c0                	xor    %eax,%eax
 8ea:	89 44 24 04          	mov    %eax,0x4(%esp)
 8ee:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8f5:	e8 fc ff ff ff       	call   8f6 <fill_arrays+0x26>
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
 8fa:	31 c0                	xor    %eax,%eax
		fixed_array[i] = f2x(float_array[i]);
 8fc:	d9 05 10 00 00 00    	flds   0x10
 902:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 910:	d9 04 85 00 00 00 00 	flds   0x0(,%eax,4)
 917:	d8 c9                	fmul   %st(1),%st
 919:	d9 5c 24 1c          	fstps  0x1c(%esp)
 91d:	f3 0f 2c 54 24 1c    	cvttss2si 0x1c(%esp),%edx
 923:	89 14 85 00 00 00 00 	mov    %edx,0x0(,%eax,4)
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
 92a:	40                   	inc    %eax
 92b:	3d 00 07 00 00       	cmp    $0x700,%eax
 930:	75 de                	jne    910 <fill_arrays+0x40>
 932:	dd d8                	fstp   %st(0)
 934:	31 c0                	xor    %eax,%eax
		fixed_array[i] = f2x(float_array[i]);
 936:	d9 05 10 00 00 00    	flds   0x10
 93c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 940:	d9 04 85 00 00 00 00 	flds   0x0(,%eax,4)
 947:	d8 c9                	fmul   %st(1),%st
 949:	d9 5c 24 1c          	fstps  0x1c(%esp)
 94d:	f3 0f 2c 54 24 1c    	cvttss2si 0x1c(%esp),%edx
 953:	89 14 85 00 00 00 00 	mov    %edx,0x0(,%eax,4)
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
 95a:	40                   	inc    %eax
 95b:	3d 00 07 00 00       	cmp    $0x700,%eax
 960:	75 de                	jne    940 <fill_arrays+0x70>
 962:	dd d8                	fstp   %st(0)
	  	(fval1, for use with square root benchmark) */
	fill_float_array(fval1, 1);	// The 1 signifies that all values will be positive in this array
	fill_float_array(fval2, 0);
	fill_fixed_array_from_float_array(xval1, fval1);	
	fill_fixed_array_from_float_array(xval2, fval2);
}
 964:	83 c4 2c             	add    $0x2c,%esp
 967:	c3                   	ret    
 968:	90                   	nop
 969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000970 <bench_subtraction>:
		}
	}
}

void bench_subtraction(uint32_t iterations)
{
 970:	53                   	push   %ebx
 971:	83 ec 18             	sub    $0x18,%esp
 974:	8b 5c 24 20          	mov    0x20(%esp),%ebx
	fill_arrays();	
 978:	e8 fc ff ff ff       	call   979 <bench_subtraction+0x9>
 97d:	c7 04 24 1e 00 00 00 	movl   $0x1e,(%esp)
 984:	e8 fc ff ff ff       	call   985 <bench_subtraction+0x15>
 989:	b8 37 00 00 00       	mov    $0x37,%eax
 98e:	89 44 24 04          	mov    %eax,0x4(%esp)
 992:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 999:	e8 fc ff ff ff       	call   99a <bench_subtraction+0x2a>
	printf("\nSUBTRACTION BENCHMARKS:\n");
	printf("\tFloat subtraction:\n\t");
	avg_of_3_runs(&bench_float_sub, iterations);
 99e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 9a2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 9a9:	e8 fc ff ff ff       	call   9aa <bench_subtraction+0x3a>
 9ae:	b8 00 00 00 00       	mov    $0x0,%eax
 9b3:	89 44 24 04          	mov    %eax,0x4(%esp)
 9b7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 9be:	e8 fc ff ff ff       	call   9bf <bench_subtraction+0x4f>
	printf("\tFixed-point 16.16 subtraction:\n\t");
	avg_of_3_runs(&bench_fixed_sub, iterations);
 9c3:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 9c7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 9ce:	e8 fc ff ff ff       	call   9cf <bench_subtraction+0x5f>
}
 9d3:	83 c4 18             	add    $0x18,%esp
 9d6:	5b                   	pop    %ebx
 9d7:	c3                   	ret    
 9d8:	90                   	nop
 9d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000009e0 <bench_addition>:
		}
	}
}

void bench_addition(uint32_t iterations)
{
 9e0:	53                   	push   %ebx
 9e1:	83 ec 18             	sub    $0x18,%esp
 9e4:	8b 5c 24 20          	mov    0x20(%esp),%ebx
	fill_arrays();	
 9e8:	e8 fc ff ff ff       	call   9e9 <bench_addition+0x9>
 9ed:	c7 04 24 4d 00 00 00 	movl   $0x4d,(%esp)
 9f4:	e8 fc ff ff ff       	call   9f5 <bench_addition+0x15>
 9f9:	b8 63 00 00 00       	mov    $0x63,%eax
 9fe:	89 44 24 04          	mov    %eax,0x4(%esp)
 a02:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 a09:	e8 fc ff ff ff       	call   a0a <bench_addition+0x2a>
	printf("\nADDITION BENCHMARKS:\n");
	printf("\tFloat addition:\n\t");
	avg_of_3_runs(&bench_float_add, iterations);
 a0e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 a12:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 a19:	e8 fc ff ff ff       	call   a1a <bench_addition+0x3a>
 a1e:	b8 24 00 00 00       	mov    $0x24,%eax
 a23:	89 44 24 04          	mov    %eax,0x4(%esp)
 a27:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 a2e:	e8 fc ff ff ff       	call   a2f <bench_addition+0x4f>
	printf("\tFixed-point 16.16 addition:\n\t");
	avg_of_3_runs(&bench_fixed_add, iterations);
 a33:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 a37:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 a3e:	e8 fc ff ff ff       	call   a3f <bench_addition+0x5f>
}
 a43:	83 c4 18             	add    $0x18,%esp
 a46:	5b                   	pop    %ebx
 a47:	c3                   	ret    
 a48:	90                   	nop
 a49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000a50 <bench_multiplication>:
		}
	}
}

void bench_multiplication(uint32_t iterations)
{
 a50:	53                   	push   %ebx
 a51:	83 ec 18             	sub    $0x18,%esp
 a54:	8b 5c 24 20          	mov    0x20(%esp),%ebx
	fill_arrays();	
 a58:	e8 fc ff ff ff       	call   a59 <bench_multiplication+0x9>
 a5d:	c7 04 24 76 00 00 00 	movl   $0x76,(%esp)
 a64:	e8 fc ff ff ff       	call   a65 <bench_multiplication+0x15>
 a69:	b8 92 00 00 00       	mov    $0x92,%eax
 a6e:	89 44 24 04          	mov    %eax,0x4(%esp)
 a72:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 a79:	e8 fc ff ff ff       	call   a7a <bench_multiplication+0x2a>
	printf("\nMULTIPLICATION BENCHMARKS:\n");
	printf("\tFloat multiplication:\n\t");
	avg_of_3_runs(&bench_float_mul, iterations);
 a7e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 a82:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 a89:	e8 fc ff ff ff       	call   a8a <bench_multiplication+0x3a>
	avg_of_3_runs(&bench_fixed_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 a8e:	31 d2                	xor    %edx,%edx
 a90:	85 db                	test   %ebx,%ebx
 a92:	74 3e                	je     ad2 <bench_multiplication+0x82>
 a94:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 a9a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi
		}
	}
}

void bench_multiplication(uint32_t iterations)
{
 aa0:	31 c0                	xor    %eax,%eax
 aa2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 aa9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] * fval2[i];
 ab0:	d9 04 85 00 00 00 00 	flds   0x0(,%eax,4)
 ab7:	d8 0c 85 00 00 00 00 	fmuls  0x0(,%eax,4)
 abe:	d9 1c 85 00 00 00 00 	fstps  0x0(,%eax,4)
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 ac5:	40                   	inc    %eax
 ac6:	3d 00 07 00 00       	cmp    $0x700,%eax
 acb:	75 e3                	jne    ab0 <bench_multiplication+0x60>
	avg_of_3_runs(&bench_fixed_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 acd:	42                   	inc    %edx
 ace:	39 d3                	cmp    %edx,%ebx
 ad0:	75 ce                	jne    aa0 <bench_multiplication+0x50>
 ad2:	ba 44 00 00 00       	mov    $0x44,%edx
 ad7:	89 54 24 04          	mov    %edx,0x4(%esp)
 adb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 ae2:	e8 fc ff ff ff       	call   ae3 <bench_multiplication+0x93>
	printf("\nMULTIPLICATION BENCHMARKS:\n");
	printf("\tFloat multiplication:\n\t");
	avg_of_3_runs(&bench_float_mul, iterations);
	bench_float_mul(iterations);
	printf("\tFixed-point 16.16 multiplication:\n\t");
	avg_of_3_runs(&bench_fixed_mul, iterations);
 ae7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 aeb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 af2:	e8 fc ff ff ff       	call   af3 <bench_multiplication+0xa3>
 af7:	b9 ab 00 00 00       	mov    $0xab,%ecx
 afc:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 b00:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 b07:	e8 fc ff ff ff       	call   b08 <bench_multiplication+0xb8>
	printf("\tInteger multiplication:\n\t");
	avg_of_3_runs(&bench_integer_mul, iterations);
 b0c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 b10:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 b17:	e8 fc ff ff ff       	call   b18 <bench_multiplication+0xc8>
}
 b1c:	83 c4 18             	add    $0x18,%esp
 b1f:	5b                   	pop    %ebx
 b20:	c3                   	ret    
 b21:	eb 0d                	jmp    b30 <bench_division>
 b23:	90                   	nop
 b24:	90                   	nop
 b25:	90                   	nop
 b26:	90                   	nop
 b27:	90                   	nop
 b28:	90                   	nop
 b29:	90                   	nop
 b2a:	90                   	nop
 b2b:	90                   	nop
 b2c:	90                   	nop
 b2d:	90                   	nop
 b2e:	90                   	nop
 b2f:	90                   	nop

00000b30 <bench_division>:
		}
	}
}

void bench_division(uint32_t iterations)
{
 b30:	53                   	push   %ebx
 b31:	83 ec 18             	sub    $0x18,%esp
 b34:	8b 5c 24 20          	mov    0x20(%esp),%ebx
	fill_arrays();	
 b38:	e8 fc ff ff ff       	call   b39 <bench_division+0x9>
 b3d:	c7 04 24 c6 00 00 00 	movl   $0xc6,(%esp)
 b44:	e8 fc ff ff ff       	call   b45 <bench_division+0x15>
 b49:	b8 dc 00 00 00       	mov    $0xdc,%eax
 b4e:	89 44 24 04          	mov    %eax,0x4(%esp)
 b52:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 b59:	e8 fc ff ff ff       	call   b5a <bench_division+0x2a>
	printf("\nDIVISION BENCHMARKS:\n");
	printf("\tFloat Division:\n\t");
	avg_of_3_runs(&bench_float_div, iterations);
 b5e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 b62:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 b69:	e8 fc ff ff ff       	call   b6a <bench_division+0x3a>
 b6e:	b8 6c 00 00 00       	mov    $0x6c,%eax
 b73:	89 44 24 04          	mov    %eax,0x4(%esp)
 b77:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 b7e:	e8 fc ff ff ff       	call   b7f <bench_division+0x4f>
	printf("\tFixed-point 16.16 Division:\n\t");
	avg_of_3_runs(&bench_fixed_div, iterations);
 b83:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 b87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 b8e:	e8 fc ff ff ff       	call   b8f <bench_division+0x5f>
 b93:	b8 ef 00 00 00       	mov    $0xef,%eax
 b98:	89 44 24 04          	mov    %eax,0x4(%esp)
 b9c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 ba3:	e8 fc ff ff ff       	call   ba4 <bench_division+0x74>
	printf("\tInteger Division:\n\t");
	avg_of_3_runs(&bench_integer_div, iterations);
 ba8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 bac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 bb3:	e8 fc ff ff ff       	call   bb4 <bench_division+0x84>
}
 bb8:	83 c4 18             	add    $0x18,%esp
 bbb:	5b                   	pop    %ebx
 bbc:	c3                   	ret    
 bbd:	8d 76 00             	lea    0x0(%esi),%esi

00000bc0 <bench_squareroot>:
		}
	}
}

void bench_squareroot(uint32_t iterations)
{
 bc0:	53                   	push   %ebx
 bc1:	83 ec 18             	sub    $0x18,%esp
 bc4:	8b 5c 24 20          	mov    0x20(%esp),%ebx
	fill_arrays();	
 bc8:	e8 fc ff ff ff       	call   bc9 <bench_squareroot+0x9>
 bcd:	c7 04 24 04 01 00 00 	movl   $0x104,(%esp)
 bd4:	e8 fc ff ff ff       	call   bd5 <bench_squareroot+0x15>
 bd9:	b8 1d 01 00 00       	mov    $0x11d,%eax
 bde:	89 44 24 04          	mov    %eax,0x4(%esp)
 be2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 be9:	e8 fc ff ff ff       	call   bea <bench_squareroot+0x2a>
	printf("\nSQUARE-ROOT BENCHMARKS:\n");
	printf("\tFloat Square Root:\n\t");
	avg_of_3_runs(&bench_float_sqrt, iterations);
 bee:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 bf2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 bf9:	e8 fc ff ff ff       	call   bfa <bench_squareroot+0x3a>
 bfe:	b8 8c 00 00 00       	mov    $0x8c,%eax
 c03:	89 44 24 04          	mov    %eax,0x4(%esp)
 c07:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 c0e:	e8 fc ff ff ff       	call   c0f <bench_squareroot+0x4f>
	printf("\tFixed-point 16.16 Square Root:\n\t");
	avg_of_3_runs(&bench_fixed_sqrt, iterations);
 c13:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 c17:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 c1e:	e8 fc ff ff ff       	call   c1f <bench_squareroot+0x5f>
}
 c23:	83 c4 18             	add    $0x18,%esp
 c26:	5b                   	pop    %ebx
 c27:	c3                   	ret    

Disassembly of section .text.startup:

00000000 <main>:


int main(int argv, char **argc)
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	83 ec 10             	sub    $0x10,%esp
	srand(time(NULL));
   a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  11:	e8 fc ff ff ff       	call   12 <main+0x12>
  16:	89 04 24             	mov    %eax,(%esp)
  19:	e8 fc ff ff ff       	call   1a <main+0x1a>
	uint32_t iterations = 0;
	if (argv < 2) {
  1e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
  22:	0f 8e af 00 00 00    	jle    d7 <main+0xd7>
  return strtod (__nptr, (char **) NULL);
}
__extern_inline int
__NTH (atoi (__const char *__nptr))
{
  return (int) strtol (__nptr, (char **) NULL, 10);
  28:	8b 45 0c             	mov    0xc(%ebp),%eax
  2b:	31 c9                	xor    %ecx,%ecx
  2d:	ba 0a 00 00 00       	mov    $0xa,%edx
  32:	89 54 24 08          	mov    %edx,0x8(%esp)
  36:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  3a:	8b 40 04             	mov    0x4(%eax),%eax
  3d:	89 04 24             	mov    %eax,(%esp)
  40:	e8 fc ff ff ff       	call   41 <main+0x41>
  45:	c7 04 24 d8 00 00 00 	movl   $0xd8,(%esp)
  4c:	89 c3                	mov    %eax,%ebx
  4e:	e8 fc ff ff ff       	call   4f <main+0x4f>
  53:	c7 04 24 1c 01 00 00 	movl   $0x11c,(%esp)
  5a:	e8 fc ff ff ff       	call   5b <main+0x5b>
  5f:	c7 04 24 54 01 00 00 	movl   $0x154,(%esp)
  66:	e8 fc ff ff ff       	call   67 <main+0x67>
  6b:	b8 00 07 00 00       	mov    $0x700,%eax
  70:	89 44 24 0c          	mov    %eax,0xc(%esp)
  74:	b8 c4 01 00 00       	mov    $0x1c4,%eax
  79:	89 5c 24 08          	mov    %ebx,0x8(%esp)
  7d:	89 44 24 04          	mov    %eax,0x4(%esp)
  81:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  88:	e8 fc ff ff ff       	call   89 <main+0x89>
  8d:	c7 04 24 fc 01 00 00 	movl   $0x1fc,(%esp)
  94:	e8 fc ff ff ff       	call   95 <main+0x95>
	printf("NOTE: before each benchmark is timed, sync(), fflush(),\n"
			"a L2 cache flush, and .5 second delay are all executed.\n");
	printf("Each benchmark is %u iterations over %u-length arrays.\n", iterations, ASIZE);
	printf("Times reported are an average of 3 of these benchmark runs.\n\n");

	bench_addition(iterations);
  99:	89 1c 24             	mov    %ebx,(%esp)
  9c:	e8 fc ff ff ff       	call   9d <main+0x9d>
	bench_subtraction(iterations);
  a1:	89 1c 24             	mov    %ebx,(%esp)
  a4:	e8 fc ff ff ff       	call   a5 <main+0xa5>
	bench_multiplication(iterations);
  a9:	89 1c 24             	mov    %ebx,(%esp)
  ac:	e8 fc ff ff ff       	call   ad <main+0xad>
	bench_division(iterations);
  b1:	89 1c 24             	mov    %ebx,(%esp)
  b4:	e8 fc ff ff ff       	call   b5 <main+0xb5>
	bench_squareroot(iterations);
  b9:	89 1c 24             	mov    %ebx,(%esp)
  bc:	e8 fc ff ff ff       	call   bd <main+0xbd>

	// Important: this is to ensure that the flushing of cache via dummy_array is never optimized out:
	return (dummy_array[0] == dummy_array[CACHE_SIZE_IN_WORDS-1]);
  c1:	a1 fc ff 1f 00       	mov    0x1ffffc,%eax
  c6:	39 05 00 00 00 00    	cmp    %eax,0x0
  cc:	0f 94 c0             	sete   %al
  cf:	0f b6 c0             	movzbl %al,%eax
}
  d2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  d5:	c9                   	leave  
  d6:	c3                   	ret    
  d7:	c7 04 24 b0 00 00 00 	movl   $0xb0,(%esp)
  de:	e8 fc ff ff ff       	call   df <main+0xdf>
{
	srand(time(NULL));
	uint32_t iterations = 0;
	if (argv < 2) {
		printf("Missing argument: number of iterations\n");
		return 1;
  e3:	b8 01 00 00 00       	mov    $0x1,%eax
  e8:	eb e8                	jmp    d2 <main+0xd2>
