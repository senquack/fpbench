
fpbench.o:     file format elf32-tradlittlemips


Disassembly of section .text:

00000000 <bench_float_sub>:
	fill_fixed_array_from_float_array(xval2, fval2);
}

void bench_float_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
   0:	10800012 	beqz	a0,4c <bench_float_sub+0x4c>
   4:	3c1c0000 	lui	gp,0x0
   8:	00004021 	move	t0,zero
	fill_fixed_array_from_float_array(xval1, fval1);	
	fill_fixed_array_from_float_array(xval2, fval2);
}

void bench_float_sub(uint32_t iterations)
{
   c:	279c0000 	addiu	gp,gp,0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
  10:	24051c00 	li	a1,7168
  14:	8f870000 	lw	a3,0(gp)
  18:	8f860000 	lw	a2,0(gp)
  1c:	8f830000 	lw	v1,0(gp)
	fill_fixed_array_from_float_array(xval1, fval1);	
	fill_fixed_array_from_float_array(xval2, fval2);
}

void bench_float_sub(uint32_t iterations)
{
  20:	00001021 	move	v0,zero
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] - fval2[i];
  24:	4c460000 	lwxc1	$f0,a2(v0)
  28:	4c430040 	lwxc1	$f1,v1(v0)
  2c:	46010001 	sub.s	$f0,$f0,$f1
  30:	4c470008 	swxc1	$f0,a3(v0)
  34:	24420004 	addiu	v0,v0,4
}

void bench_float_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
  38:	1445fffa 	bne	v0,a1,24 <bench_float_sub+0x24>
  3c:	00000000 	nop
	fill_fixed_array_from_float_array(xval2, fval2);
}

void bench_float_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
  40:	25080001 	addiu	t0,t0,1
  44:	1504fff7 	bne	t0,a0,24 <bench_float_sub+0x24>
  48:	00001021 	move	v0,zero
  4c:	03e00008 	jr	ra
  50:	00000000 	nop

00000054 <bench_fixed_sub>:
	}
}

void bench_fixed_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
  54:	10800014 	beqz	a0,a8 <bench_fixed_sub+0x54>
  58:	3c1c0000 	lui	gp,0x0
  5c:	00005821 	move	t3,zero
		}
	}
}

void bench_fixed_sub(uint32_t iterations)
{
  60:	279c0000 	addiu	gp,gp,0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
  64:	24081c00 	li	t0,7168
  68:	8f8a0000 	lw	t2,0(gp)
  6c:	8f890000 	lw	t1,0(gp)
  70:	8f870000 	lw	a3,0(gp)
		}
	}
}

void bench_fixed_sub(uint32_t iterations)
{
  74:	00001021 	move	v0,zero
  78:	01221821 	addu	v1,t1,v0
  7c:	00e23021 	addu	a2,a3,v0
  80:	01422821 	addu	a1,t2,v0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] - xval2[i];
  84:	8c630000 	lw	v1,0(v1)
  88:	24420004 	addiu	v0,v0,4
  8c:	8cc60000 	lw	a2,0(a2)
  90:	00661823 	subu	v1,v1,a2
}

void bench_fixed_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
  94:	1448fff8 	bne	v0,t0,78 <bench_fixed_sub+0x24>
  98:	aca30000 	sw	v1,0(a1)
	}
}

void bench_fixed_sub(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
  9c:	256b0001 	addiu	t3,t3,1
  a0:	1564fff5 	bne	t3,a0,78 <bench_fixed_sub+0x24>
  a4:	00001021 	move	v0,zero
  a8:	03e00008 	jr	ra
  ac:	00000000 	nop

000000b0 <bench_float_add>:
	avg_of_3_runs(&bench_fixed_sub, iterations);
}

void bench_float_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
  b0:	10800012 	beqz	a0,fc <bench_float_add+0x4c>
  b4:	3c1c0000 	lui	gp,0x0
  b8:	00004021 	move	t0,zero
	printf("\tFixed-point 16.16 subtraction:\n\t");
	avg_of_3_runs(&bench_fixed_sub, iterations);
}

void bench_float_add(uint32_t iterations)
{
  bc:	279c0000 	addiu	gp,gp,0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
  c0:	24051c00 	li	a1,7168
  c4:	8f870000 	lw	a3,0(gp)
  c8:	8f860000 	lw	a2,0(gp)
  cc:	8f830000 	lw	v1,0(gp)
	printf("\tFixed-point 16.16 subtraction:\n\t");
	avg_of_3_runs(&bench_fixed_sub, iterations);
}

void bench_float_add(uint32_t iterations)
{
  d0:	00001021 	move	v0,zero
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] + fval2[i];
  d4:	4c460000 	lwxc1	$f0,a2(v0)
  d8:	4c430040 	lwxc1	$f1,v1(v0)
  dc:	46010000 	add.s	$f0,$f0,$f1
  e0:	4c470008 	swxc1	$f0,a3(v0)
  e4:	24420004 	addiu	v0,v0,4
}

void bench_float_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
  e8:	1445fffa 	bne	v0,a1,d4 <bench_float_add+0x24>
  ec:	00000000 	nop
	avg_of_3_runs(&bench_fixed_sub, iterations);
}

void bench_float_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
  f0:	25080001 	addiu	t0,t0,1
  f4:	1504fff7 	bne	t0,a0,d4 <bench_float_add+0x24>
  f8:	00001021 	move	v0,zero
  fc:	03e00008 	jr	ra
 100:	00000000 	nop

00000104 <bench_fixed_add>:
	}
}

void bench_fixed_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 104:	10800014 	beqz	a0,158 <bench_fixed_add+0x54>
 108:	3c1c0000 	lui	gp,0x0
 10c:	00005821 	move	t3,zero
		}
	}
}

void bench_fixed_add(uint32_t iterations)
{
 110:	279c0000 	addiu	gp,gp,0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 114:	24081c00 	li	t0,7168
 118:	8f8a0000 	lw	t2,0(gp)
 11c:	8f890000 	lw	t1,0(gp)
 120:	8f870000 	lw	a3,0(gp)
		}
	}
}

void bench_fixed_add(uint32_t iterations)
{
 124:	00001021 	move	v0,zero
 128:	01221821 	addu	v1,t1,v0
 12c:	00e23021 	addu	a2,a3,v0
 130:	01422821 	addu	a1,t2,v0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] + xval2[i];
 134:	8c630000 	lw	v1,0(v1)
 138:	24420004 	addiu	v0,v0,4
 13c:	8cc60000 	lw	a2,0(a2)
 140:	00661821 	addu	v1,v1,a2
}

void bench_fixed_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 144:	1448fff8 	bne	v0,t0,128 <bench_fixed_add+0x24>
 148:	aca30000 	sw	v1,0(a1)
	}
}

void bench_fixed_add(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 14c:	256b0001 	addiu	t3,t3,1
 150:	1564fff5 	bne	t3,a0,128 <bench_fixed_add+0x24>
 154:	00001021 	move	v0,zero
 158:	03e00008 	jr	ra
 15c:	00000000 	nop

00000160 <bench_float_mul>:
	avg_of_3_runs(&bench_fixed_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 160:	10800012 	beqz	a0,1ac <bench_float_mul+0x4c>
 164:	3c1c0000 	lui	gp,0x0
 168:	00004021 	move	t0,zero
	printf("\tFixed-point 16.16 addition:\n\t");
	avg_of_3_runs(&bench_fixed_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
 16c:	279c0000 	addiu	gp,gp,0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 170:	24051c00 	li	a1,7168
 174:	8f870000 	lw	a3,0(gp)
 178:	8f860000 	lw	a2,0(gp)
 17c:	8f830000 	lw	v1,0(gp)
	printf("\tFixed-point 16.16 addition:\n\t");
	avg_of_3_runs(&bench_fixed_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
 180:	00001021 	move	v0,zero
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] * fval2[i];
 184:	4c460000 	lwxc1	$f0,a2(v0)
 188:	4c430040 	lwxc1	$f1,v1(v0)
 18c:	46010002 	mul.s	$f0,$f0,$f1
 190:	4c470008 	swxc1	$f0,a3(v0)
 194:	24420004 	addiu	v0,v0,4
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 198:	1445fffa 	bne	v0,a1,184 <bench_float_mul+0x24>
 19c:	00000000 	nop
	avg_of_3_runs(&bench_fixed_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 1a0:	25080001 	addiu	t0,t0,1
 1a4:	1504fff7 	bne	t0,a0,184 <bench_float_mul+0x24>
 1a8:	00001021 	move	v0,zero
 1ac:	03e00008 	jr	ra
 1b0:	00000000 	nop

000001b4 <bench_fixed_mul>:
	}
}

void bench_fixed_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 1b4:	10800019 	beqz	a0,21c <bench_fixed_mul+0x68>
 1b8:	3c1c0000 	lui	gp,0x0
 1bc:	00005821 	move	t3,zero
		}
	}
}

void bench_fixed_mul(uint32_t iterations)
{
 1c0:	279c0000 	addiu	gp,gp,0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 1c4:	24081c00 	li	t0,7168
 1c8:	8f8a0000 	lw	t2,0(gp)
 1cc:	8f890000 	lw	t1,0(gp)
 1d0:	8f870000 	lw	a3,0(gp)
		}
	}
}

void bench_fixed_mul(uint32_t iterations)
{
 1d4:	00002821 	move	a1,zero
 1d8:	01451021 	addu	v0,t2,a1
 1dc:	01251821 	addu	v1,t1,a1
 1e0:	00e53021 	addu	a2,a3,a1
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FMUL(xval1[i], xval2[i]);
 1e4:	8c420000 	lw	v0,0(v0)
 1e8:	24a50004 	addiu	a1,a1,4
 1ec:	8c630000 	lw	v1,0(v1)
 1f0:	00430018 	mult	v0,v1
 1f4:	00001012 	mflo	v0
 1f8:	00001810 	mfhi	v1
 1fc:	00021402 	srl	v0,v0,0x10
 200:	00031c00 	sll	v1,v1,0x10
 204:	00621025 	or	v0,v1,v0
}

void bench_fixed_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 208:	14a8fff3 	bne	a1,t0,1d8 <bench_fixed_mul+0x24>
 20c:	acc20000 	sw	v0,0(a2)
	}
}

void bench_fixed_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 210:	256b0001 	addiu	t3,t3,1
 214:	1564fff0 	bne	t3,a0,1d8 <bench_fixed_mul+0x24>
 218:	00002821 	move	a1,zero
 21c:	03e00008 	jr	ra
 220:	00000000 	nop

00000224 <bench_integer_mul>:
	}
}

void bench_integer_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 224:	10800014 	beqz	a0,278 <bench_integer_mul+0x54>
 228:	3c1c0000 	lui	gp,0x0
 22c:	00005821 	move	t3,zero
		}
	}
}

void bench_integer_mul(uint32_t iterations)
{
 230:	279c0000 	addiu	gp,gp,0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 234:	24081c00 	li	t0,7168
 238:	8f8a0000 	lw	t2,0(gp)
 23c:	8f890000 	lw	t1,0(gp)
 240:	8f870000 	lw	a3,0(gp)
		}
	}
}

void bench_integer_mul(uint32_t iterations)
{
 244:	00001021 	move	v0,zero
 248:	01221821 	addu	v1,t1,v0
 24c:	00e23021 	addu	a2,a3,v0
 250:	01422821 	addu	a1,t2,v0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] * xval2[i];
 254:	8c630000 	lw	v1,0(v1)
 258:	24420004 	addiu	v0,v0,4
 25c:	8cc60000 	lw	a2,0(a2)
 260:	70661802 	mul	v1,v1,a2
}

void bench_integer_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 264:	1448fff8 	bne	v0,t0,248 <bench_integer_mul+0x24>
 268:	aca30000 	sw	v1,0(a1)
	}
}

void bench_integer_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 26c:	256b0001 	addiu	t3,t3,1
 270:	1564fff5 	bne	t3,a0,248 <bench_integer_mul+0x24>
 274:	00001021 	move	v0,zero
 278:	03e00008 	jr	ra
 27c:	00000000 	nop

00000280 <bench_float_div>:
	avg_of_3_runs(&bench_integer_mul, iterations);
}

void bench_float_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 280:	10800012 	beqz	a0,2cc <bench_float_div+0x4c>
 284:	3c1c0000 	lui	gp,0x0
 288:	00004021 	move	t0,zero
	printf("\tInteger multiplication:\n\t");
	avg_of_3_runs(&bench_integer_mul, iterations);
}

void bench_float_div(uint32_t iterations)
{
 28c:	279c0000 	addiu	gp,gp,0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 290:	24051c00 	li	a1,7168
 294:	8f870000 	lw	a3,0(gp)
 298:	8f860000 	lw	a2,0(gp)
 29c:	8f830000 	lw	v1,0(gp)
	printf("\tInteger multiplication:\n\t");
	avg_of_3_runs(&bench_integer_mul, iterations);
}

void bench_float_div(uint32_t iterations)
{
 2a0:	00001021 	move	v0,zero
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] / fval2[i];
 2a4:	4c460000 	lwxc1	$f0,a2(v0)
 2a8:	4c430040 	lwxc1	$f1,v1(v0)
 2ac:	46010003 	div.s	$f0,$f0,$f1
 2b0:	4c470008 	swxc1	$f0,a3(v0)
 2b4:	24420004 	addiu	v0,v0,4
}

void bench_float_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 2b8:	1445fffa 	bne	v0,a1,2a4 <bench_float_div+0x24>
 2bc:	00000000 	nop
	avg_of_3_runs(&bench_integer_mul, iterations);
}

void bench_float_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 2c0:	25080001 	addiu	t0,t0,1
 2c4:	1504fff7 	bne	t0,a0,2a4 <bench_float_div+0x24>
 2c8:	00001021 	move	v0,zero
 2cc:	03e00008 	jr	ra
 2d0:	00000000 	nop

000002d4 <bench_fixed_div>:
	}
}

void bench_fixed_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 2d4:	10800033 	beqz	a0,3a4 <bench_fixed_div+0xd0>
 2d8:	3c1c0000 	lui	gp,0x0
		}
	}
}

void bench_fixed_div(uint32_t iterations)
{
 2dc:	27bdffc0 	addiu	sp,sp,-64
 2e0:	279c0000 	addiu	gp,gp,0
 2e4:	afb4002c 	sw	s4,44(sp)
 2e8:	afb30028 	sw	s3,40(sp)
 2ec:	afb10020 	sw	s1,32(sp)
 2f0:	afb50030 	sw	s5,48(sp)
	for (int iter = 0; iter < iterations; iter++) {
 2f4:	0000a821 	move	s5,zero
		}
	}
}

void bench_fixed_div(uint32_t iterations)
{
 2f8:	afb20024 	sw	s2,36(sp)
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 2fc:	24121c00 	li	s2,7168
		}
	}
}

void bench_fixed_div(uint32_t iterations)
{
 300:	afb60034 	sw	s6,52(sp)
 304:	0080b021 	move	s6,a0
 308:	afbf003c 	sw	ra,60(sp)
 30c:	afb70038 	sw	s7,56(sp)
 310:	afb0001c 	sw	s0,28(sp)
 314:	afbc0010 	sw	gp,16(sp)
 318:	8f940000 	lw	s4,0(gp)
 31c:	8f930000 	lw	s3,0(gp)
 320:	8f910000 	lw	s1,0(gp)
 324:	00008021 	move	s0,zero
 328:	02701821 	addu	v1,s3,s0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FDIV(xval1[i], xval2[i]);
 32c:	8f990000 	lw	t9,0(gp)
 330:	02301021 	addu	v0,s1,s0
 334:	0290b821 	addu	s7,s4,s0
 338:	8c640000 	lw	a0,0(v1)
 33c:	26100004 	addiu	s0,s0,4
 340:	8c460000 	lw	a2,0(v0)
 344:	000417c3 	sra	v0,a0,0x1f
 348:	00042c02 	srl	a1,a0,0x10
 34c:	00021400 	sll	v0,v0,0x10
 350:	00042400 	sll	a0,a0,0x10
 354:	00063fc3 	sra	a3,a2,0x1f
 358:	0320f809 	jalr	t9
 35c:	00a22825 	or	a1,a1,v0
 360:	8fbc0010 	lw	gp,16(sp)
}

void bench_fixed_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 364:	1612fff0 	bne	s0,s2,328 <bench_fixed_div+0x54>
 368:	aee20000 	sw	v0,0(s7)
	}
}

void bench_fixed_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 36c:	26b50001 	addiu	s5,s5,1
 370:	16b6ffed 	bne	s5,s6,328 <bench_fixed_div+0x54>
 374:	00008021 	move	s0,zero
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FDIV(xval1[i], xval2[i]);
		}
	}
}
 378:	8fbf003c 	lw	ra,60(sp)
 37c:	8fb70038 	lw	s7,56(sp)
 380:	8fb60034 	lw	s6,52(sp)
 384:	8fb50030 	lw	s5,48(sp)
 388:	8fb4002c 	lw	s4,44(sp)
 38c:	8fb30028 	lw	s3,40(sp)
 390:	8fb20024 	lw	s2,36(sp)
 394:	8fb10020 	lw	s1,32(sp)
 398:	8fb0001c 	lw	s0,28(sp)
 39c:	03e00008 	jr	ra
 3a0:	27bd0040 	addiu	sp,sp,64
 3a4:	03e00008 	jr	ra
 3a8:	00000000 	nop

000003ac <bench_integer_div>:

void bench_integer_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 3ac:	10800016 	beqz	a0,408 <bench_integer_div+0x5c>
 3b0:	3c1c0000 	lui	gp,0x0
 3b4:	00005821 	move	t3,zero
		}
	}
}

void bench_integer_div(uint32_t iterations)
{
 3b8:	279c0000 	addiu	gp,gp,0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 3bc:	24081c00 	li	t0,7168
 3c0:	8f8a0000 	lw	t2,0(gp)
 3c4:	8f890000 	lw	t1,0(gp)
 3c8:	8f870000 	lw	a3,0(gp)
		}
	}
}

void bench_integer_div(uint32_t iterations)
{
 3cc:	00001021 	move	v0,zero
 3d0:	01221821 	addu	v1,t1,v0
 3d4:	00e22821 	addu	a1,a3,v0
 3d8:	01423021 	addu	a2,t2,v0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = xval1[i] / xval2[i];
 3dc:	8c630000 	lw	v1,0(v1)
 3e0:	24420004 	addiu	v0,v0,4
 3e4:	8ca50000 	lw	a1,0(a1)
 3e8:	00a001f4 	teq	a1,zero,0x7
 3ec:	0065001a 	div	zero,v1,a1
 3f0:	00001812 	mflo	v1
}

void bench_integer_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 3f4:	1448fff6 	bne	v0,t0,3d0 <bench_integer_div+0x24>
 3f8:	acc30000 	sw	v1,0(a2)
	}
}

void bench_integer_div(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 3fc:	256b0001 	addiu	t3,t3,1
 400:	1564fff3 	bne	t3,a0,3d0 <bench_integer_div+0x24>
 404:	00001021 	move	v0,zero
 408:	03e00008 	jr	ra
 40c:	00000000 	nop

00000410 <bench_float_sqrt>:
	avg_of_3_runs(&bench_integer_div, iterations);
}

void bench_float_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 410:	10800010 	beqz	a0,454 <bench_float_sqrt+0x44>
 414:	3c1c0000 	lui	gp,0x0
 418:	00003821 	move	a3,zero
	printf("\tInteger Division:\n\t");
	avg_of_3_runs(&bench_integer_div, iterations);
}

void bench_float_sqrt(uint32_t iterations)
{
 41c:	279c0000 	addiu	gp,gp,0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 420:	24031c00 	li	v1,7168
 424:	8f860000 	lw	a2,0(gp)
 428:	8f850000 	lw	a1,0(gp)
	printf("\tInteger Division:\n\t");
	avg_of_3_runs(&bench_integer_div, iterations);
}

void bench_float_sqrt(uint32_t iterations)
{
 42c:	00001021 	move	v0,zero
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = sqrtf(fval1[i]);
 430:	4c460000 	lwxc1	$f0,a2(v0)
 434:	46000004 	sqrt.s	$f0,$f0
 438:	4c450008 	swxc1	$f0,a1(v0)
 43c:	24420004 	addiu	v0,v0,4
}

void bench_float_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 440:	1443fffb 	bne	v0,v1,430 <bench_float_sqrt+0x20>
 444:	00000000 	nop
	avg_of_3_runs(&bench_integer_div, iterations);
}

void bench_float_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 448:	24e70001 	addiu	a3,a3,1
 44c:	14e4fff8 	bne	a3,a0,430 <bench_float_sqrt+0x20>
 450:	00001021 	move	v0,zero
 454:	03e00008 	jr	ra
 458:	00000000 	nop

0000045c <fpsqrt>:
        root |= 2 << (N); \
    }
unsigned int fpsqrt (unsigned int n)
{
    unsigned int root = 0, try;
    iter1 (15);    iter1 (14);    iter1 (13);    iter1 (12);
 45c:	3c024000 	lui	v0,0x4000
 460:	0082182b 	sltu	v1,a0,v0
 464:	1460006a 	bnez	v1,610 <fpsqrt+0x1b4>
 468:	3c031000 	lui	v1,0x1000
 46c:	00822023 	subu	a0,a0,v0
 470:	3c035000 	lui	v1,0x5000
 474:	3c020001 	lui	v0,0x1
 478:	0083282b 	sltu	a1,a0,v1
 47c:	14a00003 	bnez	a1,48c <fpsqrt+0x30>
 480:	00000000 	nop
 484:	00832023 	subu	a0,a0,v1
 488:	34428000 	ori	v0,v0,0x8000
 48c:	24432000 	addiu	v1,v0,8192
 490:	00031b40 	sll	v1,v1,0xd
 494:	0083282b 	sltu	a1,a0,v1
 498:	14a00003 	bnez	a1,4a8 <fpsqrt+0x4c>
 49c:	00000000 	nop
 4a0:	00832023 	subu	a0,a0,v1
 4a4:	34424000 	ori	v0,v0,0x4000
 4a8:	24431000 	addiu	v1,v0,4096
 4ac:	00031b00 	sll	v1,v1,0xc
 4b0:	0083282b 	sltu	a1,a0,v1
 4b4:	14a00003 	bnez	a1,4c4 <fpsqrt+0x68>
 4b8:	00000000 	nop
 4bc:	00832023 	subu	a0,a0,v1
 4c0:	34422000 	ori	v0,v0,0x2000
    iter1 (11);    iter1 (10);    iter1 ( 9);    iter1 ( 8);
 4c4:	24430800 	addiu	v1,v0,2048
 4c8:	00031ac0 	sll	v1,v1,0xb
 4cc:	0083282b 	sltu	a1,a0,v1
 4d0:	14a00003 	bnez	a1,4e0 <fpsqrt+0x84>
 4d4:	00000000 	nop
 4d8:	00832023 	subu	a0,a0,v1
 4dc:	34421000 	ori	v0,v0,0x1000
 4e0:	24430400 	addiu	v1,v0,1024
 4e4:	00031a80 	sll	v1,v1,0xa
 4e8:	0083282b 	sltu	a1,a0,v1
 4ec:	14a00003 	bnez	a1,4fc <fpsqrt+0xa0>
 4f0:	00000000 	nop
 4f4:	00832023 	subu	a0,a0,v1
 4f8:	34420800 	ori	v0,v0,0x800
 4fc:	24430200 	addiu	v1,v0,512
 500:	00031a40 	sll	v1,v1,0x9
 504:	0083282b 	sltu	a1,a0,v1
 508:	14a00003 	bnez	a1,518 <fpsqrt+0xbc>
 50c:	00000000 	nop
 510:	00832023 	subu	a0,a0,v1
 514:	34420400 	ori	v0,v0,0x400
 518:	24430100 	addiu	v1,v0,256
 51c:	00031a00 	sll	v1,v1,0x8
 520:	0083282b 	sltu	a1,a0,v1
 524:	14a00003 	bnez	a1,534 <fpsqrt+0xd8>
 528:	00000000 	nop
 52c:	00832023 	subu	a0,a0,v1
 530:	34420200 	ori	v0,v0,0x200
    iter1 ( 7);    iter1 ( 6);    iter1 ( 5);    iter1 ( 4);
 534:	24430080 	addiu	v1,v0,128
 538:	000319c0 	sll	v1,v1,0x7
 53c:	0083282b 	sltu	a1,a0,v1
 540:	14a00003 	bnez	a1,550 <fpsqrt+0xf4>
 544:	00000000 	nop
 548:	00832023 	subu	a0,a0,v1
 54c:	34420100 	ori	v0,v0,0x100
 550:	24430040 	addiu	v1,v0,64
 554:	00031980 	sll	v1,v1,0x6
 558:	0083282b 	sltu	a1,a0,v1
 55c:	14a00003 	bnez	a1,56c <fpsqrt+0x110>
 560:	00000000 	nop
 564:	00832023 	subu	a0,a0,v1
 568:	34420080 	ori	v0,v0,0x80
 56c:	24430020 	addiu	v1,v0,32
 570:	00031940 	sll	v1,v1,0x5
 574:	0083282b 	sltu	a1,a0,v1
 578:	14a00003 	bnez	a1,588 <fpsqrt+0x12c>
 57c:	00000000 	nop
 580:	00832023 	subu	a0,a0,v1
 584:	34420040 	ori	v0,v0,0x40
 588:	24430010 	addiu	v1,v0,16
 58c:	00031900 	sll	v1,v1,0x4
 590:	0083282b 	sltu	a1,a0,v1
 594:	14a00003 	bnez	a1,5a4 <fpsqrt+0x148>
 598:	00000000 	nop
 59c:	00832023 	subu	a0,a0,v1
 5a0:	34420020 	ori	v0,v0,0x20
    iter1 ( 3);    iter1 ( 2);    iter1 ( 1);    iter1 ( 0);
 5a4:	24430008 	addiu	v1,v0,8
 5a8:	000318c0 	sll	v1,v1,0x3
 5ac:	0083282b 	sltu	a1,a0,v1
 5b0:	14a00003 	bnez	a1,5c0 <fpsqrt+0x164>
 5b4:	00000000 	nop
 5b8:	00832023 	subu	a0,a0,v1
 5bc:	34420010 	ori	v0,v0,0x10
 5c0:	24430004 	addiu	v1,v0,4
 5c4:	00031880 	sll	v1,v1,0x2
 5c8:	0083282b 	sltu	a1,a0,v1
 5cc:	14a00003 	bnez	a1,5dc <fpsqrt+0x180>
 5d0:	00000000 	nop
 5d4:	00832023 	subu	a0,a0,v1
 5d8:	34420008 	ori	v0,v0,0x8
 5dc:	24430002 	addiu	v1,v0,2
 5e0:	00031840 	sll	v1,v1,0x1
 5e4:	0083282b 	sltu	a1,a0,v1
 5e8:	14a00004 	bnez	a1,5fc <fpsqrt+0x1a0>
 5ec:	24450001 	addiu	a1,v0,1
 5f0:	00832023 	subu	a0,a0,v1
 5f4:	34420004 	ori	v0,v0,0x4
 5f8:	24450001 	addiu	a1,v0,1
 5fc:	34430002 	ori	v1,v0,0x2
 600:	0085202b 	sltu	a0,a0,a1
 604:	0064100a 	movz	v0,v1,a0
//    return root >> 1;
    return root << 7;	//senquack - convert to 16.16 fixed point while also dividing by 2
}
 608:	03e00008 	jr	ra
 60c:	000211c0 	sll	v0,v0,0x7
    {   n -= try << (N);   \
        root |= 2 << (N); \
    }
unsigned int fpsqrt (unsigned int n)
{
    unsigned int root = 0, try;
 610:	0800011e 	j	478 <fpsqrt+0x1c>
 614:	00001021 	move	v0,zero

00000618 <bench_fixed_sqrt>:
	}
}

void bench_fixed_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 618:	10800024 	beqz	a0,6ac <bench_fixed_sqrt+0x94>
 61c:	3c1c0000 	lui	gp,0x0
		}
	}
}

void bench_fixed_sqrt(uint32_t iterations)
{
 620:	27bdffc8 	addiu	sp,sp,-56
 624:	279c0000 	addiu	gp,gp,0
 628:	afb30028 	sw	s3,40(sp)
 62c:	afb20024 	sw	s2,36(sp)
 630:	afb4002c 	sw	s4,44(sp)
	for (int iter = 0; iter < iterations; iter++) {
 634:	0000a021 	move	s4,zero
		}
	}
}

void bench_fixed_sqrt(uint32_t iterations)
{
 638:	afb10020 	sw	s1,32(sp)
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 63c:	24111c00 	li	s1,7168
		}
	}
}

void bench_fixed_sqrt(uint32_t iterations)
{
 640:	afb50030 	sw	s5,48(sp)
 644:	0080a821 	move	s5,a0
 648:	afbf0034 	sw	ra,52(sp)
 64c:	afb0001c 	sw	s0,28(sp)
 650:	afbc0010 	sw	gp,16(sp)
 654:	8f930000 	lw	s3,0(gp)
 658:	8f920000 	lw	s2,0(gp)
 65c:	00008021 	move	s0,zero
 660:	02701021 	addu	v0,s3,s0
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FSQRT(xval1[i]);
 664:	0c000000 	jal	0 <bench_float_sub>
 668:	8c440000 	lw	a0,0(v0)
 66c:	02501821 	addu	v1,s2,s0
 670:	26100004 	addiu	s0,s0,4
}

void bench_fixed_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 674:	1611fffa 	bne	s0,s1,660 <bench_fixed_sqrt+0x48>
 678:	ac620000 	sw	v0,0(v1)
	}
}

void bench_fixed_sqrt(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 67c:	26940001 	addiu	s4,s4,1
 680:	1695fff7 	bne	s4,s5,660 <bench_fixed_sqrt+0x48>
 684:	00008021 	move	s0,zero
		for (int i=0; i < ASIZE; i++) {
			xresult[i] = FSQRT(xval1[i]);
		}
	}
}
 688:	8fbf0034 	lw	ra,52(sp)
 68c:	8fb50030 	lw	s5,48(sp)
 690:	8fb4002c 	lw	s4,44(sp)
 694:	8fb30028 	lw	s3,40(sp)
 698:	8fb20024 	lw	s2,36(sp)
 69c:	8fb10020 	lw	s1,32(sp)
 6a0:	8fb0001c 	lw	s0,28(sp)
 6a4:	03e00008 	jr	ra
 6a8:	27bd0038 	addiu	sp,sp,56
 6ac:	03e00008 	jr	ra
 6b0:	00000000 	nop

000006b4 <flush_cache>:
//    return root >> 1;
    return root << 7;	//senquack - convert to 16.16 fixed point while also dividing by 2
}

void flush_cache()
{
 6b4:	27bdffd8 	addiu	sp,sp,-40
 6b8:	3c1c0000 	lui	gp,0x0
 6bc:	afb10020 	sw	s1,32(sp)
 6c0:	3c110004 	lui	s1,0x4
 6c4:	afb0001c 	sw	s0,28(sp)
 6c8:	279c0000 	addiu	gp,gp,0
 6cc:	3c100000 	lui	s0,0x0
 6d0:	afbf0024 	sw	ra,36(sp)
 6d4:	26310008 	addiu	s1,s1,8
 6d8:	26100008 	addiu	s0,s0,8
 6dc:	afbc0010 	sw	gp,16(sp)
	for (int i = 0; i < CACHE_SIZE_IN_WORDS; i++) {
		dummy_array[i] = rand();
 6e0:	8f990000 	lw	t9,0(gp)
 6e4:	0320f809 	jalr	t9
 6e8:	26100004 	addiu	s0,s0,4
 6ec:	8fbc0010 	lw	gp,16(sp)
    return root << 7;	//senquack - convert to 16.16 fixed point while also dividing by 2
}

void flush_cache()
{
	for (int i = 0; i < CACHE_SIZE_IN_WORDS; i++) {
 6f0:	1611fffb 	bne	s0,s1,6e0 <flush_cache+0x2c>
 6f4:	ae02fffc 	sw	v0,-4(s0)
		dummy_array[i] = rand();
	}
}
 6f8:	8fbf0024 	lw	ra,36(sp)
 6fc:	8fb10020 	lw	s1,32(sp)
 700:	8fb0001c 	lw	s0,28(sp)
 704:	03e00008 	jr	ra
 708:	27bd0028 	addiu	sp,sp,40

0000070c <timer>:

uint64_t timer(int begin)
{
 70c:	3c1c0000 	lui	gp,0x0
 710:	27bdffd0 	addiu	sp,sp,-48
 714:	279c0000 	addiu	gp,gp,0
 718:	afbf002c 	sw	ra,44(sp)
 71c:	afb10028 	sw	s1,40(sp)
 720:	afb00024 	sw	s0,36(sp)
 724:	afbc0010 	sw	gp,16(sp)
	static struct timeval begin_time = {.tv_sec=0, .tv_usec=0};
	struct timeval end_time = {.tv_sec=0, .tv_usec=0};
 728:	afa00018 	sw	zero,24(sp)
	if (begin) {
 72c:	10800023 	beqz	a0,7bc <timer+0xb0>
 730:	afa0001c 	sw	zero,28(sp)
		// Begin timing and exit:
		sync();
 734:	8f990000 	lw	t9,0(gp)
 738:	3c100000 	lui	s0,0x0
 73c:	3c110004 	lui	s1,0x4
 740:	0320f809 	jalr	t9
 744:	26100008 	addiu	s0,s0,8
		fflush(NULL);
 748:	00002021 	move	a0,zero
{
	static struct timeval begin_time = {.tv_sec=0, .tv_usec=0};
	struct timeval end_time = {.tv_sec=0, .tv_usec=0};
	if (begin) {
		// Begin timing and exit:
		sync();
 74c:	8fbc0010 	lw	gp,16(sp)
		fflush(NULL);
 750:	8f990000 	lw	t9,0(gp)
 754:	0320f809 	jalr	t9
 758:	26310008 	addiu	s1,s1,8
 75c:	8fbc0010 	lw	gp,16(sp)
}

void flush_cache()
{
	for (int i = 0; i < CACHE_SIZE_IN_WORDS; i++) {
		dummy_array[i] = rand();
 760:	8f990000 	lw	t9,0(gp)
 764:	0320f809 	jalr	t9
 768:	26100004 	addiu	s0,s0,4
 76c:	8fbc0010 	lw	gp,16(sp)
    return root << 7;	//senquack - convert to 16.16 fixed point while also dividing by 2
}

void flush_cache()
{
	for (int i = 0; i < CACHE_SIZE_IN_WORDS; i++) {
 770:	1611fffb 	bne	s0,s1,760 <timer+0x54>
 774:	ae02fffc 	sw	v0,-4(s0)
	if (begin) {
		// Begin timing and exit:
		sync();
		fflush(NULL);
		flush_cache();
		usleep(500000);
 778:	8f990000 	lw	t9,0(gp)
 77c:	3c040007 	lui	a0,0x7
 780:	0320f809 	jalr	t9
 784:	3484a120 	ori	a0,a0,0xa120
		gettimeofday(&begin_time,NULL);
 788:	3c040000 	lui	a0,0x0
	if (begin) {
		// Begin timing and exit:
		sync();
		fflush(NULL);
		flush_cache();
		usleep(500000);
 78c:	8fbc0010 	lw	gp,16(sp)
		gettimeofday(&begin_time,NULL);
 790:	00002821 	move	a1,zero
 794:	8f990000 	lw	t9,0(gp)
 798:	0320f809 	jalr	t9
 79c:	24840000 	addiu	a0,a0,0
 7a0:	00001021 	move	v0,zero
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
//	printf("Operation took %llu microseconds.\n\n", usecs);
	return usecs;
}
 7a4:	8fbf002c 	lw	ra,44(sp)
		// Begin timing and exit:
		sync();
		fflush(NULL);
		flush_cache();
		usleep(500000);
		gettimeofday(&begin_time,NULL);
 7a8:	00001821 	move	v1,zero
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
//	printf("Operation took %llu microseconds.\n\n", usecs);
	return usecs;
}
 7ac:	8fb10028 	lw	s1,40(sp)
 7b0:	8fb00024 	lw	s0,36(sp)
 7b4:	03e00008 	jr	ra
 7b8:	27bd0030 	addiu	sp,sp,48
		usleep(500000);
		gettimeofday(&begin_time,NULL);
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
 7bc:	8f990000 	lw	t9,0(gp)
 7c0:	27a40018 	addiu	a0,sp,24
 7c4:	0320f809 	jalr	t9
 7c8:	00002821 	move	a1,zero
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
 7cc:	3c020000 	lui	v0,0x0
		gettimeofday(&begin_time,NULL);
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
 7d0:	8fa6001c 	lw	a2,28(sp)
 7d4:	3c05000f 	lui	a1,0xf
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
 7d8:	24440000 	addiu	a0,v0,0
//	printf("Operation took %llu microseconds.\n\n", usecs);
	return usecs;
}
 7dc:	8fbf002c 	lw	ra,44(sp)
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
 7e0:	8c430000 	lw	v1,0(v0)
		gettimeofday(&begin_time,NULL);
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
 7e4:	24a54240 	addiu	a1,a1,16960
 7e8:	00c00013 	mtlo	a2
 7ec:	8fa20018 	lw	v0,24(sp)
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
//	printf("Operation took %llu microseconds.\n\n", usecs);
	return usecs;
}
 7f0:	8fb10028 	lw	s1,40(sp)
 7f4:	8fb00024 	lw	s0,36(sp)
		gettimeofday(&begin_time,NULL);
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
 7f8:	70450000 	madd	v0,a1
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
 7fc:	3c02fff0 	lui	v0,0xfff0
 800:	3442bdc0 	ori	v0,v0,0xbdc0
 804:	70620000 	madd	v1,v0
 808:	8c830004 	lw	v1,4(a0)
//	printf("Operation took %llu microseconds.\n\n", usecs);
	return usecs;
}
 80c:	27bd0030 	addiu	sp,sp,48
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
 810:	00001012 	mflo	v0
		gettimeofday(&begin_time,NULL);
		return 0;
	}
	// End timing and display results:
	gettimeofday(&end_time,NULL);
	uint64_t usecs = (end_time.tv_sec * 1000000 + end_time.tv_usec) -
 814:	00431023 	subu	v0,v0,v1
		(begin_time.tv_sec * 1000000 + begin_time.tv_usec); 
//	printf("Operation took %llu microseconds.\n\n", usecs);
	return usecs;
}
 818:	03e00008 	jr	ra
 81c:	00021fc3 	sra	v1,v0,0x1f

00000820 <avg_of_3_runs>:

uint64_t avg_of_3_runs(void (*benchmark)(uint32_t), int iterations)
{
 820:	3c1c0000 	lui	gp,0x0
 824:	27bdffc0 	addiu	sp,sp,-64
 828:	279c0000 	addiu	gp,gp,0
 82c:	afb30030 	sw	s3,48(sp)
 830:	00809821 	move	s3,a0
	uint64_t a,b,c, avg_time;
	timer(1);
 834:	24040001 	li	a0,1
//	printf("Operation took %llu microseconds.\n\n", usecs);
	return usecs;
}

uint64_t avg_of_3_runs(void (*benchmark)(uint32_t), int iterations)
{
 838:	afb40034 	sw	s4,52(sp)
 83c:	00a0a021 	move	s4,a1
 840:	afbf003c 	sw	ra,60(sp)
 844:	afbc0018 	sw	gp,24(sp)
 848:	afb50038 	sw	s5,56(sp)
 84c:	afb2002c 	sw	s2,44(sp)
 850:	afb10028 	sw	s1,40(sp)
	uint64_t a,b,c, avg_time;
	timer(1);
 854:	0c000000 	jal	0 <bench_float_sub>
 858:	afb00024 	sw	s0,36(sp)
	benchmark(iterations);
 85c:	0260c821 	move	t9,s3
 860:	0320f809 	jalr	t9
 864:	02802021 	move	a0,s4
	a = timer(0);
 868:	0c000000 	jal	0 <bench_float_sub>
 86c:	00002021 	move	a0,zero
	timer(1);
 870:	24040001 	li	a0,1
uint64_t avg_of_3_runs(void (*benchmark)(uint32_t), int iterations)
{
	uint64_t a,b,c, avg_time;
	timer(1);
	benchmark(iterations);
	a = timer(0);
 874:	00408821 	move	s1,v0
	timer(1);
 878:	0c000000 	jal	0 <bench_float_sub>
 87c:	0060a821 	move	s5,v1
	benchmark(iterations);
 880:	0260c821 	move	t9,s3
 884:	0320f809 	jalr	t9
 888:	02802021 	move	a0,s4
	b = timer(0);
 88c:	0c000000 	jal	0 <bench_float_sub>
 890:	00002021 	move	a0,zero
	timer(1);
 894:	24040001 	li	a0,1
	timer(1);
	benchmark(iterations);
	a = timer(0);
	timer(1);
	benchmark(iterations);
	b = timer(0);
 898:	00408021 	move	s0,v0
	timer(1);
 89c:	0c000000 	jal	0 <bench_float_sub>
 8a0:	00609021 	move	s2,v1
	benchmark(iterations);
 8a4:	0260c821 	move	t9,s3
 8a8:	0320f809 	jalr	t9
 8ac:	02802021 	move	a0,s4
	c = timer(0);
 8b0:	00002021 	move	a0,zero
 8b4:	0c000000 	jal	0 <bench_float_sub>
 8b8:	02559021 	addu	s2,s2,s5
	avg_time = (a + b + c) / 3;
 8bc:	02114021 	addu	t0,s0,s1
	timer(1);
	benchmark(iterations);
	b = timer(0);
	timer(1);
	benchmark(iterations);
	c = timer(0);
 8c0:	8fbc0018 	lw	gp,24(sp)
	avg_time = (a + b + c) / 3;
 8c4:	24060003 	li	a2,3
 8c8:	0110802b 	sltu	s0,t0,s0
 8cc:	02128021 	addu	s0,s0,s2
 8d0:	01022021 	addu	a0,t0,v0
 8d4:	02038021 	addu	s0,s0,v1
 8d8:	8f990000 	lw	t9,0(gp)
 8dc:	0088282b 	sltu	a1,a0,t0
 8e0:	00003821 	move	a3,zero
 8e4:	0320f809 	jalr	t9
 8e8:	00b02821 	addu	a1,a1,s0
 8ec:	8fbc0018 	lw	gp,24(sp)
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
 8f0:	00602821 	move	a1,v1
 8f4:	00402021 	move	a0,v0
	benchmark(iterations);
	b = timer(0);
	timer(1);
	benchmark(iterations);
	c = timer(0);
	avg_time = (a + b + c) / 3;
 8f8:	00408021 	move	s0,v0
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
 8fc:	8f990000 	lw	t9,0(gp)
 900:	0320f809 	jalr	t9
 904:	00608821 	move	s1,v1
 908:	3c020000 	lui	v0,0x0
 90c:	8fbc0018 	lw	gp,24(sp)
 910:	3c040000 	lui	a0,0x0
 914:	d4420000 	ldc1	$f2,0(v0)
 918:	02003021 	move	a2,s0
 91c:	24840000 	addiu	a0,a0,0
 920:	02203821 	move	a3,s1
 924:	8f990000 	lw	t9,0(gp)
 928:	46220002 	mul.d	$f0,$f0,$f2
 92c:	0320f809 	jalr	t9
 930:	f7a00010 	sdc1	$f0,16(sp)
	return avg_time;
}
 934:	02001021 	move	v0,s0
 938:	8fbf003c 	lw	ra,60(sp)
 93c:	02201821 	move	v1,s1
 940:	8fb50038 	lw	s5,56(sp)
 944:	8fb40034 	lw	s4,52(sp)
 948:	8fb30030 	lw	s3,48(sp)
 94c:	8fb2002c 	lw	s2,44(sp)
 950:	8fb10028 	lw	s1,40(sp)
 954:	8fb00024 	lw	s0,36(sp)
 958:	03e00008 	jr	ra
 95c:	27bd0040 	addiu	sp,sp,64

00000960 <fill_float_array>:

void fill_float_array(float *array, int all_positive)
{
 960:	27bdffb0 	addiu	sp,sp,-80
				// Number has a one-in-three chance of being left along
				break;
			default:
				break;
		}
		if (array[i] == 0.0) array[i] = 0.12345; // We don't want any zeroes in the array
 964:	3c020000 	lui	v0,0x0
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
	return avg_time;
}

void fill_float_array(float *array, int all_positive)
{
 968:	3c1c0000 	lui	gp,0x0
 96c:	f7b40040 	sdc1	$f20,64(sp)
 970:	afb5002c 	sw	s5,44(sp)
 974:	0080a821 	move	s5,a0
				// Number has a one-in-three chance of being left along
				break;
			default:
				break;
		}
		if (array[i] == 0.0) array[i] = 0.12345; // We don't want any zeroes in the array
 978:	c4540000 	lwc1	$f20,0(v0)
		// At this point, the numbers are not very large at all: randomly increase or decrease them:
		switch(rand() % 3) {
			case 0:
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
				if (array[i] >= 32767) {
 97c:	3c020000 	lui	v0,0x0
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
	return avg_time;
}

void fill_float_array(float *array, int all_positive)
{
 980:	279c0000 	addiu	gp,gp,0
 984:	afb30024 	sw	s3,36(sp)
		// At this point, the numbers are not very large at all: randomly increase or decrease them:
		switch(rand() % 3) {
			case 0:
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
				if (array[i] >= 32767) {
 988:	c4550000 	lwc1	$f21,0(v0)
					array[i] = 16384.16384;	// Nice median value
				} else if (array[i] <= -32767) {
					array[i] = -16384.16384;	// Nice median value
 98c:	3c020000 	lui	v0,0x0
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
	return avg_time;
}

void fill_float_array(float *array, int all_positive)
{
 990:	afb20020 	sw	s2,32(sp)
			case 0:
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
				if (array[i] >= 32767) {
					array[i] = 16384.16384;	// Nice median value
				} else if (array[i] <= -32767) {
 994:	3c130000 	lui	s3,0x0
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
	return avg_time;
}

void fill_float_array(float *array, int all_positive)
{
 998:	afb1001c 	sw	s1,28(sp)
		switch(rand() % 3) {
			case 0:
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
				if (array[i] >= 32767) {
					array[i] = 16384.16384;	// Nice median value
 99c:	3c120000 	lui	s2,0x0
	printf("AVG: %llu usecs, or %f secs.\n", avg_time, (double)avg_time / 1000000.0);
	return avg_time;
}

void fill_float_array(float *array, int all_positive)
{
 9a0:	afb00018 	sw	s0,24(sp)
 9a4:	24911c00 	addiu	s1,a0,7168
 9a8:	f7b60048 	sdc1	$f22,72(sp)
 9ac:	00a08021 	move	s0,a1
 9b0:	afbf003c 	sw	ra,60(sp)
 9b4:	afbe0038 	sw	s8,56(sp)
 9b8:	afb70034 	sw	s7,52(sp)
 9bc:	afb60030 	sw	s6,48(sp)
 9c0:	afb40028 	sw	s4,40(sp)
 9c4:	afbc0010 	sw	gp,16(sp)
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
				if (array[i] >= 32767) {
					array[i] = 16384.16384;	// Nice median value
				} else if (array[i] <= -32767) {
					array[i] = -16384.16384;	// Nice median value
 9c8:	08000280 	j	a00 <fill_float_array+0xa0>
 9cc:	c4560000 	lwc1	$f22,0(v0)
			x *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
			y *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
		}
		array[i] = (float)x / (float)y;
		// At this point, the numbers are not very large at all: randomly increase or decrease them:
		switch(rand() % 3) {
 9d0:	24030002 	li	v1,2
 9d4:	1043004e 	beq	v0,v1,b10 <fill_float_array+0x1b0>
 9d8:	8f990000 	lw	t9,0(gp)
 9dc:	c6a00000 	lwc1	$f0,0(s5)
				// Number has a one-in-three chance of being left along
				break;
			default:
				break;
		}
		if (array[i] == 0.0) array[i] = 0.12345; // We don't want any zeroes in the array
 9e0:	44800800 	mtc1	zero,$f1
 9e4:	46010232 	c.eq.s	$fcc2,$f0,$f1
 9e8:	45080002 	bc1f	$fcc2,9f4 <fill_float_array+0x94>
 9ec:	00000000 	nop
 9f0:	e6b40000 	swc1	$f20,0(s5)
 9f4:	26b50004 	addiu	s5,s5,4
}

void fill_float_array(float *array, int all_positive)
{
	// Fill data array with fairly random distribution of numbers less than the value of 32768 (max a 16.16 FP can hold)
	for (int i = 0; i < ASIZE; i++) {
 9f8:	12b10038 	beq	s5,s1,adc <fill_float_array+0x17c>
 9fc:	8fbf003c 	lw	ra,60(sp)
		int x,y;
		x = rand() + 1;
 a00:	8f990000 	lw	t9,0(gp)
 a04:	0320f809 	jalr	t9
 a08:	00000000 	nop
 a0c:	8fbc0010 	lw	gp,16(sp)
		y = rand() + 1;
 a10:	8f990000 	lw	t9,0(gp)
 a14:	0320f809 	jalr	t9
 a18:	24540001 	addiu	s4,v0,1
 a1c:	8fbc0010 	lw	gp,16(sp)
		if (!all_positive) {
 a20:	12000050 	beqz	s0,b64 <fill_float_array+0x204>
 a24:	24560001 	addiu	s6,v0,1
			x *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
			y *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
		}
		array[i] = (float)x / (float)y;
 a28:	44940000 	mtc1	s4,$f0
		// At this point, the numbers are not very large at all: randomly increase or decrease them:
		switch(rand() % 3) {
 a2c:	8f990000 	lw	t9,0(gp)
		y = rand() + 1;
		if (!all_positive) {
			x *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
			y *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
		}
		array[i] = (float)x / (float)y;
 a30:	44961000 	mtc1	s6,$f2
 a34:	46800060 	cvt.s.w	$f1,$f0
 a38:	46801020 	cvt.s.w	$f0,$f2
 a3c:	46000803 	div.s	$f0,$f1,$f0
		// At this point, the numbers are not very large at all: randomly increase or decrease them:
		switch(rand() % 3) {
 a40:	0320f809 	jalr	t9
 a44:	e6a00000 	swc1	$f0,0(s5)
 a48:	3c065555 	lui	a2,0x5555
 a4c:	00021fc3 	sra	v1,v0,0x1f
 a50:	24c65556 	addiu	a2,a2,21846
 a54:	00460018 	mult	v0,a2
 a58:	00003010 	mfhi	a2
 a5c:	00c31823 	subu	v1,a2,v1
 a60:	00032040 	sll	a0,v1,0x1
 a64:	00831821 	addu	v1,a0,v1
 a68:	00431023 	subu	v0,v0,v1
 a6c:	1440ffd8 	bnez	v0,9d0 <fill_float_array+0x70>
 a70:	8fbc0010 	lw	gp,16(sp)
			case 0:
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
 a74:	8f990000 	lw	t9,0(gp)
 a78:	0320f809 	jalr	t9
 a7c:	00000000 	nop
 a80:	3c0368db 	lui	v1,0x68db
 a84:	000227c3 	sra	a0,v0,0x1f
 a88:	c6a10000 	lwc1	$f1,0(s5)
 a8c:	34638bad 	ori	v1,v1,0x8bad
 a90:	00430018 	mult	v0,v1
 a94:	00001810 	mfhi	v1
 a98:	00031ac3 	sra	v1,v1,0xb
 a9c:	00641823 	subu	v1,v1,a0
 aa0:	24041388 	li	a0,5000
 aa4:	70642802 	mul	a1,v1,a0
 aa8:	00451023 	subu	v0,v0,a1
 aac:	24420001 	addiu	v0,v0,1
 ab0:	44821000 	mtc1	v0,$f2
 ab4:	46801020 	cvt.s.w	$f0,$f2
 ab8:	46010002 	mul.s	$f0,$f0,$f1
				if (array[i] >= 32767) {
 abc:	4600a83e 	c.le.s	$f21,$f0
 ac0:	45000038 	bc1f	ba4 <fill_float_array+0x244>
 ac4:	8fbc0010 	lw	gp,16(sp)
					array[i] = 16384.16384;	// Nice median value
 ac8:	c6400000 	lwc1	$f0,0(s2)
 acc:	26b50004 	addiu	s5,s5,4
}

void fill_float_array(float *array, int all_positive)
{
	// Fill data array with fairly random distribution of numbers less than the value of 32768 (max a 16.16 FP can hold)
	for (int i = 0; i < ASIZE; i++) {
 ad0:	16b1ffcb 	bne	s5,s1,a00 <fill_float_array+0xa0>
 ad4:	e6a0fffc 	swc1	$f0,-4(s5)
				break;
		}
		if (array[i] == 0.0) array[i] = 0.12345; // We don't want any zeroes in the array
//		printf("n:%f\n", array[i]);
	}
}
 ad8:	8fbf003c 	lw	ra,60(sp)
 adc:	8fbe0038 	lw	s8,56(sp)
 ae0:	8fb70034 	lw	s7,52(sp)
 ae4:	8fb60030 	lw	s6,48(sp)
 ae8:	8fb5002c 	lw	s5,44(sp)
 aec:	8fb40028 	lw	s4,40(sp)
 af0:	8fb30024 	lw	s3,36(sp)
 af4:	8fb20020 	lw	s2,32(sp)
 af8:	8fb1001c 	lw	s1,28(sp)
 afc:	8fb00018 	lw	s0,24(sp)
 b00:	d7b60048 	ldc1	$f22,72(sp)
 b04:	d7b40040 	ldc1	$f20,64(sp)
 b08:	03e00008 	jr	ra
 b0c:	27bd0050 	addiu	sp,sp,80
					array[i] = -16384.16384;	// Nice median value
				}
				break;
			case 2:
				// Number has a one-in-three chance of becoming smaller:
				array[i] /= (rand()%10 + 1);	
 b10:	0320f809 	jalr	t9
 b14:	00000000 	nop
 b18:	3c046666 	lui	a0,0x6666
 b1c:	00021fc3 	sra	v1,v0,0x1f
 b20:	c6a10000 	lwc1	$f1,0(s5)
 b24:	24846667 	addiu	a0,a0,26215
 b28:	8fbc0010 	lw	gp,16(sp)
 b2c:	00440018 	mult	v0,a0
 b30:	00002010 	mfhi	a0
 b34:	00042083 	sra	a0,a0,0x2
 b38:	00831823 	subu	v1,a0,v1
 b3c:	00032040 	sll	a0,v1,0x1
 b40:	000318c0 	sll	v1,v1,0x3
 b44:	00831821 	addu	v1,a0,v1
 b48:	00431023 	subu	v0,v0,v1
 b4c:	24420001 	addiu	v0,v0,1
 b50:	44821000 	mtc1	v0,$f2
 b54:	46801020 	cvt.s.w	$f0,$f2
 b58:	46000803 	div.s	$f0,$f1,$f0
				break;
 b5c:	08000278 	j	9e0 <fill_float_array+0x80>
 b60:	e6a00000 	swc1	$f0,0(s5)
	for (int i = 0; i < ASIZE; i++) {
		int x,y;
		x = rand() + 1;
		y = rand() + 1;
		if (!all_positive) {
			x *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
 b64:	8f990000 	lw	t9,0(gp)
 b68:	24170001 	li	s7,1
 b6c:	0320f809 	jalr	t9
 b70:	241effff 	li	s8,-1
 b74:	02e01821 	move	v1,s7
 b78:	8fbc0010 	lw	gp,16(sp)
 b7c:	30420001 	andi	v0,v0,0x1
 b80:	03c2180b 	movn	v1,s8,v0
			y *= (rand() % 2) ? -1 : 1;	// Random distribution of negative values
 b84:	8f990000 	lw	t9,0(gp)
 b88:	0320f809 	jalr	t9
 b8c:	7283a002 	mul	s4,s4,v1
 b90:	30420001 	andi	v0,v0,0x1
 b94:	8fbc0010 	lw	gp,16(sp)
 b98:	03c2b80b 	movn	s7,s8,v0
 b9c:	0800028a 	j	a28 <fill_float_array+0xc8>
 ba0:	72d7b002 	mul	s6,s6,s7
			case 0:
				// Number has a one-in-three chance of becoming larger:
				array[i] *= (rand() % 5000 + 1);	
				if (array[i] >= 32767) {
					array[i] = 16384.16384;	// Nice median value
				} else if (array[i] <= -32767) {
 ba4:	c6610000 	lwc1	$f1,0(s3)
 ba8:	4601013e 	c.le.s	$fcc1,$f0,$f1
 bac:	4504ffeb 	bc1f	$fcc1,b5c <fill_float_array+0x1fc>
 bb0:	00000000 	nop
					array[i] = -16384.16384;	// Nice median value
 bb4:	0800027d 	j	9f4 <fill_float_array+0x94>
 bb8:	e6b60000 	swc1	$f22,0(s5)

00000bbc <fill_fixed_array_from_float_array>:

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
		fixed_array[i] = f2x(float_array[i]);
 bbc:	3c020000 	lui	v0,0x0
//		printf("n:%f\n", array[i]);
	}
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
 bc0:	00001821 	move	v1,zero
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
		fixed_array[i] = f2x(float_array[i]);
 bc4:	c4410000 	lwc1	$f1,0(v0)
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
 bc8:	24071c00 	li	a3,7168
		fixed_array[i] = f2x(float_array[i]);
 bcc:	4c650000 	lwxc1	$f0,a1(v1)
 bd0:	00833021 	addu	a2,a0,v1
 bd4:	24630004 	addiu	v1,v1,4
 bd8:	46010002 	mul.s	$f0,$f0,$f1
 bdc:	4600000d 	trunc.w.s	$f0,$f0
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
 be0:	1467fffa 	bne	v1,a3,bcc <fill_fixed_array_from_float_array+0x10>
 be4:	e4c00000 	swc1	$f0,0(a2)
//			fixed_array[i] = f2x(314.159);	// don't want any zeroes in the array
//			num_corrections++;
//		}
	}
//	printf("number of corrections: %d\n", num_corrections);
}
 be8:	03e00008 	jr	ra
 bec:	00000000 	nop

00000bf0 <fill_arrays>:

void fill_arrays()
{
 bf0:	3c1c0000 	lui	gp,0x0
 bf4:	27bdffe0 	addiu	sp,sp,-32
 bf8:	279c0000 	addiu	gp,gp,0
 bfc:	afbf001c 	sw	ra,28(sp)
 c00:	afbc0010 	sw	gp,16(sp)
	/* NOTE: one of the arrays will have some numbers negative, the other array will have all positive:
	  	(fval1, for use with square root benchmark) */
	fill_float_array(fval1, 1);	// The 1 signifies that all values will be positive in this array
 c04:	8f840000 	lw	a0,0(gp)
 c08:	0c000000 	jal	0 <bench_float_sub>
 c0c:	24050001 	li	a1,1
 c10:	8fbc0010 	lw	gp,16(sp)
	fill_float_array(fval2, 0);
 c14:	8f840000 	lw	a0,0(gp)
 c18:	0c000000 	jal	0 <bench_float_sub>
 c1c:	00002821 	move	a1,zero
 c20:	3c080000 	lui	t0,0x0
 c24:	8fbc0010 	lw	gp,16(sp)
 c28:	00001821 	move	v1,zero

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
		fixed_array[i] = f2x(float_array[i]);
 c2c:	c5010000 	lwc1	$f1,0(t0)
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
 c30:	24061c00 	li	a2,7168
 c34:	8f870000 	lw	a3,0(gp)
 c38:	8f850000 	lw	a1,0(gp)
		fixed_array[i] = f2x(float_array[i]);
 c3c:	4c650000 	lwxc1	$f0,a1(v1)
 c40:	00e32021 	addu	a0,a3,v1
 c44:	24630004 	addiu	v1,v1,4
 c48:	46010002 	mul.s	$f0,$f0,$f1
 c4c:	4600000d 	trunc.w.s	$f0,$f0
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
 c50:	1466fffa 	bne	v1,a2,c3c <fill_arrays+0x4c>
 c54:	e4800000 	swc1	$f0,0(a0)
		fixed_array[i] = f2x(float_array[i]);
 c58:	c5010000 	lwc1	$f1,0(t0)
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
 c5c:	00001821 	move	v1,zero
 c60:	8f870000 	lw	a3,0(gp)
 c64:	24061c00 	li	a2,7168
 c68:	8f850000 	lw	a1,0(gp)
		fixed_array[i] = f2x(float_array[i]);
 c6c:	4c650000 	lwxc1	$f0,a1(v1)
 c70:	00e32021 	addu	a0,a3,v1
 c74:	24630004 	addiu	v1,v1,4
 c78:	46010002 	mul.s	$f0,$f0,$f1
 c7c:	4600000d 	trunc.w.s	$f0,$f0
}

void fill_fixed_array_from_float_array(int32_t *fixed_array, float *float_array)
{
//	int num_corrections = 0;
	for (int i = 0; i < ASIZE; i++) {
 c80:	1466fffa 	bne	v1,a2,c6c <fill_arrays+0x7c>
 c84:	e4800000 	swc1	$f0,0(a0)
	  	(fval1, for use with square root benchmark) */
	fill_float_array(fval1, 1);	// The 1 signifies that all values will be positive in this array
	fill_float_array(fval2, 0);
	fill_fixed_array_from_float_array(xval1, fval1);	
	fill_fixed_array_from_float_array(xval2, fval2);
}
 c88:	8fbf001c 	lw	ra,28(sp)
 c8c:	03e00008 	jr	ra
 c90:	27bd0020 	addiu	sp,sp,32

00000c94 <bench_subtraction>:
		}
	}
}

void bench_subtraction(uint32_t iterations)
{
 c94:	3c1c0000 	lui	gp,0x0
 c98:	27bdffe0 	addiu	sp,sp,-32
 c9c:	279c0000 	addiu	gp,gp,0
 ca0:	afbf001c 	sw	ra,28(sp)
 ca4:	afb00018 	sw	s0,24(sp)
 ca8:	afbc0010 	sw	gp,16(sp)
	fill_arrays();	
 cac:	0c000000 	jal	0 <bench_float_sub>
 cb0:	00808021 	move	s0,a0
	printf("\nSUBTRACTION BENCHMARKS:\n");
 cb4:	3c040000 	lui	a0,0x0
	}
}

void bench_subtraction(uint32_t iterations)
{
	fill_arrays();	
 cb8:	8fbc0010 	lw	gp,16(sp)
	printf("\nSUBTRACTION BENCHMARKS:\n");
 cbc:	8f990000 	lw	t9,0(gp)
 cc0:	0320f809 	jalr	t9
 cc4:	24840000 	addiu	a0,a0,0
	printf("\tFloat subtraction:\n\t");
 cc8:	3c040000 	lui	a0,0x0
}

void bench_subtraction(uint32_t iterations)
{
	fill_arrays();	
	printf("\nSUBTRACTION BENCHMARKS:\n");
 ccc:	8fbc0010 	lw	gp,16(sp)
	printf("\tFloat subtraction:\n\t");
 cd0:	8f990000 	lw	t9,0(gp)
 cd4:	0320f809 	jalr	t9
 cd8:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_float_sub, iterations);
 cdc:	3c040000 	lui	a0,0x0
 ce0:	02002821 	move	a1,s0
 ce4:	0c000000 	jal	0 <bench_float_sub>
 ce8:	24840000 	addiu	a0,a0,0
	printf("\tFixed-point 16.16 subtraction:\n\t");
 cec:	3c040000 	lui	a0,0x0
void bench_subtraction(uint32_t iterations)
{
	fill_arrays();	
	printf("\nSUBTRACTION BENCHMARKS:\n");
	printf("\tFloat subtraction:\n\t");
	avg_of_3_runs(&bench_float_sub, iterations);
 cf0:	8fbc0010 	lw	gp,16(sp)
	printf("\tFixed-point 16.16 subtraction:\n\t");
 cf4:	8f990000 	lw	t9,0(gp)
 cf8:	0320f809 	jalr	t9
 cfc:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_fixed_sub, iterations);
 d00:	3c040000 	lui	a0,0x0
{
	fill_arrays();	
	printf("\nSUBTRACTION BENCHMARKS:\n");
	printf("\tFloat subtraction:\n\t");
	avg_of_3_runs(&bench_float_sub, iterations);
	printf("\tFixed-point 16.16 subtraction:\n\t");
 d04:	8fbc0010 	lw	gp,16(sp)
	avg_of_3_runs(&bench_fixed_sub, iterations);
 d08:	02002821 	move	a1,s0
}
 d0c:	8fbf001c 	lw	ra,28(sp)
	fill_arrays();	
	printf("\nSUBTRACTION BENCHMARKS:\n");
	printf("\tFloat subtraction:\n\t");
	avg_of_3_runs(&bench_float_sub, iterations);
	printf("\tFixed-point 16.16 subtraction:\n\t");
	avg_of_3_runs(&bench_fixed_sub, iterations);
 d10:	24840000 	addiu	a0,a0,0
}
 d14:	8fb00018 	lw	s0,24(sp)
	fill_arrays();	
	printf("\nSUBTRACTION BENCHMARKS:\n");
	printf("\tFloat subtraction:\n\t");
	avg_of_3_runs(&bench_float_sub, iterations);
	printf("\tFixed-point 16.16 subtraction:\n\t");
	avg_of_3_runs(&bench_fixed_sub, iterations);
 d18:	08000000 	j	0 <bench_float_sub>
 d1c:	27bd0020 	addiu	sp,sp,32

00000d20 <bench_addition>:
		}
	}
}

void bench_addition(uint32_t iterations)
{
 d20:	3c1c0000 	lui	gp,0x0
 d24:	27bdffe0 	addiu	sp,sp,-32
 d28:	279c0000 	addiu	gp,gp,0
 d2c:	afbf001c 	sw	ra,28(sp)
 d30:	afb00018 	sw	s0,24(sp)
 d34:	afbc0010 	sw	gp,16(sp)
	fill_arrays();	
 d38:	0c000000 	jal	0 <bench_float_sub>
 d3c:	00808021 	move	s0,a0
	printf("\nADDITION BENCHMARKS:\n");
 d40:	3c040000 	lui	a0,0x0
	}
}

void bench_addition(uint32_t iterations)
{
	fill_arrays();	
 d44:	8fbc0010 	lw	gp,16(sp)
	printf("\nADDITION BENCHMARKS:\n");
 d48:	8f990000 	lw	t9,0(gp)
 d4c:	0320f809 	jalr	t9
 d50:	24840000 	addiu	a0,a0,0
	printf("\tFloat addition:\n\t");
 d54:	3c040000 	lui	a0,0x0
}

void bench_addition(uint32_t iterations)
{
	fill_arrays();	
	printf("\nADDITION BENCHMARKS:\n");
 d58:	8fbc0010 	lw	gp,16(sp)
	printf("\tFloat addition:\n\t");
 d5c:	8f990000 	lw	t9,0(gp)
 d60:	0320f809 	jalr	t9
 d64:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_float_add, iterations);
 d68:	3c040000 	lui	a0,0x0
 d6c:	02002821 	move	a1,s0
 d70:	0c000000 	jal	0 <bench_float_sub>
 d74:	24840000 	addiu	a0,a0,0
	printf("\tFixed-point 16.16 addition:\n\t");
 d78:	3c040000 	lui	a0,0x0
void bench_addition(uint32_t iterations)
{
	fill_arrays();	
	printf("\nADDITION BENCHMARKS:\n");
	printf("\tFloat addition:\n\t");
	avg_of_3_runs(&bench_float_add, iterations);
 d7c:	8fbc0010 	lw	gp,16(sp)
	printf("\tFixed-point 16.16 addition:\n\t");
 d80:	8f990000 	lw	t9,0(gp)
 d84:	0320f809 	jalr	t9
 d88:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_fixed_add, iterations);
 d8c:	3c040000 	lui	a0,0x0
{
	fill_arrays();	
	printf("\nADDITION BENCHMARKS:\n");
	printf("\tFloat addition:\n\t");
	avg_of_3_runs(&bench_float_add, iterations);
	printf("\tFixed-point 16.16 addition:\n\t");
 d90:	8fbc0010 	lw	gp,16(sp)
	avg_of_3_runs(&bench_fixed_add, iterations);
 d94:	02002821 	move	a1,s0
}
 d98:	8fbf001c 	lw	ra,28(sp)
	fill_arrays();	
	printf("\nADDITION BENCHMARKS:\n");
	printf("\tFloat addition:\n\t");
	avg_of_3_runs(&bench_float_add, iterations);
	printf("\tFixed-point 16.16 addition:\n\t");
	avg_of_3_runs(&bench_fixed_add, iterations);
 d9c:	24840000 	addiu	a0,a0,0
}
 da0:	8fb00018 	lw	s0,24(sp)
	fill_arrays();	
	printf("\nADDITION BENCHMARKS:\n");
	printf("\tFloat addition:\n\t");
	avg_of_3_runs(&bench_float_add, iterations);
	printf("\tFixed-point 16.16 addition:\n\t");
	avg_of_3_runs(&bench_fixed_add, iterations);
 da4:	08000000 	j	0 <bench_float_sub>
 da8:	27bd0020 	addiu	sp,sp,32

00000dac <bench_multiplication>:
		}
	}
}

void bench_multiplication(uint32_t iterations)
{
 dac:	3c1c0000 	lui	gp,0x0
 db0:	27bdffe0 	addiu	sp,sp,-32
 db4:	279c0000 	addiu	gp,gp,0
 db8:	afbf001c 	sw	ra,28(sp)
 dbc:	afb00018 	sw	s0,24(sp)
 dc0:	afbc0010 	sw	gp,16(sp)
	fill_arrays();	
 dc4:	0c000000 	jal	0 <bench_float_sub>
 dc8:	00808021 	move	s0,a0
	printf("\nMULTIPLICATION BENCHMARKS:\n");
 dcc:	3c040000 	lui	a0,0x0
	}
}

void bench_multiplication(uint32_t iterations)
{
	fill_arrays();	
 dd0:	8fbc0010 	lw	gp,16(sp)
	printf("\nMULTIPLICATION BENCHMARKS:\n");
 dd4:	8f990000 	lw	t9,0(gp)
 dd8:	0320f809 	jalr	t9
 ddc:	24840000 	addiu	a0,a0,0
	printf("\tFloat multiplication:\n\t");
 de0:	3c040000 	lui	a0,0x0
}

void bench_multiplication(uint32_t iterations)
{
	fill_arrays();	
	printf("\nMULTIPLICATION BENCHMARKS:\n");
 de4:	8fbc0010 	lw	gp,16(sp)
	printf("\tFloat multiplication:\n\t");
 de8:	8f990000 	lw	t9,0(gp)
 dec:	0320f809 	jalr	t9
 df0:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_float_mul, iterations);
 df4:	3c040000 	lui	a0,0x0
 df8:	02002821 	move	a1,s0
 dfc:	0c000000 	jal	0 <bench_float_sub>
 e00:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_fixed_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 e04:	12000011 	beqz	s0,e4c <bench_multiplication+0xa0>
 e08:	8fbc0010 	lw	gp,16(sp)
 e0c:	8f880000 	lw	t0,0(gp)
 e10:	00004821 	move	t1,zero
 e14:	8f870000 	lw	a3,0(gp)
		for (int i=0; i < ASIZE; i++) {
 e18:	24061c00 	li	a2,7168
 e1c:	8f830000 	lw	v1,0(gp)
		}
	}
}

void bench_multiplication(uint32_t iterations)
{
 e20:	00001021 	move	v0,zero

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
			fresult[i] = fval1[i] * fval2[i];
 e24:	4c470000 	lwxc1	$f0,a3(v0)
 e28:	4c430040 	lwxc1	$f1,v1(v0)
 e2c:	46010002 	mul.s	$f0,$f0,$f1
 e30:	4c480008 	swxc1	$f0,t0(v0)
 e34:	24420004 	addiu	v0,v0,4
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
		for (int i=0; i < ASIZE; i++) {
 e38:	1446fffa 	bne	v0,a2,e24 <bench_multiplication+0x78>
 e3c:	00000000 	nop
	avg_of_3_runs(&bench_fixed_add, iterations);
}

void bench_float_mul(uint32_t iterations)
{
	for (int iter = 0; iter < iterations; iter++) {
 e40:	25290001 	addiu	t1,t1,1
 e44:	1609fff7 	bne	s0,t1,e24 <bench_multiplication+0x78>
 e48:	00001021 	move	v0,zero
	fill_arrays();	
	printf("\nMULTIPLICATION BENCHMARKS:\n");
	printf("\tFloat multiplication:\n\t");
	avg_of_3_runs(&bench_float_mul, iterations);
	bench_float_mul(iterations);
	printf("\tFixed-point 16.16 multiplication:\n\t");
 e4c:	3c040000 	lui	a0,0x0
 e50:	8f990000 	lw	t9,0(gp)
 e54:	0320f809 	jalr	t9
 e58:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_fixed_mul, iterations);
 e5c:	3c040000 	lui	a0,0x0
 e60:	02002821 	move	a1,s0
 e64:	0c000000 	jal	0 <bench_float_sub>
 e68:	24840000 	addiu	a0,a0,0
	printf("\tInteger multiplication:\n\t");
 e6c:	3c040000 	lui	a0,0x0
	printf("\nMULTIPLICATION BENCHMARKS:\n");
	printf("\tFloat multiplication:\n\t");
	avg_of_3_runs(&bench_float_mul, iterations);
	bench_float_mul(iterations);
	printf("\tFixed-point 16.16 multiplication:\n\t");
	avg_of_3_runs(&bench_fixed_mul, iterations);
 e70:	8fbc0010 	lw	gp,16(sp)
	printf("\tInteger multiplication:\n\t");
 e74:	8f990000 	lw	t9,0(gp)
 e78:	0320f809 	jalr	t9
 e7c:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_integer_mul, iterations);
 e80:	3c040000 	lui	a0,0x0
	printf("\tFloat multiplication:\n\t");
	avg_of_3_runs(&bench_float_mul, iterations);
	bench_float_mul(iterations);
	printf("\tFixed-point 16.16 multiplication:\n\t");
	avg_of_3_runs(&bench_fixed_mul, iterations);
	printf("\tInteger multiplication:\n\t");
 e84:	8fbc0010 	lw	gp,16(sp)
	avg_of_3_runs(&bench_integer_mul, iterations);
 e88:	02002821 	move	a1,s0
}
 e8c:	8fbf001c 	lw	ra,28(sp)
	avg_of_3_runs(&bench_float_mul, iterations);
	bench_float_mul(iterations);
	printf("\tFixed-point 16.16 multiplication:\n\t");
	avg_of_3_runs(&bench_fixed_mul, iterations);
	printf("\tInteger multiplication:\n\t");
	avg_of_3_runs(&bench_integer_mul, iterations);
 e90:	24840000 	addiu	a0,a0,0
}
 e94:	8fb00018 	lw	s0,24(sp)
	avg_of_3_runs(&bench_float_mul, iterations);
	bench_float_mul(iterations);
	printf("\tFixed-point 16.16 multiplication:\n\t");
	avg_of_3_runs(&bench_fixed_mul, iterations);
	printf("\tInteger multiplication:\n\t");
	avg_of_3_runs(&bench_integer_mul, iterations);
 e98:	08000000 	j	0 <bench_float_sub>
 e9c:	27bd0020 	addiu	sp,sp,32

00000ea0 <bench_division>:
		}
	}
}

void bench_division(uint32_t iterations)
{
 ea0:	3c1c0000 	lui	gp,0x0
 ea4:	27bdffe0 	addiu	sp,sp,-32
 ea8:	279c0000 	addiu	gp,gp,0
 eac:	afbf001c 	sw	ra,28(sp)
 eb0:	afb00018 	sw	s0,24(sp)
 eb4:	afbc0010 	sw	gp,16(sp)
	fill_arrays();	
 eb8:	0c000000 	jal	0 <bench_float_sub>
 ebc:	00808021 	move	s0,a0
	printf("\nDIVISION BENCHMARKS:\n");
 ec0:	3c040000 	lui	a0,0x0
	}
}

void bench_division(uint32_t iterations)
{
	fill_arrays();	
 ec4:	8fbc0010 	lw	gp,16(sp)
	printf("\nDIVISION BENCHMARKS:\n");
 ec8:	8f990000 	lw	t9,0(gp)
 ecc:	0320f809 	jalr	t9
 ed0:	24840000 	addiu	a0,a0,0
	printf("\tFloat Division:\n\t");
 ed4:	3c040000 	lui	a0,0x0
}

void bench_division(uint32_t iterations)
{
	fill_arrays();	
	printf("\nDIVISION BENCHMARKS:\n");
 ed8:	8fbc0010 	lw	gp,16(sp)
	printf("\tFloat Division:\n\t");
 edc:	8f990000 	lw	t9,0(gp)
 ee0:	0320f809 	jalr	t9
 ee4:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_float_div, iterations);
 ee8:	3c040000 	lui	a0,0x0
 eec:	02002821 	move	a1,s0
 ef0:	0c000000 	jal	0 <bench_float_sub>
 ef4:	24840000 	addiu	a0,a0,0
	printf("\tFixed-point 16.16 Division:\n\t");
 ef8:	3c040000 	lui	a0,0x0
void bench_division(uint32_t iterations)
{
	fill_arrays();	
	printf("\nDIVISION BENCHMARKS:\n");
	printf("\tFloat Division:\n\t");
	avg_of_3_runs(&bench_float_div, iterations);
 efc:	8fbc0010 	lw	gp,16(sp)
	printf("\tFixed-point 16.16 Division:\n\t");
 f00:	8f990000 	lw	t9,0(gp)
 f04:	0320f809 	jalr	t9
 f08:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_fixed_div, iterations);
 f0c:	3c040000 	lui	a0,0x0
 f10:	02002821 	move	a1,s0
 f14:	0c000000 	jal	0 <bench_float_sub>
 f18:	24840000 	addiu	a0,a0,0
	printf("\tInteger Division:\n\t");
 f1c:	3c040000 	lui	a0,0x0
	fill_arrays();	
	printf("\nDIVISION BENCHMARKS:\n");
	printf("\tFloat Division:\n\t");
	avg_of_3_runs(&bench_float_div, iterations);
	printf("\tFixed-point 16.16 Division:\n\t");
	avg_of_3_runs(&bench_fixed_div, iterations);
 f20:	8fbc0010 	lw	gp,16(sp)
	printf("\tInteger Division:\n\t");
 f24:	8f990000 	lw	t9,0(gp)
 f28:	0320f809 	jalr	t9
 f2c:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_integer_div, iterations);
 f30:	3c040000 	lui	a0,0x0
	printf("\nDIVISION BENCHMARKS:\n");
	printf("\tFloat Division:\n\t");
	avg_of_3_runs(&bench_float_div, iterations);
	printf("\tFixed-point 16.16 Division:\n\t");
	avg_of_3_runs(&bench_fixed_div, iterations);
	printf("\tInteger Division:\n\t");
 f34:	8fbc0010 	lw	gp,16(sp)
	avg_of_3_runs(&bench_integer_div, iterations);
 f38:	02002821 	move	a1,s0
}
 f3c:	8fbf001c 	lw	ra,28(sp)
	printf("\tFloat Division:\n\t");
	avg_of_3_runs(&bench_float_div, iterations);
	printf("\tFixed-point 16.16 Division:\n\t");
	avg_of_3_runs(&bench_fixed_div, iterations);
	printf("\tInteger Division:\n\t");
	avg_of_3_runs(&bench_integer_div, iterations);
 f40:	24840000 	addiu	a0,a0,0
}
 f44:	8fb00018 	lw	s0,24(sp)
	printf("\tFloat Division:\n\t");
	avg_of_3_runs(&bench_float_div, iterations);
	printf("\tFixed-point 16.16 Division:\n\t");
	avg_of_3_runs(&bench_fixed_div, iterations);
	printf("\tInteger Division:\n\t");
	avg_of_3_runs(&bench_integer_div, iterations);
 f48:	08000000 	j	0 <bench_float_sub>
 f4c:	27bd0020 	addiu	sp,sp,32

00000f50 <bench_squareroot>:
		}
	}
}

void bench_squareroot(uint32_t iterations)
{
 f50:	3c1c0000 	lui	gp,0x0
 f54:	27bdffe0 	addiu	sp,sp,-32
 f58:	279c0000 	addiu	gp,gp,0
 f5c:	afbf001c 	sw	ra,28(sp)
 f60:	afb00018 	sw	s0,24(sp)
 f64:	afbc0010 	sw	gp,16(sp)
	fill_arrays();	
 f68:	0c000000 	jal	0 <bench_float_sub>
 f6c:	00808021 	move	s0,a0
	printf("\nSQUARE-ROOT BENCHMARKS:\n");
 f70:	3c040000 	lui	a0,0x0
	}
}

void bench_squareroot(uint32_t iterations)
{
	fill_arrays();	
 f74:	8fbc0010 	lw	gp,16(sp)
	printf("\nSQUARE-ROOT BENCHMARKS:\n");
 f78:	8f990000 	lw	t9,0(gp)
 f7c:	0320f809 	jalr	t9
 f80:	24840000 	addiu	a0,a0,0
	printf("\tFloat Square Root:\n\t");
 f84:	3c040000 	lui	a0,0x0
}

void bench_squareroot(uint32_t iterations)
{
	fill_arrays();	
	printf("\nSQUARE-ROOT BENCHMARKS:\n");
 f88:	8fbc0010 	lw	gp,16(sp)
	printf("\tFloat Square Root:\n\t");
 f8c:	8f990000 	lw	t9,0(gp)
 f90:	0320f809 	jalr	t9
 f94:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_float_sqrt, iterations);
 f98:	3c040000 	lui	a0,0x0
 f9c:	02002821 	move	a1,s0
 fa0:	0c000000 	jal	0 <bench_float_sub>
 fa4:	24840000 	addiu	a0,a0,0
	printf("\tFixed-point 16.16 Square Root:\n\t");
 fa8:	3c040000 	lui	a0,0x0
void bench_squareroot(uint32_t iterations)
{
	fill_arrays();	
	printf("\nSQUARE-ROOT BENCHMARKS:\n");
	printf("\tFloat Square Root:\n\t");
	avg_of_3_runs(&bench_float_sqrt, iterations);
 fac:	8fbc0010 	lw	gp,16(sp)
	printf("\tFixed-point 16.16 Square Root:\n\t");
 fb0:	8f990000 	lw	t9,0(gp)
 fb4:	0320f809 	jalr	t9
 fb8:	24840000 	addiu	a0,a0,0
	avg_of_3_runs(&bench_fixed_sqrt, iterations);
 fbc:	3c040000 	lui	a0,0x0
{
	fill_arrays();	
	printf("\nSQUARE-ROOT BENCHMARKS:\n");
	printf("\tFloat Square Root:\n\t");
	avg_of_3_runs(&bench_float_sqrt, iterations);
	printf("\tFixed-point 16.16 Square Root:\n\t");
 fc0:	8fbc0010 	lw	gp,16(sp)
	avg_of_3_runs(&bench_fixed_sqrt, iterations);
 fc4:	02002821 	move	a1,s0
}
 fc8:	8fbf001c 	lw	ra,28(sp)
	fill_arrays();	
	printf("\nSQUARE-ROOT BENCHMARKS:\n");
	printf("\tFloat Square Root:\n\t");
	avg_of_3_runs(&bench_float_sqrt, iterations);
	printf("\tFixed-point 16.16 Square Root:\n\t");
	avg_of_3_runs(&bench_fixed_sqrt, iterations);
 fcc:	24840000 	addiu	a0,a0,0
}
 fd0:	8fb00018 	lw	s0,24(sp)
	fill_arrays();	
	printf("\nSQUARE-ROOT BENCHMARKS:\n");
	printf("\tFloat Square Root:\n\t");
	avg_of_3_runs(&bench_float_sqrt, iterations);
	printf("\tFixed-point 16.16 Square Root:\n\t");
	avg_of_3_runs(&bench_fixed_sqrt, iterations);
 fd4:	08000000 	j	0 <bench_float_sub>
 fd8:	27bd0020 	addiu	sp,sp,32
 fdc:	00000000 	nop

Disassembly of section .text.startup:

00000000 <main>:
}


int main(int argv, char **argc)
{
   0:	3c1c0000 	lui	gp,0x0
   4:	27bdffd8 	addiu	sp,sp,-40
   8:	279c0000 	addiu	gp,gp,0
   c:	afb0001c 	sw	s0,28(sp)
  10:	00808021 	move	s0,a0
	srand(time(NULL));
  14:	00002021 	move	a0,zero
	avg_of_3_runs(&bench_fixed_sqrt, iterations);
}


int main(int argv, char **argc)
{
  18:	afbf0024 	sw	ra,36(sp)
  1c:	afb10020 	sw	s1,32(sp)
  20:	00a08821 	move	s1,a1
  24:	afbc0010 	sw	gp,16(sp)
	srand(time(NULL));
  28:	8f990000 	lw	t9,0(gp)
  2c:	0320f809 	jalr	t9
  30:	2a100002 	slti	s0,s0,2
  34:	8fbc0010 	lw	gp,16(sp)
  38:	8f990000 	lw	t9,0(gp)
  3c:	0320f809 	jalr	t9
  40:	00402021 	move	a0,v0
	uint32_t iterations = 0;
	if (argv < 2) {
  44:	16000037 	bnez	s0,124 <main+0x124>
  48:	8fbc0010 	lw	gp,16(sp)
		printf("Missing argument: number of iterations\n");
		return 1;
	} else {
		iterations = atoi(argc[1]);
  4c:	8f990000 	lw	t9,0(gp)
  50:	0320f809 	jalr	t9
  54:	8e240004 	lw	a0,4(s1)
	}

	printf("32-bit Floating Point vs. 16.16 Fixed-point Math Speed Comparison\n");
  58:	3c040000 	lui	a0,0x0
	uint32_t iterations = 0;
	if (argv < 2) {
		printf("Missing argument: number of iterations\n");
		return 1;
	} else {
		iterations = atoi(argc[1]);
  5c:	8fbc0010 	lw	gp,16(sp)
  60:	00408021 	move	s0,v0
	}

	printf("32-bit Floating Point vs. 16.16 Fixed-point Math Speed Comparison\n");
  64:	8f990000 	lw	t9,0(gp)
  68:	0320f809 	jalr	t9
  6c:	24840000 	addiu	a0,a0,0
	printf("Written by Dan Silsby  dansilsby <AT> gmail <DOT> com\n");
  70:	3c040000 	lui	a0,0x0
		return 1;
	} else {
		iterations = atoi(argc[1]);
	}

	printf("32-bit Floating Point vs. 16.16 Fixed-point Math Speed Comparison\n");
  74:	8fbc0010 	lw	gp,16(sp)
	printf("Written by Dan Silsby  dansilsby <AT> gmail <DOT> com\n");
  78:	8f990000 	lw	t9,0(gp)
  7c:	0320f809 	jalr	t9
  80:	24840000 	addiu	a0,a0,0
	printf("NOTE: before each benchmark is timed, sync(), fflush(),\n"
  84:	3c040000 	lui	a0,0x0
	} else {
		iterations = atoi(argc[1]);
	}

	printf("32-bit Floating Point vs. 16.16 Fixed-point Math Speed Comparison\n");
	printf("Written by Dan Silsby  dansilsby <AT> gmail <DOT> com\n");
  88:	8fbc0010 	lw	gp,16(sp)
	printf("NOTE: before each benchmark is timed, sync(), fflush(),\n"
  8c:	8f990000 	lw	t9,0(gp)
  90:	0320f809 	jalr	t9
  94:	24840000 	addiu	a0,a0,0
			"a L2 cache flush, and .5 second delay are all executed.\n");
	printf("Each benchmark is %u iterations over %u-length arrays.\n", iterations, ASIZE);
  98:	3c040000 	lui	a0,0x0
		iterations = atoi(argc[1]);
	}

	printf("32-bit Floating Point vs. 16.16 Fixed-point Math Speed Comparison\n");
	printf("Written by Dan Silsby  dansilsby <AT> gmail <DOT> com\n");
	printf("NOTE: before each benchmark is timed, sync(), fflush(),\n"
  9c:	8fbc0010 	lw	gp,16(sp)
			"a L2 cache flush, and .5 second delay are all executed.\n");
	printf("Each benchmark is %u iterations over %u-length arrays.\n", iterations, ASIZE);
  a0:	24060700 	li	a2,1792
  a4:	24840000 	addiu	a0,a0,0
  a8:	8f990000 	lw	t9,0(gp)
  ac:	0320f809 	jalr	t9
  b0:	02002821 	move	a1,s0
	printf("Times reported are an average of 3 of these benchmark runs.\n\n");
  b4:	3c040000 	lui	a0,0x0

	printf("32-bit Floating Point vs. 16.16 Fixed-point Math Speed Comparison\n");
	printf("Written by Dan Silsby  dansilsby <AT> gmail <DOT> com\n");
	printf("NOTE: before each benchmark is timed, sync(), fflush(),\n"
			"a L2 cache flush, and .5 second delay are all executed.\n");
	printf("Each benchmark is %u iterations over %u-length arrays.\n", iterations, ASIZE);
  b8:	8fbc0010 	lw	gp,16(sp)
	printf("Times reported are an average of 3 of these benchmark runs.\n\n");
  bc:	8f990000 	lw	t9,0(gp)
  c0:	0320f809 	jalr	t9
  c4:	24840000 	addiu	a0,a0,0

	bench_addition(iterations);
  c8:	0c000000 	jal	0 <main>
  cc:	02002021 	move	a0,s0
	bench_subtraction(iterations);
  d0:	0c000000 	jal	0 <main>
  d4:	02002021 	move	a0,s0
	bench_multiplication(iterations);
  d8:	0c000000 	jal	0 <main>
  dc:	02002021 	move	a0,s0
	bench_division(iterations);
  e0:	0c000000 	jal	0 <main>
  e4:	02002021 	move	a0,s0
	bench_squareroot(iterations);
  e8:	0c000000 	jal	0 <main>
  ec:	02002021 	move	a0,s0

	// Important: this is to ensure that the flushing of cache via dummy_array is never optimized out:
	return (dummy_array[0] == dummy_array[CACHE_SIZE_IN_WORDS-1]);
  f0:	3c020000 	lui	v0,0x0
  f4:	3c030004 	lui	v1,0x4
  f8:	24440008 	addiu	a0,v0,8
  fc:	8c420008 	lw	v0,8(v0)
 100:	00641821 	addu	v1,v1,a0
 104:	8c63fffc 	lw	v1,-4(v1)
 108:	00431026 	xor	v0,v0,v1
 10c:	2c420001 	sltiu	v0,v0,1
}
 110:	8fbf0024 	lw	ra,36(sp)
 114:	8fb10020 	lw	s1,32(sp)
 118:	8fb0001c 	lw	s0,28(sp)
 11c:	03e00008 	jr	ra
 120:	27bd0028 	addiu	sp,sp,40
int main(int argv, char **argc)
{
	srand(time(NULL));
	uint32_t iterations = 0;
	if (argv < 2) {
		printf("Missing argument: number of iterations\n");
 124:	3c040000 	lui	a0,0x0
 128:	8f990000 	lw	t9,0(gp)
 12c:	0320f809 	jalr	t9
 130:	24840000 	addiu	a0,a0,0
		return 1;
 134:	08000044 	j	110 <main+0x110>
 138:	24020001 	li	v0,1
