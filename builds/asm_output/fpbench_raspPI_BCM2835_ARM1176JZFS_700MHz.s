	.cpu arm1176jzf-s
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"fpbench.c"
	.text
	.align	2
	.global	bench_float_add
	.type	bench_float_add, %function
bench_float_add:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	cmp	r0, #0
	fstmfdd	sp!, {d8, d9, d10, d11}
	movne	r4, #0
	beq	.L1
.L5:
	ldr	r1, .L9
	ldr	r2, .L9+4
	ldr	r3, .L9+8
	mov	ip, #0
.L4:
	flds	s23, [r1, #0]
	flds	s22, [r1, #4]
	flds	s21, [r1, #8]
	flds	s20, [r1, #12]
	flds	s19, [r1, #16]
	flds	s18, [r1, #20]
	flds	s17, [r1, #24]
	flds	s16, [r1, #28]
	flds	s0, [r1, #32]
	flds	s1, [r1, #36]
	flds	s2, [r1, #40]
	flds	s3, [r1, #44]
	flds	s4, [r2, #0]
	flds	s5, [r2, #4]
	flds	s6, [r2, #8]
	flds	s7, [r2, #12]
	flds	s8, [r2, #16]
	flds	s9, [r2, #20]
	flds	s10, [r2, #24]
	flds	s11, [r2, #28]
	flds	s12, [r2, #32]
	flds	s13, [r2, #36]
	flds	s14, [r2, #40]
	flds	s15, [r2, #44]
	fadds	s4, s23, s4
	fadds	s5, s22, s5
	fadds	s6, s21, s6
	fadds	s7, s20, s7
	fadds	s8, s19, s8
	fadds	s9, s18, s9
	fadds	s10, s17, s10
	fadds	s11, s16, s11
	fadds	s12, s0, s12
	fadds	s13, s1, s13
	fadds	s14, s2, s14
	fadds	s15, s3, s15
	fsts	s4, [r3, #0]
	fsts	s5, [r3, #4]
	fsts	s6, [r3, #8]
	fsts	s7, [r3, #12]
	fsts	s8, [r3, #16]
	fsts	s9, [r3, #20]
	fsts	s10, [r3, #24]
	fsts	s11, [r3, #28]
	fsts	s12, [r3, #32]
	fsts	s13, [r3, #36]
	flds	s0, [r1, #80]
	flds	s1, [r1, #84]
	flds	s2, [r1, #88]
	flds	s3, [r1, #92]
	fsts	s14, [r3, #40]
	fsts	s15, [r3, #44]
	flds	s23, [r1, #48]
	flds	s4, [r2, #48]
	flds	s22, [r1, #52]
	flds	s5, [r2, #52]
	flds	s21, [r1, #56]
	flds	s6, [r2, #56]
	flds	s20, [r1, #60]
	flds	s7, [r2, #60]
	flds	s19, [r1, #64]
	flds	s8, [r2, #64]
	flds	s18, [r1, #68]
	flds	s9, [r2, #68]
	flds	s17, [r1, #72]
	flds	s10, [r2, #72]
	flds	s16, [r1, #76]
	flds	s11, [r2, #76]
	flds	s12, [r2, #80]
	flds	s13, [r2, #84]
	flds	s14, [r2, #88]
	flds	s15, [r2, #92]
	fadds	s12, s0, s12
	fadds	s13, s1, s13
	fadds	s14, s2, s14
	fadds	s15, s3, s15
	fadds	s4, s23, s4
	fadds	s5, s22, s5
	fadds	s6, s21, s6
	fadds	s7, s20, s7
	fadds	s8, s19, s8
	fadds	s9, s18, s9
	fadds	s10, s17, s10
	fadds	s11, s16, s11
	fsts	s4, [r3, #48]
	fsts	s5, [r3, #52]
	fsts	s6, [r3, #56]
	fsts	s7, [r3, #60]
	fsts	s8, [r3, #64]
	fsts	s9, [r3, #68]
	fsts	s10, [r3, #72]
	fsts	s11, [r3, #76]
	fsts	s12, [r3, #80]
	fsts	s13, [r3, #84]
	fsts	s14, [r3, #88]
	fsts	s15, [r3, #92]
	flds	s0, [r1, #96]
	flds	s8, [r2, #96]
	flds	s1, [r1, #100]
	flds	s9, [r2, #100]
	flds	s2, [r1, #104]
	flds	s10, [r2, #104]
	flds	s3, [r1, #108]
	flds	s11, [r2, #108]
	flds	s4, [r1, #112]
	flds	s12, [r2, #112]
	flds	s5, [r1, #116]
	flds	s13, [r2, #116]
	flds	s6, [r1, #120]
	flds	s14, [r2, #120]
	flds	s7, [r1, #124]
	flds	s15, [r2, #124]
	fadds	s8, s0, s8
	fadds	s9, s1, s9
	fadds	s10, s2, s10
	fadds	s11, s3, s11
	fadds	s12, s4, s12
	fadds	s13, s5, s13
	fadds	s14, s6, s14
	fadds	s15, s7, s15
	add	ip, ip, #32
	cmp	ip, #1792
	fsts	s8, [r3, #96]
	fsts	s9, [r3, #100]
	fsts	s10, [r3, #104]
	fsts	s11, [r3, #108]
	fsts	s12, [r3, #112]
	fsts	s13, [r3, #116]
	fsts	s14, [r3, #120]
	fsts	s15, [r3, #124]
	add	r1, r1, #128
	add	r2, r2, #128
	add	r3, r3, #128
	bne	.L4
	add	r4, r4, #1
	cmp	r4, r0
	bne	.L5
.L1:
	fldmfdd	sp!, {d8, d9, d10, d11}
	ldmfd	sp!, {r4}
	bx	lr
.L10:
	.align	2
.L9:
	.word	fval1
	.word	fval2
	.word	fresult
	.size	bench_float_add, .-bench_float_add
	.align	2
	.global	bench_double_add
	.type	bench_double_add, %function
bench_double_add:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r6, r7}
	movs	r0, r0, asl #1
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	movne	r4, #0
	beq	.L11
.L15:
	ldr	r1, .L18
	ldr	r2, .L18+4
	ldr	r3, .L18+8
	mov	ip, #0
.L14:
	fldd	d7, [r1, #0]
	fldd	d6, [r2, #0]
	fldd	d5, [r2, #8]
	fldd	d4, [r2, #16]
	fldd	d3, [r2, #24]
	fldd	d2, [r2, #32]
	fldd	d12, [r2, #40]
	fldd	d13, [r1, #48]
	fldd	d14, [r2, #48]
	fldd	d15, [r1, #56]
	faddd	d11, d7, d6
	fldd	d10, [r1, #8]
	fldd	d6, [r2, #56]
	fldd	d7, [r1, #64]
	fldd	d9, [r1, #16]
	fldd	d8, [r1, #24]
	fldd	d0, [r1, #32]
	fldd	d1, [r1, #40]
	faddd	d10, d10, d5
	faddd	d9, d9, d4
	faddd	d8, d8, d3
	faddd	d0, d0, d2
	faddd	d3, d15, d6
	fldd	d6, [r2, #72]
	faddd	d2, d13, d14
	fldd	d13, [r1, #72]
	faddd	d1, d1, d12
	fldd	d12, [r2, #64]
	faddd	d5, d13, d6
	fldd	d13, [r1, #88]
	faddd	d4, d7, d12
	fldd	d7, [r1, #80]
	fldd	d12, [r2, #80]
	faddd	d6, d7, d12
	fldd	d12, [r2, #88]
	faddd	d7, d13, d12
	fstd	d11, [r3, #0]
	fstd	d10, [r3, #8]
	fstd	d9, [r3, #16]
	fstd	d8, [r3, #24]
	fstd	d0, [r3, #32]
	fstd	d1, [r3, #40]
	fstd	d2, [r3, #48]
	fstd	d3, [r3, #56]
	fstd	d4, [r3, #64]
	fstd	d5, [r3, #72]
	fldd	d5, [r2, #104]
	fldd	d4, [r2, #112]
	fldd	d3, [r2, #120]
	fldd	d2, [r2, #128]
	fldd	d12, [r2, #136]
	fldd	d13, [r1, #144]
	fldd	d14, [r2, #144]
	fldd	d15, [r1, #152]
	fstd	d6, [r3, #80]
	fldd	d10, [r1, #104]
	fldd	d6, [r2, #96]
	fstd	d7, [r3, #88]
	fldd	d9, [r1, #112]
	fldd	d7, [r1, #96]
	fldd	d8, [r1, #120]
	faddd	d11, d7, d6
	fldd	d0, [r1, #128]
	fldd	d6, [r1, #160]
	fldd	d7, [r2, #160]
	fldd	d1, [r1, #136]
	faddd	d10, d10, d5
	faddd	d9, d9, d4
	faddd	d8, d8, d3
	faddd	d4, d6, d7
	fldd	d7, [r1, #176]
	faddd	d0, d0, d2
	faddd	d1, d1, d12
	fldd	d12, [r1, #168]
	faddd	d2, d13, d14
	fldd	d13, [r2, #152]
	faddd	d3, d15, d13
	fldd	d13, [r2, #168]
	faddd	d5, d12, d13
	fldd	d12, [r2, #176]
	fldd	d13, [r1, #184]
	faddd	d6, d7, d12
	fldd	d12, [r2, #184]
	faddd	d7, d13, d12
	fstd	d11, [r3, #96]
	fstd	d10, [r3, #104]
	fstd	d9, [r3, #112]
	fstd	d8, [r3, #120]
	fstd	d0, [r3, #128]
	fstd	d1, [r3, #136]
	fstd	d2, [r3, #144]
	fstd	d3, [r3, #152]
	fldd	d13, [r1, #240]
	fldd	d1, [r1, #200]
	fstd	d4, [r3, #160]
	fldd	d2, [r1, #208]
	fldd	d4, [r2, #208]
	fstd	d5, [r3, #168]
	fldd	d3, [r1, #216]
	fldd	d5, [r2, #200]
	fstd	d6, [r3, #176]
	fldd	d8, [r2, #216]
	fldd	d6, [r2, #192]
	fstd	d7, [r3, #184]
	fldd	d9, [r1, #224]
	fldd	d7, [r1, #192]
	fldd	d10, [r2, #224]
	faddd	d0, d7, d6
	fldd	d11, [r1, #232]
	fldd	d12, [r2, #232]
	fldd	d14, [r2, #240]
	fldd	d15, [r1, #248]
	faddd	d1, d1, d5
	faddd	d2, d2, d4
	faddd	d6, d13, d14
	fldd	d13, [r2, #248]
	faddd	d3, d3, d8
	faddd	d4, d9, d10
	faddd	d5, d11, d12
	faddd	d7, d15, d13
	add	ip, ip, #32
	cmp	ip, #896
	fstd	d0, [r3, #192]
	fstd	d1, [r3, #200]
	fstd	d2, [r3, #208]
	fstd	d3, [r3, #216]
	fstd	d4, [r3, #224]
	fstd	d5, [r3, #232]
	fstd	d6, [r3, #240]
	fstd	d7, [r3, #248]
	add	r1, r1, #256
	add	r2, r2, #256
	add	r3, r3, #256
	bne	.L14
	add	r4, r4, #1
	cmp	r4, r0
	bne	.L15
.L11:
	fldmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	ldmfd	sp!, {r4, r6, r7}
	bx	lr
.L19:
	.align	2
.L18:
	.word	dval1
	.word	dval2
	.word	dresult
	.size	bench_double_add, .-bench_double_add
	.align	2
	.global	bench_fixed_add
	.type	bench_fixed_add, %function
bench_fixed_add:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	cmp	r0, #0
	sub	sp, sp, #32
	movne	r2, #0
	str	r0, [sp, #28]
	strne	r2, [sp, #24]
	beq	.L20
.L24:
	ldr	r1, .L27
	ldr	r2, .L27+4
	ldr	r3, .L27+8
	mov	r0, #0
.L23:
	ldr	r4, .L27
	ldr	r5, .L27+4
	ldr	r9, [r0, r4]
	ldr	r6, [r0, r5]
	ldr	r4, [r2, #8]
	ldr	r5, [r2, #4]
	ldr	ip, [r2, #12]
	ldr	sl, [r1, #4]
	ldr	r7, [r1, #12]
	add	r9, r9, r6
	ldr	r6, [r1, #8]
	ldr	fp, [r1, #16]
	add	r8, r6, r4
	add	sl, sl, r5
	add	r7, r7, ip
	ldr	r5, [r2, #20]
	ldr	ip, [r2, #16]
	ldr	r4, [r1, #20]
	add	r6, fp, ip
	add	r4, r4, r5
	ldr	ip, [r2, #24]
	ldr	fp, [r1, #24]
	ldr	r5, [r2, #28]
	str	r4, [sp, #8]
	ldr	r4, [r1, #28]
	add	fp, fp, ip
	str	fp, [sp, #4]
	ldr	ip, [r1, #32]
	add	fp, r4, r5
	ldr	r4, [r2, #32]
	ldr	r5, [r1, #36]
	add	ip, ip, r4
	str	ip, [sp, #12]
	ldr	ip, [r2, #36]
	ldr	r4, [r1, #40]
	add	r5, r5, ip
	str	r5, [sp, #16]
	ldr	r5, [r2, #40]
	add	r4, r4, r5
	str	r4, [sp, #20]
	ldr	r5, [r2, #44]
	ldr	r4, [r1, #44]
	add	ip, r4, r5
	ldr	r4, .L27+8
	str	r9, [r0, r4]
	str	sl, [r3, #4]
	str	r8, [r3, #8]
	str	r7, [r3, #12]
	str	r6, [r3, #16]
	ldr	r5, [sp, #8]
	ldr	sl, [r1, #52]
	str	r5, [r3, #20]
	ldr	r5, [r2, #52]
	ldr	r4, [r2, #56]
	ldr	r6, [sp, #4]
	str	fp, [r3, #28]
	ldr	r8, [sp, #12]
	ldr	r9, [sp, #16]
	ldr	fp, [sp, #20]
	str	ip, [r3, #44]
	ldr	r7, [r1, #60]
	ldr	ip, [r2, #60]
	add	sl, sl, r5
	ldr	r5, [r1, #56]
	str	r6, [r3, #24]
	str	r8, [r3, #32]
	ldr	r6, [r2, #48]
	add	r8, r5, r4
	str	r9, [r3, #36]
	ldr	r5, [r2, #68]
	str	fp, [r3, #40]
	ldr	r9, [r1, #48]
	ldr	fp, [r1, #64]
	add	r7, r7, ip
	ldr	r4, [r1, #68]
	ldr	ip, [r2, #64]
	add	r9, r9, r6
	add	r4, r4, r5
	add	r6, fp, ip
	ldr	ip, [r2, #72]
	ldr	fp, [r1, #72]
	ldr	r5, [r2, #76]
	str	r4, [r3, #68]
	ldr	r4, [r1, #76]
	add	fp, fp, ip
	str	fp, [r3, #72]
	ldr	ip, [r1, #80]
	add	fp, r4, r5
	ldr	r4, [r2, #80]
	ldr	r5, [r1, #84]
	add	ip, ip, r4
	str	ip, [r3, #80]
	ldr	ip, [r2, #84]
	add	r0, r0, #128
	add	r5, r5, ip
	str	r5, [r3, #84]
	ldr	r5, [r2, #88]
	ldr	r4, [r1, #88]
	str	r9, [r3, #48]
	add	r4, r4, r5
	str	r4, [r3, #88]
	ldr	r5, [r2, #92]
	ldr	r4, [r1, #92]
	ldr	r9, [r1, #96]
	add	ip, r4, r5
	str	ip, [r3, #92]
	ldr	r4, [r1, #108]
	ldr	ip, [r2, #108]
	str	sl, [r3, #52]
	str	r8, [r3, #56]
	str	r7, [r3, #60]
	ldr	r8, [r1, #100]
	ldr	sl, [r2, #96]
	ldr	r7, [r2, #100]
	add	ip, r4, ip
	str	fp, [r3, #76]
	str	ip, [r3, #108]
	ldr	fp, [r1, #112]
	ldr	ip, [r2, #116]
	add	sl, r9, sl
	add	r7, r8, r7
	ldr	r9, [r1, #116]
	ldr	r8, [r2, #112]
	str	r6, [r3, #64]
	ldr	r5, [r2, #104]
	ldr	r6, [r1, #104]
	add	r4, r9, ip
	add	fp, fp, r8
	ldr	r9, [r2, #120]
	ldr	r8, [r1, #120]
	ldr	ip, [r1, #124]
	add	r5, r6, r5
	add	r6, r8, r9
	ldr	r9, [r2, #124]
	cmp	r0, #7168
	add	r8, ip, r9
	str	sl, [r3, #96]
	str	r7, [r3, #100]
	str	r5, [r3, #104]
	str	fp, [r3, #112]
	add	r1, r1, #128
	str	r4, [r3, #116]
	add	r2, r2, #128
	str	r6, [r3, #120]
	str	r8, [r3, #124]
	add	r3, r3, #128
	bne	.L23
	ldr	fp, [sp, #24]
	ldr	ip, [sp, #28]
	add	fp, fp, #1
	cmp	fp, ip
	str	fp, [sp, #24]
	bne	.L24
.L20:
	add	sp, sp, #32
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L28:
	.align	2
.L27:
	.word	xval1
	.word	xval2
	.word	xresult
	.size	bench_fixed_add, .-bench_fixed_add
	.align	2
	.global	bench_i32_add
	.type	bench_i32_add, %function
bench_i32_add:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	cmp	r0, #0
	sub	sp, sp, #32
	movne	r2, #0
	str	r0, [sp, #28]
	strne	r2, [sp, #24]
	beq	.L29
.L33:
	ldr	r1, .L36
	ldr	r2, .L36+4
	ldr	r3, .L36+8
	mov	r0, #0
.L32:
	ldr	r4, .L36+4
	ldr	r5, .L36
	ldr	r9, [r0, r4]
	ldr	r6, [r0, r5]
	ldr	r4, [r1, #8]
	ldr	r5, [r1, #4]
	ldr	ip, [r1, #12]
	ldr	sl, [r2, #4]
	ldr	r7, [r2, #12]
	add	r9, r9, r6
	ldr	r6, [r2, #8]
	ldr	fp, [r2, #16]
	add	r8, r6, r4
	add	sl, sl, r5
	add	r7, r7, ip
	ldr	r5, [r1, #20]
	ldr	ip, [r1, #16]
	ldr	r4, [r2, #20]
	add	r6, fp, ip
	add	r4, r4, r5
	ldr	ip, [r1, #24]
	ldr	fp, [r2, #24]
	ldr	r5, [r1, #28]
	str	r4, [sp, #8]
	ldr	r4, [r2, #28]
	add	fp, fp, ip
	str	fp, [sp, #4]
	ldr	ip, [r2, #32]
	add	fp, r4, r5
	ldr	r4, [r1, #32]
	ldr	r5, [r2, #36]
	add	ip, ip, r4
	str	ip, [sp, #12]
	ldr	ip, [r1, #36]
	ldr	r4, [r2, #40]
	add	r5, r5, ip
	str	r5, [sp, #16]
	ldr	r5, [r1, #40]
	add	r4, r4, r5
	str	r4, [sp, #20]
	ldr	r5, [r1, #44]
	ldr	r4, [r2, #44]
	add	ip, r4, r5
	ldr	r4, .L36+8
	str	r9, [r0, r4]
	str	sl, [r3, #4]
	str	r8, [r3, #8]
	str	r7, [r3, #12]
	str	r6, [r3, #16]
	ldr	r5, [sp, #8]
	ldr	sl, [r2, #52]
	str	r5, [r3, #20]
	ldr	r5, [r1, #52]
	ldr	r4, [r1, #56]
	ldr	r6, [sp, #4]
	str	fp, [r3, #28]
	ldr	r8, [sp, #12]
	ldr	r9, [sp, #16]
	ldr	fp, [sp, #20]
	str	ip, [r3, #44]
	ldr	r7, [r2, #60]
	ldr	ip, [r1, #60]
	add	sl, sl, r5
	ldr	r5, [r2, #56]
	str	r6, [r3, #24]
	str	r8, [r3, #32]
	ldr	r6, [r1, #48]
	add	r8, r5, r4
	str	r9, [r3, #36]
	ldr	r5, [r1, #68]
	str	fp, [r3, #40]
	ldr	r9, [r2, #48]
	ldr	fp, [r2, #64]
	add	r7, r7, ip
	ldr	r4, [r2, #68]
	ldr	ip, [r1, #64]
	add	r9, r9, r6
	add	r4, r4, r5
	add	r6, fp, ip
	ldr	ip, [r1, #72]
	ldr	fp, [r2, #72]
	ldr	r5, [r1, #76]
	str	r4, [r3, #68]
	ldr	r4, [r2, #76]
	add	fp, fp, ip
	str	fp, [r3, #72]
	ldr	ip, [r2, #80]
	add	fp, r4, r5
	ldr	r4, [r1, #80]
	ldr	r5, [r2, #84]
	add	ip, ip, r4
	str	ip, [r3, #80]
	ldr	ip, [r1, #84]
	add	r0, r0, #128
	add	r5, r5, ip
	str	r5, [r3, #84]
	ldr	r5, [r1, #88]
	ldr	r4, [r2, #88]
	str	r9, [r3, #48]
	add	r4, r4, r5
	str	r4, [r3, #88]
	ldr	r5, [r1, #92]
	ldr	r4, [r2, #92]
	ldr	r9, [r2, #96]
	add	ip, r4, r5
	str	ip, [r3, #92]
	ldr	r4, [r2, #108]
	ldr	ip, [r1, #108]
	str	sl, [r3, #52]
	str	r8, [r3, #56]
	str	r7, [r3, #60]
	ldr	r8, [r2, #100]
	ldr	sl, [r1, #96]
	ldr	r7, [r1, #100]
	add	ip, r4, ip
	str	fp, [r3, #76]
	str	ip, [r3, #108]
	ldr	fp, [r2, #112]
	ldr	ip, [r1, #116]
	add	sl, r9, sl
	add	r7, r8, r7
	ldr	r9, [r2, #116]
	ldr	r8, [r1, #112]
	str	r6, [r3, #64]
	ldr	r5, [r1, #104]
	ldr	r6, [r2, #104]
	add	r4, r9, ip
	add	fp, fp, r8
	ldr	r9, [r1, #120]
	ldr	r8, [r2, #120]
	ldr	ip, [r2, #124]
	add	r5, r6, r5
	add	r6, r8, r9
	ldr	r9, [r1, #124]
	cmp	r0, #7168
	add	r8, ip, r9
	str	sl, [r3, #96]
	str	r7, [r3, #100]
	str	r5, [r3, #104]
	str	fp, [r3, #112]
	add	r1, r1, #128
	str	r4, [r3, #116]
	add	r2, r2, #128
	str	r6, [r3, #120]
	str	r8, [r3, #124]
	add	r3, r3, #128
	bne	.L32
	ldr	fp, [sp, #24]
	ldr	ip, [sp, #28]
	add	fp, fp, #1
	cmp	fp, ip
	str	fp, [sp, #24]
	bne	.L33
.L29:
	add	sp, sp, #32
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L37:
	.align	2
.L36:
	.word	i32val1
	.word	i32val2
	.word	i32result
	.size	bench_i32_add, .-bench_i32_add
	.align	2
	.global	bench_i64_add
	.type	bench_i64_add, %function
bench_i64_add:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	movs	r0, r0, asl #1
	sub	sp, sp, #96
	movne	r6, #0
	str	r0, [sp, #92]
	strne	r6, [sp, #88]
	beq	.L38
.L42:
	ldr	r7, .L45
	ldr	r8, .L45+4
	mov	r9, #0
	ldr	ip, .L45+8
	str	r7, [sp, #80]
	str	r8, [sp, #28]
	str	r9, [sp, #84]
.L41:
	ldr	r0, [sp, #84]
	ldr	r1, .L45
	ldr	r2, [sp, #84]
	add	r0, r0, r1
	ldrd	r0, [r0]
	ldr	r3, .L45+8
	strd	r0, [sp, #8]
	add	r2, r2, r3
	ldrd	r2, [r2]
	ldr	r1, [sp, #80]
	strd	r2, [sp, #16]
	ldrd	r0, [r1, #48]
	ldr	r3, [sp, #80]
	strd	r0, [sp, #32]
	ldrd	r2, [r3, #56]
	ldr	r1, [sp, #80]
	strd	r2, [sp, #40]
	ldrd	r0, [r1, #64]
	ldr	r3, [sp, #80]
	strd	r0, [sp, #48]
	ldrd	r2, [r3, #72]
	ldr	r1, [sp, #80]
	strd	r2, [sp, #56]
	ldrd	r0, [r1, #80]
	ldr	r3, [sp, #80]
	ldr	r6, [sp, #80]
	ldr	sl, [sp, #80]
	ldrd	r2, [r3, #88]
	ldr	r5, [sp, #80]
	strd	r0, [sp, #64]
	ldrd	r0, [sp, #8]
	ldrd	r8, [sl, #32]
	strd	r2, [sp, #72]
	ldrd	r2, [sp, #16]
	ldrd	r4, [r5, #8]
	adds	r0, r0, r2
	adc	r1, r1, r3
	ldrd	sl, [sl, #40]
	strd	r4, [sp]
	ldrd	r4, [r6, #16]
	ldrd	r6, [r6, #24]
	strd	r0, [sp, #8]
	ldrd	r2, [ip, #8]
	ldrd	r0, [sp]
	adds	r0, r0, r2
	adc	r1, r1, r3
	strd	r0, [sp]
	ldrd	r0, [ip, #16]
	ldrd	r2, [ip, #24]
	adds	r4, r4, r0
	adc	r5, r5, r1
	adds	r6, r6, r2
	ldrd	r0, [ip, #32]
	adc	r7, r7, r3
	adds	r8, r8, r0
	ldrd	r2, [ip, #40]
	adc	r9, r9, r1
	adds	sl, sl, r2
	adc	fp, fp, r3
	ldrd	r0, [sp, #32]
	ldrd	r2, [ip, #48]
	adds	r0, r0, r2
	adc	r1, r1, r3
	strd	r0, [sp, #32]
	ldrd	r2, [ip, #56]
	ldrd	r0, [sp, #40]
	adds	r0, r0, r2
	adc	r1, r1, r3
	strd	r0, [sp, #40]
	ldrd	r2, [ip, #64]
	ldrd	r0, [sp, #48]
	adds	r0, r0, r2
	adc	r1, r1, r3
	strd	r0, [sp, #48]
	ldrd	r2, [ip, #72]
	ldrd	r0, [sp, #56]
	adds	r0, r0, r2
	adc	r1, r1, r3
	strd	r0, [sp, #56]
	ldrd	r2, [ip, #80]
	ldrd	r0, [sp, #64]
	adds	r0, r0, r2
	adc	r1, r1, r3
	strd	r0, [sp, #64]
	ldrd	r2, [ip, #88]
	ldrd	r0, [sp, #72]
	adds	r0, r0, r2
	adc	r1, r1, r3
	ldr	r2, .L45+4
	ldr	r3, [sp, #84]
	strd	r0, [sp, #72]
	ldrd	r0, [sp, #8]
	strd	r0, [r3, r2]
	ldrd	r0, [sp]
	ldr	r2, [sp, #28]
	add	r3, r3, #256
	strd	r6, [r2, #24]
	strd	r0, [r2, #8]
	strd	r4, [r2, #16]
	strd	r8, [r2, #32]
	ldrd	r0, [sp, #48]
	ldrd	r4, [sp, #32]
	strd	r0, [r2, #64]
	ldrd	r0, [sp, #72]
	ldrd	r8, [sp, #40]
	strd	r0, [r2, #88]
	ldr	r0, [sp, #80]
	strd	sl, [r2, #40]
	ldrd	sl, [r0, #136]
	strd	r4, [r2, #48]
	ldrd	r4, [sp, #56]
	strd	r8, [r2, #56]
	ldrd	r8, [sp, #64]
	strd	r4, [r2, #72]
	strd	r8, [r2, #80]
	str	r3, [sp, #84]
	ldr	r8, [sp, #80]
	ldrd	r2, [r0, #144]
	ldr	r5, [sp, #80]
	ldrd	r0, [r0, #152]
	strd	r2, [sp, #32]
	ldrd	r4, [r5, #96]
	strd	r0, [sp, #40]
	ldr	r7, [sp, #80]
	ldr	r3, [sp, #80]
	ldr	r1, [sp, #80]
	ldrd	r2, [r3, #160]
	ldrd	r6, [r7, #104]
	strd	r2, [sp, #48]
	ldrd	r0, [r1, #168]
	strd	r4, [sp, #8]
	ldrd	r4, [r8, #112]
	strd	r6, [sp]
	ldrd	r6, [r8, #120]
	ldrd	r8, [r8, #128]
	strd	r0, [sp, #56]
	ldr	r3, [sp, #80]
	ldr	r1, [sp, #80]
	ldrd	r2, [r3, #176]
	ldrd	r0, [r1, #184]
	strd	r2, [sp, #64]
	ldrd	r2, [sp, #8]
	strd	r0, [sp, #72]
	ldrd	r0, [ip, #96]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [sp, #8]
	ldrd	r0, [ip, #104]
	ldrd	r2, [sp]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [sp]
	ldrd	r2, [ip, #112]
	ldrd	r0, [ip, #120]
	adds	r4, r4, r2
	adc	r5, r5, r3
	adds	r6, r6, r0
	ldrd	r2, [ip, #128]
	adc	r7, r7, r1
	adds	r8, r8, r2
	ldrd	r0, [ip, #136]
	adc	r9, r9, r3
	adds	sl, sl, r0
	adc	fp, fp, r1
	ldrd	r2, [sp, #32]
	ldrd	r0, [ip, #144]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [sp, #32]
	ldrd	r0, [ip, #152]
	ldrd	r2, [sp, #40]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [sp, #40]
	ldrd	r0, [ip, #160]
	ldrd	r2, [sp, #48]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [sp, #48]
	ldrd	r0, [ip, #168]
	ldrd	r2, [sp, #56]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [sp, #56]
	ldrd	r0, [ip, #176]
	ldrd	r2, [sp, #64]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [sp, #64]
	ldrd	r0, [ip, #184]
	ldrd	r2, [sp, #72]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [sp, #72]
	ldrd	r2, [sp, #8]
	ldr	r0, [sp, #28]
	strd	r2, [r0, #96]
	ldrd	r2, [sp]
	strd	r2, [r0, #104]
	ldrd	r2, [sp, #32]
	strd	r2, [r0, #144]
	ldrd	r2, [sp, #56]
	strd	r2, [r0, #168]
	ldr	r3, [sp, #80]
	strd	r4, [r0, #112]
	ldrd	r2, [r3, #192]
	ldr	r5, [sp, #80]
	strd	r2, [sp, #32]
	ldrd	r2, [ip, #192]
	ldrd	r4, [r5, #200]
	strd	r8, [r0, #128]
	strd	r6, [r0, #120]
	ldrd	r6, [sp, #40]
	ldr	r9, [sp, #80]
	strd	r6, [r0, #152]
	ldrd	r6, [sp, #64]
	ldrd	r8, [r9, #208]
	strd	r6, [r0, #176]
	ldrd	r6, [sp, #32]
	adds	r6, r6, r2
	adc	r7, r7, r3
	ldrd	r2, [ip, #200]
	adds	r4, r4, r2
	adc	r5, r5, r3
	strd	sl, [r0, #136]
	ldrd	r2, [ip, #208]
	ldrd	sl, [sp, #48]
	adds	r8, r8, r2
	strd	sl, [r0, #160]
	ldrd	sl, [sp, #72]
	strd	sl, [r0, #184]
	ldr	fp, [sp, #80]
	adc	r9, r9, r3
	ldrd	sl, [fp, #216]
	strd	r6, [sp, #32]
	strd	r4, [sp, #40]
	strd	r8, [sp, #48]
	ldrd	r2, [ip, #216]
	ldr	r0, [sp, #80]
	adds	sl, sl, r2
	adc	fp, fp, r3
	ldrd	r8, [r0, #224]
	ldrd	r2, [ip, #224]
	adds	r8, r8, r2
	ldrd	r6, [r0, #232]
	adc	r9, r9, r3
	ldrd	r2, [ip, #232]
	adds	r6, r6, r2
	ldrd	r4, [r0, #240]
	adc	r7, r7, r3
	strd	sl, [sp, #56]
	ldrd	sl, [ip, #240]
	ldrd	r2, [ip, #248]
	adds	r4, r4, sl
	adc	r5, r5, fp
	ldrd	r0, [r0, #248]
	adds	r0, r0, r2
	ldr	r2, [sp, #84]
	adc	r1, r1, r3
	ldr	r3, [sp, #80]
	cmp	r2, #7168
	ldr	r2, [sp, #28]
	ldrd	sl, [sp, #32]
	strd	r8, [r2, #224]
	strd	sl, [r2, #192]
	ldrd	sl, [sp, #40]
	strd	r6, [r2, #232]
	strd	sl, [r2, #200]
	ldrd	sl, [sp, #48]
	strd	r4, [r2, #240]
	strd	sl, [r2, #208]
	ldrd	sl, [sp, #56]
	strd	r0, [r2, #248]
	strd	sl, [r2, #216]
	add	r3, r3, #256
	add	r2, r2, #256
	add	ip, ip, #256
	str	r3, [sp, #80]
	str	r2, [sp, #28]
	bne	.L41
	ldr	r4, [sp, #88]
	ldr	r5, [sp, #92]
	add	r4, r4, #1
	cmp	r4, r5
	str	r4, [sp, #88]
	bne	.L42
.L38:
	add	sp, sp, #96
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L46:
	.align	2
.L45:
	.word	i64val2
	.word	i64result
	.word	i64val1
	.size	bench_i64_add, .-bench_i64_add
	.align	2
	.global	bench_float_mul
	.type	bench_float_mul, %function
bench_float_mul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	cmp	r0, #0
	fstmfdd	sp!, {d8, d9, d10, d11}
	movne	r4, #0
	beq	.L47
.L51:
	ldr	r1, .L54
	ldr	r2, .L54+4
	ldr	r3, .L54+8
	mov	ip, #0
.L50:
	flds	s23, [r1, #0]
	flds	s22, [r1, #4]
	flds	s21, [r1, #8]
	flds	s20, [r1, #12]
	flds	s19, [r1, #16]
	flds	s18, [r1, #20]
	flds	s17, [r1, #24]
	flds	s16, [r1, #28]
	flds	s0, [r1, #32]
	flds	s1, [r1, #36]
	flds	s2, [r1, #40]
	flds	s3, [r1, #44]
	flds	s4, [r2, #0]
	flds	s5, [r2, #4]
	flds	s6, [r2, #8]
	flds	s7, [r2, #12]
	flds	s8, [r2, #16]
	flds	s9, [r2, #20]
	flds	s10, [r2, #24]
	flds	s11, [r2, #28]
	flds	s12, [r2, #32]
	flds	s13, [r2, #36]
	flds	s14, [r2, #40]
	flds	s15, [r2, #44]
	fmuls	s4, s23, s4
	fmuls	s5, s22, s5
	fmuls	s6, s21, s6
	fmuls	s7, s20, s7
	fmuls	s8, s19, s8
	fmuls	s9, s18, s9
	fmuls	s10, s17, s10
	fmuls	s11, s16, s11
	fmuls	s12, s0, s12
	fmuls	s13, s1, s13
	fmuls	s14, s2, s14
	fmuls	s15, s3, s15
	fsts	s4, [r3, #0]
	fsts	s5, [r3, #4]
	fsts	s6, [r3, #8]
	fsts	s7, [r3, #12]
	fsts	s8, [r3, #16]
	fsts	s9, [r3, #20]
	fsts	s10, [r3, #24]
	fsts	s11, [r3, #28]
	fsts	s12, [r3, #32]
	fsts	s13, [r3, #36]
	flds	s0, [r1, #80]
	flds	s1, [r1, #84]
	flds	s2, [r1, #88]
	flds	s3, [r1, #92]
	fsts	s14, [r3, #40]
	fsts	s15, [r3, #44]
	flds	s23, [r1, #48]
	flds	s4, [r2, #48]
	flds	s22, [r1, #52]
	flds	s5, [r2, #52]
	flds	s21, [r1, #56]
	flds	s6, [r2, #56]
	flds	s20, [r1, #60]
	flds	s7, [r2, #60]
	flds	s19, [r1, #64]
	flds	s8, [r2, #64]
	flds	s18, [r1, #68]
	flds	s9, [r2, #68]
	flds	s17, [r1, #72]
	flds	s10, [r2, #72]
	flds	s16, [r1, #76]
	flds	s11, [r2, #76]
	flds	s12, [r2, #80]
	flds	s13, [r2, #84]
	flds	s14, [r2, #88]
	flds	s15, [r2, #92]
	fmuls	s12, s0, s12
	fmuls	s13, s1, s13
	fmuls	s14, s2, s14
	fmuls	s15, s3, s15
	fmuls	s4, s23, s4
	fmuls	s5, s22, s5
	fmuls	s6, s21, s6
	fmuls	s7, s20, s7
	fmuls	s8, s19, s8
	fmuls	s9, s18, s9
	fmuls	s10, s17, s10
	fmuls	s11, s16, s11
	fsts	s4, [r3, #48]
	fsts	s5, [r3, #52]
	fsts	s6, [r3, #56]
	fsts	s7, [r3, #60]
	fsts	s8, [r3, #64]
	fsts	s9, [r3, #68]
	fsts	s10, [r3, #72]
	fsts	s11, [r3, #76]
	fsts	s12, [r3, #80]
	fsts	s13, [r3, #84]
	fsts	s14, [r3, #88]
	fsts	s15, [r3, #92]
	flds	s0, [r1, #96]
	flds	s8, [r2, #96]
	flds	s1, [r1, #100]
	flds	s9, [r2, #100]
	flds	s2, [r1, #104]
	flds	s10, [r2, #104]
	flds	s3, [r1, #108]
	flds	s11, [r2, #108]
	flds	s4, [r1, #112]
	flds	s12, [r2, #112]
	flds	s5, [r1, #116]
	flds	s13, [r2, #116]
	flds	s6, [r1, #120]
	flds	s14, [r2, #120]
	flds	s7, [r1, #124]
	flds	s15, [r2, #124]
	fmuls	s8, s0, s8
	fmuls	s9, s1, s9
	fmuls	s10, s2, s10
	fmuls	s11, s3, s11
	fmuls	s12, s4, s12
	fmuls	s13, s5, s13
	fmuls	s14, s6, s14
	fmuls	s15, s7, s15
	add	ip, ip, #32
	cmp	ip, #1792
	fsts	s8, [r3, #96]
	fsts	s9, [r3, #100]
	fsts	s10, [r3, #104]
	fsts	s11, [r3, #108]
	fsts	s12, [r3, #112]
	fsts	s13, [r3, #116]
	fsts	s14, [r3, #120]
	fsts	s15, [r3, #124]
	add	r1, r1, #128
	add	r2, r2, #128
	add	r3, r3, #128
	bne	.L50
	add	r4, r4, #1
	cmp	r4, r0
	bne	.L51
.L47:
	fldmfdd	sp!, {d8, d9, d10, d11}
	ldmfd	sp!, {r4}
	bx	lr
.L55:
	.align	2
.L54:
	.word	fval1
	.word	fval2
	.word	fresult
	.size	bench_float_mul, .-bench_float_mul
	.align	2
	.global	bench_double_mul
	.type	bench_double_mul, %function
bench_double_mul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r6, r7}
	movs	r0, r0, asl #1
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	movne	r4, #0
	beq	.L56
.L60:
	ldr	r1, .L63
	ldr	r2, .L63+4
	ldr	r3, .L63+8
	mov	ip, #0
.L59:
	fldd	d7, [r1, #0]
	fldd	d6, [r2, #0]
	fldd	d5, [r1, #8]
	fldd	d4, [r2, #8]
	fldd	d3, [r1, #16]
	fldd	d2, [r2, #16]
	fldd	d1, [r1, #24]
	fldd	d0, [r2, #24]
	fldd	d12, [r1, #32]
	fldd	d13, [r2, #32]
	fldd	d14, [r1, #40]
	fldd	d15, [r2, #40]
	fmuld	d11, d7, d6
	fldd	d6, [r1, #48]
	fldd	d7, [r2, #48]
	fmuld	d10, d5, d4
	fmuld	d9, d3, d2
	fmuld	d8, d1, d0
	fmuld	d2, d6, d7
	fldd	d6, [r1, #64]
	fldd	d7, [r2, #64]
	fmuld	d0, d12, d13
	fldd	d12, [r1, #56]
	fldd	d13, [r2, #56]
	fmuld	d1, d14, d15
	fmuld	d3, d12, d13
	fldd	d12, [r1, #72]
	fldd	d13, [r2, #72]
	fmuld	d4, d6, d7
	fldd	d7, [r1, #80]
	fmuld	d5, d12, d13
	fldd	d12, [r2, #80]
	fldd	d13, [r1, #88]
	fmuld	d6, d7, d12
	fldd	d12, [r2, #88]
	fmuld	d7, d13, d12
	fstd	d11, [r3, #0]
	fstd	d10, [r3, #8]
	fstd	d9, [r3, #16]
	fstd	d8, [r3, #24]
	fstd	d0, [r3, #32]
	fstd	d1, [r3, #40]
	fstd	d2, [r3, #48]
	fstd	d3, [r3, #56]
	fstd	d4, [r3, #64]
	fstd	d5, [r3, #72]
	fldd	d5, [r1, #104]
	fldd	d4, [r2, #104]
	fldd	d3, [r1, #112]
	fldd	d2, [r2, #112]
	fldd	d1, [r1, #120]
	fldd	d0, [r2, #120]
	fldd	d12, [r1, #128]
	fldd	d13, [r2, #128]
	fldd	d14, [r1, #136]
	fldd	d15, [r2, #136]
	fmuld	d10, d5, d4
	fmuld	d9, d3, d2
	fmuld	d8, d1, d0
	fstd	d6, [r3, #80]
	fldd	d6, [r2, #96]
	fmuld	d0, d12, d13
	fldd	d13, [r1, #144]
	fldd	d12, [r2, #152]
	fmuld	d1, d14, d15
	fstd	d7, [r3, #88]
	fldd	d7, [r1, #96]
	fmuld	d11, d7, d6
	fldd	d6, [r2, #144]
	fldd	d7, [r1, #152]
	fmuld	d2, d13, d6
	fldd	d13, [r1, #160]
	fldd	d6, [r2, #160]
	fmuld	d3, d7, d12
	fldd	d7, [r1, #168]
	fldd	d12, [r2, #168]
	fmuld	d4, d13, d6
	fldd	d13, [r1, #176]
	fmuld	d5, d7, d12
	fldd	d7, [r2, #176]
	fldd	d12, [r1, #184]
	fmuld	d6, d13, d7
	fldd	d13, [r2, #184]
	fmuld	d7, d12, d13
	fstd	d11, [r3, #96]
	fstd	d10, [r3, #104]
	fstd	d9, [r3, #112]
	fstd	d8, [r3, #120]
	fstd	d0, [r3, #128]
	fstd	d1, [r3, #136]
	fstd	d2, [r3, #144]
	fstd	d3, [r3, #152]
	fldd	d3, [r1, #208]
	fldd	d8, [r1, #216]
	fldd	d9, [r2, #216]
	fstd	d4, [r3, #160]
	fldd	d2, [r2, #208]
	fldd	d4, [r2, #200]
	fstd	d5, [r3, #168]
	fldd	d10, [r1, #224]
	fldd	d5, [r1, #200]
	fstd	d6, [r3, #176]
	fldd	d11, [r2, #224]
	fldd	d6, [r2, #192]
	fmuld	d1, d5, d4
	fldd	d12, [r1, #232]
	fldd	d13, [r2, #232]
	fldd	d14, [r1, #240]
	fldd	d15, [r2, #240]
	fstd	d7, [r3, #184]
	fldd	d7, [r1, #192]
	fmuld	d2, d3, d2
	fmuld	d0, d7, d6
	fmuld	d3, d8, d9
	fldd	d8, [r1, #248]
	fldd	d9, [r2, #248]
	fmuld	d4, d10, d11
	fmuld	d5, d12, d13
	fmuld	d6, d14, d15
	fmuld	d7, d8, d9
	add	ip, ip, #32
	cmp	ip, #896
	fstd	d0, [r3, #192]
	fstd	d1, [r3, #200]
	fstd	d2, [r3, #208]
	fstd	d3, [r3, #216]
	fstd	d4, [r3, #224]
	fstd	d5, [r3, #232]
	fstd	d6, [r3, #240]
	fstd	d7, [r3, #248]
	add	r1, r1, #256
	add	r2, r2, #256
	add	r3, r3, #256
	bne	.L59
	add	r4, r4, #1
	cmp	r4, r0
	bne	.L60
.L56:
	fldmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	ldmfd	sp!, {r4, r6, r7}
	bx	lr
.L64:
	.align	2
.L63:
	.word	dval1
	.word	dval2
	.word	dresult
	.size	bench_double_mul, .-bench_double_mul
	.align	2
	.global	bench_fixed_mul
	.type	bench_fixed_mul, %function
bench_fixed_mul:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	cmp	r0, #0
	sub	sp, sp, #144
	movne	r3, #0
	str	r0, [sp, #140]
	strne	r3, [sp, #136]
	beq	.L65
.L69:
	mov	r4, #0
	ldr	r2, .L72
	ldr	r1, .L72+4
	ldr	r0, .L72+8
	str	r4, [sp, #132]
.L68:
	ldr	r4, [sp, #132]
	ldr	r3, .L72
	ldr	r5, .L72+4
	ldr	r3, [r4, r3]
	ldr	r8, [r4, r5]
	str	r3, [sp, #4]
	ldr	fp, [sp, #4]
	ldr	r7, [r2, #4]
	smull	sl, fp, fp, r8
	ldr	r6, [r1, #4]
	ldr	r5, [r2, #8]
	ldr	r4, [r1, #8]
	strd	sl, [sp, #104]
	smull	sl, fp, r7, r6
	ldr	ip, [r2, #12]
	smull	r6, r7, r5, r4
	ldr	r3, [r1, #12]
	ldr	r9, [r2, #16]
	ldr	r5, [r1, #16]
	strd	sl, [sp, #112]
	smull	r4, r5, r9, r5
	smull	sl, fp, ip, r3
	strd	r6, [sp, #120]
	strd	sl, [sp, #56]
	strd	r4, [sp, #64]
	ldr	r7, [r2, #20]
	ldr	r6, [r1, #20]
	ldr	fp, [r2, #24]
	ldr	sl, [r1, #24]
	ldr	r5, [r2, #28]
	ldr	r4, [r1, #28]
	smull	r6, r7, r7, r6
	smull	sl, fp, fp, sl
	smull	r4, r5, r5, r4
	strd	r6, [sp, #72]
	strd	sl, [sp, #32]
	strd	r4, [sp, #40]
	ldr	r7, [r2, #32]
	ldr	r6, [r1, #32]
	ldr	fp, [r2, #36]
	ldr	sl, [r1, #36]
	ldr	r5, [r2, #40]
	ldr	r4, [r1, #40]
	smull	r6, r7, r7, r6
	smull	sl, fp, fp, sl
	smull	r4, r5, r5, r4
	strd	r6, [sp, #48]
	strd	sl, [sp, #80]
	strd	r4, [sp, #88]
	ldr	r7, [r2, #44]
	ldr	r6, [r1, #44]
	ldr	r9, [sp, #112]
	smull	r6, r7, r7, r6
	ldr	ip, [sp, #56]
	mov	r9, r9, lsr #16
	str	r9, [sp, #24]
	ldr	r4, [sp, #72]
	mov	r9, ip, lsr #16
	ldr	ip, [sp, #40]
	strd	r6, [sp, #96]
	ldr	sl, [sp, #120]
	ldr	r3, [sp, #64]
	ldr	r7, [sp, #104]
	mov	r8, r4, lsr #16
	mov	r6, ip, lsr #16
	ldr	r4, [sp, #80]
	ldr	ip, [sp, #88]
	ldr	r5, [sp, #32]
	mov	r7, r7, lsr #16
	mov	fp, sl, lsr #16
	mov	sl, r3, lsr #16
	ldr	r3, [sp, #48]
	str	r7, [sp, #16]
	mov	r4, r4, lsr #16
	mov	ip, ip, lsr #16
	str	r4, [sp, #128]
	mov	r7, r5, lsr #16
	ldr	r4, [sp, #16]
	mov	r5, r3, lsr #16
	str	ip, [sp, #12]
	ldr	r3, [sp, #96]
	ldr	ip, [sp, #108]
	mov	r3, r3, lsr #16
	orr	r4, r4, ip, asl #16
	str	r3, [sp, #8]
	str	r4, [sp, #16]
	ldr	r3, [sp, #24]
	ldr	r4, [sp, #116]
	ldr	ip, [sp, #124]
	orr	r3, r3, r4, asl #16
	str	r3, [sp, #24]
	ldr	r4, [sp, #68]
	ldr	r3, [sp, #60]
	orr	sl, sl, r4, asl #16
	orr	r9, r9, r3, asl #16
	ldr	r4, [sp, #44]
	ldr	r3, [sp, #36]
	orr	fp, fp, ip, asl #16
	ldr	ip, [sp, #76]
	orr	r7, r7, r3, asl #16
	orr	r6, r6, r4, asl #16
	ldr	r3, [sp, #128]
	ldr	r4, [sp, #84]
	orr	r8, r8, ip, asl #16
	ldr	ip, [sp, #52]
	orr	r3, r3, r4, asl #16
	str	r3, [sp, #128]
	orr	r5, r5, ip, asl #16
	ldr	r3, [sp, #92]
	ldr	ip, [sp, #12]
	ldr	r4, [sp, #8]
	orr	ip, ip, r3, asl #16
	str	ip, [sp, #12]
	ldr	ip, [sp, #100]
	ldr	r3, .L72+8
	orr	r4, r4, ip, asl #16
	str	r4, [sp, #8]
	ldr	ip, [sp, #132]
	ldr	r4, [sp, #16]
	str	r4, [ip, r3]
	ldr	r3, [sp, #24]
	str	r8, [r0, #20]
	stmib	r0, {r3, fp}
	ldr	r8, [r1, #48]
	ldr	fp, [r2, #48]
	str	sl, [r0, #16]
	str	r6, [r0, #28]
	str	r5, [r0, #32]
	ldr	r4, [sp, #128]
	ldr	r5, [sp, #12]
	ldr	r6, [sp, #8]
	smull	sl, fp, fp, r8
	str	r7, [r0, #24]
	str	r4, [r0, #36]
	ldr	r7, [r2, #52]
	ldr	r4, [r1, #56]
	str	r5, [r0, #40]
	str	r6, [r0, #44]
	ldr	r5, [r2, #56]
	ldr	r6, [r1, #52]
	ldr	ip, [r2, #60]
	ldr	r3, [r1, #60]
	str	r9, [r0, #12]
	ldr	r9, [r2, #64]
	strd	sl, [sp, #104]
	smull	sl, fp, r7, r6
	smull	r6, r7, r5, r4
	strd	r6, [sp, #120]
	ldr	r7, [r2, #68]
	ldr	r6, [r1, #68]
	strd	sl, [sp, #112]
	ldr	r5, [r1, #64]
	smull	sl, fp, ip, r3
	smull	r6, r7, r7, r6
	smull	r4, r5, r9, r5
	strd	sl, [sp, #56]
	ldr	fp, [r2, #72]
	ldr	sl, [r1, #72]
	strd	r6, [sp, #72]
	ldr	r7, [r2, #80]
	ldr	r6, [r1, #80]
	strd	r4, [sp, #64]
	smull	sl, fp, fp, sl
	ldr	r5, [r2, #76]
	ldr	r4, [r1, #76]
	smull	r6, r7, r7, r6
	smull	r4, r5, r5, r4
	strd	sl, [sp, #32]
	ldr	fp, [r2, #84]
	ldr	sl, [r1, #84]
	strd	r6, [sp, #48]
	ldr	r7, [r2, #92]
	ldr	r6, [r1, #92]
	strd	r4, [sp, #40]
	smull	sl, fp, fp, sl
	ldr	r5, [r2, #88]
	ldr	r4, [r1, #88]
	smull	r6, r7, r7, r6
	smull	r4, r5, r5, r4
	strd	sl, [sp, #80]
	ldr	r3, [sp, #64]
	ldr	sl, [sp, #120]
	ldr	r9, [sp, #112]
	strd	r6, [sp, #96]
	ldr	ip, [sp, #56]
	ldr	r7, [sp, #104]
	strd	r4, [sp, #88]
	mov	r9, r9, lsr #16
	ldr	r5, [sp, #32]
	mov	fp, sl, lsr #16
	mov	sl, r3, lsr #16
	ldr	r3, [sp, #48]
	mov	r7, r7, lsr #16
	str	r9, [sp, #24]
	mov	r9, ip, lsr #16
	ldr	ip, [sp, #40]
	str	r7, [sp, #16]
	mov	r7, r5, lsr #16
	mov	r5, r3, lsr #16
	ldr	r3, [sp, #88]
	ldr	r4, [sp, #72]
	mov	r6, ip, lsr #16
	ldr	ip, [sp, #80]
	mov	r3, r3, lsr #16
	str	r3, [sp, #128]
	mov	r8, r4, lsr #16
	mov	r4, ip, lsr #16
	ldr	ip, [sp, #96]
	ldr	r3, [sp, #16]
	mov	ip, ip, lsr #16
	str	ip, [sp, #12]
	ldr	ip, [sp, #108]
	orr	r3, r3, ip, asl #16
	str	r3, [sp, #16]
	ldr	ip, [sp, #116]
	ldr	r3, [sp, #24]
	orr	r3, r3, ip, asl #16
	str	r3, [sp, #24]
	ldr	ip, [sp, #60]
	ldr	r3, [sp, #124]
	orr	r9, r9, ip, asl #16
	orr	fp, fp, r3, asl #16
	ldr	ip, [sp, #76]
	ldr	r3, [sp, #68]
	orr	r8, r8, ip, asl #16
	orr	sl, sl, r3, asl #16
	ldr	ip, [sp, #44]
	ldr	r3, [sp, #36]
	orr	r6, r6, ip, asl #16
	orr	r7, r7, r3, asl #16
	ldr	ip, [sp, #84]
	ldr	r3, [sp, #52]
	orr	r4, r4, ip, asl #16
	orr	r5, r5, r3, asl #16
	ldr	ip, [sp, #92]
	ldr	r3, [sp, #128]
	str	fp, [r0, #56]
	orr	r3, r3, ip, asl #16
	str	r3, [sp, #128]
	ldr	ip, [sp, #100]
	ldr	r3, [sp, #12]
	str	r9, [r0, #60]
	orr	r3, r3, ip, asl #16
	str	r3, [sp, #12]
	ldr	ip, [sp, #24]
	ldr	r3, [sp, #16]
	str	ip, [r0, #52]
	str	r3, [r0, #48]
	str	sl, [r0, #64]
	str	r8, [r0, #68]
	str	r7, [r0, #72]
	str	r6, [r0, #76]
	str	r5, [r0, #80]
	str	r4, [r0, #84]
	ldr	r8, [r1, #96]
	ldr	fp, [r2, #96]
	ldr	r7, [r2, #100]
	smull	sl, fp, fp, r8
	ldr	r6, [r1, #100]
	ldr	r4, [sp, #12]
	ldr	r3, [sp, #128]
	strd	sl, [sp, #16]
	smull	sl, fp, r7, r6
	ldr	r5, [r2, #104]
	str	r4, [r0, #92]
	ldr	r4, [r1, #104]
	ldr	ip, [r2, #108]
	str	r3, [r0, #88]
	ldr	r3, [r1, #108]
	smull	r6, r7, r5, r4
	ldr	r9, [r2, #112]
	ldr	r5, [r1, #112]
	strd	sl, [sp, #24]
	smull	sl, fp, ip, r3
	smull	r4, r5, r9, r5
	strd	sl, [sp, #112]
	ldr	fp, [r2, #120]
	ldr	sl, [r1, #120]
	strd	r6, [sp, #104]
	strd	r4, [sp, #120]
	ldr	r7, [r2, #116]
	ldr	r6, [r1, #116]
	ldr	r5, [r2, #124]
	ldr	r4, [r1, #124]
	smull	sl, fp, fp, sl
	smull	r6, r7, r7, r6
	smull	r4, r5, r5, r4
	ldr	r9, [sp, #104]
	strd	sl, [sp, #64]
	strd	r6, [sp, #56]
	strd	r4, [sp, #72]
	ldr	ip, [sp, #120]
	ldr	r5, [sp, #16]
	mov	r7, r9, lsr #16
	ldr	r9, [sp, #64]
	ldr	r6, [sp, #24]
	ldr	fp, [sp, #112]
	mov	sl, r5, lsr #16
	mov	r5, ip, lsr #16
	mov	ip, r9, lsr #16
	ldr	r9, [sp, #132]
	ldr	r3, [sp, #56]
	mov	r8, r6, lsr #16
	mov	r6, fp, lsr #16
	ldr	fp, [sp, #72]
	add	r9, r9, #128
	str	r9, [sp, #132]
	mov	r4, r3, lsr #16
	mov	r3, fp, lsr #16
	ldr	fp, [sp, #20]
	ldr	r9, [sp, #28]
	orr	sl, sl, fp, asl #16
	ldr	fp, [sp, #108]
	orr	r8, r8, r9, asl #16
	orr	r7, r7, fp, asl #16
	ldr	r9, [sp, #116]
	ldr	fp, [sp, #124]
	orr	r6, r6, r9, asl #16
	orr	r5, r5, fp, asl #16
	ldr	r9, [sp, #60]
	ldr	fp, [sp, #68]
	orr	r4, r4, r9, asl #16
	orr	ip, ip, fp, asl #16
	ldr	r9, [sp, #76]
	ldr	fp, [sp, #132]
	orr	r3, r3, r9, asl #16
	cmp	fp, #7168
	str	sl, [r0, #96]
	str	r8, [r0, #100]
	str	r7, [r0, #104]
	str	r6, [r0, #108]
	str	r5, [r0, #112]
	str	r4, [r0, #116]
	str	ip, [r0, #120]
	str	r3, [r0, #124]
	add	r2, r2, #128
	add	r1, r1, #128
	add	r0, r0, #128
	bne	.L68
	ldr	ip, [sp, #136]
	ldr	r2, [sp, #140]
	add	ip, ip, #1
	cmp	ip, r2
	str	ip, [sp, #136]
	bne	.L69
.L65:
	add	sp, sp, #144
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L73:
	.align	2
.L72:
	.word	xval1
	.word	xval2
	.word	xresult
	.size	bench_fixed_mul, .-bench_fixed_mul
	.align	2
	.global	bench_i32_mul
	.type	bench_i32_mul, %function
bench_i32_mul:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	cmp	r0, #0
	sub	sp, sp, #32
	movne	r2, #0
	str	r0, [sp, #28]
	strne	r2, [sp, #24]
	beq	.L74
.L78:
	ldr	r1, .L81
	ldr	r2, .L81+4
	ldr	r3, .L81+8
	mov	r0, #0
.L77:
	ldr	r4, .L81+4
	ldr	r5, .L81
	ldr	r6, [r0, r4]
	ldr	r9, [r0, r5]
	ldr	ip, [r2, #12]
	ldr	r5, [r2, #4]
	ldr	sl, [r1, #4]
	ldr	r7, [r1, #12]
	ldr	fp, [r1, #16]
	ldr	r8, [r1, #8]
	mul	r9, r9, r6
	mul	sl, sl, r5
	ldr	r6, [r2, #8]
	ldr	r5, [r2, #20]
	mul	r7, r7, ip
	ldr	r4, [r1, #20]
	ldr	ip, [r2, #16]
	mul	r8, r8, r6
	mul	r4, r4, r5
	mul	r6, fp, ip
	ldr	ip, [r2, #24]
	ldr	fp, [r1, #24]
	ldr	r5, [r2, #28]
	mul	fp, fp, ip
	str	r4, [sp, #8]
	ldr	r4, [r1, #28]
	ldr	ip, [r1, #32]
	str	fp, [sp, #4]
	mul	fp, r4, r5
	ldr	r4, [r2, #32]
	ldr	r5, [r1, #36]
	mul	ip, ip, r4
	str	ip, [sp, #12]
	ldr	ip, [r2, #36]
	ldr	r4, [r1, #40]
	mul	r5, r5, ip
	str	r5, [sp, #16]
	ldr	r5, [r2, #40]
	mul	r4, r4, r5
	ldr	r5, [r2, #44]
	str	r4, [sp, #20]
	ldr	r4, [r1, #44]
	mul	ip, r4, r5
	ldr	r4, .L81+8
	str	r9, [r0, r4]
	str	sl, [r3, #4]
	str	r8, [r3, #8]
	str	r7, [r3, #12]
	str	r6, [r3, #16]
	ldr	r5, [sp, #8]
	ldr	r6, [sp, #4]
	str	r5, [r3, #20]
	str	fp, [r3, #28]
	ldr	r5, [r2, #52]
	ldr	r8, [sp, #12]
	ldr	r9, [sp, #16]
	ldr	fp, [sp, #20]
	ldr	sl, [r1, #52]
	ldr	r4, [r2, #56]
	str	r6, [r3, #24]
	str	r8, [r3, #32]
	ldr	r6, [r2, #48]
	str	r9, [r3, #36]
	str	fp, [r3, #40]
	ldr	r9, [r1, #48]
	ldr	fp, [r1, #64]
	ldr	r8, [r1, #56]
	mul	sl, sl, r5
	ldr	r5, [r2, #64]
	str	ip, [r3, #44]
	ldr	r7, [r1, #60]
	ldr	ip, [r2, #60]
	mul	r9, r9, r6
	mul	r8, r8, r4
	mul	r6, fp, r5
	ldr	r4, [r1, #72]
	ldr	r5, [r2, #72]
	mul	r7, r7, ip
	ldr	fp, [r1, #68]
	ldr	ip, [r2, #68]
	mul	r4, r4, r5
	mul	fp, fp, ip
	str	r4, [r3, #72]
	ldr	ip, [r1, #76]
	ldr	r4, [r2, #76]
	str	fp, [r3, #68]
	ldr	r5, [r1, #80]
	mul	fp, ip, r4
	ldr	ip, [r2, #80]
	ldr	r4, [r1, #84]
	mul	r5, r5, ip
	str	r5, [r3, #80]
	ldr	r5, [r2, #84]
	add	r0, r0, #128
	mul	r4, r4, r5
	str	r4, [r3, #84]
	ldr	r4, [r2, #88]
	ldr	ip, [r1, #88]
	ldr	r5, [r1, #92]
	mul	ip, ip, r4
	ldr	r4, [r2, #92]
	str	ip, [r3, #88]
	mul	ip, r5, r4
	str	r9, [r3, #48]
	str	sl, [r3, #52]
	ldr	r9, [r1, #96]
	str	r8, [r3, #56]
	str	r7, [r3, #60]
	ldr	r8, [r1, #100]
	str	ip, [r3, #92]
	ldr	sl, [r2, #96]
	ldr	ip, [r2, #108]
	ldr	r7, [r2, #100]
	ldr	r4, [r1, #108]
	str	r6, [r3, #64]
	str	fp, [r3, #76]
	ldr	r6, [r1, #104]
	ldr	fp, [r1, #112]
	mul	r4, r4, ip
	mul	sl, r9, sl
	mul	r7, r8, r7
	ldr	r9, [r2, #112]
	ldr	r8, [r2, #104]
	ldr	ip, [r1, #116]
	mul	r5, r6, r8
	mul	fp, fp, r9
	ldr	r6, [r2, #116]
	ldr	r8, [r1, #120]
	ldr	r9, [r2, #120]
	str	r4, [r3, #108]
	mul	r4, ip, r6
	mul	r6, r8, r9
	ldr	ip, [r1, #124]
	ldr	r9, [r2, #124]
	cmp	r0, #7168
	mul	r8, ip, r9
	str	sl, [r3, #96]
	str	r7, [r3, #100]
	str	r5, [r3, #104]
	str	fp, [r3, #112]
	add	r1, r1, #128
	str	r4, [r3, #116]
	add	r2, r2, #128
	str	r6, [r3, #120]
	str	r8, [r3, #124]
	add	r3, r3, #128
	bne	.L77
	ldr	fp, [sp, #24]
	ldr	ip, [sp, #28]
	add	fp, fp, #1
	cmp	fp, ip
	str	fp, [sp, #24]
	bne	.L78
.L74:
	add	sp, sp, #32
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L82:
	.align	2
.L81:
	.word	i32val1
	.word	i32val2
	.word	i32result
	.size	bench_i32_mul, .-bench_i32_mul
	.align	2
	.global	bench_i64_mul
	.type	bench_i64_mul, %function
bench_i64_mul:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	movs	r0, r0, asl #1
	sub	sp, sp, #104
	movne	fp, #0
	str	r0, [sp, #100]
	strne	fp, [sp, #96]
	beq	.L83
.L87:
	mov	r2, #0
	ldr	r1, .L90
	ldr	r0, .L90+4
	ldr	ip, .L90+8
	str	r2, [sp, #56]
.L86:
	ldr	r2, [sp, #56]
	ldr	r3, .L90
	ldr	r5, [r1, #20]
	add	r7, r2, r3
	ldr	r3, [r0, #16]
	ldr	sl, [r1, #28]
	mul	r5, r3, r5
	ldr	r3, [r0, #24]
	ldr	r4, .L90+4
	mul	sl, r3, sl
	ldr	r9, [r2, r4]
	str	sl, [sp, #68]
	ldr	r4, [r1, #36]
	ldr	sl, [r0, #32]
	ldr	fp, [r1, #52]
	mul	r4, sl, r4
	str	r4, [sp, #76]
	ldr	r4, [r0, #48]
	ldr	r3, [r0, #40]
	ldr	r8, [r1, #44]
	mul	fp, r4, fp
	ldr	sl, [sp, #56]
	mul	r8, r3, r8
	ldr	r3, .L90
	str	fp, [sp, #92]
	ldr	r4, [sl, r3]
	ldr	fp, .L90+4
	ldr	r2, [r0, #8]
	ldr	r6, [r1, #12]
	ldr	r7, [r7, #4]
	str	r8, [sp, #84]
	add	r8, sl, fp
	umull	sl, fp, r9, r4
	mul	r6, r2, r6
	mul	r7, r9, r7
	ldr	r3, [r1, #8]
	ldr	r8, [r8, #4]
	strd	sl, [sp, #40]
	ldr	fp, [r0, #12]
	mla	r7, r4, r8, r7
	mla	r6, r3, fp, r6
	str	r7, [sp, #60]
	str	r6, [sp, #32]
	umull	r6, r7, r2, r3
	ldr	r8, [r1, #16]
	strd	r6, [sp, #8]
	ldr	r7, [r0, #20]
	ldr	fp, [r0, #16]
	mla	r5, r8, r7, r5
	ldr	r2, [r1, #24]
	umull	sl, fp, fp, r8
	str	r5, [sp, #52]
	ldr	r5, [r0, #24]
	strd	sl, [sp, #24]
	umull	r4, r5, r5, r2
	ldr	fp, [r0, #28]
	ldr	r3, [sp, #68]
	strd	r4, [sp]
	mla	r7, r2, fp, r3
	ldr	r6, [r1, #32]
	ldr	fp, [r0, #32]
	ldr	r5, [r0, #36]
	umull	sl, fp, fp, r6
	ldr	r8, [sp, #76]
	strd	sl, [sp, #16]
	mla	r4, r6, r5, r8
	ldr	r2, [r1, #40]
	ldr	fp, [r0, #44]
	ldr	r6, [r0, #40]
	ldr	r3, [sp, #84]
	ldr	r9, [r1, #48]
	mla	r5, r2, fp, r3
	ldr	r8, [r0, #52]
	umull	sl, fp, r6, r2
	ldr	r2, [sp, #92]
	add	fp, r5, fp
	mla	r6, r9, r8, r2
	ldr	r8, [r0, #48]
	ldr	r5, [sp, #56]
	umull	r2, r3, r8, r9
	ldr	r8, [sp, #44]
	ldr	r9, [sp, #60]
	add	r3, r6, r3
	add	r8, r9, r8
	str	r8, [sp, #44]
	ldr	r9, [sp, #32]
	ldr	r8, [sp, #12]
	add	r8, r9, r8
	str	r8, [sp, #12]
	ldr	r9, [sp, #52]
	ldr	r8, [sp, #28]
	add	r8, r9, r8
	ldr	r9, [sp, #4]
	str	r8, [sp, #28]
	add	r9, r7, r9
	ldr	r7, [sp, #20]
	str	r9, [sp, #4]
	add	r7, r4, r7
	ldr	r4, .L90+8
	ldrd	r8, [sp, #40]
	str	r7, [sp, #20]
	strd	r8, [r5, r4]
	ldrd	r6, [sp, #8]
	ldrd	r8, [sp, #24]
	strd	r6, [ip, #8]
	ldrd	r4, [sp]
	strd	r8, [ip, #16]
	strd	r4, [ip, #24]
	ldrd	r6, [sp, #16]
	strd	r2, [ip, #48]
	ldr	r8, [r1, #68]
	ldr	r2, [r0, #64]
	ldr	r5, [r1, #84]
	mul	r8, r2, r8
	ldr	r2, [r0, #80]
	ldr	r4, [r1, #92]
	mul	r5, r2, r5
	str	r5, [sp, #64]
	ldr	r5, [r0, #88]
	strd	r6, [ip, #32]
	mul	r4, r5, r4
	ldr	r7, [r0, #56]
	strd	sl, [ip, #40]
	ldr	sl, [r1, #60]
	ldr	fp, [r1, #108]
	mul	sl, r7, sl
	str	r4, [sp, #72]
	ldr	r4, [r0, #104]
	ldr	r5, [r1, #56]
	mul	fp, r4, fp
	ldr	r4, [r0, #60]
	ldr	r2, [r0, #96]
	mla	sl, r5, r4, sl
	ldr	r9, [r1, #100]
	ldr	r3, [r0, #72]
	ldr	r6, [r1, #76]
	mul	r9, r2, r9
	str	fp, [sp, #88]
	ldr	r2, [r1, #64]
	str	sl, [sp, #52]
	umull	sl, fp, r7, r5
	ldr	r5, [r0, #64]
	mul	r6, r3, r6
	umull	r4, r5, r5, r2
	ldr	r7, [r0, #76]
	strd	sl, [sp, #40]
	str	r9, [sp, #80]
	ldr	fp, [r0, #68]
	ldr	r9, [r1, #72]
	mla	sl, r2, fp, r8
	strd	r4, [sp, #8]
	mla	r8, r9, r7, r6
	umull	r4, r5, r3, r9
	ldr	r9, [r1, #80]
	ldr	r3, [r0, #80]
	ldr	r6, [r0, #84]
	umull	r2, r3, r3, r9
	ldr	fp, [sp, #64]
	strd	r4, [sp, #24]
	mla	r7, r9, r6, fp
	strd	r2, [sp]
	ldr	r5, [r1, #88]
	ldr	r3, [r0, #92]
	ldr	r6, [sp, #72]
	ldr	r9, [sp, #80]
	mla	r4, r5, r3, r6
	ldr	r3, [r0, #88]
	ldr	r6, [r1, #96]
	umull	r2, r3, r3, r5
	strd	r2, [sp, #16]
	ldr	r3, [r0, #100]
	ldr	fp, [sp, #88]
	mla	r5, r6, r3, r9
	ldr	r3, [r0, #96]
	ldr	r9, [r1, #104]
	umull	r2, r3, r3, r6
	strd	r2, [sp, #32]
	ldr	r3, [r0, #108]
	mla	r6, r9, r3, fp
	ldr	fp, [r0, #104]
	umull	r2, r3, fp, r9
	ldr	fp, [sp, #44]
	ldr	r9, [sp, #52]
	add	r3, r6, r3
	add	fp, r9, fp
	ldr	r9, [sp, #12]
	str	fp, [sp, #44]
	add	r9, sl, r9
	ldr	fp, [sp, #4]
	ldr	sl, [sp, #28]
	add	fp, r7, fp
	add	sl, r8, sl
	ldr	r7, [sp, #20]
	ldr	r8, [sp, #36]
	str	r9, [sp, #12]
	str	sl, [sp, #28]
	str	fp, [sp, #4]
	add	r7, r4, r7
	add	r8, r5, r8
	ldrd	sl, [sp, #40]
	ldrd	r4, [sp, #8]
	strd	sl, [ip, #56]
	strd	r4, [ip, #64]
	str	r7, [sp, #20]
	str	r8, [sp, #36]
	ldrd	r6, [sp, #24]
	ldrd	r8, [sp]
	strd	r6, [ip, #72]
	strd	r8, [ip, #80]
	ldrd	r4, [sp, #32]
	ldrd	sl, [sp, #16]
	strd	r2, [ip, #104]
	ldr	r8, [r1, #124]
	ldr	r2, [r0, #120]
	strd	r4, [ip, #96]
	mul	r8, r2, r8
	ldr	r5, [r1, #140]
	ldr	r2, [r0, #136]
	ldr	r4, [r1, #148]
	mul	r5, r2, r5
	str	r5, [sp, #64]
	ldr	r5, [r0, #144]
	ldr	r7, [r0, #112]
	mul	r4, r5, r4
	strd	sl, [ip, #88]
	ldr	sl, [r1, #116]
	ldr	fp, [r1, #164]
	mul	sl, r7, sl
	str	r4, [sp, #72]
	ldr	r4, [r0, #160]
	ldr	r5, [r1, #112]
	mul	fp, r4, fp
	ldr	r4, [r0, #116]
	ldr	r2, [r0, #152]
	mla	sl, r5, r4, sl
	ldr	r9, [r1, #156]
	str	fp, [sp, #88]
	mul	r9, r2, r9
	str	sl, [sp, #52]
	ldr	r2, [r1, #120]
	umull	sl, fp, r7, r5
	ldr	r5, [r0, #120]
	ldr	r3, [r0, #128]
	umull	r4, r5, r5, r2
	ldr	r6, [r1, #132]
	str	r9, [sp, #80]
	ldr	r9, [r1, #128]
	mul	r6, r3, r6
	strd	r4, [sp, #8]
	umull	r4, r5, r3, r9
	ldr	r7, [r0, #132]
	strd	sl, [sp, #40]
	ldr	fp, [r0, #124]
	strd	r4, [sp, #24]
	mla	sl, r2, fp, r8
	ldr	r3, [r0, #136]
	mla	r8, r9, r7, r6
	ldr	r9, [r1, #136]
	ldr	r6, [r0, #140]
	umull	r2, r3, r3, r9
	ldr	fp, [sp, #64]
	strd	r2, [sp]
	mla	r7, r9, r6, fp
	ldr	r5, [r1, #144]
	ldr	r3, [r0, #148]
	ldr	r6, [sp, #72]
	ldr	r9, [sp, #80]
	mla	r4, r5, r3, r6
	ldr	r3, [r0, #144]
	ldr	r6, [r1, #152]
	umull	r2, r3, r3, r5
	strd	r2, [sp, #16]
	ldr	r3, [r0, #156]
	ldr	fp, [sp, #88]
	mla	r5, r6, r3, r9
	ldr	r3, [r0, #152]
	ldr	r9, [r1, #160]
	umull	r2, r3, r3, r6
	strd	r2, [sp, #32]
	ldr	r3, [r0, #164]
	mla	r6, r9, r3, fp
	ldr	fp, [r0, #160]
	umull	r2, r3, fp, r9
	ldr	fp, [sp, #44]
	ldr	r9, [sp, #52]
	add	r3, r6, r3
	add	fp, r9, fp
	ldr	r9, [sp, #12]
	str	fp, [sp, #44]
	add	r9, sl, r9
	ldr	fp, [sp, #4]
	ldr	sl, [sp, #28]
	add	fp, r7, fp
	add	sl, r8, sl
	ldr	r7, [sp, #20]
	ldr	r8, [sp, #36]
	add	r7, r4, r7
	add	r8, r5, r8
	str	r9, [sp, #12]
	str	sl, [sp, #28]
	str	fp, [sp, #4]
	str	r7, [sp, #20]
	str	r8, [sp, #36]
	ldrd	sl, [sp, #40]
	strd	sl, [ip, #112]
	ldrd	r8, [sp]
	ldrd	r4, [sp, #8]
	strd	r8, [ip, #136]
	ldrd	r6, [sp, #24]
	ldrd	sl, [sp, #16]
	strd	r2, [ip, #160]
	ldr	r8, [r1, #180]
	ldr	r2, [r0, #176]
	strd	r4, [ip, #120]
	ldrd	r4, [sp, #32]
	mul	r8, r2, r8
	strd	r4, [ip, #152]
	ldr	r2, [r0, #192]
	ldr	r5, [r1, #196]
	ldr	r4, [r1, #204]
	mul	r5, r2, r5
	str	r5, [sp, #64]
	ldr	r5, [r0, #200]
	strd	r6, [ip, #128]
	mul	r4, r5, r4
	ldr	r7, [r0, #168]
	strd	sl, [ip, #144]
	ldr	sl, [r1, #172]
	ldr	fp, [r1, #220]
	mul	sl, r7, sl
	str	r4, [sp, #72]
	ldr	r4, [r0, #216]
	ldr	r5, [r1, #168]
	mul	fp, r4, fp
	ldr	r4, [r0, #172]
	ldr	r2, [r0, #208]
	mla	sl, r5, r4, sl
	ldr	r9, [r1, #212]
	str	fp, [sp, #88]
	mul	r9, r2, r9
	str	sl, [sp, #52]
	umull	sl, fp, r7, r5
	ldr	r3, [r0, #184]
	ldr	r2, [r1, #176]
	ldr	r6, [r1, #188]
	str	r9, [sp, #80]
	strd	sl, [sp, #40]
	ldr	r5, [r0, #176]
	mul	r6, r3, r6
	umull	r4, r5, r5, r2
	ldr	r9, [r1, #184]
	ldr	fp, [r0, #180]
	ldr	r7, [r0, #188]
	mla	sl, r2, fp, r8
	strd	r4, [sp, #8]
	mla	r8, r9, r7, r6
	umull	r4, r5, r3, r9
	ldr	r9, [r1, #192]
	ldr	r3, [r0, #192]
	ldr	r6, [r0, #196]
	umull	r2, r3, r3, r9
	ldr	fp, [sp, #64]
	strd	r4, [sp, #24]
	mla	r7, r9, r6, fp
	ldr	r5, [r1, #200]
	strd	r2, [sp]
	ldr	r6, [sp, #72]
	ldr	r3, [r0, #204]
	ldr	r9, [sp, #80]
	mla	r4, r5, r3, r6
	ldr	r3, [r0, #200]
	ldr	r6, [r1, #208]
	umull	r2, r3, r3, r5
	strd	r2, [sp, #16]
	ldr	r3, [r0, #212]
	ldr	fp, [sp, #88]
	mla	r5, r6, r3, r9
	ldr	r3, [r0, #208]
	ldr	r9, [r1, #216]
	umull	r2, r3, r3, r6
	strd	r2, [sp, #32]
	ldr	r3, [r0, #220]
	mla	r6, r9, r3, fp
	ldr	fp, [r0, #216]
	umull	r2, r3, fp, r9
	ldr	fp, [sp, #44]
	ldr	r9, [sp, #52]
	add	r3, r6, r3
	add	fp, r9, fp
	ldr	r9, [sp, #12]
	str	fp, [sp, #44]
	add	r9, sl, r9
	ldr	fp, [sp, #4]
	ldr	sl, [sp, #28]
	add	fp, r7, fp
	add	sl, r8, sl
	str	r9, [sp, #12]
	str	sl, [sp, #28]
	str	fp, [sp, #4]
	ldr	r7, [sp, #20]
	ldr	r8, [sp, #36]
	add	r7, r4, r7
	add	r8, r5, r8
	str	r7, [sp, #20]
	str	r8, [sp, #36]
	ldrd	r6, [sp, #24]
	ldrd	r8, [sp]
	strd	r6, [ip, #184]
	ldrd	r4, [sp, #8]
	ldrd	sl, [sp, #40]
	strd	r8, [ip, #192]
	ldr	r6, [r0, #232]
	ldr	r8, [r1, #236]
	strd	r4, [ip, #176]
	ldrd	r4, [sp, #32]
	mul	r8, r6, r8
	strd	r4, [ip, #208]
	str	r8, [sp, #0]
	ldr	r5, [r1, #252]
	ldr	r8, [r0, #248]
	ldr	r7, [r0, #224]
	mul	r5, r8, r5
	strd	sl, [ip, #168]
	ldrd	sl, [sp, #16]
	strd	sl, [ip, #200]
	ldr	sl, [r1, #228]
	str	r5, [sp, #52]
	mul	sl, r7, sl
	ldr	r5, [r1, #224]
	strd	r2, [ip, #216]
	umull	r8, r9, r7, r5
	ldr	r2, [r1, #232]
	ldr	r6, [r0, #228]
	ldr	r7, [r0, #232]
	ldr	r3, [r0, #240]
	mla	sl, r5, r6, sl
	ldr	r4, [r1, #244]
	umull	r6, r7, r7, r2
	strd	r8, [sp, #40]
	ldr	r5, [sp, #0]
	ldr	r9, [r0, #236]
	mul	r4, r3, r4
	ldr	fp, [r1, #240]
	mla	r8, r2, r9, r5
	strd	r6, [sp, #8]
	ldr	r9, [r0, #244]
	umull	r6, r7, r3, fp
	mla	r4, fp, r9, r4
	ldr	r2, [r1, #248]
	ldr	fp, [r0, #252]
	ldr	r9, [r0, #248]
	ldr	r3, [sp, #52]
	add	r7, r4, r7
	mla	r5, r2, fp, r3
	umull	r2, r3, r9, r2
	ldr	r9, [sp, #44]
	ldr	fp, [sp, #56]
	add	r9, sl, r9
	ldr	sl, [sp, #12]
	add	fp, fp, #256
	add	sl, r8, sl
	str	r9, [sp, #44]
	add	r3, r5, r3
	str	sl, [sp, #12]
	cmp	fp, #7168
	ldrd	r4, [sp, #40]
	ldrd	r8, [sp, #8]
	strd	r4, [ip, #224]
	strd	r8, [ip, #232]
	strd	r6, [ip, #240]
	strd	r2, [ip, #248]
	str	fp, [sp, #56]
	add	r1, r1, #256
	add	r0, r0, #256
	add	ip, ip, #256
	bne	.L86
	ldr	r9, [sp, #96]
	ldr	sl, [sp, #100]
	add	r9, r9, #1
	cmp	r9, sl
	str	r9, [sp, #96]
	bne	.L87
.L83:
	add	sp, sp, #104
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L91:
	.align	2
.L90:
	.word	i64val1
	.word	i64val2
	.word	i64result
	.size	bench_i64_mul, .-bench_i64_mul
	.align	2
	.global	bench_float_div
	.type	bench_float_div, %function
bench_float_div:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	cmp	r0, #0
	fstmfdd	sp!, {d8, d9, d10, d11}
	movne	r4, #0
	beq	.L92
.L96:
	ldr	r1, .L99
	ldr	r2, .L99+4
	ldr	r3, .L99+8
	mov	ip, #0
.L95:
	flds	s23, [r1, #0]
	flds	s22, [r1, #4]
	flds	s21, [r1, #8]
	flds	s20, [r1, #12]
	flds	s19, [r1, #16]
	flds	s18, [r1, #20]
	flds	s17, [r1, #24]
	flds	s16, [r1, #28]
	flds	s0, [r1, #32]
	flds	s1, [r1, #36]
	flds	s2, [r1, #40]
	flds	s3, [r1, #44]
	flds	s4, [r2, #0]
	flds	s5, [r2, #4]
	flds	s6, [r2, #8]
	flds	s7, [r2, #12]
	flds	s8, [r2, #16]
	flds	s9, [r2, #20]
	flds	s10, [r2, #24]
	flds	s11, [r2, #28]
	flds	s12, [r2, #32]
	flds	s13, [r2, #36]
	flds	s14, [r2, #40]
	flds	s15, [r2, #44]
	fdivs	s4, s23, s4
	fdivs	s5, s22, s5
	fdivs	s6, s21, s6
	fdivs	s7, s20, s7
	fdivs	s8, s19, s8
	fdivs	s9, s18, s9
	fdivs	s10, s17, s10
	fdivs	s11, s16, s11
	fdivs	s12, s0, s12
	fdivs	s13, s1, s13
	fdivs	s14, s2, s14
	fdivs	s15, s3, s15
	fsts	s4, [r3, #0]
	fsts	s5, [r3, #4]
	fsts	s6, [r3, #8]
	fsts	s7, [r3, #12]
	fsts	s8, [r3, #16]
	fsts	s9, [r3, #20]
	fsts	s10, [r3, #24]
	fsts	s11, [r3, #28]
	fsts	s12, [r3, #32]
	fsts	s13, [r3, #36]
	flds	s0, [r1, #80]
	flds	s1, [r1, #84]
	flds	s2, [r1, #88]
	flds	s3, [r1, #92]
	fsts	s14, [r3, #40]
	fsts	s15, [r3, #44]
	flds	s23, [r1, #48]
	flds	s4, [r2, #48]
	flds	s22, [r1, #52]
	flds	s5, [r2, #52]
	flds	s21, [r1, #56]
	flds	s6, [r2, #56]
	flds	s20, [r1, #60]
	flds	s7, [r2, #60]
	flds	s19, [r1, #64]
	flds	s8, [r2, #64]
	flds	s18, [r1, #68]
	flds	s9, [r2, #68]
	flds	s17, [r1, #72]
	flds	s10, [r2, #72]
	flds	s16, [r1, #76]
	flds	s11, [r2, #76]
	flds	s12, [r2, #80]
	flds	s13, [r2, #84]
	flds	s14, [r2, #88]
	flds	s15, [r2, #92]
	fdivs	s12, s0, s12
	fdivs	s13, s1, s13
	fdivs	s14, s2, s14
	fdivs	s15, s3, s15
	fdivs	s4, s23, s4
	fdivs	s5, s22, s5
	fdivs	s6, s21, s6
	fdivs	s7, s20, s7
	fdivs	s8, s19, s8
	fdivs	s9, s18, s9
	fdivs	s10, s17, s10
	fdivs	s11, s16, s11
	fsts	s4, [r3, #48]
	fsts	s5, [r3, #52]
	fsts	s6, [r3, #56]
	fsts	s7, [r3, #60]
	fsts	s8, [r3, #64]
	fsts	s9, [r3, #68]
	fsts	s10, [r3, #72]
	fsts	s11, [r3, #76]
	fsts	s12, [r3, #80]
	fsts	s13, [r3, #84]
	fsts	s14, [r3, #88]
	fsts	s15, [r3, #92]
	flds	s0, [r1, #96]
	flds	s8, [r2, #96]
	flds	s1, [r1, #100]
	flds	s9, [r2, #100]
	flds	s2, [r1, #104]
	flds	s10, [r2, #104]
	flds	s3, [r1, #108]
	flds	s11, [r2, #108]
	flds	s4, [r1, #112]
	flds	s12, [r2, #112]
	flds	s5, [r1, #116]
	flds	s13, [r2, #116]
	flds	s6, [r1, #120]
	flds	s14, [r2, #120]
	flds	s7, [r1, #124]
	flds	s15, [r2, #124]
	add	ip, ip, #32
	fdivs	s8, s0, s8
	fdivs	s9, s1, s9
	fdivs	s10, s2, s10
	fdivs	s11, s3, s11
	fdivs	s12, s4, s12
	fdivs	s13, s5, s13
	fdivs	s14, s6, s14
	fdivs	s15, s7, s15
	cmp	ip, #1792
	fsts	s8, [r3, #96]
	fsts	s9, [r3, #100]
	fsts	s10, [r3, #104]
	fsts	s11, [r3, #108]
	fsts	s12, [r3, #112]
	fsts	s13, [r3, #116]
	fsts	s14, [r3, #120]
	fsts	s15, [r3, #124]
	add	r1, r1, #128
	add	r2, r2, #128
	add	r3, r3, #128
	bne	.L95
	add	r4, r4, #1
	cmp	r4, r0
	bne	.L96
.L92:
	fldmfdd	sp!, {d8, d9, d10, d11}
	ldmfd	sp!, {r4}
	bx	lr
.L100:
	.align	2
.L99:
	.word	fval1
	.word	fval2
	.word	fresult
	.size	bench_float_div, .-bench_float_div
	.align	2
	.global	bench_double_div
	.type	bench_double_div, %function
bench_double_div:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r6, r7}
	movs	r0, r0, asl #1
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	movne	r4, #0
	beq	.L101
.L105:
	ldr	r1, .L108
	ldr	r2, .L108+4
	ldr	r3, .L108+8
	mov	ip, #0
.L104:
	fldd	d7, [r1, #0]
	fldd	d6, [r2, #0]
	fldd	d5, [r1, #8]
	fldd	d4, [r2, #8]
	fldd	d3, [r1, #16]
	fldd	d2, [r2, #16]
	fldd	d1, [r1, #24]
	fldd	d0, [r2, #24]
	fldd	d12, [r1, #32]
	fldd	d13, [r2, #32]
	fldd	d14, [r1, #40]
	fldd	d15, [r2, #40]
	fdivd	d11, d7, d6
	fdivd	d10, d5, d4
	fdivd	d9, d3, d2
	fdivd	d8, d1, d0
	fldd	d6, [r1, #48]
	fdivd	d0, d12, d13
	fdivd	d1, d14, d15
	fldd	d7, [r2, #48]
	fldd	d12, [r1, #56]
	fdivd	d2, d6, d7
	fldd	d13, [r2, #56]
	fldd	d6, [r1, #64]
	fdivd	d3, d12, d13
	fldd	d7, [r2, #64]
	fldd	d12, [r1, #72]
	fdivd	d4, d6, d7
	fldd	d13, [r2, #72]
	fldd	d7, [r1, #80]
	fdivd	d5, d12, d13
	fldd	d12, [r2, #80]
	fldd	d13, [r1, #88]
	fdivd	d6, d7, d12
	fldd	d12, [r2, #88]
	fdivd	d7, d13, d12
	fstd	d11, [r3, #0]
	fstd	d10, [r3, #8]
	fstd	d9, [r3, #16]
	fstd	d8, [r3, #24]
	fstd	d0, [r3, #32]
	fstd	d1, [r3, #40]
	fstd	d2, [r3, #48]
	fstd	d3, [r3, #56]
	fstd	d4, [r3, #64]
	add	ip, ip, #32
	fstd	d5, [r3, #72]
	fldd	d5, [r1, #104]
	fldd	d4, [r2, #104]
	fldd	d3, [r1, #112]
	fldd	d2, [r2, #112]
	fldd	d1, [r1, #120]
	fldd	d0, [r2, #120]
	fldd	d12, [r1, #128]
	fldd	d13, [r2, #128]
	fldd	d14, [r1, #136]
	fldd	d15, [r2, #136]
	fdivd	d10, d5, d4
	fdivd	d9, d3, d2
	fdivd	d8, d1, d0
	fstd	d6, [r3, #80]
	fldd	d6, [r2, #96]
	fdivd	d0, d12, d13
	fdivd	d1, d14, d15
	fldd	d13, [r1, #144]
	fldd	d12, [r2, #152]
	fstd	d7, [r3, #88]
	fldd	d7, [r1, #96]
	fdivd	d11, d7, d6
	fldd	d6, [r2, #144]
	fldd	d7, [r1, #152]
	fdivd	d2, d13, d6
	fdivd	d3, d7, d12
	fldd	d13, [r1, #160]
	fldd	d6, [r2, #160]
	fldd	d7, [r1, #168]
	fdivd	d4, d13, d6
	fldd	d12, [r2, #168]
	fldd	d13, [r1, #176]
	fdivd	d5, d7, d12
	fldd	d7, [r2, #176]
	fldd	d12, [r1, #184]
	fdivd	d6, d13, d7
	fldd	d13, [r2, #184]
	fdivd	d7, d12, d13
	fstd	d11, [r3, #96]
	fstd	d10, [r3, #104]
	fstd	d9, [r3, #112]
	fstd	d8, [r3, #120]
	fstd	d0, [r3, #128]
	fstd	d1, [r3, #136]
	fstd	d2, [r3, #144]
	cmp	ip, #896
	fstd	d3, [r3, #152]
	fldd	d3, [r1, #208]
	fldd	d8, [r1, #216]
	fldd	d9, [r2, #216]
	fstd	d4, [r3, #160]
	fldd	d2, [r2, #208]
	fldd	d4, [r2, #200]
	fstd	d5, [r3, #168]
	fldd	d10, [r1, #224]
	fldd	d5, [r1, #200]
	fstd	d6, [r3, #176]
	fldd	d11, [r2, #224]
	fldd	d6, [r2, #192]
	fdivd	d1, d5, d4
	fstd	d7, [r3, #184]
	fldd	d12, [r1, #232]
	fldd	d7, [r1, #192]
	fldd	d13, [r2, #232]
	fdivd	d0, d7, d6
	fldd	d14, [r1, #240]
	fldd	d15, [r2, #240]
	fdivd	d2, d3, d2
	fdivd	d4, d10, d11
	fdivd	d3, d8, d9
	fdivd	d5, d12, d13
	fldd	d8, [r1, #248]
	fldd	d9, [r2, #248]
	fdivd	d6, d14, d15
	fdivd	d7, d8, d9
	fstd	d0, [r3, #192]
	fstd	d1, [r3, #200]
	fstd	d2, [r3, #208]
	fstd	d3, [r3, #216]
	fstd	d4, [r3, #224]
	fstd	d5, [r3, #232]
	fstd	d6, [r3, #240]
	fstd	d7, [r3, #248]
	add	r1, r1, #256
	add	r2, r2, #256
	add	r3, r3, #256
	bne	.L104
	add	r4, r4, #1
	cmp	r4, r0
	bne	.L105
.L101:
	fldmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	ldmfd	sp!, {r4, r6, r7}
	bx	lr
.L109:
	.align	2
.L108:
	.word	dval1
	.word	dval2
	.word	dresult
	.size	bench_double_div, .-bench_double_div
	.global	__aeabi_ldivmod
	.align	2
	.global	bench_fixed_div
	.type	bench_fixed_div, %function
bench_fixed_div:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #12
	str	r0, [sp, #4]
	beq	.L110
	ldr	r9, .L117
	ldr	r8, .L117+4
	ldr	sl, .L117+8
	mov	fp, #0
.L114:
	ldr	r6, .L117+4
	ldr	r5, .L117+8
	ldr	r4, .L117
	mov	r7, #0
.L113:
	ldr	ip, [r7, r8]
	ldr	r0, [r7, sl]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r2, r0
	mov	r3, r0, asr #31
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #4]
	ldr	r2, [r5, #4]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r9, r7]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #8]
	ldr	r2, [r5, #8]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #4]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #12]
	ldr	r2, [r5, #12]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #8]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #16]
	ldr	r2, [r5, #16]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #12]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #20]
	ldr	r2, [r5, #20]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #16]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #24]
	ldr	r2, [r5, #24]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #20]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #28]
	ldr	r2, [r5, #28]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #24]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #32]
	ldr	r2, [r5, #32]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #28]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #36]
	ldr	r2, [r5, #36]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #32]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #40]
	ldr	r2, [r5, #40]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #36]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	str	r0, [r4, #40]
	ldr	ip, [r6, #44]
	ldr	r2, [r5, #44]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	mov	r0, ip, asl #16
	orr	r1, r1, ip, lsr #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #48]
	ldr	r2, [r5, #48]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #44]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #52]
	ldr	r2, [r5, #52]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #48]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #56]
	ldr	r2, [r5, #56]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #52]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #60]
	ldr	r2, [r5, #60]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #56]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #64]
	ldr	r2, [r5, #64]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #60]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #68]
	ldr	r2, [r5, #68]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #64]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #72]
	ldr	r2, [r5, #72]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #68]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #76]
	ldr	r2, [r5, #76]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #72]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #80]
	ldr	r2, [r5, #80]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #76]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #84]
	ldr	r2, [r5, #84]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #80]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	str	r0, [r4, #84]
	ldr	ip, [r6, #88]
	ldr	r2, [r5, #88]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	mov	r0, ip, asl #16
	orr	r1, r1, ip, lsr #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #92]
	ldr	r2, [r5, #92]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #88]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #96]
	ldr	r2, [r5, #96]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #92]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #100]
	ldr	r2, [r5, #100]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #96]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #104]
	ldr	r2, [r5, #104]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #100]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #108]
	ldr	r2, [r5, #108]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #104]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #112]
	ldr	r2, [r5, #112]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #108]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #116]
	ldr	r2, [r5, #116]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #112]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	ip, [r6, #120]
	ldr	r2, [r5, #120]
	mov	r1, ip, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	str	r0, [r4, #116]
	orr	r1, r1, ip, lsr #16
	mov	r0, ip, asl #16
	bl	__aeabi_ldivmod
	ldr	r3, [r6, #124]
	ldr	r2, [r5, #124]
	mov	r1, r3, asr #31
	mov	r1, r1, asl #16
	str	r0, [r4, #120]
	orr	r1, r1, r3, lsr #16
	mov	r0, r3, asl #16
	mov	r3, r2, asr #31
	bl	__aeabi_ldivmod
	add	r7, r7, #128
	cmp	r7, #7168
	str	r0, [r4, #124]
	add	r6, r6, #128
	add	r5, r5, #128
	add	r4, r4, #128
	bne	.L113
	ldr	r3, [sp, #4]
	add	fp, fp, #1
	cmp	fp, r3
	bne	.L114
.L110:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L118:
	.align	2
.L117:
	.word	xresult
	.word	xval1
	.word	xval2
	.size	bench_fixed_div, .-bench_fixed_div
	.global	__aeabi_uidiv
	.align	2
	.global	bench_i32_div
	.type	bench_i32_div, %function
bench_i32_div:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #12
	str	r0, [sp, #4]
	beq	.L119
	ldr	r9, .L126
	ldr	sl, .L126+4
	ldr	r8, .L126+8
	mov	fp, #0
.L123:
	ldr	r6, .L126+4
	ldr	r5, .L126+8
	ldr	r4, .L126
	mov	r7, #0
.L122:
	ldr	r1, [r7, r8]
	ldr	r0, [r7, sl]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #4]
	str	r0, [r9, r7]
	ldr	r0, [r6, #4]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #8]
	str	r0, [r4, #4]
	ldr	r0, [r6, #8]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #12]
	str	r0, [r4, #8]
	ldr	r0, [r6, #12]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #16]
	str	r0, [r4, #12]
	ldr	r0, [r6, #16]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #20]
	str	r0, [r4, #16]
	ldr	r0, [r6, #20]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #24]
	str	r0, [r4, #20]
	ldr	r0, [r6, #24]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #28]
	str	r0, [r4, #24]
	ldr	r0, [r6, #28]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #32]
	str	r0, [r4, #28]
	ldr	r0, [r6, #32]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #36]
	str	r0, [r4, #32]
	ldr	r0, [r6, #36]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #40]
	str	r0, [r4, #36]
	ldr	r0, [r6, #40]
	bl	__aeabi_uidiv
	str	r0, [r4, #40]
	ldr	r1, [r5, #44]
	ldr	r0, [r6, #44]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #48]
	str	r0, [r4, #44]
	ldr	r0, [r6, #48]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #52]
	str	r0, [r4, #48]
	ldr	r0, [r6, #52]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #56]
	str	r0, [r4, #52]
	ldr	r0, [r6, #56]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #60]
	str	r0, [r4, #56]
	ldr	r0, [r6, #60]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #64]
	str	r0, [r4, #60]
	ldr	r0, [r6, #64]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #68]
	str	r0, [r4, #64]
	ldr	r0, [r6, #68]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #72]
	str	r0, [r4, #68]
	ldr	r0, [r6, #72]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #76]
	str	r0, [r4, #72]
	ldr	r0, [r6, #76]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #80]
	str	r0, [r4, #76]
	ldr	r0, [r6, #80]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #84]
	str	r0, [r4, #80]
	ldr	r0, [r6, #84]
	bl	__aeabi_uidiv
	str	r0, [r4, #84]
	ldr	r1, [r5, #88]
	ldr	r0, [r6, #88]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #92]
	str	r0, [r4, #88]
	ldr	r0, [r6, #92]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #96]
	str	r0, [r4, #92]
	ldr	r0, [r6, #96]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #100]
	str	r0, [r4, #96]
	ldr	r0, [r6, #100]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #104]
	str	r0, [r4, #100]
	ldr	r0, [r6, #104]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #108]
	str	r0, [r4, #104]
	ldr	r0, [r6, #108]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #112]
	str	r0, [r4, #108]
	ldr	r0, [r6, #112]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #116]
	str	r0, [r4, #112]
	ldr	r0, [r6, #116]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #120]
	str	r0, [r4, #116]
	ldr	r0, [r6, #120]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #124]
	str	r0, [r4, #120]
	ldr	r0, [r6, #124]
	bl	__aeabi_uidiv
	add	r7, r7, #128
	cmp	r7, #7168
	str	r0, [r4, #124]
	add	r6, r6, #128
	add	r5, r5, #128
	add	r4, r4, #128
	bne	.L122
	ldr	r3, [sp, #4]
	add	fp, fp, #1
	cmp	fp, r3
	bne	.L123
.L119:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L127:
	.align	2
.L126:
	.word	i32result
	.word	i32val1
	.word	i32val2
	.size	bench_i32_div, .-bench_i32_div
	.global	__aeabi_uldivmod
	.align	2
	.global	bench_i64_div
	.type	bench_i64_div, %function
bench_i64_div:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r0, r0, asl #1
	sub	sp, sp, #12
	str	r0, [sp, #4]
	beq	.L128
	ldr	r8, .L135
	ldr	sl, .L135+4
	ldr	r9, .L135+8
	mov	fp, #0
.L132:
	ldr	r6, .L135+4
	ldr	r5, .L135+8
	ldr	r4, .L135
	mov	r7, #0
.L131:
	ldrd	r2, [r7, r9]
	ldrd	r0, [r7, sl]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #8]
	strd	r0, [r8, r7]
	ldrd	r0, [r6, #8]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #16]
	strd	r0, [r4, #8]
	ldrd	r0, [r6, #16]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #24]
	strd	r0, [r4, #16]
	ldrd	r0, [r6, #24]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #32]
	strd	r0, [r4, #24]
	ldrd	r0, [r6, #32]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #40]
	strd	r0, [r4, #32]
	ldrd	r0, [r6, #40]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #48]
	strd	r0, [r4, #40]
	ldrd	r0, [r6, #48]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #56]
	strd	r0, [r4, #48]
	ldrd	r0, [r6, #56]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #64]
	strd	r0, [r4, #56]
	ldrd	r0, [r6, #64]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #72]
	strd	r0, [r4, #64]
	ldrd	r0, [r6, #72]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #80]
	strd	r0, [r4, #72]
	ldrd	r0, [r6, #80]
	bl	__aeabi_uldivmod
	strd	r0, [r4, #80]
	ldrd	r2, [r5, #88]
	ldrd	r0, [r6, #88]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #96]
	strd	r0, [r4, #88]
	ldrd	r0, [r6, #96]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #104]
	strd	r0, [r4, #96]
	ldrd	r0, [r6, #104]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #112]
	strd	r0, [r4, #104]
	ldrd	r0, [r6, #112]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #120]
	strd	r0, [r4, #112]
	ldrd	r0, [r6, #120]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #128]
	strd	r0, [r4, #120]
	ldrd	r0, [r6, #128]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #136]
	strd	r0, [r4, #128]
	ldrd	r0, [r6, #136]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #144]
	strd	r0, [r4, #136]
	ldrd	r0, [r6, #144]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #152]
	strd	r0, [r4, #144]
	ldrd	r0, [r6, #152]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #160]
	strd	r0, [r4, #152]
	ldrd	r0, [r6, #160]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #168]
	strd	r0, [r4, #160]
	ldrd	r0, [r6, #168]
	bl	__aeabi_uldivmod
	strd	r0, [r4, #168]
	ldrd	r2, [r5, #176]
	ldrd	r0, [r6, #176]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #184]
	strd	r0, [r4, #176]
	ldrd	r0, [r6, #184]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #192]
	strd	r0, [r4, #184]
	ldrd	r0, [r6, #192]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #200]
	strd	r0, [r4, #192]
	ldrd	r0, [r6, #200]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #208]
	strd	r0, [r4, #200]
	ldrd	r0, [r6, #208]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #216]
	strd	r0, [r4, #208]
	ldrd	r0, [r6, #216]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #224]
	strd	r0, [r4, #216]
	ldrd	r0, [r6, #224]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #232]
	strd	r0, [r4, #224]
	ldrd	r0, [r6, #232]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #240]
	strd	r0, [r4, #232]
	ldrd	r0, [r6, #240]
	bl	__aeabi_uldivmod
	ldrd	r2, [r5, #248]
	strd	r0, [r4, #240]
	ldrd	r0, [r6, #248]
	bl	__aeabi_uldivmod
	add	r7, r7, #256
	cmp	r7, #7168
	strd	r0, [r4, #248]
	add	r6, r6, #256
	add	r5, r5, #256
	add	r4, r4, #256
	bne	.L131
	ldr	r3, [sp, #4]
	add	fp, fp, #1
	cmp	fp, r3
	bne	.L132
.L128:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L136:
	.align	2
.L135:
	.word	i64result
	.word	i64val1
	.word	i64val2
	.size	bench_i64_div, .-bench_i64_div
	.align	2
	.global	bench_quake_sqrt
	.type	bench_quake_sqrt, %function
bench_quake_sqrt:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	cmp	r0, #0
	sub	sp, sp, #48
	str	r0, [sp, #44]
	beq	.L137
	flds	s14, .L144
	flds	s15, .L144+4
	mov	r3, #0
	str	r3, [sp, #40]
.L141:
	mov	r4, #0
	ldr	r2, .L144+8
	ldr	r3, .L144+12
	str	r4, [sp, #32]
	b	.L145
.L146:
	.align	2
.L144:
	.word	1056964608
	.word	1069547520
	.word	fval1
	.word	fresult
.L145:
.L140:
	flds	s2, [r2, #4]
	flds	s1, [r2, #0]
	flds	s5, [r2, #16]
	fmrs	r1, s2	@ int
	flds	s3, [r2, #8]
	flds	s4, [r2, #12]
	flds	s8, [r2, #28]
	fmrs	r0, s1	@ int
	mov	sl, r1, asr #1
	fmrs	r1, s5	@ int
	flds	s9, [r2, #32]
	flds	s6, [r2, #20]
	flds	s7, [r2, #24]
	fmrs	r4, s3	@ int
	mov	r9, r0, asr #1
	mov	r6, r1, asr #1
	fmrs	r0, s4	@ int
	fmrs	r1, s8	@ int
	flds	s0, [r2, #44]
	flds	s12, [r2, #48]
	flds	s10, [r2, #36]
	mov	r8, r4, asr #1
	mov	r7, r0, asr #1
	fmrs	r4, s6	@ int
	fmrs	r0, s7	@ int
	mov	ip, r1, asr #1
	fmrs	r1, s9	@ int
	flds	s16, [r2, #56]
	fmuls	s20, s0, s14
	fmuls	s19, s12, s14
	flds	s0, [r2, #60]
	flds	s12, [r2, #64]
	flds	s11, [r2, #40]
	mov	r5, r4, asr #1
	mov	r4, r0, asr #1
	mov	r0, r1, asr #1
	fmrs	r1, s10	@ int
	rsb	r9, r9, #1593835520
	add	r9, r9, #3620864
	add	r9, r9, #6592
	add	r9, r9, #31
	flds	s13, [r2, #52]
	fmuls	s31, s1, s14
	fmuls	s17, s16, s14
	fmuls	s16, s0, s14
	fmuls	s0, s12, s14
	fmsr	s12, r9
	mov	fp, r1, asr #1
	fmrs	r1, s11	@ int
	rsb	sl, sl, #1593835520
	rsb	r8, r8, #1593835520
	add	sl, sl, #3620864
	add	r8, r8, #3620864
	add	sl, sl, #6592
	add	r8, r8, #6592
	add	sl, sl, #31
	add	r8, r8, #31
	fmuls	s31, s31, s12
	fmuls	s30, s2, s14
	fmsr	s12, r8
	fmuls	s29, s3, s14
	fmuls	s18, s13, s14
	fmsr	s13, sl
	mov	r1, r1, asr #1
	str	r1, [sp, #20]
	ldr	r1, [r2, #44]
	rsb	r7, r7, #1593835520
	mov	r1, r1, asr #1
	str	r1, [sp, #8]
	ldr	r1, [r2, #48]
	rsb	r6, r6, #1593835520
	mov	r1, r1, asr #1
	str	r1, [sp, #12]
	ldr	r1, [r2, #52]
	add	r7, r7, #3620864
	mov	r1, r1, asr #1
	add	r6, r6, #3620864
	str	r1, [sp, #16]
	add	r7, r7, #6592
	ldr	r1, [r2, #56]
	add	r6, r6, #6592
	add	r7, r7, #31
	add	r6, r6, #31
	fmuls	s30, s30, s13
	fmuls	s29, s29, s12
	fmsr	s13, r7
	fmsr	s12, r6
	fmuls	s28, s4, s14
	fmuls	s27, s5, s14
	mov	r1, r1, asr #1
	str	r1, [sp, #24]
	ldr	r1, [r2, #60]
	rsb	r0, r0, #1593835520
	mov	r1, r1, asr #1
	str	r1, [sp, #28]
	ldr	r1, [r2, #64]
	str	r0, [sp, #4]
	mov	r1, r1, asr #1
	ldr	r0, [sp, #20]
	str	r1, [sp, #36]
	ldr	r1, [sp, #8]
	rsb	r0, r0, #1593835520
	rsb	r1, r1, #1593835520
	str	r0, [sp, #20]
	str	r1, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #16]
	rsb	r0, r0, #1593835520
	str	r0, [sp, #12]
	ldr	r0, [sp, #24]
	rsb	r1, r1, #1593835520
	str	r1, [sp, #16]
	rsb	r0, r0, #1593835520
	ldr	r1, [sp, #28]
	str	r0, [sp, #24]
	ldr	r0, [sp, #36]
	rsb	r1, r1, #1593835520
	str	r1, [sp, #28]
	rsb	r1, r0, #1593835520
	ldr	r0, [sp, #4]
	rsb	r5, r5, #1593835520
	add	r0, r0, #3620864
	str	r0, [sp, #4]
	ldr	r0, [sp, #20]
	rsb	r4, r4, #1593835520
	add	r0, r0, #3620864
	str	r0, [sp, #20]
	ldr	r0, [sp, #8]
	add	r5, r5, #3620864
	add	r0, r0, #3620864
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	add	r4, r4, #3620864
	add	r0, r0, #3620864
	str	r0, [sp, #12]
	add	r5, r5, #6592
	ldr	r0, [sp, #16]
	add	r4, r4, #6592
	add	r5, r5, #31
	add	r4, r4, #31
	fmuls	s28, s28, s13
	fmuls	s27, s27, s12
	fmsr	s13, r5
	fmsr	s12, r4
	fmuls	s26, s6, s14
	fmuls	s25, s7, s14
	add	r0, r0, #3620864
	str	r0, [sp, #16]
	ldr	r0, [sp, #24]
	rsb	ip, ip, #1593835520
	add	r0, r0, #3620864
	str	r0, [sp, #24]
	ldr	r0, [sp, #28]
	add	ip, ip, #3620864
	add	r0, r0, #3620864
	str	r0, [sp, #28]
	ldr	r0, [sp, #4]
	add	ip, ip, #6592
	add	r0, r0, #6592
	str	r0, [sp, #4]
	ldr	r0, [sp, #20]
	add	ip, ip, #31
	add	r0, r0, #6592
	str	r0, [sp, #20]
	ldr	r0, [sp, #8]
	fmuls	s26, s26, s13
	add	r0, r0, #6592
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	fmuls	s25, s25, s12
	add	r0, r0, #6592
	str	r0, [sp, #12]
	ldr	r0, [sp, #16]
	fmsr	s13, ip
	add	r0, r0, #6592
	str	r0, [sp, #16]
	ldr	r0, [sp, #24]
	fmuls	s24, s8, s14
	add	r0, r0, #6592
	str	r0, [sp, #24]
	ldr	r0, [sp, #28]
	fmuls	s23, s9, s14
	add	r0, r0, #6592
	str	r0, [sp, #28]
	ldr	r0, [sp, #4]
	rsb	fp, fp, #1593835520
	add	r0, r0, #31
	str	r0, [sp, #4]
	flds	s12, [sp, #4]
	ldr	r0, [sp, #20]
	add	fp, fp, #3620864
	add	r0, r0, #31
	add	fp, fp, #6592
	str	r0, [sp, #20]
	add	fp, fp, #31
	fmuls	s24, s24, s13
	fmuls	s23, s23, s12
	fmsr	s13, fp
	flds	s12, [sp, #20]
	fmuls	s22, s10, s14
	fmuls	s21, s11, s14
	ldr	r0, [sp, #8]
	fmuls	s22, s22, s13
	add	r0, r0, #31
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	fmuls	s21, s21, s12
	add	r0, r0, #31
	str	r0, [sp, #12]
	flds	s13, [sp, #8]
	flds	s12, [sp, #12]
	ldr	r0, [sp, #16]
	fmuls	s20, s20, s13
	add	r0, r0, #31
	str	r0, [sp, #16]
	ldr	r0, [sp, #24]
	fmuls	s19, s19, s12
	add	r0, r0, #31
	str	r0, [sp, #24]
	flds	s13, [sp, #16]
	flds	s12, [sp, #24]
	ldr	r0, [sp, #28]
	add	r1, r1, #3620864
	add	r0, r0, #31
	add	r1, r1, #6592
	str	r0, [sp, #28]
	add	r1, r1, #31
	fmuls	s18, s18, s13
	fmuls	s17, s17, s12
	flds	s13, [sp, #28]
	fmsr	s12, r1
	fmuls	s16, s16, s13
	fmuls	s0, s0, s12
	fcpys	s13, s15
	fmsr	s12, r9
	fnmacs	s13, s12, s31
	fmsr	s12, sl
	fcpys	s31, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s30
	fmsr	s12, r8
	fcpys	s30, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s29
	fmsr	s12, r7
	fcpys	s29, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s28
	fmsr	s12, r6
	fcpys	s28, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s27
	fmsr	s12, r5
	fcpys	s27, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s26
	fmsr	s12, r4
	fcpys	s26, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s25
	fmsr	s12, ip
	fcpys	s25, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s24
	flds	s12, [sp, #4]
	fcpys	s24, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s23
	fmsr	s12, fp
	fcpys	s23, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s22
	flds	s12, [sp, #20]
	fcpys	s22, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s21
	flds	s12, [sp, #8]
	fcpys	s21, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s20
	flds	s12, [sp, #12]
	fcpys	s20, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s19
	flds	s12, [sp, #16]
	fcpys	s19, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s18
	flds	s12, [sp, #24]
	fcpys	s18, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s17
	flds	s12, [sp, #28]
	fcpys	s17, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s16
	fmsr	s12, r1
	fcpys	s16, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s0
	fmsr	s12, sl
	fcpys	s0, s13
	fmuls	s30, s12, s30
	fmsr	s13, r9
	fmsr	s12, r7
	fmuls	s31, s13, s31
	fmuls	s28, s12, s28
	fmsr	s13, r8
	fmsr	s12, r5
	fmuls	s29, s13, s29
	fmuls	s26, s12, s26
	fmsr	s13, r6
	fmsr	s12, ip
	fmuls	s27, s13, s27
	fmuls	s24, s12, s24
	fmsr	s13, r4
	fmsr	s12, fp
	fmuls	s25, s13, s25
	fmuls	s22, s12, s22
	flds	s13, [sp, #4]
	flds	s12, [sp, #8]
	fmuls	s23, s13, s23
	fmuls	s20, s12, s20
	flds	s13, [sp, #20]
	flds	s12, [sp, #16]
	fmuls	s21, s13, s21
	fmuls	s18, s12, s18
	flds	s13, [sp, #12]
	flds	s12, [sp, #28]
	fmuls	s19, s13, s19
	fmuls	s16, s12, s16
	flds	s13, [sp, #24]
	flds	s12, [r2, #44]
	fmuls	s17, s13, s17
	fmuls	s20, s12, s20
	fmsr	s13, r1
	flds	s12, [r2, #52]
	fmuls	s0, s13, s0
	fmuls	s22, s10, s22
	flds	s13, [r2, #48]
	fmuls	s10, s12, s18
	flds	s18, [r2, #60]
	fmuls	s1, s1, s31
	fmuls	s12, s18, s16
	fmuls	s23, s9, s23
	flds	s16, [r2, #64]
	fmuls	s9, s13, s19
	flds	s13, [r2, #56]
	fmuls	s3, s3, s29
	fsts	s1, [r3, #0]
	fmuls	s21, s11, s21
	fmuls	s11, s13, s17
	fmuls	s13, s16, s0
	flds	s0, [r2, #72]
	flds	s16, [r2, #68]
	fmuls	s2, s2, s30
	fmuls	s6, s6, s26
	fsts	s3, [r3, #8]
	fmrs	r1, s0	@ int
	flds	s3, [r2, #84]
	flds	s1, [r2, #76]
	fmuls	s4, s4, s28
	fmuls	s5, s5, s27
	fmuls	s7, s7, s25
	fsts	s2, [r3, #4]
	fsts	s6, [r3, #20]
	flds	s2, [r2, #80]
	flds	s6, [r2, #96]
	fmrs	r0, s16	@ int
	mov	sl, r1, asr #1
	fmrs	r1, s3	@ int
	fmuls	s8, s8, s24
	fsts	s4, [r3, #12]
	fsts	s5, [r3, #16]
	flds	s4, [r2, #88]
	flds	s5, [r2, #92]
	fsts	s7, [r3, #24]
	fmrs	r4, s1	@ int
	flds	s7, [r2, #100]
	mov	r9, r0, asr #1
	mov	r6, r1, asr #1
	fmrs	r0, s2	@ int
	fmrs	r1, s6	@ int
	fsts	s8, [r3, #28]
	mov	r8, r4, asr #1
	flds	s8, [r2, #104]
	fmrs	r4, s4	@ int
	mov	r7, r0, asr #1
	mov	ip, r1, asr #1
	fmrs	r0, s5	@ int
	fmrs	r1, s7	@ int
	fsts	s9, [r3, #48]
	mov	r5, r4, asr #1
	flds	s9, [r2, #108]
	mov	r4, r0, asr #1
	mov	r0, r1, asr #1
	fmrs	r1, s8	@ int
	mov	fp, r1, asr #1
	fmrs	r1, s9	@ int
	fsts	s10, [r3, #52]
	flds	s10, [r2, #112]
	fsts	s12, [r3, #60]
	flds	s12, [r2, #120]
	mov	r1, r1, asr #1
	str	r1, [sp, #20]
	fmrs	r1, s10	@ int
	fsts	s11, [r3, #56]
	flds	s11, [r2, #116]
	rsb	r9, r9, #1593835520
	add	r9, r9, #3620864
	add	r9, r9, #6592
	add	r9, r9, #31
	fsts	s13, [r3, #64]
	fmuls	s31, s16, s14
	flds	s13, [r2, #124]
	fmuls	s18, s12, s14
	fmsr	s12, r9
	mov	r1, r1, asr #1
	str	r1, [sp, #8]
	fmrs	r1, s11	@ int
	rsb	sl, sl, #1593835520
	rsb	r8, r8, #1593835520
	add	sl, sl, #3620864
	add	r8, r8, #3620864
	add	sl, sl, #6592
	add	r8, r8, #6592
	add	sl, sl, #31
	add	r8, r8, #31
	fmuls	s31, s31, s12
	fmuls	s30, s0, s14
	fmuls	s29, s1, s14
	fmuls	s17, s13, s14
	fmsr	s12, r8
	fmsr	s13, sl
	mov	r1, r1, asr #1
	fsts	s23, [r3, #32]
	fsts	s22, [r3, #36]
	fsts	s21, [r3, #40]
	fsts	s20, [r3, #44]
	str	r1, [sp, #12]
	ldr	r1, [r2, #120]
	rsb	r4, r4, #1593835520
	mov	r1, r1, asr #1
	str	r1, [sp, #16]
	ldr	r1, [r2, #124]
	str	r4, [sp, #28]
	ldr	r4, [sp, #20]
	mov	r1, r1, asr #1
	str	r1, [sp, #24]
	rsb	r4, r4, #1593835520
	ldr	r1, [sp, #8]
	str	r4, [sp, #20]
	ldr	r4, [sp, #12]
	rsb	r1, r1, #1593835520
	str	r1, [sp, #8]
	rsb	r4, r4, #1593835520
	ldr	r1, [sp, #16]
	str	r4, [sp, #12]
	rsb	r7, r7, #1593835520
	ldr	r4, [sp, #24]
	rsb	r6, r6, #1593835520
	rsb	r1, r1, #1593835520
	add	r7, r7, #3620864
	add	r6, r6, #3620864
	str	r1, [sp, #16]
	add	r7, r7, #6592
	rsb	r1, r4, #1593835520
	add	r6, r6, #6592
	ldr	r4, [sp, #28]
	add	r7, r7, #31
	add	r6, r6, #31
	fmuls	s30, s30, s13
	fmuls	s29, s29, s12
	fmuls	s28, s2, s14
	fmuls	s27, s3, s14
	add	r4, r4, #3620864
	fmsr	s13, r7
	fmsr	s12, r6
	str	r4, [sp, #28]
	ldr	r4, [sp, #20]
	rsb	r5, r5, #1593835520
	add	r4, r4, #3620864
	str	r4, [sp, #20]
	ldr	r4, [sp, #8]
	add	r5, r5, #3620864
	add	r4, r4, #3620864
	str	r4, [sp, #8]
	ldr	r4, [sp, #12]
	add	r5, r5, #6592
	add	r4, r4, #3620864
	str	r4, [sp, #12]
	ldr	r4, [sp, #16]
	add	r5, r5, #31
	add	r4, r4, #3620864
	str	r4, [sp, #16]
	ldr	r4, [sp, #28]
	fmuls	s28, s28, s13
	add	r4, r4, #6592
	str	r4, [sp, #28]
	ldr	r4, [sp, #20]
	fmuls	s27, s27, s12
	add	r4, r4, #6592
	str	r4, [sp, #20]
	ldr	r4, [sp, #8]
	fmuls	s26, s4, s14
	add	r4, r4, #6592
	str	r4, [sp, #8]
	ldr	r4, [sp, #12]
	fmuls	s25, s5, s14
	add	r4, r4, #6592
	str	r4, [sp, #12]
	ldr	r4, [sp, #16]
	fmsr	s13, r5
	add	r4, r4, #6592
	str	r4, [sp, #16]
	ldr	r4, [sp, #28]
	rsb	ip, ip, #1593835520
	add	r4, r4, #31
	str	r4, [sp, #28]
	flds	s12, [sp, #28]
	rsb	r0, r0, #1593835520
	add	ip, ip, #3620864
	add	r0, r0, #3620864
	add	ip, ip, #6592
	add	r0, r0, #6592
	add	r0, r0, #31
	add	ip, ip, #31
	fmuls	s26, s26, s13
	fmuls	s25, s25, s12
	fmuls	s24, s6, s14
	fmsr	s12, r0
	fmuls	s23, s7, s14
	fmsr	s13, ip
	ldr	r4, [sp, #20]
	rsb	fp, fp, #1593835520
	add	fp, fp, #3620864
	add	r4, r4, #31
	add	fp, fp, #6592
	str	r4, [sp, #20]
	add	fp, fp, #31
	fmuls	s24, s24, s13
	fmuls	s23, s23, s12
	fmuls	s22, s8, s14
	flds	s12, [sp, #20]
	fmuls	s21, s9, s14
	fmsr	s13, fp
	ldr	r4, [sp, #8]
	fmuls	s22, s22, s13
	add	r4, r4, #31
	str	r4, [sp, #8]
	ldr	r4, [sp, #12]
	fmuls	s21, s21, s12
	add	r4, r4, #31
	str	r4, [sp, #12]
	flds	s13, [sp, #8]
	flds	s12, [sp, #12]
	fmuls	s20, s10, s14
	fmuls	s19, s11, s14
	ldr	r4, [sp, #16]
	add	r1, r1, #3620864
	add	r1, r1, #6592
	add	r4, r4, #31
	str	r4, [sp, #16]
	add	r1, r1, #31
	fmuls	s20, s20, s13
	fmuls	s19, s19, s12
	flds	s13, [sp, #16]
	fmsr	s12, r1
	fmuls	s18, s18, s13
	fmuls	s17, s17, s12
	fcpys	s13, s15
	fmsr	s12, r9
	fnmacs	s13, s12, s31
	fmsr	s12, sl
	fcpys	s31, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s30
	fmsr	s12, r8
	fcpys	s30, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s29
	fmsr	s12, r7
	fcpys	s29, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s28
	fmsr	s12, r6
	fcpys	s28, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s27
	fmsr	s12, r5
	fcpys	s27, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s26
	flds	s12, [sp, #28]
	fcpys	s26, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s25
	fmsr	s12, ip
	fcpys	s25, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s24
	fmsr	s12, r0
	fcpys	s24, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s23
	fmsr	s12, fp
	fcpys	s23, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s22
	flds	s12, [sp, #20]
	fcpys	s22, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s21
	flds	s12, [sp, #8]
	fcpys	s21, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s20
	flds	s12, [sp, #12]
	fcpys	s20, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s19
	flds	s12, [sp, #16]
	fcpys	s19, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s18
	fmsr	s12, r1
	fcpys	s18, s13
	fcpys	s13, s15
	fnmacs	s13, s12, s17
	fcpys	s17, s13
	fmsr	s13, r9
	fmsr	s12, sl
	fmuls	s31, s13, s31
	fmsr	s13, r8
	fmuls	s30, s12, s30
	fmuls	s29, s13, s29
	fmsr	s12, r7
	fmsr	s13, r6
	fmuls	s28, s12, s28
	fmuls	s27, s13, s27
	fmsr	s12, r5
	flds	s13, [sp, #28]
	fmuls	s26, s12, s26
	fmuls	s25, s13, s25
	fmsr	s12, ip
	fmsr	s13, r0
	fmuls	s24, s12, s24
	fmuls	s23, s13, s23
	fmsr	s12, fp
	flds	s13, [sp, #20]
	fmuls	s22, s12, s22
	fmuls	s21, s13, s21
	flds	s12, [sp, #8]
	flds	s13, [sp, #12]
	fmuls	s20, s12, s20
	fmuls	s19, s13, s19
	flds	s12, [sp, #16]
	fmsr	s13, r1
	fmuls	s18, s12, s18
	fmuls	s17, s13, s17
	flds	s13, [r2, #120]
	fmuls	s12, s13, s18
	flds	s18, [r2, #124]
	fmuls	s16, s16, s31
	fmuls	s0, s0, s30
	fmuls	s1, s1, s29
	fmuls	s2, s2, s28
	fmuls	s3, s3, s27
	fmuls	s4, s4, s26
	fmuls	s5, s5, s25
	fmuls	s6, s6, s24
	fmuls	s7, s7, s23
	fmuls	s8, s8, s22
	fmuls	s9, s9, s21
	fmuls	s10, s10, s20
	fmuls	s11, s11, s19
	fmuls	s13, s18, s17
	ldr	r0, [sp, #32]
	fsts	s16, [r3, #68]
	add	r0, r0, #32
	cmp	r0, #1792
	fsts	s0, [r3, #72]
	fsts	s1, [r3, #76]
	fsts	s2, [r3, #80]
	str	r0, [sp, #32]
	add	r2, r2, #128
	fsts	s3, [r3, #84]
	fsts	s4, [r3, #88]
	fsts	s5, [r3, #92]
	fsts	s6, [r3, #96]
	fsts	s7, [r3, #100]
	fsts	s8, [r3, #104]
	fsts	s9, [r3, #108]
	fsts	s10, [r3, #112]
	fsts	s11, [r3, #116]
	fsts	s12, [r3, #120]
	fsts	s13, [r3, #124]
	add	r3, r3, #128
	bne	.L140
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #44]
	add	r1, r1, #1
	cmp	r1, r2
	str	r1, [sp, #40]
	bne	.L141
.L137:
	add	sp, sp, #48
	fldmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.size	bench_quake_sqrt, .-bench_quake_sqrt
	.align	2
	.global	bench_double_sqrt
	.type	bench_double_sqrt, %function
bench_double_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	movs	r8, r0, asl #1
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}
	mov	r7, #0
.L183:
	ldr	r5, .L218
	ldr	r4, .L218+4
	mov	r6, #0
.L182:
	fldd	d0, [r5, #0]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	bne	.L186
	fldd	d0, [r5, #8]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #0]
	bne	.L187
.L151:
	fldd	d0, [r5, #16]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #8]
	bne	.L188
.L152:
	fldd	d0, [r5, #24]
	fsqrtd	d5, d0
	fcmpd	d5, d5
	fmstat
	fstd	d6, [r4, #16]
	bne	.L189
.L153:
	fldd	d0, [r5, #32]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d5, [r4, #24]
	bne	.L190
.L154:
	fldd	d0, [r5, #40]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #32]
	bne	.L191
.L155:
	fldd	d0, [r5, #48]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #40]
	bne	.L192
.L156:
	fldd	d0, [r5, #56]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #48]
	bne	.L193
.L157:
	fldd	d0, [r5, #64]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #56]
	bne	.L194
.L158:
	fldd	d0, [r5, #72]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #64]
	bne	.L195
.L159:
	fldd	d0, [r5, #80]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #72]
	bne	.L196
.L160:
	fldd	d0, [r5, #88]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #80]
	bne	.L197
.L161:
	fldd	d0, [r5, #96]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #88]
	bne	.L198
.L162:
	fldd	d0, [r5, #104]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #96]
	bne	.L199
.L163:
	fldd	d0, [r5, #112]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #104]
	bne	.L200
.L164:
	fldd	d0, [r5, #120]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #112]
	bne	.L201
.L165:
	fldd	d0, [r5, #128]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #120]
	bne	.L202
.L166:
	fldd	d0, [r5, #136]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #128]
	bne	.L203
.L167:
	fldd	d0, [r5, #144]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #136]
	bne	.L204
.L168:
	fldd	d0, [r5, #152]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #144]
	bne	.L205
.L169:
	fldd	d0, [r5, #160]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #152]
	bne	.L206
.L170:
	fldd	d0, [r5, #168]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #160]
	bne	.L207
.L171:
	fldd	d0, [r5, #176]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #168]
	bne	.L208
.L172:
	fldd	d0, [r5, #184]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #176]
	bne	.L209
.L173:
	fldd	d0, [r5, #192]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #184]
	bne	.L210
.L174:
	fldd	d0, [r5, #200]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #192]
	bne	.L211
.L175:
	fldd	d0, [r5, #208]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #200]
	bne	.L212
.L176:
	fldd	d0, [r5, #216]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #208]
	bne	.L213
.L177:
	fldd	d0, [r5, #224]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #216]
	bne	.L214
.L178:
	fldd	d0, [r5, #232]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #224]
	bne	.L215
.L179:
	fldd	d0, [r5, #240]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #232]
	bne	.L216
.L180:
	fldd	d0, [r5, #248]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #240]
	bne	.L217
.L181:
	add	r6, r6, #32
	cmp	r6, #896
	fstd	d6, [r4, #248]
	add	r5, r5, #256
	add	r4, r4, #256
	bne	.L182
	add	r7, r7, #1
	cmp	r7, r8
	bne	.L183
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L186:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #8]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #0]
	beq	.L151
.L187:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #16]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #8]
	beq	.L152
.L188:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #24]
	fsqrtd	d5, d0
	fcmpd	d5, d5
	fmstat
	fstd	d6, [r4, #16]
	beq	.L153
.L189:
	bl	sqrt
	fcpyd	d5, d0
	fldd	d0, [r5, #32]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d5, [r4, #24]
	beq	.L154
.L190:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #40]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #32]
	beq	.L155
.L191:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #48]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #40]
	beq	.L156
.L192:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #56]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #48]
	beq	.L157
.L193:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #64]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #56]
	beq	.L158
.L194:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #72]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #64]
	beq	.L159
.L195:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #80]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #72]
	beq	.L160
.L196:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #88]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #80]
	beq	.L161
.L197:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #96]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #88]
	beq	.L162
.L198:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #104]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #96]
	beq	.L163
.L199:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #112]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #104]
	beq	.L164
.L200:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #120]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #112]
	beq	.L165
.L201:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #128]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #120]
	beq	.L166
.L202:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #136]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #128]
	beq	.L167
.L203:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #144]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #136]
	beq	.L168
.L204:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #152]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #144]
	beq	.L169
.L205:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #160]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #152]
	beq	.L170
.L206:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #168]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #160]
	beq	.L171
.L207:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #176]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #168]
	beq	.L172
.L208:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #184]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #176]
	beq	.L173
.L209:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #192]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #184]
	beq	.L174
.L210:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #200]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #192]
	beq	.L175
.L211:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #208]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #200]
	beq	.L176
.L212:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #216]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #208]
	beq	.L177
.L213:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #224]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #216]
	beq	.L178
.L214:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #232]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #224]
	beq	.L179
.L215:
	bl	sqrt
	fcpyd	d6, d0
	fldd	d0, [r5, #240]
	fsqrtd	d7, d0
	fcmpd	d7, d7
	fmstat
	fstd	d6, [r4, #232]
	beq	.L180
.L216:
	bl	sqrt
	fcpyd	d7, d0
	fldd	d0, [r5, #248]
	fsqrtd	d6, d0
	fcmpd	d6, d6
	fmstat
	fstd	d7, [r4, #240]
	beq	.L181
.L217:
	bl	sqrt
	fcpyd	d6, d0
	b	.L181
.L219:
	.align	2
.L218:
	.word	dval1
	.word	dresult
	.size	bench_double_sqrt, .-bench_double_sqrt
	.align	2
	.global	bench_float_sqrt
	.type	bench_float_sqrt, %function
bench_float_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	subs	r8, r0, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}
	mov	r7, #0
.L256:
	ldr	r5, .L291
	ldr	r4, .L291+4
	mov	r6, #0
.L255:
	flds	s0, [r5, #0]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	bne	.L259
	flds	s0, [r5, #4]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #0]
	bne	.L260
.L224:
	flds	s0, [r5, #8]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #4]
	bne	.L261
.L225:
	flds	s0, [r5, #12]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #8]
	bne	.L262
.L226:
	flds	s0, [r5, #16]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #12]
	bne	.L263
.L227:
	flds	s0, [r5, #20]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #16]
	bne	.L264
.L228:
	flds	s0, [r5, #24]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #20]
	bne	.L265
.L229:
	flds	s0, [r5, #28]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #24]
	bne	.L266
.L230:
	flds	s0, [r5, #32]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #28]
	bne	.L267
.L231:
	flds	s0, [r5, #36]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #32]
	bne	.L268
.L232:
	flds	s0, [r5, #40]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #36]
	bne	.L269
.L233:
	flds	s0, [r5, #44]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #40]
	bne	.L270
.L234:
	flds	s0, [r5, #48]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #44]
	bne	.L271
.L235:
	flds	s0, [r5, #52]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #48]
	bne	.L272
.L236:
	flds	s0, [r5, #56]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #52]
	bne	.L273
.L237:
	flds	s0, [r5, #60]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #56]
	bne	.L274
.L238:
	flds	s0, [r5, #64]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #60]
	bne	.L275
.L239:
	flds	s0, [r5, #68]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #64]
	bne	.L276
.L240:
	flds	s0, [r5, #72]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #68]
	bne	.L277
.L241:
	flds	s0, [r5, #76]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #72]
	bne	.L278
.L242:
	flds	s0, [r5, #80]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #76]
	bne	.L279
.L243:
	flds	s0, [r5, #84]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #80]
	bne	.L280
.L244:
	flds	s0, [r5, #88]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #84]
	bne	.L281
.L245:
	flds	s0, [r5, #92]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #88]
	bne	.L282
.L246:
	flds	s0, [r5, #96]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #92]
	bne	.L283
.L247:
	flds	s0, [r5, #100]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #96]
	bne	.L284
.L248:
	flds	s0, [r5, #104]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #100]
	bne	.L285
.L249:
	flds	s0, [r5, #108]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #104]
	bne	.L286
.L250:
	flds	s0, [r5, #112]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #108]
	bne	.L287
.L251:
	flds	s0, [r5, #116]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #112]
	bne	.L288
.L252:
	flds	s0, [r5, #120]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #116]
	bne	.L289
.L253:
	flds	s0, [r5, #124]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #120]
	bne	.L290
.L254:
	add	r6, r6, #32
	cmp	r6, #1792
	fsts	s15, [r4, #124]
	add	r5, r5, #128
	add	r4, r4, #128
	bne	.L255
	add	r7, r7, #1
	cmp	r7, r8
	bne	.L256
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L259:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #4]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #0]
	beq	.L224
.L260:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #8]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #4]
	beq	.L225
.L261:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #12]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #8]
	beq	.L226
.L262:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #16]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #12]
	beq	.L227
.L263:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #20]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #16]
	beq	.L228
.L264:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #24]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #20]
	beq	.L229
.L265:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #28]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #24]
	beq	.L230
.L266:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #32]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #28]
	beq	.L231
.L267:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #36]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #32]
	beq	.L232
.L268:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #40]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #36]
	beq	.L233
.L269:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #44]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #40]
	beq	.L234
.L270:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #48]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #44]
	beq	.L235
.L271:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #52]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #48]
	beq	.L236
.L272:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #56]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #52]
	beq	.L237
.L273:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #60]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #56]
	beq	.L238
.L274:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #64]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #60]
	beq	.L239
.L275:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #68]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #64]
	beq	.L240
.L276:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #72]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #68]
	beq	.L241
.L277:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #76]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #72]
	beq	.L242
.L278:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #80]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #76]
	beq	.L243
.L279:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #84]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #80]
	beq	.L244
.L280:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #88]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #84]
	beq	.L245
.L281:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #92]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #88]
	beq	.L246
.L282:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #96]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #92]
	beq	.L247
.L283:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #100]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #96]
	beq	.L248
.L284:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #104]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #100]
	beq	.L249
.L285:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #108]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #104]
	beq	.L250
.L286:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #112]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #108]
	beq	.L251
.L287:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #116]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #112]
	beq	.L252
.L288:
	bl	sqrtf
	fcpys	s15, s0
	flds	s0, [r5, #120]
	fsqrts	s14, s0
	fcmps	s14, s14
	fmstat
	fsts	s15, [r4, #116]
	beq	.L253
.L289:
	bl	sqrtf
	fcpys	s14, s0
	flds	s0, [r5, #124]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	fsts	s14, [r4, #120]
	beq	.L254
.L290:
	bl	sqrtf
	fcpys	s15, s0
	b	.L254
.L292:
	.align	2
.L291:
	.word	fval1
	.word	fresult
	.size	bench_float_sqrt, .-bench_float_sqrt
	.align	2
	.global	fpsqrt
	.type	fpsqrt, %function
fpsqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmn	r0, #-1073741823
	addhi	r0, r0, #-1073741824
	movhi	r2, #1342177280
	movls	r2, #268435456
	movhi	r3, #65536
	movls	r3, #0
	cmp	r0, r2
	orrcs	r3, r3, #32768
	rsbcs	r0, r2, r0
	add	r2, r3, #8192
	mov	r2, r2, asl #13
	cmp	r0, r2
	orrcs	r3, r3, #16384
	rsbcs	r0, r2, r0
	add	r2, r3, #4096
	mov	r2, r2, asl #12
	cmp	r0, r2
	orrcs	r3, r3, #8192
	rsbcs	r0, r2, r0
	add	r2, r3, #2048
	mov	r2, r2, asl #11
	cmp	r0, r2
	orrcs	r3, r3, #4096
	rsbcs	r0, r2, r0
	add	r2, r3, #1024
	mov	r2, r2, asl #10
	cmp	r0, r2
	orrcs	r3, r3, #2048
	rsbcs	r0, r2, r0
	add	r2, r3, #512
	mov	r2, r2, asl #9
	cmp	r0, r2
	orrcs	r3, r3, #1024
	rsbcs	r0, r2, r0
	add	r2, r3, #256
	mov	r2, r2, asl #8
	cmp	r0, r2
	orrcs	r3, r3, #512
	rsbcs	r0, r2, r0
	add	r2, r3, #128
	mov	r2, r2, asl #7
	cmp	r0, r2
	orrcs	r3, r3, #256
	rsbcs	r0, r2, r0
	add	r2, r3, #64
	mov	r2, r2, asl #6
	cmp	r0, r2
	orrcs	r3, r3, #128
	rsbcs	r0, r2, r0
	add	r2, r3, #32
	mov	r2, r2, asl #5
	cmp	r0, r2
	orrcs	r3, r3, #64
	rsbcs	r0, r2, r0
	add	r2, r3, #16
	mov	r2, r2, asl #4
	cmp	r0, r2
	orrcs	r3, r3, #32
	rsbcs	r0, r2, r0
	add	r2, r3, #8
	mov	r2, r2, asl #3
	cmp	r0, r2
	orrcs	r3, r3, #16
	rsbcs	r0, r2, r0
	add	r2, r3, #4
	mov	r2, r2, asl #2
	cmp	r0, r2
	orrcs	r3, r3, #8
	rsbcs	r0, r2, r0
	add	r2, r3, #2
	mov	r2, r2, asl #1
	cmp	r0, r2
	orrcs	r3, r3, #4
	rsbcs	r0, r2, r0
	add	r2, r3, #1
	cmp	r0, r2
	orrcs	r3, r3, #2
	mov	r0, r3, asl #7
	bx	lr
	.size	fpsqrt, .-fpsqrt
	.align	2
	.global	bench_fixed_sqrt
	.type	bench_fixed_sqrt, %function
bench_fixed_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r9, r0, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	ldr	r8, .L318
	ldr	r7, .L318+4
	mov	sl, #0
.L315:
	ldr	r5, .L318
	ldr	r4, .L318+4
	mov	r6, #0
.L314:
	ldr	r0, [r8, r6]
	bl	fpsqrt
	str	r0, [r7, r6]
	ldr	r0, [r5, #4]
	bl	fpsqrt
	str	r0, [r4, #4]
	ldr	r0, [r5, #8]
	bl	fpsqrt
	str	r0, [r4, #8]
	ldr	r0, [r5, #12]
	bl	fpsqrt
	str	r0, [r4, #12]
	ldr	r0, [r5, #16]
	bl	fpsqrt
	str	r0, [r4, #16]
	ldr	r0, [r5, #20]
	bl	fpsqrt
	str	r0, [r4, #20]
	ldr	r0, [r5, #24]
	bl	fpsqrt
	str	r0, [r4, #24]
	ldr	r0, [r5, #28]
	bl	fpsqrt
	str	r0, [r4, #28]
	ldr	r0, [r5, #32]
	bl	fpsqrt
	str	r0, [r4, #32]
	ldr	r0, [r5, #36]
	bl	fpsqrt
	str	r0, [r4, #36]
	ldr	r0, [r5, #40]
	bl	fpsqrt
	str	r0, [r4, #40]
	ldr	r0, [r5, #44]
	bl	fpsqrt
	str	r0, [r4, #44]
	ldr	r0, [r5, #48]
	bl	fpsqrt
	str	r0, [r4, #48]
	ldr	r0, [r5, #52]
	bl	fpsqrt
	str	r0, [r4, #52]
	ldr	r0, [r5, #56]
	bl	fpsqrt
	str	r0, [r4, #56]
	ldr	r0, [r5, #60]
	bl	fpsqrt
	str	r0, [r4, #60]
	ldr	r0, [r5, #64]
	bl	fpsqrt
	str	r0, [r4, #64]
	ldr	r0, [r5, #68]
	bl	fpsqrt
	str	r0, [r4, #68]
	ldr	r0, [r5, #72]
	bl	fpsqrt
	str	r0, [r4, #72]
	ldr	r0, [r5, #76]
	bl	fpsqrt
	str	r0, [r4, #76]
	ldr	r0, [r5, #80]
	bl	fpsqrt
	str	r0, [r4, #80]
	ldr	r0, [r5, #84]
	bl	fpsqrt
	str	r0, [r4, #84]
	ldr	r0, [r5, #88]
	bl	fpsqrt
	str	r0, [r4, #88]
	ldr	r0, [r5, #92]
	bl	fpsqrt
	str	r0, [r4, #92]
	ldr	r0, [r5, #96]
	bl	fpsqrt
	str	r0, [r4, #96]
	ldr	r0, [r5, #100]
	bl	fpsqrt
	str	r0, [r4, #100]
	ldr	r0, [r5, #104]
	bl	fpsqrt
	str	r0, [r4, #104]
	ldr	r0, [r5, #108]
	bl	fpsqrt
	str	r0, [r4, #108]
	ldr	r0, [r5, #112]
	bl	fpsqrt
	str	r0, [r4, #112]
	ldr	r0, [r5, #116]
	bl	fpsqrt
	str	r0, [r4, #116]
	ldr	r0, [r5, #120]
	bl	fpsqrt
	str	r0, [r4, #120]
	ldr	r0, [r5, #124]
	bl	fpsqrt
	add	r6, r6, #128
	cmp	r6, #7168
	str	r0, [r4, #124]
	add	r5, r5, #128
	add	r4, r4, #128
	bne	.L314
	add	sl, sl, #1
	cmp	sl, r9
	bne	.L315
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L319:
	.align	2
.L318:
	.word	xval1
	.word	xresult
	.size	bench_fixed_sqrt, .-bench_fixed_sqrt
	.align	2
	.global	magic_sqrt
	.type	magic_sqrt, %function
magic_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	fmrs	r2, s0	@ int
	flds	s15, .L321
	ldr	r3, .L321+8
	fmuls	s13, s0, s15
	sub	r3, r3, r2, asr #1
	fmsr	s14, r3	@ int
	flds	s15, .L321+4
	fmuls	s13, s13, s14
	fnmacs	s15, s14, s13
	fmuls	s15, s14, s15
	fmuls	s0, s0, s15
	bx	lr
.L322:
	.align	2
.L321:
	.word	1056964608
	.word	1069547520
	.word	1597463007
	.size	magic_sqrt, .-magic_sqrt
	.align	2
	.global	approximate_double_sqrt
	.type	approximate_double_sqrt, %function
approximate_double_sqrt:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	fldd	d7, .L324
	fmuld	d3, d0, d7
	fldd	d2, .L324+8
	sub	sp, sp, #8
	add	r3, sp, #8
	fstmdbd	r3!, {d0}
	ldr	r2, [r3, #4]
	ldr	r3, .L324+16
	rsb	r3, r2, r3
	mov	r3, r3, lsr #1
	str	r3, [sp, #4]
	fldd	d4, [sp, #0]
	fmuld	d6, d4, d3
	fmuld	d7, d4, d4
	fmuld	d5, d7, d6
	fmscd	d5, d4, d2
	fmuld	d6, d5, d3
	fmuld	d7, d5, d5
	fmuld	d4, d7, d6
	fmscd	d4, d5, d2
	fmuld	d7, d4, d4
	fmuld	d6, d4, d3
	fmuld	d5, d7, d6
	fmscd	d5, d4, d2
	fmuld	d7, d5, d5
	fmuld	d6, d5, d3
	fmuld	d6, d7, d6
	fmscd	d6, d5, d2
	fmuld	d5, d6, d6
	fmuld	d7, d6, d3
	fmuld	d7, d5, d7
	fmscd	d7, d6, d2
	fmuld	d0, d7, d0
	add	sp, sp, #8
	bx	lr
.L325:
	.align	3
.L324:
	.word	0
	.word	1071644672
	.word	0
	.word	1073217536
	.word	-1077028598
	.size	approximate_double_sqrt, .-approximate_double_sqrt
	.align	2
	.global	bench_approximate_double_sqrt
	.type	bench_approximate_double_sqrt, %function
bench_approximate_double_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	movs	r8, r0, asl #1
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}
	mov	r7, #0
.L330:
	ldr	r5, .L333
	ldr	r4, .L333+4
	mov	r6, #0
.L329:
	fldd	d0, [r5, #0]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #0]
	fldd	d0, [r5, #8]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #8]
	fldd	d0, [r5, #16]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #16]
	fldd	d0, [r5, #24]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #24]
	fldd	d0, [r5, #32]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #32]
	fldd	d0, [r5, #40]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #40]
	fldd	d0, [r5, #48]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #48]
	fldd	d0, [r5, #56]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #56]
	fldd	d0, [r5, #64]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #64]
	fldd	d0, [r5, #72]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #72]
	fldd	d0, [r5, #80]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #80]
	fldd	d0, [r5, #88]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #88]
	fldd	d0, [r5, #96]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #96]
	fldd	d0, [r5, #104]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #104]
	fldd	d0, [r5, #112]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #112]
	fldd	d0, [r5, #120]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #120]
	fldd	d0, [r5, #128]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #128]
	fldd	d0, [r5, #136]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #136]
	fldd	d0, [r5, #144]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #144]
	fldd	d0, [r5, #152]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #152]
	fldd	d0, [r5, #160]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #160]
	fldd	d0, [r5, #168]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #168]
	fldd	d0, [r5, #176]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #176]
	fldd	d0, [r5, #184]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #184]
	fldd	d0, [r5, #192]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #192]
	fldd	d0, [r5, #200]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #200]
	fldd	d0, [r5, #208]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #208]
	fldd	d0, [r5, #216]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #216]
	fldd	d0, [r5, #224]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #224]
	fldd	d0, [r5, #232]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #232]
	fldd	d0, [r5, #240]
	bl	approximate_double_sqrt
	fstd	d0, [r4, #240]
	fldd	d0, [r5, #248]
	bl	approximate_double_sqrt
	add	r6, r6, #32
	cmp	r6, #896
	fstd	d0, [r4, #248]
	add	r5, r5, #256
	add	r4, r4, #256
	bne	.L329
	add	r7, r7, #1
	cmp	r7, r8
	bne	.L330
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L334:
	.align	2
.L333:
	.word	dval1
	.word	dresult
	.size	bench_approximate_double_sqrt, .-bench_approximate_double_sqrt
	.align	2
	.global	timer
	.type	timer, %function
timer:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	subs	r1, r0, #0
	sub	sp, sp, #8
	mov	r4, #0
	str	r4, [sp, #0]
	str	r4, [sp, #4]
	bne	.L338
	mov	r0, sp
	bl	gettimeofday
	ldr	r4, .L339
	ldr	r2, [sp, #4]
	ldr	ip, [sp, #0]
	ldr	r3, .L339+4
	mla	ip, r4, ip, r2
	ldr	r4, [r3, #0]
	ldr	r2, [r3, #4]
	ldr	r3, .L339+8
	mla	r3, r3, r4, ip
	rsb	r3, r2, r3
	mov	r0, r3
	mov	r1, r3, asr #31
.L337:
	add	sp, sp, #8
	ldmfd	sp!, {r4, pc}
.L338:
	bl	sync
	mov	r0, r4
	bl	fflush
	ldr	r0, .L339+12
	bl	usleep
	mov	r1, r4
	ldr	r0, .L339+4
	bl	gettimeofday
	mov	r0, #0
	mov	r1, #0
	b	.L337
.L340:
	.align	2
.L339:
	.word	1000000
	.word	.LANCHOR0
	.word	-1000000
	.word	500000
	.size	timer, .-timer
	.global	__aeabi_ul2d
	.align	2
	.global	avg_of_3_runs
	.type	avg_of_3_runs, %function
avg_of_3_runs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r0
	sub	sp, sp, #12
	mov	r7, r1
	mov	r0, #1
	bl	timer
	mov	r0, r7
	blx	r6
	mov	r0, #0
	bl	timer
	mov	r8, r0
	mov	r0, #1
	mov	r9, r1
	bl	timer
	mov	r0, r7
	blx	r6
	mov	r0, #0
	bl	timer
	mov	r4, r0
	mov	r0, #1
	mov	r5, r1
	bl	timer
	mov	r0, r7
	blx	r6
	mov	r0, #0
	bl	timer
	adds	r4, r4, r8
	adc	r5, r5, r9
	adds	r0, r0, r4
	adc	r1, r1, r5
	mov	r2, #3
	mov	r3, #0
	bl	__aeabi_uldivmod
	mov	r5, r0
	mov	r4, r1
	bl	__aeabi_ul2d
	fldd	d7, .L342
	fmdrr	d6, r0, r1
	mov	r2, r5
	fdivd	d7, d6, d7
	mov	r3, r4
	ldr	r0, .L342+8
	fstd	d7, [sp, #0]
	bl	printf
	mov	r0, r5
	mov	r1, r4
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L343:
	.align	3
.L342:
	.word	0
	.word	1093567616
	.word	.LC0
	.size	avg_of_3_runs, .-avg_of_3_runs
	.align	2
	.global	fill_float_array
	.type	fill_float_array, %function
fill_float_array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	fstmfdd	sp!, {d8, d9, d10, d11}
	fldd	d11, .L354
	fcpyd	d9, d0
	fcpyd	d10, d1
	sub	r5, r0, #4
	mov	r4, #0
.L349:
	bl	drand48
	fcpyd	d8, d0
	bl	lrand48
	tst	r0, #1
	fcpydne	d7, d11
	fcpydeq	d7, d10
	fmuld	d7, d7, d8
	fcmped	d7, d9
	fmstat
	bpl	.L346
.L351:
	bl	drand48
	fmuld	d7, d0, d10
	fcmped	d9, d7
	fmstat
	bgt	.L351
.L346:
	fcvtsd	s14, d7
	fmrs	r3, s14
	add	r4, r4, #1
	cmp	r4, #1792
	str	r3, [r5, #4]!	@ float
	bne	.L349
	fldmfdd	sp!, {d8, d9, d10, d11}
	ldmfd	sp!, {r3, r4, r5, pc}
.L355:
	.align	3
.L354:
	.word	0
	.word	1072693248
	.size	fill_float_array, .-fill_float_array
	.align	2
	.global	fill_fixed_array_from_float_array
	.type	fill_fixed_array_from_float_array, %function
fill_fixed_array_from_float_array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	flds	s14, .L359
	sub	r1, r1, #4
	mov	r3, #0
.L357:
	add	r1, r1, #4
	flds	s15, [r1, #0]
	fmuls	s15, s15, s14
	ftosizs	s15, s15
	fmrs	r2, s15	@ int
	str	r2, [r0, r3]
	add	r3, r3, #4
	cmp	r3, #7168
	bne	.L357
	bx	lr
.L360:
	.align	2
.L359:
	.word	1199570944
	.size	fill_fixed_array_from_float_array, .-fill_fixed_array_from_float_array
	.align	2
	.global	fill_double_array
	.type	fill_double_array, %function
fill_double_array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	fstmfdd	sp!, {d8, d9, d10, d11}
	fldd	d11, .L371
	fcpyd	d9, d0
	fcpyd	d10, d1
	sub	r5, r0, #8
	mov	r4, #0
.L366:
	bl	drand48
	fcpyd	d8, d0
	bl	lrand48
	tst	r0, #1
	fcpydne	d7, d11
	fcpydeq	d7, d10
	fmuld	d7, d7, d8
	fcmped	d7, d9
	fmstat
	bpl	.L363
.L368:
	bl	drand48
	fmuld	d7, d0, d10
	fcmped	d9, d7
	fmstat
	bgt	.L368
.L363:
	fmrrd	r2, r3, d7
	add	r4, r4, #1
	cmp	r4, #896
	strd	r2, [r5, #8]!
	bne	.L366
	fldmfdd	sp!, {d8, d9, d10, d11}
	ldmfd	sp!, {r3, r4, r5, pc}
.L372:
	.align	3
.L371:
	.word	0
	.word	1072693248
	.size	fill_double_array, .-fill_double_array
	.align	2
	.global	fill_i32_array
	.type	fill_i32_array, %function
fill_i32_array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldr	r5, .L381
	mov	r4, r0
	mov	r7, r1
	mov	r6, #0
	b	.L377
.L380:
	bl	lrand48
	cmp	r0, #0
	moveq	r0, #1
	str	r0, [r4, r6]
	add	r6, r6, #4
	cmp	r6, #7168
	beq	.L379
.L377:
	cmp	r7, r5
	bhi	.L380
	bl	lrand48
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #16
	add	r0, r0, r3
	uxth	r0, r0
	rsb	r0, r3, r0
	cmp	r0, #0
	moveq	r0, #1
	str	r0, [r4, r6]
	add	r6, r6, #4
	cmp	r6, #7168
	bne	.L377
.L379:
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L382:
	.align	2
.L381:
	.word	65535
	.size	fill_i32_array, .-fill_i32_array
	.align	2
	.global	fill_i64_array
	.type	fill_i64_array, %function
fill_i64_array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r0
	mov	r6, r2
	mov	r7, r3
	mov	r4, #0
	mvn	r8, #0
	mov	r9, #0
	b	.L388
.L392:
	bl	lrand48
	mov	r2, r0
	mov	r3, r0, asr #31
.L385:
	orrs	r1, r2, r3
	moveq	r2, #1
	moveq	r3, #0
	strd	r2, [r5, r4]
	add	r4, r4, #8
	cmp	r4, #7168
	beq	.L390
.L388:
	cmp	r9, r7
	cmpeq	r8, r6
	bcc	.L391
	ldr	r2, .L393
	mov	r3, #0
	cmp	r3, r7
	cmpeq	r2, r6
	bcc	.L392
	bl	lrand48
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #16
	add	r1, r0, r3
	uxth	r1, r1
	rsb	r1, r3, r1
	mov	r2, r1
	mov	r3, r1, asr #31
	orrs	r1, r2, r3
	moveq	r2, #1
	moveq	r3, #0
	strd	r2, [r5, r4]
	add	r4, r4, #8
	cmp	r4, #7168
	bne	.L388
.L390:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L391:
	bl	lrand48
	mov	fp, r0
	bl	lrand48
	mov	sl, #0
	orr	r2, sl, r0
	orr	r3, fp, r0, asr #31
	b	.L385
.L394:
	.align	2
.L393:
	.word	65535
	.size	fill_i64_array, .-fill_i64_array
	.align	2
	.global	bench_addition
	.type	bench_addition, %function
bench_addition:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, .L400+20
	bl	puts
	ldr	r0, .L400+24
	bl	printf
	fldd	d0, .L400
	fldd	d1, .L400+8
	ldr	r0, .L400+28
	bl	fill_float_array
	fldd	d0, .L400
	fldd	d1, .L400+8
	ldr	r0, .L400+32
	bl	fill_float_array
	ldr	r0, .L400+36
	mov	r1, r4
	bl	avg_of_3_runs
	ldr	r0, .L400+40
	bl	printf
	fldd	d0, .L400
	fldd	d1, .L400+8
	ldr	r0, .L400+44
	bl	fill_double_array
	fldd	d0, .L400
	fldd	d1, .L400+8
	ldr	r0, .L400+48
	bl	fill_double_array
	ldr	r0, .L400+52
	mov	r1, r4
	bl	avg_of_3_runs
	ldr	r0, .L400+56
	bl	printf
	fldd	d0, .L400
	fldd	d1, .L400+8
	ldr	r0, .L400+28
	bl	fill_float_array
	fldd	d0, .L400
	fldd	d1, .L400+8
	ldr	r0, .L400+32
	bl	fill_float_array
	flds	s14, .L400+16
	ldr	r3, .L400+60
	ldr	r2, .L400+64
	add	r0, r3, #7168
.L396:
	add	r3, r3, #4
	flds	s15, [r3, #0]
	fmuls	s15, s15, s14
	ftosizs	s15, s15
	fmrs	r1, s15	@ int
	cmp	r3, r0
	str	r1, [r2, #4]!
	bne	.L396
	flds	s14, .L400+16
	ldr	r3, .L400+68
	ldr	r2, .L400+72
	add	r0, r3, #7168
.L397:
	add	r3, r3, #4
	flds	s15, [r3, #0]
	fmuls	s15, s15, s14
	ftosizs	s15, s15
	fmrs	r1, s15	@ int
	cmp	r3, r0
	str	r1, [r2, #4]!
	bne	.L397
	mov	r1, r4
	ldr	r0, .L400+76
	bl	avg_of_3_runs
	ldr	r0, .L400+80
	bl	printf
	ldr	r0, .L400+84
	mvn	r1, #0
	bl	fill_i32_array
	ldr	r0, .L400+88
	mvn	r1, #0
	bl	fill_i32_array
	mov	r1, r4
	ldr	r0, .L400+92
	bl	avg_of_3_runs
	ldr	r0, .L400+96
	bl	printf
	ldr	r0, .L400+100
	mvn	r2, #0
	mvn	r3, #0
	bl	fill_i64_array
	ldr	r0, .L400+104
	mvn	r2, #0
	mvn	r3, #0
	bl	fill_i64_array
	ldr	r0, .L400+108
	mov	r1, r4
	ldmfd	sp!, {r4, lr}
	b	avg_of_3_runs
.L401:
	.align	3
.L400:
	.word	-350469331
	.word	1058682594
	.word	0
	.word	1087373184
	.word	1199570944
	.word	.LC1
	.word	.LC2
	.word	fval1
	.word	fval2
	.word	bench_float_add
	.word	.LC3
	.word	dval1
	.word	dval2
	.word	bench_double_add
	.word	.LC4
	.word	fval1-4
	.word	xval1-4
	.word	fval2-4
	.word	xval2-4
	.word	bench_fixed_add
	.word	.LC5
	.word	i32val1
	.word	i32val2
	.word	bench_i32_add
	.word	.LC6
	.word	i64val1
	.word	i64val2
	.word	bench_i64_add
	.size	bench_addition, .-bench_addition
	.align	2
	.global	bench_multiplication
	.type	bench_multiplication, %function
bench_multiplication:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, .L407+20
	bl	puts
	ldr	r0, .L407+24
	bl	printf
	fldd	d0, .L407
	fldd	d1, .L407+8
	ldr	r0, .L407+28
	bl	fill_float_array
	fldd	d0, .L407
	fldd	d1, .L407+8
	ldr	r0, .L407+32
	bl	fill_float_array
	ldr	r0, .L407+36
	mov	r1, r4
	bl	avg_of_3_runs
	ldr	r0, .L407+40
	bl	printf
	fldd	d0, .L407
	fldd	d1, .L407+8
	ldr	r0, .L407+44
	bl	fill_double_array
	fldd	d0, .L407
	fldd	d1, .L407+8
	ldr	r0, .L407+48
	bl	fill_double_array
	ldr	r0, .L407+52
	mov	r1, r4
	bl	avg_of_3_runs
	ldr	r0, .L407+56
	bl	printf
	fldd	d0, .L407
	fldd	d1, .L407+8
	ldr	r0, .L407+28
	bl	fill_float_array
	fldd	d0, .L407
	fldd	d1, .L407+8
	ldr	r0, .L407+32
	bl	fill_float_array
	flds	s14, .L407+16
	ldr	r3, .L407+60
	ldr	r2, .L407+64
	add	r0, r3, #7168
.L403:
	add	r3, r3, #4
	flds	s15, [r3, #0]
	fmuls	s15, s15, s14
	ftosizs	s15, s15
	fmrs	r1, s15	@ int
	cmp	r3, r0
	str	r1, [r2, #4]!
	bne	.L403
	flds	s14, .L407+16
	ldr	r3, .L407+68
	ldr	r2, .L407+72
	add	r0, r3, #7168
.L404:
	add	r3, r3, #4
	flds	s15, [r3, #0]
	fmuls	s15, s15, s14
	ftosizs	s15, s15
	fmrs	r1, s15	@ int
	cmp	r3, r0
	str	r1, [r2, #4]!
	bne	.L404
	mov	r1, r4
	ldr	r0, .L407+76
	bl	avg_of_3_runs
	ldr	r0, .L407+80
	bl	printf
	ldr	r0, .L407+84
	ldr	r1, .L407+88
	bl	fill_i32_array
	ldr	r0, .L407+92
	ldr	r1, .L407+88
	bl	fill_i32_array
	mov	r1, r4
	ldr	r0, .L407+96
	bl	avg_of_3_runs
	ldr	r0, .L407+100
	bl	printf
	ldr	r0, .L407+104
	mvn	r2, #0
	mov	r3, #0
	bl	fill_i64_array
	ldr	r0, .L407+108
	mvn	r2, #0
	mov	r3, #0
	bl	fill_i64_array
	ldr	r0, .L407+112
	mov	r1, r4
	ldmfd	sp!, {r4, lr}
	b	avg_of_3_runs
.L408:
	.align	3
.L407:
	.word	-755914244
	.word	1062232653
	.word	0
	.word	1080467456
	.word	1199570944
	.word	.LC7
	.word	.LC2
	.word	fval1
	.word	fval2
	.word	bench_float_mul
	.word	.LC3
	.word	dval1
	.word	dval2
	.word	bench_double_mul
	.word	.LC8
	.word	fval1-4
	.word	xval1-4
	.word	fval2-4
	.word	xval2-4
	.word	bench_fixed_mul
	.word	.LC9
	.word	i32val1
	.word	65535
	.word	i32val2
	.word	bench_i32_mul
	.word	.LC6
	.word	i64val1
	.word	i64val2
	.word	bench_i64_mul
	.size	bench_multiplication, .-bench_multiplication
	.align	2
	.global	bench_division
	.type	bench_division, %function
bench_division:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, .L414+36
	bl	puts
	ldr	r0, .L414+40
	bl	printf
	fldd	d0, .L414
	fldd	d1, .L414+8
	ldr	r0, .L414+44
	bl	fill_float_array
	fldd	d0, .L414+16
	fldd	d1, .L414+24
	ldr	r0, .L414+48
	bl	fill_float_array
	ldr	r0, .L414+52
	mov	r1, r4
	bl	avg_of_3_runs
	ldr	r0, .L414+56
	bl	printf
	fldd	d0, .L414
	fldd	d1, .L414+8
	ldr	r0, .L414+60
	bl	fill_double_array
	fldd	d0, .L414+16
	fldd	d1, .L414+24
	ldr	r0, .L414+64
	bl	fill_double_array
	ldr	r0, .L414+68
	mov	r1, r4
	bl	avg_of_3_runs
	ldr	r0, .L414+72
	bl	printf
	fldd	d0, .L414
	fldd	d1, .L414+8
	ldr	r0, .L414+44
	bl	fill_float_array
	fldd	d0, .L414+16
	fldd	d1, .L414+24
	ldr	r0, .L414+48
	bl	fill_float_array
	flds	s14, .L414+32
	ldr	r3, .L414+76
	ldr	r2, .L414+80
	add	r0, r3, #7168
.L410:
	add	r3, r3, #4
	flds	s15, [r3, #0]
	fmuls	s15, s15, s14
	ftosizs	s15, s15
	fmrs	r1, s15	@ int
	cmp	r3, r0
	str	r1, [r2, #4]!
	bne	.L410
	flds	s14, .L414+32
	ldr	r3, .L414+84
	ldr	r2, .L414+88
	add	r0, r3, #7168
.L411:
	add	r3, r3, #4
	flds	s15, [r3, #0]
	fmuls	s15, s15, s14
	ftosizs	s15, s15
	fmrs	r1, s15	@ int
	cmp	r3, r0
	str	r1, [r2, #4]!
	bne	.L411
	mov	r1, r4
	ldr	r0, .L414+92
	bl	avg_of_3_runs
	ldr	r0, .L414+96
	bl	printf
	ldr	r0, .L414+100
	mvn	r1, #0
	bl	fill_i32_array
	ldr	r0, .L414+104
	ldr	r1, .L414+108
	bl	fill_i32_array
	mov	r1, r4
	ldr	r0, .L414+112
	bl	avg_of_3_runs
	ldr	r0, .L414+116
	bl	printf
	ldr	r0, .L414+120
	mvn	r2, #0
	mvn	r3, #0
	bl	fill_i64_array
	ldr	r0, .L414+124
	mvn	r2, #0
	mov	r3, #0
	bl	fill_i64_array
	ldr	r0, .L414+128
	mov	r1, r4
	ldmfd	sp!, {r4, lr}
	b	avg_of_3_runs
.L415:
	.align	3
.L414:
	.word	0
	.word	1072693248
	.word	0
	.word	1084751872
	.word	-1717986918
	.word	1069128089
	.word	0
	.word	1085276160
	.word	1199570944
	.word	.LC10
	.word	.LC2
	.word	fval1
	.word	fval2
	.word	bench_float_div
	.word	.LC3
	.word	dval1
	.word	dval2
	.word	bench_double_div
	.word	.LC11
	.word	fval1-4
	.word	xval1-4
	.word	fval2-4
	.word	xval2-4
	.word	bench_fixed_div
	.word	.LC9
	.word	i32val1
	.word	i32val2
	.word	65535
	.word	bench_i32_div
	.word	.LC6
	.word	i64val1
	.word	i64val2
	.word	bench_i64_div
	.size	bench_division, .-bench_division
	.align	2
	.global	bench_squareroot
	.type	bench_squareroot, %function
bench_squareroot:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, .L419+20
	bl	puts
	fldd	d0, .L419
	fldd	d1, .L419+8
	ldr	r0, .L419+24
	bl	fill_float_array
	ldr	r0, .L419+28
	bl	printf
	ldr	r0, .L419+32
	mov	r1, r4
	bl	avg_of_3_runs
	ldr	r0, .L419+36
	bl	printf
	ldr	r0, .L419+40
	mov	r1, r4
	bl	avg_of_3_runs
	flds	s14, .L419+16
	ldr	r3, .L419+44
	ldr	r2, .L419+48
	add	r0, r3, #7168
.L417:
	add	r3, r3, #4
	flds	s15, [r3, #0]
	fmuls	s15, s15, s14
	ftosizs	s15, s15
	fmrs	r1, s15	@ int
	cmp	r3, r0
	str	r1, [r2, #4]!
	bne	.L417
	ldr	r0, .L419+52
	bl	printf
	mov	r1, r4
	ldr	r0, .L419+56
	bl	avg_of_3_runs
	fldd	d0, .L419
	fldd	d1, .L419+8
	ldr	r0, .L419+60
	bl	fill_double_array
	ldr	r0, .L419+64
	bl	printf
	mov	r1, r4
	ldr	r0, .L419+68
	bl	avg_of_3_runs
	ldr	r0, .L419+72
	bl	printf
	ldr	r0, .L419+76
	mov	r1, r4
	ldmfd	sp!, {r4, lr}
	b	avg_of_3_runs
.L420:
	.align	3
.L419:
	.word	-1998362383
	.word	1055193269
	.word	0
	.word	1088421888
	.word	1199570944
	.word	.LC12
	.word	fval1
	.word	.LC2
	.word	bench_float_sqrt
	.word	.LC13
	.word	bench_quake_sqrt
	.word	fval1-4
	.word	xval1-4
	.word	.LC11
	.word	bench_fixed_sqrt
	.word	dval1
	.word	.LC3
	.word	bench_double_sqrt
	.word	.LC14
	.word	bench_approximate_double_sqrt
	.size	bench_squareroot, .-bench_squareroot
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r0, .L425
	mov	r4, r1
	bl	srand48
	cmp	r5, #1
	ble	.L424
	mov	r2, #10
	mov	r1, #0
	ldr	r0, [r4, #4]
	bl	strtol
	mov	r4, r0
	ldr	r0, .L425+4
	bl	puts
	ldr	r0, .L425+8
	bl	puts
	ldr	r0, .L425+12
	bl	puts
	ldr	r0, .L425+16
	bl	puts
	ldr	r0, .L425+20
	bl	puts
	mov	r1, #32
	ldr	r0, .L425+24
	bl	printf
	mov	r1, #64
	ldr	r0, .L425+28
	bl	printf
	mov	r1, r4
	ldr	r0, .L425+32
	bl	printf
	bl	sync
	ldr	r0, .L425+36
	bl	usleep
	mov	r0, r4
	bl	bench_addition
	mov	r0, r4
	bl	bench_multiplication
	mov	r0, r4
	bl	bench_division
	mov	r0, r4
	bl	bench_squareroot
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, pc}
.L424:
	ldr	r0, .L425+40
	bl	puts
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.L426:
	.align	2
.L425:
	.word	-559038737
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	1000000
	.word	.LC15
	.size	main, .-main
	.comm	i64result,7168,8
	.comm	i64val2,7168,8
	.comm	i64val1,7168,8
	.comm	i32result,7168,4
	.comm	i32val2,7168,4
	.comm	i32val1,7168,4
	.comm	dresult,7168,8
	.comm	dval2,7168,8
	.comm	dval1,7168,8
	.comm	xresult,7168,4
	.comm	xval2,7168,4
	.comm	xval1,7168,4
	.comm	fresult,7168,4
	.comm	fval2,7168,4
	.comm	fval1,7168,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"AVG: %llu usecs, or %f secs.\012\000"
	.space	2
.LC1:
	.ascii	"\012ADDITION BENCHMARKS:\000"
	.space	2
.LC2:
	.ascii	"Float:\012\011\000"
	.space	3
.LC3:
	.ascii	"Double:\012\011\000"
	.space	2
.LC4:
	.ascii	"Fixed-point 16.16 (signed 32-bit integer):\012\011\000"
	.space	3
.LC5:
	.ascii	"32-bit (unsigned) integer:\012\011\000"
	.space	3
.LC6:
	.ascii	"64-bit integer:\012\011\000"
	.space	2
.LC7:
	.ascii	"\012MULTIPLICATION BENCHMARKS:\000"
.LC8:
	.ascii	"Fixed-point:\012\011\000"
	.space	1
.LC9:
	.ascii	"32-bit integer:\012\011\000"
	.space	2
.LC10:
	.ascii	"\012DIVISION BENCHMARKS:\000"
	.space	2
.LC11:
	.ascii	"Fixed-point 16.16:\012\011\000"
	.space	3
.LC12:
	.ascii	"\012SQUARE-ROOT BENCHMARKS:\000"
	.space	3
.LC13:
	.ascii	"Float (Quake sqrt):\012\011\000"
	.space	2
.LC14:
	.ascii	"Double (approximate sqrt):\012\011\000"
	.space	3
.LC15:
	.ascii	"Missing argument: number of iterations\000"
	.space	1
.LC16:
	.ascii	"FPBENCH - Math Speed Comparison\000"
.LC17:
	.ascii	"Written by Dan Silsby  dansilsby <AT> gmail <DOT> c"
	.ascii	"om\000"
	.space	2
.LC18:
	.ascii	"NOTE: before each benchmark is timed, sync(), fflus"
	.ascii	"h(),\012and .5 second delay are all executed.\000"
	.space	2
.LC19:
	.ascii	"Each time reported is an average of 3 benchmark run"
	.ascii	"s.\012\000"
	.space	1
.LC20:
	.ascii	"COMPILED WITH MANUAL 32-FOLD UNROLLING OF LOOPS\000"
.LC21:
	.ascii	"Reported size of floats on this architecture:\011%d"
	.ascii	"\012\000"
	.space	2
.LC22:
	.ascii	"Reported size of doubles on this architecture:\011%"
	.ascii	"d\012\000"
	.space	1
.LC23:
	.ascii	"Benchmark requested: %u iterations.\012\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	begin_time.4131, %object
	.size	begin_time.4131, 8
begin_time.4131:
	.space	8
	.ident	"GCC: (Debian 4.6.3-14+rpi1) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
