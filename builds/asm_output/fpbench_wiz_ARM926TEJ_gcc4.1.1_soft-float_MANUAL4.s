	.file	"fpbench.c"
	.text
	.align	2
	.global	fpsqrt
	.type	fpsqrt, %function
fpsqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmn	r0, #-1073741823
	addhi	r0, r0, #-1073741824
	movls	r3, #268435456
	movhi	r3, #1342177280
	movls	r2, #0
	movhi	r2, #65536
	cmp	r0, r3
	orrcs	r2, r2, #32768
	add	ip, r2, #8192
	rsbcs	r0, r3, r0
	mov	r1, ip, asl #13
	cmp	r0, r1
	orrcs	r2, r2, #16384
	add	r3, r2, #4096
	rsbcs	r0, r1, r0
	mov	ip, r3, asl #12
	cmp	r0, ip
	orrcs	r2, r2, #8192
	add	r1, r2, #2048
	rsbcs	r0, ip, r0
	mov	r3, r1, asl #11
	cmp	r0, r3
	orrcs	r2, r2, #4096
	add	ip, r2, #1024
	rsbcs	r0, r3, r0
	mov	r1, ip, asl #10
	cmp	r0, r1
	orrcs	r2, r2, #2048
	add	r3, r2, #512
	rsbcs	r0, r1, r0
	mov	ip, r3, asl #9
	cmp	r0, ip
	orrcs	r2, r2, #1024
	add	r1, r2, #256
	rsbcs	r0, ip, r0
	mov	r3, r1, asl #8
	cmp	r0, r3
	orrcs	r2, r2, #512
	add	ip, r2, #128
	rsbcs	r0, r3, r0
	mov	r1, ip, asl #7
	cmp	r0, r1
	orrcs	r2, r2, #256
	add	r3, r2, #64
	rsbcs	r0, r1, r0
	mov	ip, r3, asl #6
	cmp	r0, ip
	orrcs	r2, r2, #128
	add	r1, r2, #32
	rsbcs	r0, ip, r0
	mov	r3, r1, asl #5
	cmp	r0, r3
	orrcs	r2, r2, #64
	add	ip, r2, #16
	rsbcs	r0, r3, r0
	mov	r1, ip, asl #4
	cmp	r0, r1
	orrcs	r2, r2, #32
	add	r3, r2, #8
	rsbcs	r0, r1, r0
	mov	ip, r3, asl #3
	cmp	r0, ip
	orrcs	r2, r2, #16
	add	r1, r2, #4
	rsbcs	r0, ip, r0
	mov	r3, r1, asl #2
	cmp	r0, r3
	orrcs	r2, r2, #8
	add	ip, r2, #2
	rsbcs	r0, r3, r0
	mov	r1, ip, asl #1
	cmp	r0, r1
	orrcs	r2, r2, #4
	rsbcs	r0, r1, r0
	add	r3, r2, #1
	cmp	r0, r3
	orrcs	r2, r2, #2
	mov	r0, r2, asl #7
	@ lr needed for prologue
	bx	lr
	.size	fpsqrt, .-fpsqrt
	.global	__mulsf3
	.global	__subsf3
	.align	2
	.global	magic_sqrt
	.type	magic_sqrt, %function
magic_sqrt:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #8
	ldr	r4, [sp, #4]	@ float
	mov	r1, #1056964608
	mov	r5, r0
	bl	__mulsf3
	mov	r1, r4
	bl	__mulsf3
	mov	r1, r0
	mov	r0, r4
	bl	__mulsf3
	mov	r1, r0
	mov	r0, #1069547520
	bl	__subsf3
	mov	r1, r0
	mov	r0, r4
	bl	__mulsf3
	mov	r1, r0
	mov	r0, r5
	bl	__mulsf3
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, pc}
	.size	magic_sqrt, .-magic_sqrt
	.global	__muldf3
	.global	__subdf3
	.align	2
	.global	approximate_double_sqrt
	.type	approximate_double_sqrt, %function
approximate_double_sqrt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, .L40
	sub	sp, sp, #16
	mov	r3, #0
	stmia	sp, {r0-r1}
	bl	__muldf3
	ldr	r2, .L40+4
	mov	sl, r0
	mov	fp, r1
	mov	r3, #0
	ldmia	sp, {r0-r1}
	bl	__muldf3
	mov	r8, r0
	mov	r9, r1
	ldmia	sp, {r0-r1}
	mov	r2, r0
	mov	r3, r1
	bl	__muldf3
	mov	r2, sl
	mov	r6, r0
	mov	r7, r1
	mov	r3, fp
	ldmia	sp, {r0-r1}
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__subdf3
	ldr	r2, .L40+4
	mov	r3, #0
	mov	r4, r0
	mov	r5, r1
	bl	__muldf3
	mov	r2, r4
	mov	r8, r0
	mov	r9, r1
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__muldf3
	mov	r2, r4
	mov	r6, r0
	mov	r7, r1
	mov	r3, r5
	mov	r0, sl
	mov	r1, fp
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__subdf3
	ldr	r2, .L40+4
	mov	r3, #0
	mov	r4, r0
	mov	r5, r1
	bl	__muldf3
	mov	r2, r4
	mov	r8, r0
	mov	r9, r1
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__muldf3
	mov	r2, r4
	mov	r6, r0
	mov	r7, r1
	mov	r3, r5
	mov	r0, sl
	mov	r1, fp
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__subdf3
	ldr	r2, .L40+4
	mov	r3, #0
	mov	r4, r0
	mov	r5, r1
	bl	__muldf3
	mov	r2, r4
	mov	r8, r0
	mov	r9, r1
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__muldf3
	mov	r2, r4
	mov	r6, r0
	mov	r7, r1
	mov	r3, r5
	mov	r0, sl
	mov	r1, fp
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__subdf3
	ldr	r2, .L40+4
	mov	r3, #0
	mov	r4, r0
	mov	r5, r1
	bl	__muldf3
	mov	r2, r4
	mov	r8, r0
	mov	r9, r1
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__muldf3
	mov	r2, r4
	mov	r6, r0
	mov	r7, r1
	mov	r3, r5
	mov	r0, sl
	mov	r1, fp
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__subdf3
	mov	r2, r0
	mov	r3, r1
	ldmia	sp, {r0-r1}
	bl	__muldf3
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L41:
	.align	2
.L40:
	.word	1071644672
	.word	1073217536
	.size	approximate_double_sqrt, .-approximate_double_sqrt
	.global	__fixsfsi
	.align	2
	.global	fill_fixed_array_from_float_array
	.type	fill_fixed_array_from_float_array, %function
fill_fixed_array_from_float_array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	mov	r6, r1
	mov	r8, #0
.L43:
	ldr	r1, [r8, r6]	@ float
	ldr	r0, .L57
	bl	__mulsf3
	bl	__fixsfsi
	add	r4, r8, #4
	ldr	r1, [r4, r6]	@ float
	str	r0, [r8, r7]
	ldr	r0, .L57
	bl	__mulsf3
	bl	__fixsfsi
	add	r5, r4, #4
	ldr	r1, [r5, r6]	@ float
	str	r0, [r4, r7]
	ldr	r0, .L57
	bl	__mulsf3
	bl	__fixsfsi
	add	r4, r8, #12
	ldr	r1, [r4, r6]	@ float
	str	r0, [r5, r7]
	ldr	r0, .L57
	bl	__mulsf3
	bl	__fixsfsi
	add	r5, r8, #16
	ldr	r1, [r5, r6]	@ float
	str	r0, [r4, r7]
	ldr	r0, .L57
	bl	__mulsf3
	bl	__fixsfsi
	add	r4, r8, #20
	str	r0, [r5, r7]
	ldr	r1, [r4, r6]	@ float
	ldr	r0, .L57
	bl	__mulsf3
	bl	__fixsfsi
	add	r5, r8, #24
	str	r0, [r4, r7]
	ldr	r1, [r5, r6]	@ float
	ldr	r0, .L57
	bl	__mulsf3
	bl	__fixsfsi
	add	r8, r8, #28
	cmp	r8, #7168
	str	r0, [r5, r7]
	bne	.L43
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L58:
	.align	2
.L57:
	.word	1199570944
	.size	fill_fixed_array_from_float_array, .-fill_fixed_array_from_float_array
	.global	__addsf3
	.align	2
	.global	bench_float_add
	.type	bench_float_add, %function
bench_float_add:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #4
	str	r0, [sp, #0]
	ldrne	sl, .L75
	movne	fp, #0
	beq	.L65
.L62:
	ldr	r7, .L75+4
	ldr	r9, .L75+8
	rsb	r1, r7, sl
	sub	r0, r1, #16
	mov	r2, r0, lsr #4
	ldr	r1, [r9, #0]	@ float
	ldr	r0, [r7, #0]	@ float
	and	r4, r2, #1
	bl	__addsf3
	ldr	r8, .L75+12
	ldr	r1, [r9, #4]	@ float
	str	r0, [r8, #0]	@ float
	ldr	r0, [r7, #4]	@ float
	bl	__addsf3
	ldr	r1, [r9, #8]	@ float
	str	r0, [r8, #4]	@ float
	ldr	r0, [r7, #8]	@ float
	bl	__addsf3
	ldr	r1, [r9, #12]	@ float
	str	r0, [r8, #8]	@ float
	ldr	r0, [r7, #12]	@ float
	bl	__addsf3
	cmp	r4, #0
	str	r0, [r8, #12]	@ float
	add	r4, r7, #16
	add	r6, r9, #16
	add	r5, r8, #16
	beq	.L63
	ldr	r1, [r9, #16]	@ float
	ldr	r0, [r7, #16]	@ float
	bl	__addsf3
	ldr	r1, [r6, #4]	@ float
	str	r0, [r8, #16]	@ float
	ldr	r0, [r4, #4]	@ float
	bl	__addsf3
	ldr	r1, [r6, #8]	@ float
	str	r0, [r5, #4]	@ float
	ldr	r0, [r4, #8]	@ float
	bl	__addsf3
	ldr	r1, [r6, #12]	@ float
	str	r0, [r5, #8]	@ float
	ldr	r0, [r4, #12]	@ float
	bl	__addsf3
	add	r4, r4, #16
	str	r0, [r5, #12]	@ float
	add	r6, r6, #16
	add	r5, r5, #16
.L63:
	ldr	r1, [r6, #0]	@ float
	ldr	r0, [r4, #0]	@ float
	bl	__addsf3
	ldr	r1, [r6, #4]	@ float
	str	r0, [r5, #0]	@ float
	ldr	r0, [r4, #4]	@ float
	bl	__addsf3
	ldr	r1, [r6, #8]	@ float
	str	r0, [r5, #4]	@ float
	ldr	r0, [r4, #8]	@ float
	bl	__addsf3
	ldr	r1, [r6, #12]	@ float
	str	r0, [r5, #8]	@ float
	ldr	r0, [r4, #12]	@ float
	bl	__addsf3
	ldr	r1, [r6, #16]	@ float
	str	r0, [r5, #12]	@ float
	ldr	r0, [r4, #16]	@ float
	bl	__addsf3
	add	r4, r4, #16
	add	r6, r6, #16
	str	r0, [r5, #16]	@ float
	ldr	r1, [r6, #4]	@ float
	ldr	r0, [r4, #4]	@ float
	bl	__addsf3
	add	r5, r5, #16
	str	r0, [r5, #4]	@ float
	ldr	r1, [r6, #8]	@ float
	ldr	r0, [r4, #8]	@ float
	bl	__addsf3
	ldr	r1, [r6, #12]	@ float
	str	r0, [r5, #8]	@ float
	ldr	r0, [r4, #12]	@ float
	bl	__addsf3
	add	r4, r4, #16
	cmp	r4, sl
	str	r0, [r5, #12]	@ float
	add	r6, r6, #16
	add	r5, r5, #16
	bne	.L63
	ldr	r3, [sp, #0]
	add	fp, fp, #1
	cmp	fp, r3
	bne	.L62
.L65:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L76:
	.align	2
.L75:
	.word	fval1+7168
	.word	fval1
	.word	fval2
	.word	fresult
	.size	bench_float_add, .-bench_float_add
	.global	__adddf3
	.align	2
	.global	bench_double_add
	.type	bench_double_add, %function
bench_double_add:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r0, r0, asl #1
	sub	sp, sp, #8
	movne	r2, #0
	str	r0, [sp, #4]
	ldrne	r9, .L93
	strne	r2, [sp, #0]
	beq	.L83
.L80:
	ldr	r8, .L93+4
	ldr	fp, .L93+8
	ldmia	r8, {r0-r1}
	ldmia	fp, {r2-r3}
	bl	__adddf3
	add	r2, fp, #8
	ldmia	r2, {r2-r3}
	ldr	sl, .L93+12
	rsb	r7, r8, r9
	stmia	sl, {r0-r1}
	add	r0, r8, #8
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r2, fp, #16
	ldmia	r2, {r2-r3}
	str	r0, [sl, #8]
	str	r1, [sl, #12]
	add	r0, r8, #16
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r2, fp, #24
	ldmia	r2, {r2-r3}
	str	r0, [sl, #16]
	str	r1, [sl, #20]
	add	r0, r8, #24
	ldmia	r0, {r0-r1}
	bl	__adddf3
	sub	r6, r7, #32
	mov	r5, r6, lsr #5
	and	r4, r5, #1
	cmp	r4, #0
	add	r7, r8, #32
	str	r0, [sl, #24]
	str	r1, [sl, #28]
	add	r6, fp, #32
	add	r5, sl, #32
	beq	.L81
	add	r2, fp, #32
	ldmia	r2, {r2-r3}
	add	r0, r8, #32
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	str	r0, [sl, #32]
	str	r1, [sl, #36]
	add	r0, r7, #8
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r7, #16
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r7, #24
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r7, r7, #32
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r6, r6, #32
	add	r5, r5, #32
.L81:
	ldmia	r6, {r2-r3}
	ldmia	r7, {r0-r1}
	bl	__adddf3
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	stmia	r5, {r0-r1}
	add	r0, r7, #8
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r7, #16
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r7, #24
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r2, r6, #32
	ldmia	r2, {r2-r3}
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r0, r7, #32
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r4, r7, #32
	add	r6, r6, #32
	str	r0, [r5, #32]
	str	r1, [r5, #36]
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	add	r0, r4, #8
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	add	r5, r5, #32
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r4, #16
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r4, #24
	ldmia	r0, {r0-r1}
	bl	__adddf3
	add	r7, r4, #32
	cmp	r7, r9
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r6, r6, #32
	add	r5, r5, #32
	bne	.L81
	ldmia	sp, {r1, r2}	@ phole ldm
	add	r3, r1, #1
	cmp	r3, r2
	str	r3, [sp, #0]
	bne	.L80
.L83:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L94:
	.align	2
.L93:
	.word	dval1+7168
	.word	dval1
	.word	dval2
	.word	dresult
	.size	bench_double_add, .-bench_double_add
	.align	2
	.global	bench_fixed_add
	.type	bench_fixed_add, %function
bench_fixed_add:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #40
	str	r0, [sp, #32]
	movne	r0, #0
	strne	r0, [sp, #36]
	beq	.L101
.L98:
	ldr	r7, .L111
	ldr	sl, .L111+4
	ldr	r5, .L111+8
	ldr	fp, [sl, #8]
	ldr	r8, [sl, #12]
	ldr	r4, [sl, #0]
	ldr	r1, [r7, #4]
	ldr	r3, [sl, #4]
	ldr	r0, [r7, #0]
	ldr	lr, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r9, .L111+12
	rsb	ip, r7, r5
	add	r6, r0, r4
	add	r5, r1, r3
	add	r4, r2, fp
	add	r3, lr, r8
	tst	ip, #16
	str	r6, [r9, #0]
	str	r5, [r9, #4]
	str	r4, [r9, #8]
	str	r3, [r9, #12]
	add	fp, r7, #16
	add	r8, sl, #16
	add	r1, r9, #16
	bne	.L99
	ldr	r6, [sl, #16]
	ldr	r0, [r7, #16]
	ldr	r5, [r8, #4]
	ldr	r7, [fp, #4]
	ldr	r4, [r8, #8]
	ldr	r3, [fp, #12]
	ldr	ip, [r8, #12]
	ldr	r2, [fp, #8]
	add	lr, r0, r6
	add	sl, r2, r4
	add	r6, r7, r5
	add	r7, r3, ip
	str	lr, [r9, #16]
	add	fp, fp, #16
	stmib	r1, {r6, sl}	@ phole stm
	str	r7, [r1, #12]
	add	r8, r8, #16
	add	r1, r1, #16
.L99:
	ldr	r9, [fp, #8]
	add	lr, r8, #16
	str	lr, [sp, #20]
	add	r3, fp, #16
	ldr	r2, [fp, #16]
	ldr	r0, [fp, #4]
	ldr	lr, [r8, #16]
	ldr	r4, [fp, #0]
	ldmia	r8, {r5, r6}	@ phole ldm
	str	r9, [sp, #24]
	ldr	r7, [r8, #8]
	ldr	ip, [fp, #12]
	ldr	r9, [r8, #12]
	ldr	fp, [sp, #20]
	ldr	r8, [sp, #20]
	ldr	sl, [fp, #4]
	ldr	fp, [r8, #8]
	ldr	r8, [r3, #12]
	str	fp, [sp, #0]
	ldr	fp, [sp, #20]
	str	r0, [sp, #28]
	str	sl, [sp, #4]
	ldmib	r3, {r0, sl}	@ phole ldm
	str	r8, [sp, #12]
	ldr	r8, [fp, #12]
	add	fp, r3, #16
	ldr	r3, [sp, #28]
	add	r4, r4, r5
	add	r6, r3, r6
	ldr	r3, [sp, #24]
	str	r4, [r1, #0]
	add	r7, r3, r7
	add	r3, r2, lr
	str	r3, [r1, #16]
	ldr	r3, [sp, #0]
	ldr	r2, [sp, #4]
	add	sl, sl, r3
	stmib	r1, {r6, r7}	@ phole stm
	add	r0, r0, r2
	str	sl, [sp, #16]
	ldr	r2, [sp, #12]
	add	ip, ip, r9
	add	r3, r2, r8
	str	r3, [sp, #8]
	ldr	r2, .L111+8
	add	r3, r1, #16
	str	ip, [r1, #12]
	ldr	r8, [sp, #8]
	ldr	r1, [sp, #20]
	cmp	fp, r2
	str	r8, [r3, #12]
	str	r0, [r3, #4]
	add	r8, r1, #16
	str	sl, [r3, #8]
	add	r1, r3, #16
	bne	.L99
	ldr	r0, [sp, #36]
	ldr	r2, [sp, #32]
	add	r1, r0, #1
	cmp	r1, r2
	str	r1, [sp, #36]
	bne	.L98
.L101:
	add	sp, sp, #40
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L112:
	.align	2
.L111:
	.word	xval1
	.word	xval2
	.word	xval1+7168
	.word	xresult
	.size	bench_fixed_add, .-bench_fixed_add
	.align	2
	.global	bench_i32_add
	.type	bench_i32_add, %function
bench_i32_add:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #40
	str	r0, [sp, #32]
	movne	r0, #0
	strne	r0, [sp, #36]
	beq	.L119
.L116:
	ldr	r7, .L129
	ldr	sl, .L129+4
	ldr	r5, .L129+8
	ldr	fp, [sl, #8]
	ldr	r8, [sl, #12]
	ldr	r4, [sl, #0]
	ldr	r1, [r7, #4]
	ldr	r3, [sl, #4]
	ldr	r0, [r7, #0]
	ldr	lr, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r9, .L129+12
	rsb	ip, r7, r5
	add	r6, r0, r4
	add	r5, r1, r3
	add	r4, r2, fp
	add	r3, lr, r8
	tst	ip, #16
	str	r6, [r9, #0]
	str	r5, [r9, #4]
	str	r4, [r9, #8]
	str	r3, [r9, #12]
	add	fp, r7, #16
	add	r8, sl, #16
	add	r1, r9, #16
	bne	.L117
	ldr	r6, [sl, #16]
	ldr	r0, [r7, #16]
	ldr	r5, [r8, #4]
	ldr	r7, [fp, #4]
	ldr	r4, [r8, #8]
	ldr	r3, [fp, #12]
	ldr	ip, [r8, #12]
	ldr	r2, [fp, #8]
	add	lr, r0, r6
	add	sl, r2, r4
	add	r6, r7, r5
	add	r7, r3, ip
	str	lr, [r9, #16]
	add	fp, fp, #16
	stmib	r1, {r6, sl}	@ phole stm
	str	r7, [r1, #12]
	add	r8, r8, #16
	add	r1, r1, #16
.L117:
	ldr	r9, [fp, #8]
	add	lr, r8, #16
	str	lr, [sp, #20]
	add	r3, fp, #16
	ldr	r2, [fp, #16]
	ldr	r0, [fp, #4]
	ldr	lr, [r8, #16]
	ldr	r4, [fp, #0]
	ldmia	r8, {r5, r6}	@ phole ldm
	str	r9, [sp, #24]
	ldr	r7, [r8, #8]
	ldr	ip, [fp, #12]
	ldr	r9, [r8, #12]
	ldr	fp, [sp, #20]
	ldr	r8, [sp, #20]
	ldr	sl, [fp, #4]
	ldr	fp, [r8, #8]
	ldr	r8, [r3, #12]
	str	fp, [sp, #0]
	ldr	fp, [sp, #20]
	str	r0, [sp, #28]
	str	sl, [sp, #4]
	ldmib	r3, {r0, sl}	@ phole ldm
	str	r8, [sp, #12]
	ldr	r8, [fp, #12]
	add	fp, r3, #16
	ldr	r3, [sp, #28]
	add	r4, r4, r5
	add	r6, r3, r6
	ldr	r3, [sp, #24]
	str	r4, [r1, #0]
	add	r7, r3, r7
	add	r3, r2, lr
	str	r3, [r1, #16]
	ldr	r3, [sp, #0]
	ldr	r2, [sp, #4]
	add	sl, sl, r3
	stmib	r1, {r6, r7}	@ phole stm
	add	r0, r0, r2
	str	sl, [sp, #16]
	ldr	r2, [sp, #12]
	add	ip, ip, r9
	add	r3, r2, r8
	str	r3, [sp, #8]
	ldr	r2, .L129+8
	add	r3, r1, #16
	str	ip, [r1, #12]
	ldr	r8, [sp, #8]
	ldr	r1, [sp, #20]
	cmp	fp, r2
	str	r8, [r3, #12]
	str	r0, [r3, #4]
	add	r8, r1, #16
	str	sl, [r3, #8]
	add	r1, r3, #16
	bne	.L117
	ldr	r0, [sp, #36]
	ldr	r2, [sp, #32]
	add	r1, r0, #1
	cmp	r1, r2
	str	r1, [sp, #36]
	bne	.L116
.L119:
	add	sp, sp, #40
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L130:
	.align	2
.L129:
	.word	i32val1
	.word	i32val2
	.word	i32val1+7168
	.word	i32result
	.size	bench_i32_add, .-bench_i32_add
	.align	2
	.global	bench_i64_add
	.type	bench_i64_add, %function
bench_i64_add:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r0, r0, asl #1
	sub	sp, sp, #48
	str	r0, [sp, #44]
	movne	r0, #0
	strne	r0, [sp, #32]
	beq	.L137
.L134:
	ldr	ip, .L147
	ldr	lr, .L147+4
	ldr	r6, .L147+8
	ldmia	lr, {r3-r4}
	ldmia	ip, {r9-sl}
	adds	r9, r9, r3
	adc	sl, sl, r4
	add	r7, ip, #8
	ldmia	r7, {r7-r8}
	add	r3, lr, #8
	ldmia	r3, {r3-r4}
	adds	r7, r7, r3
	rsb	fp, ip, r6
	adc	r8, r8, r4
	add	r5, ip, #16
	ldmia	r5, {r5-r6}
	add	r3, lr, #16
	ldmia	r3, {r3-r4}
	adds	r5, r5, r3
	adc	r6, r6, r4
	add	r1, ip, #24
	ldmia	r1, {r1-r2}
	add	r3, lr, #24
	ldmia	r3, {r3-r4}
	adds	r1, r1, r3
	adc	r2, r2, r4
	ldr	r4, .L147+12
	tst	fp, #32
	str	r5, [r4, #16]
	str	r6, [r4, #20]
	add	r0, ip, #32
	add	r5, r4, #32
	stmia	r4, {r9-sl}
	str	r7, [r4, #8]
	str	r8, [r4, #12]
	str	r1, [r4, #24]
	str	r2, [r4, #28]
	str	r0, [sp, #36]
	add	fp, lr, #32
	str	r5, [sp, #40]
	bne	.L135
	add	r9, ip, #32
	ldmia	r9, {r9-sl}
	add	r3, lr, #32
	ldmia	r3, {r3-r4}
	adds	r9, r9, r3
	adc	sl, sl, r4
	add	r7, r0, #8
	ldmia	r7, {r7-r8}
	add	r3, fp, #8
	ldmia	r3, {r3-r4}
	ldr	ip, .L147+12
	adds	r7, r7, r3
	adc	r8, r8, r4
	add	r5, r0, #16
	ldmia	r5, {r5-r6}
	add	r3, fp, #16
	ldmia	r3, {r3-r4}
	adds	r5, r5, r3
	str	r9, [ip, #32]
	str	sl, [ip, #36]
	add	r1, r0, #24
	ldmia	r1, {r1-r2}
	ldr	r9, [sp, #40]
	adc	r6, r6, r4
	add	r3, fp, #24
	ldmia	r3, {r3-r4}
	adds	r1, r1, r3
	adc	r2, r2, r4
	str	r5, [r9, #16]
	str	r6, [r9, #20]
	str	r1, [r9, #24]
	str	r2, [r9, #28]
	str	r7, [r9, #8]
	str	r8, [r9, #12]
	add	r8, r0, #32
	add	r7, r9, #32
	str	r8, [sp, #36]
	add	fp, fp, #32
	str	r7, [sp, #40]
.L135:
	ldr	r8, [sp, #36]
	ldr	r4, [sp, #36]
	add	r0, r8, #32
	ldr	r2, [sp, #36]
	add	r9, r8, #32
	ldmia	r9, {r9-sl}
	add	r1, r0, #32
	stmia	sp, {r9-sl}
	ldmia	r8, {r9-sl}
	add	r7, r8, #8
	ldmia	r7, {r7-r8}
	str	r1, [sp, #36]
	str	r7, [sp, #24]
	str	r8, [sp, #28]
	add	r6, r4, #16
	ldmia	r6, {r6-r7}
	add	r3, fp, #32
	ldmia	r3, {r3-r4}
	str	r6, [sp, #16]
	str	r7, [sp, #20]
	add	r5, r2, #24
	ldmia	r5, {r5-r6}
	ldmia	sp, {r1-r2}
	adds	r1, r1, r3
	adc	r2, r2, r4
	stmia	sp, {r1-r2}
	ldmia	fp, {r3-r4}
	add	r7, r0, #8
	ldmia	r7, {r7-r8}
	ldr	r2, [sp, #40]
	adds	r9, r9, r3
	add	ip, r2, #32
	adc	sl, sl, r4
	add	r1, fp, #8
	ldmia	r1, {r1-r2}
	add	r3, sp, #24
	ldmia	r3, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	str	r3, [sp, #24]
	str	r4, [sp, #28]
	add	r1, sp, #16
	ldmia	r1, {r1-r2}
	add	r3, fp, #16
	ldmia	r3, {r3-r4}
	adds	r1, r1, r3
	str	r5, [sp, #8]
	str	r6, [sp, #12]
	add	r5, r0, #16
	ldmia	r5, {r5-r6}
	adc	r2, r2, r4
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	add	r3, sp, #8
	ldmia	r3, {r3-r4}
	add	r1, fp, #24
	ldmia	r1, {r1-r2}
	adds	r3, r3, r1
	add	lr, fp, #32
	adc	r4, r4, r2
	str	r3, [sp, #8]
	str	r4, [sp, #12]
	add	r3, lr, #8
	ldmia	r3, {r3-r4}
	add	r1, r0, #24
	ldmia	r1, {r1-r2}
	adds	r7, r7, r3
	adc	r8, r8, r4
	add	r3, lr, #16
	ldmia	r3, {r3-r4}
	adds	r5, r5, r3
	adc	r6, r6, r4
	add	r3, lr, #24
	ldmia	r3, {r3-r4}
	adds	r1, r1, r3
	adc	r2, r2, r4
	ldr	r0, .L147+8
	ldr	r4, [sp, #36]
	ldr	fp, [sp, #40]
	cmp	r4, r0
	add	r0, ip, #32
	ldmia	sp, {r3-r4}
	str	r3, [fp, #32]
	str	r4, [fp, #36]
	add	r3, sp, #24
	ldmia	r3, {r3-r4}
	stmia	fp, {r9-sl}
	str	r3, [fp, #8]
	str	r4, [fp, #12]
	add	r3, sp, #16
	ldmia	r3, {r3-r4}
	str	r0, [sp, #40]
	str	r3, [fp, #16]
	str	r4, [fp, #20]
	add	r3, sp, #8
	ldmia	r3, {r3-r4}
	str	r3, [fp, #24]
	str	r4, [fp, #28]
	str	r7, [ip, #8]
	str	r8, [ip, #12]
	str	r5, [ip, #16]
	str	r6, [ip, #20]
	str	r1, [ip, #24]
	str	r2, [ip, #28]
	add	fp, lr, #32
	bne	.L135
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #44]
	add	r1, r3, #1
	cmp	r1, r2
	str	r1, [sp, #32]
	bne	.L134
.L137:
	add	sp, sp, #48
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L148:
	.align	2
.L147:
	.word	i64val1
	.word	i64val2
	.word	i64val1+7168
	.word	i64result
	.size	bench_i64_add, .-bench_i64_add
	.align	2
	.global	bench_float_mul
	.type	bench_float_mul, %function
bench_float_mul:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #4
	str	r0, [sp, #0]
	ldrne	sl, .L165
	movne	fp, #0
	beq	.L155
.L152:
	ldr	r7, .L165+4
	ldr	r9, .L165+8
	rsb	r1, r7, sl
	sub	r0, r1, #16
	mov	r2, r0, lsr #4
	ldr	r1, [r9, #0]	@ float
	ldr	r0, [r7, #0]	@ float
	and	r4, r2, #1
	bl	__mulsf3
	ldr	r8, .L165+12
	ldr	r1, [r9, #4]	@ float
	str	r0, [r8, #0]	@ float
	ldr	r0, [r7, #4]	@ float
	bl	__mulsf3
	ldr	r1, [r9, #8]	@ float
	str	r0, [r8, #4]	@ float
	ldr	r0, [r7, #8]	@ float
	bl	__mulsf3
	ldr	r1, [r9, #12]	@ float
	str	r0, [r8, #8]	@ float
	ldr	r0, [r7, #12]	@ float
	bl	__mulsf3
	cmp	r4, #0
	str	r0, [r8, #12]	@ float
	add	r4, r7, #16
	add	r6, r9, #16
	add	r5, r8, #16
	beq	.L153
	ldr	r1, [r9, #16]	@ float
	ldr	r0, [r7, #16]	@ float
	bl	__mulsf3
	ldr	r1, [r6, #4]	@ float
	str	r0, [r8, #16]	@ float
	ldr	r0, [r4, #4]	@ float
	bl	__mulsf3
	ldr	r1, [r6, #8]	@ float
	str	r0, [r5, #4]	@ float
	ldr	r0, [r4, #8]	@ float
	bl	__mulsf3
	ldr	r1, [r6, #12]	@ float
	str	r0, [r5, #8]	@ float
	ldr	r0, [r4, #12]	@ float
	bl	__mulsf3
	add	r4, r4, #16
	str	r0, [r5, #12]	@ float
	add	r6, r6, #16
	add	r5, r5, #16
.L153:
	ldr	r1, [r6, #0]	@ float
	ldr	r0, [r4, #0]	@ float
	bl	__mulsf3
	ldr	r1, [r6, #4]	@ float
	str	r0, [r5, #0]	@ float
	ldr	r0, [r4, #4]	@ float
	bl	__mulsf3
	ldr	r1, [r6, #8]	@ float
	str	r0, [r5, #4]	@ float
	ldr	r0, [r4, #8]	@ float
	bl	__mulsf3
	ldr	r1, [r6, #12]	@ float
	str	r0, [r5, #8]	@ float
	ldr	r0, [r4, #12]	@ float
	bl	__mulsf3
	ldr	r1, [r6, #16]	@ float
	str	r0, [r5, #12]	@ float
	ldr	r0, [r4, #16]	@ float
	bl	__mulsf3
	add	r4, r4, #16
	add	r6, r6, #16
	str	r0, [r5, #16]	@ float
	ldr	r1, [r6, #4]	@ float
	ldr	r0, [r4, #4]	@ float
	bl	__mulsf3
	add	r5, r5, #16
	str	r0, [r5, #4]	@ float
	ldr	r1, [r6, #8]	@ float
	ldr	r0, [r4, #8]	@ float
	bl	__mulsf3
	ldr	r1, [r6, #12]	@ float
	str	r0, [r5, #8]	@ float
	ldr	r0, [r4, #12]	@ float
	bl	__mulsf3
	add	r4, r4, #16
	cmp	r4, sl
	str	r0, [r5, #12]	@ float
	add	r6, r6, #16
	add	r5, r5, #16
	bne	.L153
	ldr	r3, [sp, #0]
	add	fp, fp, #1
	cmp	fp, r3
	bne	.L152
.L155:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L166:
	.align	2
.L165:
	.word	fval1+7168
	.word	fval1
	.word	fval2
	.word	fresult
	.size	bench_float_mul, .-bench_float_mul
	.align	2
	.global	bench_double_mul
	.type	bench_double_mul, %function
bench_double_mul:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r0, r0, asl #1
	sub	sp, sp, #8
	movne	r2, #0
	str	r0, [sp, #4]
	ldrne	r9, .L183
	strne	r2, [sp, #0]
	beq	.L173
.L170:
	ldr	r8, .L183+4
	ldr	fp, .L183+8
	ldmia	r8, {r0-r1}
	ldmia	fp, {r2-r3}
	bl	__muldf3
	add	r2, fp, #8
	ldmia	r2, {r2-r3}
	ldr	sl, .L183+12
	rsb	r7, r8, r9
	stmia	sl, {r0-r1}
	add	r0, r8, #8
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r2, fp, #16
	ldmia	r2, {r2-r3}
	str	r0, [sl, #8]
	str	r1, [sl, #12]
	add	r0, r8, #16
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r2, fp, #24
	ldmia	r2, {r2-r3}
	str	r0, [sl, #16]
	str	r1, [sl, #20]
	add	r0, r8, #24
	ldmia	r0, {r0-r1}
	bl	__muldf3
	sub	r6, r7, #32
	mov	r5, r6, lsr #5
	and	r4, r5, #1
	cmp	r4, #0
	add	r7, r8, #32
	str	r0, [sl, #24]
	str	r1, [sl, #28]
	add	r6, fp, #32
	add	r5, sl, #32
	beq	.L171
	add	r2, fp, #32
	ldmia	r2, {r2-r3}
	add	r0, r8, #32
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	str	r0, [sl, #32]
	str	r1, [sl, #36]
	add	r0, r7, #8
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r7, #16
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r7, #24
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r7, r7, #32
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r6, r6, #32
	add	r5, r5, #32
.L171:
	ldmia	r6, {r2-r3}
	ldmia	r7, {r0-r1}
	bl	__muldf3
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	stmia	r5, {r0-r1}
	add	r0, r7, #8
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r7, #16
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r7, #24
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r2, r6, #32
	ldmia	r2, {r2-r3}
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r0, r7, #32
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r4, r7, #32
	add	r6, r6, #32
	str	r0, [r5, #32]
	str	r1, [r5, #36]
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	add	r0, r4, #8
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	add	r5, r5, #32
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r4, #16
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r4, #24
	ldmia	r0, {r0-r1}
	bl	__muldf3
	add	r7, r4, #32
	cmp	r7, r9
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r6, r6, #32
	add	r5, r5, #32
	bne	.L171
	ldmia	sp, {r1, r2}	@ phole ldm
	add	r3, r1, #1
	cmp	r3, r2
	str	r3, [sp, #0]
	bne	.L170
.L173:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L184:
	.align	2
.L183:
	.word	dval1+7168
	.word	dval1
	.word	dval2
	.word	dresult
	.size	bench_double_mul, .-bench_double_mul
	.align	2
	.global	bench_fixed_mul
	.type	bench_fixed_mul, %function
bench_fixed_mul:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #20
	str	r0, [sp, #12]
	movne	r0, #0
	strne	r0, [sp, #16]
	beq	.L191
.L188:
	ldr	fp, .L194
	ldr	sl, .L194+4
	ldr	r9, .L194+8
.L189:
	ldr	r2, [fp, #0]
	ldr	r6, [sl, #0]
	ldr	r0, [fp, #4]
	ldmib	sl, {r1, ip}	@ phole ldm
	ldr	r4, [fp, #12]
	ldr	lr, [fp, #8]
	smull	r7, r8, r2, r6
	smull	r5, r6, r0, r1
	ldr	r0, [sl, #12]
	smull	r1, r2, lr, ip
	mov	ip, r4
	smull	r3, r4, ip, r0
	stmib	sp, {r3-r4}
	ldr	r3, [sp, #4]
	mov	r1, r1, lsr #16
	orr	r1, r1, r2, asl #16
	ldr	r0, .L194+12
	ldr	r2, [sp, #8]
	mov	r4, r3, lsr #16
	add	fp, fp, #16
	mov	r7, r7, lsr #16
	mov	r5, r5, lsr #16
	orr	r7, r7, r8, asl #16
	orr	r5, r5, r6, asl #16
	orr	r3, r4, r2, asl #16
	cmp	fp, r0
	str	r7, [r9, #0]
	str	r5, [r9, #4]
	str	r1, [r9, #8]
	str	r3, [r9, #12]
	mov	r8, r8, asr #16
	mov	r6, r6, asr #16
	mov	r4, r2, asr #16
	add	sl, sl, #16
	add	r9, r9, #16
	bne	.L189
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #12]
	add	ip, r1, #1
	cmp	ip, r3
	str	ip, [sp, #16]
	bne	.L188
.L191:
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L195:
	.align	2
.L194:
	.word	xval1
	.word	xval2
	.word	xresult
	.word	xval1+7168
	.size	bench_fixed_mul, .-bench_fixed_mul
	.align	2
	.global	bench_i32_mul
	.type	bench_i32_mul, %function
bench_i32_mul:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #40
	str	r0, [sp, #32]
	movne	r0, #0
	strne	r0, [sp, #36]
	beq	.L202
.L199:
	ldr	sl, .L212
	ldr	r6, .L212+4
	ldr	fp, [sl, #0]
	ldmia	r6, {r0, r1}	@ phole ldm
	ldr	r9, [sl, #8]
	ldr	ip, [r6, #8]
	ldr	r8, [sl, #12]
	ldr	r2, [sl, #4]
	ldr	lr, [r6, #12]
	mul	r7, r0, fp
	mul	r6, lr, r8
	mul	ip, r9, ip
	mul	r4, r1, r2
	ldr	r5, .L212+8
	ldr	r9, .L212+12
	rsb	r3, sl, r5
	ldr	r0, .L212+4
	tst	r3, #16
	str	r6, [r9, #12]
	str	r7, [r9, #0]
	stmib	r9, {r4, ip}	@ phole stm
	add	fp, sl, #16
	add	r8, r0, #16
	add	r6, r9, #16
	bne	.L200
	ldr	r3, [sl, #16]
	ldr	lr, [r8, #4]
	ldr	r5, [r8, #8]
	ldr	ip, [r8, #12]
	ldr	r7, [fp, #4]
	ldr	r4, [fp, #8]
	ldr	sl, [fp, #12]
	ldr	r2, [r0, #16]
	mul	r7, lr, r7
	mul	r3, r2, r3
	mul	r4, r5, r4
	mul	ip, sl, ip
	str	r3, [r9, #16]
	add	fp, fp, #16
	str	r7, [r6, #4]
	str	r4, [r6, #8]
	str	ip, [r6, #12]
	add	r8, r8, #16
	add	r6, r6, #16
.L200:
	add	lr, r8, #16
	str	lr, [sp, #20]
	ldr	r0, [sp, #20]
	add	r3, fp, #16
	ldr	r4, [fp, #16]
	ldr	ip, [fp, #0]
	ldr	r9, [fp, #8]
	ldr	r7, [fp, #12]
	ldr	lr, [fp, #4]
	ldr	fp, [r8, #12]
	ldr	sl, [r8, #4]
	ldr	r2, [r8, #8]
	ldr	r5, [r0, #4]
	str	r7, [sp, #28]
	str	fp, [sp, #24]
	str	r5, [sp, #0]
	mul	r5, sl, lr
	mul	sl, r2, r9
	ldr	r2, [sp, #24]
	ldr	r9, [sp, #28]
	str	r4, [sp, #16]
	ldr	r1, [r8, #16]
	ldr	r7, [sp, #20]
	ldr	r4, [r8, #0]
	mul	r9, r2, r9
	ldr	r2, [sp, #16]
	ldr	r8, [r3, #4]
	ldr	fp, [r7, #8]
	ldr	r0, [r7, #12]
	mul	r2, r1, r2
	mul	r7, r4, ip
	ldr	r1, [sp, #0]
	ldr	ip, [r3, #8]
	mul	r1, r8, r1
	mul	ip, fp, ip
	ldr	r8, [r3, #12]
	add	fp, r3, #16
	mul	r8, r0, r8
	ldr	r3, .L212+8
	str	r5, [r6, #4]
	str	r1, [sp, #12]
	str	ip, [sp, #8]
	str	r2, [r6, #16]
	str	r7, [r6, #0]
	str	sl, [r6, #8]
	str	r9, [r6, #12]
	ldr	r5, [sp, #12]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #20]
	add	ip, r6, #16
	cmp	fp, r3
	str	r8, [ip, #12]
	str	r5, [ip, #4]
	str	r0, [ip, #8]
	add	r8, r1, #16
	add	r6, ip, #16
	bne	.L200
	ldr	r0, [sp, #36]
	ldr	r2, [sp, #32]
	add	r1, r0, #1
	cmp	r1, r2
	str	r1, [sp, #36]
	bne	.L199
.L202:
	add	sp, sp, #40
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L213:
	.align	2
.L212:
	.word	i32val1
	.word	i32val2
	.word	i32val1+7168
	.word	i32result
	.size	bench_i32_mul, .-bench_i32_mul
	.align	2
	.global	bench_i64_mul
	.type	bench_i64_mul, %function
bench_i64_mul:
	@ args = 0, pretend = 0, frame = 28
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r0, r0, asl #1
	sub	sp, sp, #28
	str	r0, [sp, #24]
	movne	r0, #0
	strne	r0, [sp, #20]
	beq	.L220
.L217:
	ldr	fp, .L223
	ldr	r9, .L223+4
	ldr	lr, .L223+8
.L218:
	ldr	r7, [fp, #0]
	ldr	ip, [r9, #4]
	ldr	r4, [r9, #28]
	ldr	r6, [fp, #24]
	mul	r8, r7, ip
	mul	r6, r4, r6
	ldr	sl, [r9, #0]
	ldr	r3, [fp, #4]
	ldr	r5, [r9, #12]
	ldr	ip, [fp, #8]
	str	r6, [sp, #4]
	mla	r6, sl, r3, r8
	umull	r2, r3, r7, sl
	mul	ip, r5, ip
	ldr	sl, [r9, #8]
	mov	r7, r2
	ldr	r2, [fp, #12]
	ldr	r1, [r9, #20]
	ldr	r0, [fp, #16]
	ldr	r5, [r9, #8]
	mla	sl, r2, sl, ip
	ldr	ip, [fp, #8]
	mul	r0, r1, r0
	umull	r1, r2, ip, r5
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	r2, [sp, #16]
	ldr	r4, [r9, #16]
	ldr	r0, [fp, #20]
	ldr	r1, [sp, #8]
	mov	r8, r3
	mla	r1, r4, r0, r1
	ldr	r0, [fp, #16]
	ldr	r3, [r9, #24]
	ldr	ip, [fp, #24]
	str	r1, [sp, #0]
	umull	r1, r2, r0, r4
	ldr	r0, [fp, #28]
	ldr	r4, [sp, #4]
	mov	r5, r3
	mla	r0, r3, r0, r4
	umull	r3, r4, ip, r5
	ldr	r5, [sp, #16]
	add	r8, r6, r8
	ldr	ip, [sp, #0]
	add	r6, sl, r5
	ldr	r5, .L223+12
	add	fp, fp, #32
	str	r6, [sp, #16]
	add	r2, ip, r2
	add	r4, r0, r4
	cmp	fp, r5
	stmia	lr, {r7-r8}
	add	r5, sp, #12
	ldmia	r5, {r5-r6}
	str	r1, [lr, #16]
	str	r2, [lr, #20]
	str	r5, [lr, #8]
	str	r6, [lr, #12]
	add	r9, r9, #32
	str	r3, [lr, #24]
	str	r4, [lr, #28]
	add	lr, lr, #32
	bne	.L218
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #24]
	add	r6, r3, #1
	cmp	r6, r2
	str	r6, [sp, #20]
	bne	.L217
.L220:
	add	sp, sp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L224:
	.align	2
.L223:
	.word	i64val1
	.word	i64val2
	.word	i64result
	.word	i64val1+7168
	.size	bench_i64_mul, .-bench_i64_mul
	.global	__divsf3
	.align	2
	.global	bench_float_div
	.type	bench_float_div, %function
bench_float_div:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #4
	str	r0, [sp, #0]
	ldrne	sl, .L241
	movne	fp, #0
	beq	.L231
.L228:
	ldr	r7, .L241+4
	ldr	r9, .L241+8
	rsb	r1, r7, sl
	sub	r0, r1, #16
	mov	r2, r0, lsr #4
	ldr	r1, [r9, #0]	@ float
	ldr	r0, [r7, #0]	@ float
	and	r4, r2, #1
	bl	__divsf3
	ldr	r8, .L241+12
	ldr	r1, [r9, #4]	@ float
	str	r0, [r8, #0]	@ float
	ldr	r0, [r7, #4]	@ float
	bl	__divsf3
	ldr	r1, [r9, #8]	@ float
	str	r0, [r8, #4]	@ float
	ldr	r0, [r7, #8]	@ float
	bl	__divsf3
	ldr	r1, [r9, #12]	@ float
	str	r0, [r8, #8]	@ float
	ldr	r0, [r7, #12]	@ float
	bl	__divsf3
	cmp	r4, #0
	str	r0, [r8, #12]	@ float
	add	r4, r7, #16
	add	r6, r9, #16
	add	r5, r8, #16
	beq	.L229
	ldr	r1, [r9, #16]	@ float
	ldr	r0, [r7, #16]	@ float
	bl	__divsf3
	ldr	r1, [r6, #4]	@ float
	str	r0, [r8, #16]	@ float
	ldr	r0, [r4, #4]	@ float
	bl	__divsf3
	ldr	r1, [r6, #8]	@ float
	str	r0, [r5, #4]	@ float
	ldr	r0, [r4, #8]	@ float
	bl	__divsf3
	ldr	r1, [r6, #12]	@ float
	str	r0, [r5, #8]	@ float
	ldr	r0, [r4, #12]	@ float
	bl	__divsf3
	add	r4, r4, #16
	str	r0, [r5, #12]	@ float
	add	r6, r6, #16
	add	r5, r5, #16
.L229:
	ldr	r1, [r6, #0]	@ float
	ldr	r0, [r4, #0]	@ float
	bl	__divsf3
	ldr	r1, [r6, #4]	@ float
	str	r0, [r5, #0]	@ float
	ldr	r0, [r4, #4]	@ float
	bl	__divsf3
	ldr	r1, [r6, #8]	@ float
	str	r0, [r5, #4]	@ float
	ldr	r0, [r4, #8]	@ float
	bl	__divsf3
	ldr	r1, [r6, #12]	@ float
	str	r0, [r5, #8]	@ float
	ldr	r0, [r4, #12]	@ float
	bl	__divsf3
	ldr	r1, [r6, #16]	@ float
	str	r0, [r5, #12]	@ float
	ldr	r0, [r4, #16]	@ float
	bl	__divsf3
	add	r4, r4, #16
	add	r6, r6, #16
	str	r0, [r5, #16]	@ float
	ldr	r1, [r6, #4]	@ float
	ldr	r0, [r4, #4]	@ float
	bl	__divsf3
	add	r5, r5, #16
	str	r0, [r5, #4]	@ float
	ldr	r1, [r6, #8]	@ float
	ldr	r0, [r4, #8]	@ float
	bl	__divsf3
	ldr	r1, [r6, #12]	@ float
	str	r0, [r5, #8]	@ float
	ldr	r0, [r4, #12]	@ float
	bl	__divsf3
	add	r4, r4, #16
	cmp	r4, sl
	str	r0, [r5, #12]	@ float
	add	r6, r6, #16
	add	r5, r5, #16
	bne	.L229
	ldr	r3, [sp, #0]
	add	fp, fp, #1
	cmp	fp, r3
	bne	.L228
.L231:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L242:
	.align	2
.L241:
	.word	fval1+7168
	.word	fval1
	.word	fval2
	.word	fresult
	.size	bench_float_div, .-bench_float_div
	.global	__divdf3
	.align	2
	.global	bench_double_div
	.type	bench_double_div, %function
bench_double_div:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r0, r0, asl #1
	sub	sp, sp, #8
	movne	r2, #0
	str	r0, [sp, #4]
	ldrne	r9, .L259
	strne	r2, [sp, #0]
	beq	.L249
.L246:
	ldr	r8, .L259+4
	ldr	fp, .L259+8
	ldmia	r8, {r0-r1}
	ldmia	fp, {r2-r3}
	bl	__divdf3
	add	r2, fp, #8
	ldmia	r2, {r2-r3}
	ldr	sl, .L259+12
	rsb	r7, r8, r9
	stmia	sl, {r0-r1}
	add	r0, r8, #8
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r2, fp, #16
	ldmia	r2, {r2-r3}
	str	r0, [sl, #8]
	str	r1, [sl, #12]
	add	r0, r8, #16
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r2, fp, #24
	ldmia	r2, {r2-r3}
	str	r0, [sl, #16]
	str	r1, [sl, #20]
	add	r0, r8, #24
	ldmia	r0, {r0-r1}
	bl	__divdf3
	sub	r6, r7, #32
	mov	r5, r6, lsr #5
	and	r4, r5, #1
	cmp	r4, #0
	add	r7, r8, #32
	str	r0, [sl, #24]
	str	r1, [sl, #28]
	add	r6, fp, #32
	add	r5, sl, #32
	beq	.L247
	add	r2, fp, #32
	ldmia	r2, {r2-r3}
	add	r0, r8, #32
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	str	r0, [sl, #32]
	str	r1, [sl, #36]
	add	r0, r7, #8
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r7, #16
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r7, #24
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r7, r7, #32
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r6, r6, #32
	add	r5, r5, #32
.L247:
	ldmia	r6, {r2-r3}
	ldmia	r7, {r0-r1}
	bl	__divdf3
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	stmia	r5, {r0-r1}
	add	r0, r7, #8
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r7, #16
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r7, #24
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r2, r6, #32
	ldmia	r2, {r2-r3}
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r0, r7, #32
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r4, r7, #32
	add	r6, r6, #32
	str	r0, [r5, #32]
	str	r1, [r5, #36]
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	add	r0, r4, #8
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	add	r5, r5, #32
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r4, #16
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r4, #24
	ldmia	r0, {r0-r1}
	bl	__divdf3
	add	r7, r4, #32
	cmp	r7, r9
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r6, r6, #32
	add	r5, r5, #32
	bne	.L247
	ldmia	sp, {r1, r2}	@ phole ldm
	add	r3, r1, #1
	cmp	r3, r2
	str	r3, [sp, #0]
	bne	.L246
.L249:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L260:
	.align	2
.L259:
	.word	dval1+7168
	.word	dval1
	.word	dval2
	.word	dresult
	.size	bench_double_div, .-bench_double_div
	.global	__divdi3
	.align	2
	.global	bench_fixed_div
	.type	bench_fixed_div, %function
bench_fixed_div:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	fp, r0, #0
	ldrne	sl, .L270
	movne	r9, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L264:
	ldr	r6, .L270+4
	ldr	r8, .L270+8
	ldr	r7, .L270+12
.L265:
	ldr	r0, [r6, #0]
	ldr	r2, [r8, #0]
	mov	r1, r0, asr #31
	mov	r5, r1, asl #16
	orr	r1, r5, r0, lsr #16
	mov	r3, r2, asr #31
	mov	r0, r0, asl #16
	bl	__divdi3
	ldr	r4, [r6, #4]
	ldr	r2, [r8, #4]
	mov	r5, r4, asr #31
	mov	r3, r5, asl #16
	orr	lr, r3, r4, lsr #16
	mov	ip, r4, asl #16
	str	r0, [r7, #0]
	mov	r3, r2, asr #31
	mov	r1, lr
	mov	r0, ip
	bl	__divdi3
	ldr	r4, [r6, #8]
	ldr	r2, [r8, #8]
	mov	r5, r4, asr #31
	mov	r1, r5, asl #16
	orr	ip, r1, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r7, #4]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, ip
	bl	__divdi3
	ldr	r4, [r6, #12]
	ldr	r2, [r8, #12]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r7, #8]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r6, #16
	cmp	r6, sl
	str	r0, [r7, #12]
	add	r8, r8, #16
	add	r7, r7, #16
	bne	.L265
	add	r9, r9, #1
	cmp	r9, fp
	bne	.L264
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L271:
	.align	2
.L270:
	.word	xval1+7168
	.word	xval1
	.word	xval2
	.word	xresult
	.size	bench_fixed_div, .-bench_fixed_div
	.global	__udivsi3
	.align	2
	.global	bench_i32_div
	.type	bench_i32_div, %function
bench_i32_div:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #4
	str	r0, [sp, #0]
	ldrne	sl, .L288
	movne	fp, #0
	beq	.L278
.L275:
	ldr	r7, .L288+4
	ldr	r9, .L288+8
	rsb	r1, r7, sl
	sub	r0, r1, #16
	mov	r2, r0, lsr #4
	ldr	r1, [r9, #0]
	ldr	r0, [r7, #0]
	and	r4, r2, #1
	bl	__udivsi3
	ldr	r8, .L288+12
	ldr	r1, [r9, #4]
	str	r0, [r8, #0]
	ldr	r0, [r7, #4]
	bl	__udivsi3
	ldr	r1, [r9, #8]
	str	r0, [r8, #4]
	ldr	r0, [r7, #8]
	bl	__udivsi3
	ldr	r1, [r9, #12]
	str	r0, [r8, #8]
	ldr	r0, [r7, #12]
	bl	__udivsi3
	cmp	r4, #0
	str	r0, [r8, #12]
	add	r4, r7, #16
	add	r6, r9, #16
	add	r5, r8, #16
	beq	.L276
	ldr	r1, [r9, #16]
	ldr	r0, [r7, #16]
	bl	__udivsi3
	ldr	r1, [r6, #4]
	str	r0, [r8, #16]
	ldr	r0, [r4, #4]
	bl	__udivsi3
	ldr	r1, [r6, #8]
	str	r0, [r5, #4]
	ldr	r0, [r4, #8]
	bl	__udivsi3
	ldr	r1, [r6, #12]
	str	r0, [r5, #8]
	ldr	r0, [r4, #12]
	bl	__udivsi3
	add	r4, r4, #16
	str	r0, [r5, #12]
	add	r6, r6, #16
	add	r5, r5, #16
.L276:
	ldr	r1, [r6, #0]
	ldr	r0, [r4, #0]
	bl	__udivsi3
	ldr	r1, [r6, #4]
	str	r0, [r5, #0]
	ldr	r0, [r4, #4]
	bl	__udivsi3
	ldr	r1, [r6, #8]
	str	r0, [r5, #4]
	ldr	r0, [r4, #8]
	bl	__udivsi3
	ldr	r1, [r6, #12]
	str	r0, [r5, #8]
	ldr	r0, [r4, #12]
	bl	__udivsi3
	ldr	r1, [r6, #16]
	str	r0, [r5, #12]
	ldr	r0, [r4, #16]
	bl	__udivsi3
	add	r4, r4, #16
	add	r6, r6, #16
	str	r0, [r5, #16]
	ldr	r1, [r6, #4]
	ldr	r0, [r4, #4]
	bl	__udivsi3
	add	r5, r5, #16
	str	r0, [r5, #4]
	ldr	r1, [r6, #8]
	ldr	r0, [r4, #8]
	bl	__udivsi3
	ldr	r1, [r6, #12]
	str	r0, [r5, #8]
	ldr	r0, [r4, #12]
	bl	__udivsi3
	add	r4, r4, #16
	cmp	r4, sl
	str	r0, [r5, #12]
	add	r6, r6, #16
	add	r5, r5, #16
	bne	.L276
	ldr	r3, [sp, #0]
	add	fp, fp, #1
	cmp	fp, r3
	bne	.L275
.L278:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L289:
	.align	2
.L288:
	.word	i32val1+7168
	.word	i32val1
	.word	i32val2
	.word	i32result
	.size	bench_i32_div, .-bench_i32_div
	.global	__udivdi3
	.align	2
	.global	bench_i64_div
	.type	bench_i64_div, %function
bench_i64_div:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r0, r0, asl #1
	sub	sp, sp, #8
	movne	r2, #0
	str	r0, [sp, #4]
	ldrne	r9, .L306
	strne	r2, [sp, #0]
	beq	.L296
.L293:
	ldr	r8, .L306+4
	ldr	fp, .L306+8
	ldmia	r8, {r0-r1}
	ldmia	fp, {r2-r3}
	bl	__udivdi3
	add	r2, fp, #8
	ldmia	r2, {r2-r3}
	ldr	sl, .L306+12
	rsb	r7, r8, r9
	stmia	sl, {r0-r1}
	add	r0, r8, #8
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r2, fp, #16
	ldmia	r2, {r2-r3}
	str	r0, [sl, #8]
	str	r1, [sl, #12]
	add	r0, r8, #16
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r2, fp, #24
	ldmia	r2, {r2-r3}
	str	r0, [sl, #16]
	str	r1, [sl, #20]
	add	r0, r8, #24
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	sub	r6, r7, #32
	mov	r5, r6, lsr #5
	and	r4, r5, #1
	cmp	r4, #0
	add	r7, r8, #32
	str	r0, [sl, #24]
	str	r1, [sl, #28]
	add	r6, fp, #32
	add	r5, sl, #32
	beq	.L294
	add	r2, fp, #32
	ldmia	r2, {r2-r3}
	add	r0, r8, #32
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	str	r0, [sl, #32]
	str	r1, [sl, #36]
	add	r0, r7, #8
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r7, #16
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r7, #24
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r7, r7, #32
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r6, r6, #32
	add	r5, r5, #32
.L294:
	ldmia	r6, {r2-r3}
	ldmia	r7, {r0-r1}
	bl	__udivdi3
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	stmia	r5, {r0-r1}
	add	r0, r7, #8
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r7, #16
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r7, #24
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r2, r6, #32
	ldmia	r2, {r2-r3}
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r0, r7, #32
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r4, r7, #32
	add	r6, r6, #32
	str	r0, [r5, #32]
	str	r1, [r5, #36]
	add	r2, r6, #8
	ldmia	r2, {r2-r3}
	add	r0, r4, #8
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r2, r6, #16
	ldmia	r2, {r2-r3}
	add	r5, r5, #32
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	add	r0, r4, #16
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r2, r6, #24
	ldmia	r2, {r2-r3}
	str	r0, [r5, #16]
	str	r1, [r5, #20]
	add	r0, r4, #24
	ldmia	r0, {r0-r1}
	bl	__udivdi3
	add	r7, r4, #32
	cmp	r7, r9
	str	r0, [r5, #24]
	str	r1, [r5, #28]
	add	r6, r6, #32
	add	r5, r5, #32
	bne	.L294
	ldmia	sp, {r1, r2}	@ phole ldm
	add	r3, r1, #1
	cmp	r3, r2
	str	r3, [sp, #0]
	bne	.L293
.L296:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L307:
	.align	2
.L306:
	.word	i64val1+7168
	.word	i64val1
	.word	i64val2
	.word	i64result
	.size	bench_i64_div, .-bench_i64_div
	.align	2
	.global	bench_quake_sqrt
	.type	bench_quake_sqrt, %function
bench_quake_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r9, r0, #0
	ldrne	r7, .L324
	movne	sl, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L311:
	ldr	r6, .L324+4
	ldr	r8, .L324+8
	rsb	r2, r6, r7
	sub	r0, r2, #16
	mov	r1, r0, lsr #4
	ldr	r0, [r6, #0]	@ float
	and	r4, r1, #1
	bl	magic_sqrt
	str	r0, [r8, #0]	@ float
	ldr	r0, [r6, #4]	@ float
	bl	magic_sqrt
	str	r0, [r8, #4]	@ float
	ldr	r0, [r6, #8]	@ float
	bl	magic_sqrt
	str	r0, [r8, #8]	@ float
	ldr	r0, [r6, #12]	@ float
	bl	magic_sqrt
	cmp	r4, #0
	str	r0, [r8, #12]	@ float
	add	r5, r6, #16
	add	r4, r8, #16
	beq	.L312
	ldr	r0, [r6, #16]	@ float
	bl	magic_sqrt
	str	r0, [r8, #16]	@ float
	ldr	r0, [r5, #4]	@ float
	bl	magic_sqrt
	str	r0, [r4, #4]	@ float
	ldr	r0, [r5, #8]	@ float
	bl	magic_sqrt
	str	r0, [r4, #8]	@ float
	ldr	r0, [r5, #12]	@ float
	bl	magic_sqrt
	add	r5, r5, #16
	str	r0, [r4, #12]	@ float
	add	r4, r4, #16
.L312:
	ldr	r0, [r5, #0]	@ float
	bl	magic_sqrt
	str	r0, [r4, #0]	@ float
	ldr	r0, [r5, #4]	@ float
	bl	magic_sqrt
	str	r0, [r4, #4]	@ float
	ldr	r0, [r5, #8]	@ float
	bl	magic_sqrt
	str	r0, [r4, #8]	@ float
	ldr	r0, [r5, #12]	@ float
	bl	magic_sqrt
	str	r0, [r4, #12]	@ float
	ldr	r0, [r5, #16]	@ float
	bl	magic_sqrt
	add	r5, r5, #16
	str	r0, [r4, #16]	@ float
	ldr	r0, [r5, #4]	@ float
	bl	magic_sqrt
	add	r4, r4, #16
	str	r0, [r4, #4]	@ float
	ldr	r0, [r5, #8]	@ float
	bl	magic_sqrt
	str	r0, [r4, #8]	@ float
	ldr	r0, [r5, #12]	@ float
	bl	magic_sqrt
	add	r5, r5, #16
	cmp	r5, r7
	str	r0, [r4, #12]	@ float
	add	r4, r4, #16
	bne	.L312
	add	sl, sl, #1
	cmp	sl, r9
	bne	.L311
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L325:
	.align	2
.L324:
	.word	fval1+7168
	.word	fval1
	.word	fresult
	.size	bench_quake_sqrt, .-bench_quake_sqrt
	.align	2
	.global	bench_approximate_double_sqrt
	.type	bench_approximate_double_sqrt, %function
bench_approximate_double_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	movs	r9, r0, asl #1
	ldrne	r7, .L342
	movne	sl, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L329:
	ldr	r6, .L342+4
	ldr	r8, .L342+8
	rsb	r1, r6, r7
	sub	r0, r1, #32
	mov	r2, r0, lsr #5
	ldmia	r6, {r0-r1}
	and	r4, r2, #1
	bl	approximate_double_sqrt
	stmia	r8, {r0-r1}
	add	r0, r6, #8
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	str	r0, [r8, #8]
	str	r1, [r8, #12]
	add	r0, r6, #16
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	str	r0, [r8, #16]
	str	r1, [r8, #20]
	add	r0, r6, #24
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	cmp	r4, #0
	str	r0, [r8, #24]
	str	r1, [r8, #28]
	add	r5, r6, #32
	add	r4, r8, #32
	beq	.L330
	add	r0, r6, #32
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	str	r0, [r8, #32]
	str	r1, [r8, #36]
	add	r0, r5, #8
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	add	r0, r5, #16
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	add	r0, r5, #24
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	add	r5, r5, #32
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	add	r4, r4, #32
.L330:
	ldmia	r5, {r0-r1}
	bl	approximate_double_sqrt
	stmia	r4, {r0-r1}
	add	r0, r5, #8
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	add	r0, r5, #16
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	add	r0, r5, #24
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	add	r0, r5, #32
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	add	r5, r5, #32
	str	r0, [r4, #32]
	str	r1, [r4, #36]
	add	r0, r5, #8
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #32
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	add	r0, r5, #16
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	add	r0, r5, #24
	ldmia	r0, {r0-r1}
	bl	approximate_double_sqrt
	add	r5, r5, #32
	cmp	r5, r7
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	add	r4, r4, #32
	bne	.L330
	add	sl, sl, #1
	cmp	sl, r9
	bne	.L329
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L343:
	.align	2
.L342:
	.word	dval1+7168
	.word	dval1
	.word	dresult
	.size	bench_approximate_double_sqrt, .-bench_approximate_double_sqrt
	.align	2
	.global	bench_fixed_sqrt
	.type	bench_fixed_sqrt, %function
bench_fixed_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	fp, r0, #0
	ldrne	sl, .L368
	movne	r9, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L347:
	ldr	r4, .L368+4
	ldr	r8, .L368+8
	rsb	r1, r4, sl
	sub	r0, r1, #16
	mov	r3, r0, lsr #4
	ldr	r0, [r4, #0]
	and	r5, r3, #3
	bl	fpsqrt
	str	r0, [r8, #0]
	ldr	r0, [r4, #4]
	bl	fpsqrt
	str	r0, [r8, #4]
	ldr	r0, [r4, #8]
	bl	fpsqrt
	str	r0, [r8, #8]
	ldr	r0, [r4, #12]
	bl	fpsqrt
	cmp	r5, #0
	str	r0, [r8, #12]
	add	r6, r4, #16
	add	r7, r8, #16
	beq	.L348
	cmp	r5, #1
	beq	.L366
	cmp	r5, #2
	beq	.L367
	ldr	r0, [r4, #16]
	bl	fpsqrt
	str	r0, [r8, #16]
	ldr	r0, [r6, #4]
	bl	fpsqrt
	str	r0, [r7, #4]
	ldr	r0, [r6, #8]
	bl	fpsqrt
	str	r0, [r7, #8]
	ldr	r0, [r6, #12]
	bl	fpsqrt
	add	r6, r6, #16
	str	r0, [r7, #12]
	add	r7, r7, #16
.L367:
	ldr	r0, [r6, #0]
	bl	fpsqrt
	str	r0, [r7, #0]
	ldr	r0, [r6, #4]
	bl	fpsqrt
	str	r0, [r7, #4]
	ldr	r0, [r6, #8]
	bl	fpsqrt
	str	r0, [r7, #8]
	ldr	r0, [r6, #12]
	bl	fpsqrt
	add	r6, r6, #16
	str	r0, [r7, #12]
	add	r7, r7, #16
.L366:
	ldr	r0, [r6, #0]
	bl	fpsqrt
	str	r0, [r7, #0]
	ldr	r0, [r6, #4]
	bl	fpsqrt
	str	r0, [r7, #4]
	ldr	r0, [r6, #8]
	bl	fpsqrt
	str	r0, [r7, #8]
	ldr	r0, [r6, #12]
	bl	fpsqrt
	add	r6, r6, #16
	cmp	r6, sl
	str	r0, [r7, #12]
	add	r7, r7, #16
	beq	.L365
.L348:
	ldr	r0, [r6, #0]
	bl	fpsqrt
	str	r0, [r7, #0]
	ldr	r0, [r6, #4]
	bl	fpsqrt
	str	r0, [r7, #4]
	ldr	r0, [r6, #8]
	bl	fpsqrt
	str	r0, [r7, #8]
	ldr	r0, [r6, #12]
	bl	fpsqrt
	str	r0, [r7, #12]
	ldr	r0, [r6, #16]
	bl	fpsqrt
	add	r5, r6, #16
	str	r0, [r7, #16]
	ldr	r0, [r5, #4]
	bl	fpsqrt
	add	r4, r7, #16
	str	r0, [r4, #4]
	ldr	r0, [r5, #8]
	bl	fpsqrt
	str	r0, [r4, #8]
	ldr	r0, [r5, #12]
	bl	fpsqrt
	str	r0, [r4, #12]
	ldr	r0, [r5, #16]
	bl	fpsqrt
	add	r5, r5, #16
	str	r0, [r4, #16]
	ldr	r0, [r5, #4]
	bl	fpsqrt
	add	r4, r4, #16
	str	r0, [r4, #4]
	ldr	r0, [r5, #8]
	bl	fpsqrt
	str	r0, [r4, #8]
	ldr	r0, [r5, #12]
	bl	fpsqrt
	str	r0, [r4, #12]
	ldr	r0, [r6, #48]
	bl	fpsqrt
	add	r4, r6, #48
	str	r0, [r7, #48]
	ldr	r0, [r4, #4]
	bl	fpsqrt
	add	r5, r7, #48
	str	r0, [r5, #4]
	ldr	r0, [r4, #8]
	bl	fpsqrt
	str	r0, [r5, #8]
	ldr	r0, [r4, #12]
	bl	fpsqrt
	add	r6, r6, #64
	cmp	r6, sl
	str	r0, [r5, #12]
	add	r7, r7, #64
	bne	.L348
.L365:
	add	r9, r9, #1
	cmp	r9, fp
	bne	.L347
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L369:
	.align	2
.L368:
	.word	xval1+7168
	.word	xval1
	.word	xresult
	.size	bench_fixed_sqrt, .-bench_fixed_sqrt
	.align	2
	.global	bench_double_sqrt
	.type	bench_double_sqrt, %function
bench_double_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	movs	r9, r0, asl #1
	ldrne	r7, .L386
	movne	sl, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L373:
	ldr	r6, .L386+4
	ldr	r8, .L386+8
	rsb	r1, r6, r7
	sub	r0, r1, #32
	mov	r2, r0, lsr #5
	ldmia	r6, {r0-r1}
	and	r4, r2, #1
	bl	sqrt
	stmia	r8, {r0-r1}
	add	r0, r6, #8
	ldmia	r0, {r0-r1}
	bl	sqrt
	str	r0, [r8, #8]
	str	r1, [r8, #12]
	add	r0, r6, #16
	ldmia	r0, {r0-r1}
	bl	sqrt
	str	r0, [r8, #16]
	str	r1, [r8, #20]
	add	r0, r6, #24
	ldmia	r0, {r0-r1}
	bl	sqrt
	cmp	r4, #0
	str	r0, [r8, #24]
	str	r1, [r8, #28]
	add	r5, r6, #32
	add	r4, r8, #32
	beq	.L374
	add	r0, r6, #32
	ldmia	r0, {r0-r1}
	bl	sqrt
	str	r0, [r8, #32]
	str	r1, [r8, #36]
	add	r0, r5, #8
	ldmia	r0, {r0-r1}
	bl	sqrt
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	add	r0, r5, #16
	ldmia	r0, {r0-r1}
	bl	sqrt
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	add	r0, r5, #24
	ldmia	r0, {r0-r1}
	bl	sqrt
	add	r5, r5, #32
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	add	r4, r4, #32
.L374:
	ldmia	r5, {r0-r1}
	bl	sqrt
	stmia	r4, {r0-r1}
	add	r0, r5, #8
	ldmia	r0, {r0-r1}
	bl	sqrt
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	add	r0, r5, #16
	ldmia	r0, {r0-r1}
	bl	sqrt
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	add	r0, r5, #24
	ldmia	r0, {r0-r1}
	bl	sqrt
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	add	r0, r5, #32
	ldmia	r0, {r0-r1}
	bl	sqrt
	add	r5, r5, #32
	str	r0, [r4, #32]
	str	r1, [r4, #36]
	add	r0, r5, #8
	ldmia	r0, {r0-r1}
	bl	sqrt
	add	r4, r4, #32
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	add	r0, r5, #16
	ldmia	r0, {r0-r1}
	bl	sqrt
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	add	r0, r5, #24
	ldmia	r0, {r0-r1}
	bl	sqrt
	add	r5, r5, #32
	cmp	r5, r7
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	add	r4, r4, #32
	bne	.L374
	add	sl, sl, #1
	cmp	sl, r9
	bne	.L373
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L387:
	.align	2
.L386:
	.word	dval1+7168
	.word	dval1
	.word	dresult
	.size	bench_double_sqrt, .-bench_double_sqrt
	.align	2
	.global	bench_float_sqrt
	.type	bench_float_sqrt, %function
bench_float_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r9, r0, #0
	ldrne	r7, .L404
	movne	sl, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L391:
	ldr	r6, .L404+4
	ldr	r8, .L404+8
	rsb	r2, r6, r7
	sub	r0, r2, #16
	mov	r1, r0, lsr #4
	ldr	r0, [r6, #0]	@ float
	and	r4, r1, #1
	bl	sqrtf
	str	r0, [r8, #0]	@ float
	ldr	r0, [r6, #4]	@ float
	bl	sqrtf
	str	r0, [r8, #4]	@ float
	ldr	r0, [r6, #8]	@ float
	bl	sqrtf
	str	r0, [r8, #8]	@ float
	ldr	r0, [r6, #12]	@ float
	bl	sqrtf
	cmp	r4, #0
	str	r0, [r8, #12]	@ float
	add	r5, r6, #16
	add	r4, r8, #16
	beq	.L392
	ldr	r0, [r6, #16]	@ float
	bl	sqrtf
	str	r0, [r8, #16]	@ float
	ldr	r0, [r5, #4]	@ float
	bl	sqrtf
	str	r0, [r4, #4]	@ float
	ldr	r0, [r5, #8]	@ float
	bl	sqrtf
	str	r0, [r4, #8]	@ float
	ldr	r0, [r5, #12]	@ float
	bl	sqrtf
	add	r5, r5, #16
	str	r0, [r4, #12]	@ float
	add	r4, r4, #16
.L392:
	ldr	r0, [r5, #0]	@ float
	bl	sqrtf
	str	r0, [r4, #0]	@ float
	ldr	r0, [r5, #4]	@ float
	bl	sqrtf
	str	r0, [r4, #4]	@ float
	ldr	r0, [r5, #8]	@ float
	bl	sqrtf
	str	r0, [r4, #8]	@ float
	ldr	r0, [r5, #12]	@ float
	bl	sqrtf
	str	r0, [r4, #12]	@ float
	ldr	r0, [r5, #16]	@ float
	bl	sqrtf
	add	r5, r5, #16
	str	r0, [r4, #16]	@ float
	ldr	r0, [r5, #4]	@ float
	bl	sqrtf
	add	r4, r4, #16
	str	r0, [r4, #4]	@ float
	ldr	r0, [r5, #8]	@ float
	bl	sqrtf
	str	r0, [r4, #8]	@ float
	ldr	r0, [r5, #12]	@ float
	bl	sqrtf
	add	r5, r5, #16
	cmp	r5, r7
	str	r0, [r4, #12]	@ float
	add	r4, r4, #16
	bne	.L392
	add	sl, sl, #1
	cmp	sl, r9
	bne	.L391
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L405:
	.align	2
.L404:
	.word	fval1+7168
	.word	fval1
	.word	fresult
	.size	bench_float_sqrt, .-bench_float_sqrt
	.align	2
	.global	fill_i64_array
	.type	fill_i64_array, %function
fill_i64_array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	fp, r0
	mov	r6, r1
	mov	r7, r2
	mov	r8, #0
	b	.L407
.L456:
	bne	.L412
	cmp	r6, #65536
	bcs	.L457
.L412:
	bl	lrand48
	mov	r9, r0, asr #31
	mov	r3, r9, lsr #16
	add	r2, r0, r3
	mov	r1, r2, asl #16
	mov	r0, r1, lsr #16
	rsb	r0, r3, r0
	mov	r1, r0, asr #31
.L411:
	orrs	r3, r0, r1
	moveq	r0, #1
	moveq	r1, #0
	add	ip, fp, r8
	add	sl, r8, #8
	cmp	r7, #0
	stmia	ip, {r0-r1}
	mov	r8, sl
	bhi	.L458
	bne	.L423
	cmp	r6, #65536
	bcs	.L459
.L423:
	bl	lrand48
	mov	r2, r0, asr #31
	mov	r3, r2, lsr #16
	add	r1, r0, r3
	mov	r0, r1, asl #16
	mov	lr, r0, lsr #16
	rsb	r0, r3, lr
	mov	r1, r0, asr #31
.L441:
	orrs	r3, r0, r1
	moveq	r0, #1
	moveq	r1, #0
	add	r9, fp, r8
	cmp	r7, #0
	stmia	r9, {r0-r1}
	add	r8, sl, #8
	bhi	.L460
	bne	.L429
	cmp	r6, #65536
	bcs	.L461
.L429:
	bl	lrand48
	mov	r3, r0, asr #31
	mov	lr, r3, lsr #16
	add	r1, r0, lr
	mov	r0, r1, asl #16
	mov	ip, r0, lsr #16
	rsb	r0, lr, ip
	mov	r1, r0, asr #31
.L446:
	orrs	r3, r0, r1
	moveq	r0, #1
	moveq	r1, #0
	add	r2, fp, r8
	cmp	r7, #0
	stmia	r2, {r0-r1}
	add	r9, sl, #16
	bhi	.L462
	bne	.L435
	cmp	r6, #65536
	bcs	.L463
.L435:
	bl	lrand48
	mov	r3, r0, asr #31
	mov	ip, r3, lsr #16
	add	r1, r0, ip
	mov	r0, r1, asl #16
	mov	r8, r0, lsr #16
	rsb	r0, ip, r8
	mov	r1, r0, asr #31
.L451:
	orrs	r3, r0, r1
	add	r8, sl, #24
	moveq	r0, #1
	moveq	r1, #0
	add	r2, fp, r9
	cmp	r8, #7168
	stmia	r2, {r0-r1}
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L407:
	cmp	r7, #0
	bls	.L456
	bl	lrand48
	mov	r4, r0
	mov	r5, r4, asr #31
	bl	lrand48
	mov	r5, r4
	mov	r1, r0, asr #31
	mov	r4, #0
	orr	r0, r0, r4
	orr	r1, r1, r5
	b	.L411
.L462:
	bl	lrand48
	mov	r5, r0
	bl	lrand48
	mov	r4, #0
	mov	r1, r0, asr #31
	orr	r0, r0, r4
	orr	r1, r1, r5
	b	.L451
.L458:
	bl	lrand48
	mov	r5, r0
	bl	lrand48
	mov	r4, #0
	mov	r1, r0, asr #31
	orr	r0, r0, r4
	orr	r1, r1, r5
	b	.L441
.L460:
	bl	lrand48
	mov	r5, r0
	bl	lrand48
	mov	r4, #0
	mov	r1, r0, asr #31
	orr	r0, r0, r4
	orr	r1, r1, r5
	b	.L446
.L459:
	bl	lrand48
	mov	r1, r0, asr #31
	b	.L441
.L461:
	bl	lrand48
	mov	r1, r0, asr #31
	b	.L446
.L457:
	bl	lrand48
	mov	r1, r0, asr #31
	b	.L411
.L463:
	bl	lrand48
	mov	r1, r0, asr #31
	b	.L451
	.size	fill_i64_array, .-fill_i64_array
	.align	2
	.global	fill_i32_array
	.type	fill_i32_array, %function
fill_i32_array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r7, #0
	b	.L465
.L501:
	bl	lrand48
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	add	r4, r7, #4
	cmp	r5, #65536
	str	r3, [r7, r6]
	mov	r7, r4
	bcs	.L488
.L502:
	bl	lrand48
	mov	r3, r0, asr #31
	mov	ip, r3, lsr #16
	add	r0, r0, ip
	mov	lr, r0, asl #16
	mov	r8, lr, lsr #16
	rsb	r0, ip, r8
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	cmp	r5, #65536
	str	r3, [r7, r6]
	add	r7, r4, #4
	bcs	.L490
.L503:
	bl	lrand48
	mov	lr, r0, asr #31
	mov	r2, lr, lsr #16
	add	ip, r0, r2
	mov	r8, ip, asl #16
	mov	r1, r8, lsr #16
	rsb	r0, r2, r1
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	cmp	r5, #65536
	str	r3, [r7, r6]
	add	r7, r4, #8
	bcs	.L492
.L504:
	bl	lrand48
	mov	r8, r0, asr #31
	mov	r3, r8, lsr #16
	add	r2, r0, r3
	mov	r1, r2, asl #16
	mov	r0, r1, lsr #16
	rsb	r0, r3, r0
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	cmp	r5, #65536
	str	r3, [r7, r6]
	add	r7, r4, #12
	bcs	.L494
.L505:
	bl	lrand48
	mov	r3, r0, asr #31
	mov	lr, r3, lsr #16
	add	r1, r0, lr
	mov	r0, r1, asl #16
	mov	ip, r0, lsr #16
	rsb	r0, lr, ip
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	cmp	r5, #65536
	str	r3, [r7, r6]
	add	r7, r4, #16
	bcs	.L496
.L506:
	bl	lrand48
	mov	r1, r0, asr #31
	mov	r8, r1, lsr #16
	add	lr, r0, r8
	mov	ip, lr, asl #16
	mov	r2, ip, lsr #16
	rsb	r0, r8, r2
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	cmp	r5, #65536
	str	r3, [r7, r6]
	add	r8, r4, #20
	bcs	.L498
.L507:
	bl	lrand48
	mov	ip, r0, asr #31
	mov	r3, ip, lsr #16
	add	r2, r0, r3
	mov	r0, r2, asl #16
	mov	r7, r0, lsr #16
	rsb	r0, r3, r7
.L499:
	cmp	r0, #0
	add	r7, r4, #24
	movne	r3, r0
	moveq	r3, #1
	cmp	r7, #7168
	str	r3, [r8, r6]
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}
.L465:
	cmp	r5, #65536
	bcs	.L501
	bl	lrand48
	mov	r4, r0, asr #31
	mov	r3, r4, lsr #16
	add	r2, r0, r3
	mov	r1, r2, asl #16
	mov	r0, r1, lsr #16
	rsb	r0, r3, r0
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	add	r4, r7, #4
	cmp	r5, #65536
	str	r3, [r7, r6]
	mov	r7, r4
	bcc	.L502
.L488:
	bl	lrand48
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	cmp	r5, #65536
	str	r3, [r7, r6]
	add	r7, r4, #4
	bcc	.L503
.L490:
	bl	lrand48
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	cmp	r5, #65536
	str	r3, [r7, r6]
	add	r7, r4, #8
	bcc	.L504
.L492:
	bl	lrand48
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	cmp	r5, #65536
	str	r3, [r7, r6]
	add	r7, r4, #12
	bcc	.L505
.L494:
	bl	lrand48
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	cmp	r5, #65536
	str	r3, [r7, r6]
	add	r7, r4, #16
	bcc	.L506
.L496:
	bl	lrand48
	cmp	r0, #0
	movne	r3, r0
	moveq	r3, #1
	cmp	r5, #65536
	str	r3, [r7, r6]
	add	r8, r4, #20
	bcc	.L507
.L498:
	bl	lrand48
	b	.L499
	.size	fill_i32_array, .-fill_i32_array
	.global	__ltdf2
	.global	__gtdf2
	.align	2
	.global	fill_double_array
	.type	fill_double_array, %function
fill_double_array:
	@ args = 8, pretend = 4, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #4
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	fp, r0
	str	r3, [sp, #36]
	mov	r6, r1
	mov	r7, r2
	mov	sl, #0
	add	r8, sp, #36
	ldmia	r8, {r8-r9}
.L509:
	bl	drand48
	mov	r5, r1
	mov	r4, r0
	bl	lrand48
	tst	r0, #1
	moveq	r0, r8
	moveq	r1, r9
	ldrne	r0, .L522
	movne	r1, #0
	mov	r2, r4
	mov	r3, r5
	bl	__muldf3
	mov	r2, r6
	mov	r3, r7
	mov	r4, r0
	mov	r5, r1
	bl	__ltdf2
	cmp	r0, #0
	bge	.L513
.L518:
	bl	drand48
	mov	r2, r8
	mov	r3, r9
	bl	__muldf3
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	mov	r2, r4
	mov	r3, r5
	bl	__gtdf2
	cmp	r0, #0
	bgt	.L518
.L513:
	add	r3, fp, sl
	add	sl, sl, #8
	cmp	sl, #7168
	stmia	r3, {r4-r5}
	bne	.L509
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sp, sp, #4
	bx	lr
.L523:
	.align	2
.L522:
	.word	1072693248
	.size	fill_double_array, .-fill_double_array
	.global	__truncdfsf2
	.align	2
	.global	fill_float_array
	.type	fill_float_array, %function
fill_float_array:
	@ args = 8, pretend = 4, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #4
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	fp, r0
	str	r3, [sp, #36]
	mov	r6, r1
	mov	r7, r2
	mov	sl, #0
	add	r8, sp, #36
	ldmia	r8, {r8-r9}
.L525:
	bl	drand48
	mov	r5, r1
	mov	r4, r0
	bl	lrand48
	tst	r0, #1
	moveq	r0, r8
	moveq	r1, r9
	ldrne	r0, .L538
	movne	r1, #0
	mov	r2, r4
	mov	r3, r5
	bl	__muldf3
	mov	r2, r6
	mov	r3, r7
	mov	r4, r0
	mov	r5, r1
	bl	__ltdf2
	cmp	r0, #0
	bge	.L529
.L534:
	bl	drand48
	mov	r2, r8
	mov	r3, r9
	bl	__muldf3
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	mov	r2, r4
	mov	r3, r5
	bl	__gtdf2
	cmp	r0, #0
	bgt	.L534
.L529:
	mov	r0, r4
	mov	r1, r5
	bl	__truncdfsf2
	str	r0, [sl, fp]	@ float
	add	sl, sl, #4
	cmp	sl, #7168
	bne	.L525
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sp, sp, #4
	bx	lr
.L539:
	.align	2
.L538:
	.word	1072693248
	.size	fill_float_array, .-fill_float_array
	.align	2
	.global	timer
	.type	timer, %function
timer:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	ldr	r3, .L545
	sub	sp, sp, #8
	subs	r1, r0, #0
	ldmia	r3, {r4-r5}
	mov	r0, sp
	stmia	sp, {r4-r5}
	beq	.L541
	bl	sync
	mov	r0, #0
	bl	fflush
	ldr	r0, .L545+4
	bl	usleep
	mov	r1, #0
	ldr	r0, .L545+8
	bl	gettimeofday
	mov	r0, #0
	mov	r1, #0
.L543:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, pc}
.L541:
	bl	gettimeofday
	ldr	r4, .L545+8
	ldr	r0, [sp, #0]
	ldr	ip, [r4, #0]
	rsb	r2, r0, r0, asl #5
	rsb	r1, ip, ip, asl #5
	rsb	r3, r2, r2, asl #6
	rsb	r2, r1, r1, asl #6
	add	ip, ip, r2, asl #3
	ldr	r1, [r4, #4]
	ldr	r2, [sp, #4]
	add	r0, r0, r3, asl #3
	add	r3, r2, r0, asl #6
	add	r1, r1, ip, asl #6
	rsb	r2, r1, r3
	mov	r0, r2
	mov	r1, r0, asr #31
	b	.L543
.L546:
	.align	2
.L545:
	.word	C.15.3864
	.word	500000
	.word	begin_time.3861
	.size	timer, .-timer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"AVG: %llu usecs, or %f secs.\012\000"
	.global	__cmpdi2
	.global	__floatdidf
	.text
	.align	2
	.global	avg_of_3_runs
	.type	avg_of_3_runs, %function
avg_of_3_runs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	mov	r8, r1
	sub	sp, sp, #4
	mov	sl, r0
	mov	r0, #1
	bl	timer
	mov	r0, r8
	mov	lr, pc
	bx	sl
	mov	r0, #0
	bl	timer
	mov	r4, r0
	mov	r0, #1
	mov	r5, r1
	bl	timer
	mov	r0, r8
	mov	lr, pc
	bx	sl
	mov	r0, #0
	bl	timer
	mov	r6, r0
	mov	r0, #1
	mov	r7, r1
	bl	timer
	mov	r0, r8
	mov	lr, pc
	bx	sl
	mov	r0, #0
	bl	timer
	adds	r4, r4, r6
	adc	r5, r5, r7
	adds	r0, r0, r4
	adc	r1, r1, r5
	mov	r2, #3
	mov	r3, #0
	bl	__udivdi3
	mov	r3, #0
	mov	r2, #0
	mov	r5, r0
	mov	r6, r1
	bl	__cmpdi2
	mov	r4, #0
	mov	r3, #1
	cmp	r0, #0
	and	r7, r5, r3
	and	r8, r6, r4
	mov	r0, r5
	mov	r1, r6
	ble	.L549
	bl	__floatdidf
.L548:
	ldr	r2, .L551
	mov	r3, #0
	bl	__divdf3
	mov	r2, r6
	mov	ip, r1
	mov	r3, r0
	mov	r1, r5
	ldr	r0, .L551+4
	str	ip, [sp, #0]
	bl	printf
	mov	r0, r5
	mov	r1, r6
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L549:
	movs	r4, r6, lsr #1
	mov	r3, r5, rrx
	orr	r0, r7, r3
	orr	r1, r8, r4
	bl	__floatdidf
	mov	r2, r0
	mov	r3, r1
	bl	__adddf3
	b	.L548
.L552:
	.align	2
.L551:
	.word	1093567616
	.word	.LC0
	.size	avg_of_3_runs, .-avg_of_3_runs
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"\012SQUARE-ROOT BENCHMARKS:\000"
	.align	2
.LC2:
	.ascii	"Float:\012\011\000"
	.align	2
.LC3:
	.ascii	"Float (Quake sqrt):\012\011\000"
	.align	2
.LC4:
	.ascii	"Fixed-point 16.16:\012\011\000"
	.align	2
.LC5:
	.ascii	"Double:\012\011\000"
	.align	2
.LC6:
	.ascii	"Double (approximate sqrt):\012\011\000"
	.text
	.align	2
	.global	bench_squareroot
	.type	bench_squareroot, %function
bench_squareroot:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r7, .L555
	ldr	r5, .L555+4
	ldr	r6, .L555+8
	sub	sp, sp, #4
	mov	r4, r0
	ldr	r0, .L555+12
	bl	puts
	mov	r8, #0
	mov	r2, r6
	ldr	r3, .L555+16
	mov	r1, r5
	mov	r0, r7
	str	r8, [sp, #0]
	bl	fill_float_array
	ldr	r0, .L555+20
	bl	printf
	mov	r1, r4
	ldr	r0, .L555+24
	bl	avg_of_3_runs
	ldr	r0, .L555+28
	bl	printf
	mov	r1, r4
	ldr	r0, .L555+32
	bl	avg_of_3_runs
	mov	r1, r7
	ldr	r0, .L555+36
	bl	fill_fixed_array_from_float_array
	ldr	r0, .L555+40
	bl	printf
	mov	r1, r4
	ldr	r0, .L555+44
	bl	avg_of_3_runs
	mov	r2, r6
	ldr	r3, .L555+16
	mov	r1, r5
	ldr	r0, .L555+48
	str	r8, [sp, #0]
	bl	fill_double_array
	ldr	r0, .L555+52
	bl	printf
	mov	r1, r4
	ldr	r0, .L555+56
	bl	avg_of_3_runs
	ldr	r0, .L555+60
	bl	printf
	ldr	r0, .L555+64
	mov	r1, r4
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	avg_of_3_runs
.L556:
	.align	2
.L555:
	.word	fval1
	.word	1055193269
	.word	-1998362383
	.word	.LC1
	.word	1088421888
	.word	.LC2
	.word	bench_float_sqrt
	.word	.LC3
	.word	bench_quake_sqrt
	.word	xval1
	.word	.LC4
	.word	bench_fixed_sqrt
	.word	dval1
	.word	.LC5
	.word	bench_double_sqrt
	.word	.LC6
	.word	bench_approximate_double_sqrt
	.size	bench_squareroot, .-bench_squareroot
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"\012DIVISION BENCHMARKS:\000"
	.align	2
.LC8:
	.ascii	"32-bit integer:\012\011\000"
	.align	2
.LC9:
	.ascii	"64-bit integer:\012\011\000"
	.text
	.align	2
	.global	bench_division
	.type	bench_division, %function
bench_division:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	mov	sl, r0
	sub	sp, sp, #4
	ldr	r8, .L559
	ldr	r0, .L559+4
	bl	puts
	ldr	r4, .L559+8
	ldr	r5, .L559+12
	ldr	r7, .L559+16
	ldr	r0, .L559+20
	bl	printf
	mov	r6, #0
	mov	r0, r8
	ldr	r3, .L559+24
	ldr	r1, .L559+28
	mov	r2, #0
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r2, r5
	ldr	r3, .L559+32
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, sl
	ldr	r0, .L559+36
	bl	avg_of_3_runs
	ldr	r0, .L559+40
	bl	printf
	ldr	r3, .L559+24
	ldr	r0, .L559+44
	ldr	r1, .L559+28
	mov	r2, #0
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r2, r5
	ldr	r3, .L559+32
	mov	r1, r4
	ldr	r0, .L559+48
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r1, sl
	ldr	r0, .L559+52
	bl	avg_of_3_runs
	ldr	r0, .L559+56
	bl	printf
	mov	r0, r8
	ldr	r3, .L559+24
	ldr	r1, .L559+28
	mov	r2, #0
	str	r6, [sp, #0]
	bl	fill_float_array
	ldr	r3, .L559+32
	mov	r2, r5
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, r8
	ldr	r0, .L559+60
	bl	fill_fixed_array_from_float_array
	mov	r1, r7
	ldr	r0, .L559+64
	bl	fill_fixed_array_from_float_array
	mov	r1, sl
	ldr	r0, .L559+68
	bl	avg_of_3_runs
	ldr	r0, .L559+72
	bl	printf
	ldr	r0, .L559+76
	mvn	r1, #0
	bl	fill_i32_array
	ldr	r0, .L559+80
	ldr	r1, .L559+84
	bl	fill_i32_array
	mov	r1, sl
	ldr	r0, .L559+88
	bl	avg_of_3_runs
	ldr	r0, .L559+92
	bl	printf
	ldr	r0, .L559+96
	mvn	r1, #0
	mvn	r2, #0
	bl	fill_i64_array
	ldr	r0, .L559+100
	mvn	r1, #0
	mov	r2, #0
	bl	fill_i64_array
	ldr	r0, .L559+104
	mov	r1, sl
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	avg_of_3_runs
.L560:
	.align	2
.L559:
	.word	fval1
	.word	.LC7
	.word	1069128089
	.word	-1717986918
	.word	fval2
	.word	.LC2
	.word	1084751872
	.word	1072693248
	.word	1085276160
	.word	bench_float_div
	.word	.LC5
	.word	dval1
	.word	dval2
	.word	bench_double_div
	.word	.LC4
	.word	xval1
	.word	xval2
	.word	bench_fixed_div
	.word	.LC8
	.word	i32val1
	.word	i32val2
	.word	65535
	.word	bench_i32_div
	.word	.LC9
	.word	i64val1
	.word	i64val2
	.word	bench_i64_div
	.size	bench_division, .-bench_division
	.section	.rodata.str1.4
	.align	2
.LC10:
	.ascii	"\012MULTIPLICATION BENCHMARKS:\000"
	.align	2
.LC11:
	.ascii	"Fixed-point:\012\011\000"
	.text
	.align	2
	.global	bench_multiplication
	.type	bench_multiplication, %function
bench_multiplication:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	mov	sl, r0
	sub	sp, sp, #4
	ldr	r4, .L563
	ldr	r5, .L563+4
	ldr	r8, .L563+8
	ldr	r0, .L563+12
	bl	puts
	ldr	r7, .L563+16
	ldr	r0, .L563+20
	bl	printf
	mov	r6, #0
	mov	r0, r8
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L563+24
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r2, r5
	ldr	r3, .L563+24
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, sl
	ldr	r0, .L563+28
	bl	avg_of_3_runs
	ldr	r0, .L563+32
	bl	printf
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L563+24
	ldr	r0, .L563+36
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r2, r5
	ldr	r3, .L563+24
	mov	r1, r4
	ldr	r0, .L563+40
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r1, sl
	ldr	r0, .L563+44
	bl	avg_of_3_runs
	ldr	r0, .L563+48
	bl	printf
	mov	r0, r8
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L563+24
	str	r6, [sp, #0]
	bl	fill_float_array
	ldr	r3, .L563+24
	mov	r2, r5
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, r8
	ldr	r0, .L563+52
	bl	fill_fixed_array_from_float_array
	mov	r1, r7
	ldr	r0, .L563+56
	bl	fill_fixed_array_from_float_array
	ldr	r4, .L563+60
	mov	r1, sl
	ldr	r0, .L563+64
	bl	avg_of_3_runs
	ldr	r0, .L563+68
	bl	printf
	mov	r1, r4
	ldr	r0, .L563+72
	bl	fill_i32_array
	mov	r1, r4
	ldr	r0, .L563+76
	bl	fill_i32_array
	mov	r1, sl
	ldr	r0, .L563+80
	bl	avg_of_3_runs
	mvn	r4, #0
	mov	r5, #0
	ldr	r0, .L563+84
	bl	printf
	mov	r1, r4
	mov	r2, r5
	ldr	r0, .L563+88
	bl	fill_i64_array
	mov	r1, r4
	mov	r2, r5
	ldr	r0, .L563+92
	bl	fill_i64_array
	ldr	r0, .L563+96
	mov	r1, sl
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	avg_of_3_runs
.L564:
	.align	2
.L563:
	.word	1062232653
	.word	-755914244
	.word	fval1
	.word	.LC10
	.word	fval2
	.word	.LC2
	.word	1080467456
	.word	bench_float_mul
	.word	.LC5
	.word	dval1
	.word	dval2
	.word	bench_double_mul
	.word	.LC11
	.word	xval1
	.word	xval2
	.word	65535
	.word	bench_fixed_mul
	.word	.LC8
	.word	i32val1
	.word	i32val2
	.word	bench_i32_mul
	.word	.LC9
	.word	i64val1
	.word	i64val2
	.word	bench_i64_mul
	.size	bench_multiplication, .-bench_multiplication
	.section	.rodata.str1.4
	.align	2
.LC12:
	.ascii	"\012ADDITION BENCHMARKS:\000"
	.align	2
.LC13:
	.ascii	"Fixed-point 16.16 (signed 32-bit integer):\012\011\000"
	.align	2
.LC14:
	.ascii	"32-bit (unsigned) integer:\012\011\000"
	.text
	.align	2
	.global	bench_addition
	.type	bench_addition, %function
bench_addition:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	mov	sl, r0
	sub	sp, sp, #4
	ldr	r4, .L567
	ldr	r5, .L567+4
	ldr	r8, .L567+8
	ldr	r0, .L567+12
	bl	puts
	ldr	r7, .L567+16
	ldr	r0, .L567+20
	bl	printf
	mov	r6, #0
	mov	r0, r8
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L567+24
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r2, r5
	ldr	r3, .L567+24
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, sl
	ldr	r0, .L567+28
	bl	avg_of_3_runs
	ldr	r0, .L567+32
	bl	printf
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L567+24
	ldr	r0, .L567+36
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r2, r5
	ldr	r3, .L567+24
	mov	r1, r4
	ldr	r0, .L567+40
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r1, sl
	ldr	r0, .L567+44
	bl	avg_of_3_runs
	ldr	r0, .L567+48
	bl	printf
	mov	r0, r8
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L567+24
	str	r6, [sp, #0]
	bl	fill_float_array
	ldr	r3, .L567+24
	mov	r2, r5
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, r8
	ldr	r0, .L567+52
	bl	fill_fixed_array_from_float_array
	mov	r1, r7
	ldr	r0, .L567+56
	bl	fill_fixed_array_from_float_array
	mov	r1, sl
	ldr	r0, .L567+60
	bl	avg_of_3_runs
	mvn	r4, #0
	ldr	r0, .L567+64
	bl	printf
	mov	r1, r4
	ldr	r0, .L567+68
	bl	fill_i32_array
	mov	r1, r4
	ldr	r0, .L567+72
	bl	fill_i32_array
	mov	r1, sl
	ldr	r0, .L567+76
	bl	avg_of_3_runs
	mvn	r4, #0
	mvn	r5, #0
	ldr	r0, .L567+80
	bl	printf
	mov	r1, r4
	mov	r2, r5
	ldr	r0, .L567+84
	bl	fill_i64_array
	mov	r1, r4
	mov	r2, r5
	ldr	r0, .L567+88
	bl	fill_i64_array
	ldr	r0, .L567+92
	mov	r1, sl
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	avg_of_3_runs
.L568:
	.align	2
.L567:
	.word	1058682594
	.word	-350469331
	.word	fval1
	.word	.LC12
	.word	fval2
	.word	.LC2
	.word	1087373184
	.word	bench_float_add
	.word	.LC5
	.word	dval1
	.word	dval2
	.word	bench_double_add
	.word	.LC13
	.word	xval1
	.word	xval2
	.word	bench_fixed_add
	.word	.LC14
	.word	i32val1
	.word	i32val2
	.word	bench_i32_add
	.word	.LC9
	.word	i64val1
	.word	i64val2
	.word	bench_i64_add
	.size	bench_addition, .-bench_addition
	.section	.rodata.str1.4
	.align	2
.LC15:
	.ascii	"Missing argument: number of iterations\000"
	.align	2
.LC16:
	.ascii	"FPBENCH - Math Speed Comparison\000"
	.align	2
.LC17:
	.ascii	"Written by Dan Silsby  dansilsby <AT> gmail <DOT> c"
	.ascii	"om\000"
	.align	2
.LC18:
	.ascii	"NOTE: before each benchmark is timed, sync(), fflus"
	.ascii	"h(),\012and .5 second delay are all executed.\000"
	.align	2
.LC19:
	.ascii	"Each time reported is an average of 3 benchmark run"
	.ascii	"s.\012\000"
	.align	2
.LC20:
	.ascii	"COMPILED WITH MANUAL 4-FOLD UNROLLING OF LOOPS\000"
	.align	2
.LC21:
	.ascii	"Reported size of floats on this architecture:\011%d"
	.ascii	"\012\000"
	.align	2
.LC22:
	.ascii	"Reported size of doubles on this architecture:\011%"
	.ascii	"d\012\000"
	.align	2
.LC23:
	.ascii	"Benchmark requested: %u iterations.\012\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r4, r0
	ldr	r0, .L575
	mov	r5, r1
	bl	srand48
	mov	r1, #0
	cmp	r4, #1
	ldr	r0, .L575+4
	mov	r3, r1
	mov	r2, #10
	ble	.L574
	ldr	r0, [r5, #4]
	bl	__strtol_internal
	mov	r4, r0
	ldr	r0, .L575+8
	bl	puts
	ldr	r0, .L575+12
	bl	puts
	ldr	r0, .L575+16
	bl	puts
	ldr	r0, .L575+20
	bl	puts
	ldr	r0, .L575+24
	bl	puts
	mov	r1, #32
	ldr	r0, .L575+28
	bl	printf
	mov	r1, #64
	ldr	r0, .L575+32
	bl	printf
	mov	r1, r4
	ldr	r0, .L575+36
	bl	printf
	bl	sync
	ldr	r0, .L575+40
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
	ldmfd	sp!, {r4, r5, pc}
.L574:
	bl	puts
	mov	r0, #1
	ldmfd	sp!, {r4, r5, pc}
.L576:
	.align	2
.L575:
	.word	-559038737
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	1000000
	.size	main, .-main
	.local	begin_time.3861
	.comm	begin_time.3861,8,4
	.section	.rodata
	.align	2
	.type	C.15.3864, %object
	.size	C.15.3864, 8
C.15.3864:
	.space	8
	.comm	fval1,7168,4
	.comm	fval2,7168,4
	.comm	fresult,7168,4
	.comm	xval1,7168,4
	.comm	xval2,7168,4
	.comm	xresult,7168,4
	.comm	dval1,7168,4
	.comm	dval2,7168,4
	.comm	dresult,7168,4
	.comm	i32val1,7168,4
	.comm	i32val2,7168,4
	.comm	i32result,7168,4
	.comm	i64val1,7168,4
	.comm	i64val2,7168,4
	.comm	i64result,7168,4
	.ident	"GCC: (GNU) 4.1.1"
