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
	rsbcs	r0, r3, r0
	add	r3, r2, #8192
	mov	r3, r3, asl #13
	cmp	r0, r3
	orrcs	r2, r2, #16384
	rsbcs	r0, r3, r0
	add	r3, r2, #4096
	mov	r3, r3, asl #12
	cmp	r0, r3
	orrcs	r2, r2, #8192
	rsbcs	r0, r3, r0
	add	r3, r2, #2048
	mov	r3, r3, asl #11
	cmp	r0, r3
	orrcs	r2, r2, #4096
	rsbcs	r0, r3, r0
	add	r3, r2, #1024
	mov	r3, r3, asl #10
	cmp	r0, r3
	orrcs	r2, r2, #2048
	rsbcs	r0, r3, r0
	add	r3, r2, #512
	mov	r3, r3, asl #9
	cmp	r0, r3
	orrcs	r2, r2, #1024
	rsbcs	r0, r3, r0
	add	r3, r2, #256
	mov	r3, r3, asl #8
	cmp	r0, r3
	orrcs	r2, r2, #512
	rsbcs	r0, r3, r0
	add	r3, r2, #128
	mov	r3, r3, asl #7
	cmp	r0, r3
	orrcs	r2, r2, #256
	rsbcs	r0, r3, r0
	add	r3, r2, #64
	mov	r3, r3, asl #6
	cmp	r0, r3
	orrcs	r2, r2, #128
	rsbcs	r0, r3, r0
	add	r3, r2, #32
	mov	r3, r3, asl #5
	cmp	r0, r3
	orrcs	r2, r2, #64
	rsbcs	r0, r3, r0
	add	r3, r2, #16
	mov	r3, r3, asl #4
	cmp	r0, r3
	orrcs	r2, r2, #32
	rsbcs	r0, r3, r0
	add	r3, r2, #8
	mov	r3, r3, asl #3
	cmp	r0, r3
	orrcs	r2, r2, #16
	rsbcs	r0, r3, r0
	add	r3, r2, #4
	mov	r3, r3, asl #2
	cmp	r0, r3
	orrcs	r2, r2, #8
	rsbcs	r0, r3, r0
	add	r3, r2, #2
	mov	r3, r3, asl #1
	cmp	r0, r3
	orrcs	r2, r2, #4
	rsbcs	r0, r3, r0
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
	mov	r6, r0
	mov	r7, r1
	ldmia	sp, {r0-r1}
	mov	r2, r0
	mov	r3, r1
	bl	__muldf3
	mov	r2, sl
	mov	r4, r0
	mov	r5, r1
	mov	r3, fp
	ldmia	sp, {r0-r1}
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
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
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r4, #0
.L43:
	ldr	r1, [r4, r5]	@ float
	ldr	r0, .L49
	bl	__mulsf3
	bl	__fixsfsi
	str	r0, [r4, r6]
	add	r4, r4, #4
	cmp	r4, #7168
	bne	.L43
	ldmfd	sp!, {r4, r5, r6, pc}
.L50:
	.align	2
.L49:
	.word	1199570944
	.size	fill_fixed_array_from_float_array, .-fill_fixed_array_from_float_array
	.global	__addsf3
	.align	2
	.global	bench_float_add
	.type	bench_float_add, %function
bench_float_add:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	fp, r0, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	ldr	r8, .L60
	ldr	r7, .L60+4
	ldr	r6, .L60+8
	mov	r9, #0
.L54:
	mov	sl, #0
	mov	r5, sl
.L55:
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__addsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__addsf3
	add	sl, sl, #1
	cmp	sl, #56
	str	r0, [r8, r4, asl #2]	@ float
	add	r5, r4, #1
	bne	.L55
	add	r9, r9, #1
	cmp	r9, fp
	bne	.L54
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L61:
	.align	2
.L60:
	.word	fresult
	.word	fval1
	.word	fval2
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
	str	r0, [sp, #4]
	beq	.L68
	mov	r2, #0
	ldr	r9, .L71
	ldr	sl, .L71+4
	ldr	r8, .L71+8
	str	r2, [sp, #0]
.L65:
	mov	fp, #0
	mov	r4, fp
.L66:
	mov	r5, r4, asl #3
	add	ip, r5, sl
	add	r1, r5, r8
	ldmia	r1, {r2-r3}
	ldmia	ip, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r7, r4, asl #3
	add	ip, r7, r8
	add	lr, r7, sl
	add	r6, r6, r9
	ldmia	ip, {r2-r3}
	stmia	r6, {r0-r1}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r7, r7, r9
	stmia	r7, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__adddf3
	add	fp, fp, #1
	add	r5, r5, r9
	cmp	fp, #28
	stmia	r5, {r0-r1}
	add	r4, r4, #1
	bne	.L66
	ldr	r3, [sp, #0]
	ldr	r2, [sp, #4]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [sp, #0]
	bne	.L65
.L68:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L72:
	.align	2
.L71:
	.word	dresult
	.word	dval1
	.word	dval2
	.size	bench_double_add, .-bench_double_add
	.align	2
	.global	bench_fixed_add
	.type	bench_fixed_add, %function
bench_fixed_add:
	@ args = 0, pretend = 0, frame = 428
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #428
	str	r0, [sp, #304]
	beq	.L79
	mov	r1, #0
	ldr	sl, .L82
	ldr	r9, .L82+4
	ldr	fp, .L82+8
	str	r1, [sp, #308]
.L76:
	mov	r8, #0
	str	r8, [sp, #316]
	str	r8, [sp, #424]
.L77:
	ldr	r2, [sp, #424]
	add	r2, r2, #1
	add	r3, r2, #1
	add	r4, r3, #1
	add	r7, r4, #1
	add	r8, r7, #1
	add	ip, r8, #1
	add	lr, ip, #1
	add	r1, lr, #1
	str	r2, [sp, #312]
	add	r2, r1, #1
	add	r5, r2, #1
	add	r6, r5, #1
	str	r3, [sp, #320]
	add	r3, r6, #1
	str	r4, [sp, #324]
	add	r4, r3, #1
	str	r7, [sp, #328]
	add	r7, r4, #1
	str	r8, [sp, #332]
	add	r8, r7, #1
	str	ip, [sp, #336]
	add	ip, r8, #1
	str	lr, [sp, #340]
	add	lr, ip, #1
	str	r1, [sp, #344]
	add	r1, lr, #1
	str	r2, [sp, #348]
	add	r2, r1, #1
	str	r3, [sp, #352]
	add	r3, r2, #1
	str	r4, [sp, #356]
	add	r4, r3, #1
	str	r7, [sp, #360]
	add	r7, r4, #1
	str	r8, [sp, #364]
	str	r2, [sp, #380]
	add	r8, r7, #1
	str	r3, [sp, #384]
	str	r4, [sp, #388]
	ldr	r2, [sp, #424]
	ldr	r3, [sp, #424]
	ldr	r4, [sp, #312]
	str	ip, [sp, #368]
	add	ip, r8, #1
	ldr	r2, [r9, r2, asl #2]
	ldr	r3, [fp, r3, asl #2]
	str	lr, [sp, #372]
	ldr	r4, [r9, r4, asl #2]
	add	lr, ip, #1
	str	r1, [sp, #376]
	add	r1, lr, #1
	str	r7, [sp, #392]
	str	r8, [sp, #396]
	str	ip, [sp, #400]
	str	lr, [sp, #404]
	str	r1, [sp, #408]
	str	r2, [sp, #216]
	str	r3, [sp, #212]
	str	r4, [sp, #208]
	ldr	r7, [sp, #312]
	ldr	r8, [sp, #320]
	ldr	ip, [sp, #320]
	ldr	lr, [sp, #324]
	ldr	r7, [fp, r7, asl #2]
	ldr	r8, [r9, r8, asl #2]
	ldr	ip, [fp, ip, asl #2]
	ldr	lr, [r9, lr, asl #2]
	str	r7, [sp, #204]
	str	r8, [sp, #200]
	str	ip, [sp, #196]
	str	lr, [sp, #192]
	ldr	r1, [sp, #324]
	ldr	r2, [sp, #328]
	ldr	r3, [sp, #328]
	ldr	r4, [sp, #332]
	ldr	r7, [sp, #332]
	ldr	r8, [sp, #336]
	ldr	ip, [sp, #336]
	ldr	lr, [sp, #340]
	ldr	r1, [fp, r1, asl #2]
	ldr	r2, [r9, r2, asl #2]
	ldr	r3, [fp, r3, asl #2]
	ldr	r4, [r9, r4, asl #2]
	ldr	r7, [fp, r7, asl #2]
	ldr	r8, [r9, r8, asl #2]
	ldr	ip, [fp, ip, asl #2]
	ldr	lr, [r9, lr, asl #2]
	str	r1, [sp, #188]
	str	r2, [sp, #184]
	str	r3, [sp, #180]
	str	r4, [sp, #176]
	str	r7, [sp, #172]
	str	r8, [sp, #168]
	str	ip, [sp, #164]
	str	lr, [sp, #160]
	add	r1, sp, #340
	ldmia	r1, {r1, r2, r7}	@ phole ldm
	ldr	r3, [fp, r2, asl #2]
	ldr	r1, [fp, r1, asl #2]
	ldr	r7, [fp, r7, asl #2]
	ldr	r4, [sp, #348]
	ldr	r8, [sp, #408]
	str	r1, [sp, #156]
	ldr	r0, [r9, r2, asl #2]
	str	r3, [sp, #152]
	ldr	r4, [r9, r4, asl #2]
	str	r7, [sp, #144]
	ldr	ip, [sp, #216]
	ldr	lr, [sp, #212]
	ldr	r1, [sp, #208]
	ldr	r2, [sp, #204]
	ldr	r3, [sp, #200]
	ldr	r7, [sp, #196]
	add	r8, r8, #1
	str	r4, [sp, #148]
	str	r8, [sp, #412]
	add	r4, ip, lr
	ldr	r8, [sp, #192]
	add	lr, r1, r2
	add	ip, r3, r7
	ldr	r2, [sp, #188]
	ldr	r3, [sp, #184]
	ldr	r7, [sp, #180]
	add	r1, r8, r2
	add	r2, r3, r7
	ldr	r8, [sp, #176]
	ldr	r7, [sp, #172]
	add	r3, r8, r7
	ldr	r7, [sp, #164]
	ldr	r8, [sp, #168]
	add	r8, r8, r7
	str	r8, [sp, #300]
	ldr	r7, [sp, #156]
	ldr	r8, [sp, #160]
	add	r8, r8, r7
	str	r8, [sp, #296]
	ldr	r8, [sp, #152]
	ldr	r7, [sp, #148]
	add	r0, r0, r8
	ldr	r8, [sp, #144]
	add	r7, r7, r8
	str	r7, [sp, #292]
	ldr	r8, [fp, r5, asl #2]
	ldr	r7, [r9, r5, asl #2]
	add	r7, r7, r8
	str	r7, [sp, #288]
	ldr	r8, [fp, r6, asl #2]
	ldr	r7, [r9, r6, asl #2]
	add	r7, r7, r8
	str	r7, [sp, #284]
	ldr	r7, [sp, #412]
	ldr	r8, [sp, #424]
	add	r7, r7, #1
	str	r4, [sl, r8, asl #2]
	str	r7, [sp, #416]
	ldr	r4, [sp, #312]
	ldr	r7, [sp, #320]
	str	lr, [sl, r4, asl #2]
	ldr	r8, [sp, #324]
	str	ip, [sl, r7, asl #2]
	ldr	ip, [sp, #328]
	str	r1, [sl, r8, asl #2]
	ldr	lr, [sp, #332]
	str	r2, [sl, ip, asl #2]
	ldr	r1, [sp, #336]
	ldr	r2, [sp, #300]
	str	r3, [sl, lr, asl #2]
	ldr	r4, [sp, #296]
	str	r2, [sl, r1, asl #2]
	ldr	r3, [sp, #340]
	ldr	r7, [sp, #344]
	ldr	ip, [sp, #292]
	ldr	r8, [sp, #348]
	ldr	lr, [sp, #288]
	ldr	r1, [sp, #284]
	str	r4, [sl, r3, asl #2]
	str	r0, [sl, r7, asl #2]
	str	ip, [sl, r8, asl #2]
	str	lr, [sl, r5, asl #2]
	str	r1, [sl, r6, asl #2]
	ldr	r3, [sp, #352]
	ldr	r4, [sp, #352]
	ldr	r7, [sp, #356]
	ldr	r2, [sp, #416]
	ldr	r3, [r9, r3, asl #2]
	ldr	r4, [fp, r4, asl #2]
	ldr	r7, [r9, r7, asl #2]
	add	r2, r2, #1
	str	r2, [sp, #420]
	str	r3, [sp, #140]
	str	r4, [sp, #136]
	str	r7, [sp, #128]
	ldr	r8, [sp, #356]
	ldr	ip, [sp, #360]
	ldr	lr, [sp, #360]
	ldr	r1, [sp, #364]
	ldr	r2, [sp, #364]
	ldr	r3, [sp, #368]
	ldr	r4, [sp, #368]
	ldr	r7, [sp, #372]
	ldr	r8, [fp, r8, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	lr, [fp, lr, asl #2]
	ldr	r1, [r9, r1, asl #2]
	ldr	r2, [fp, r2, asl #2]
	ldr	r3, [r9, r3, asl #2]
	ldr	r4, [fp, r4, asl #2]
	ldr	r7, [r9, r7, asl #2]
	str	r8, [sp, #124]
	str	ip, [sp, #120]
	str	lr, [sp, #116]
	str	r1, [sp, #112]
	str	r2, [sp, #108]
	str	r3, [sp, #104]
	str	r4, [sp, #100]
	str	r7, [sp, #96]
	ldr	r8, [sp, #372]
	ldr	ip, [sp, #376]
	ldr	lr, [sp, #376]
	ldr	r1, [sp, #380]
	ldr	r8, [fp, r8, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	lr, [fp, lr, asl #2]
	ldr	r1, [r9, r1, asl #2]
	ldr	r3, [sp, #384]
	str	r8, [sp, #92]
	str	ip, [sp, #88]
	str	lr, [sp, #84]
	str	r1, [sp, #80]
	ldr	r2, [sp, #380]
	ldr	r7, [sp, #388]
	ldr	r8, [sp, #388]
	ldr	ip, [sp, #392]
	ldr	lr, [sp, #392]
	ldr	r1, [sp, #396]
	ldr	r4, [fp, r3, asl #2]
	ldr	r2, [fp, r2, asl #2]
	ldr	r7, [r9, r7, asl #2]
	ldr	r8, [fp, r8, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	lr, [fp, lr, asl #2]
	ldr	r1, [r9, r1, asl #2]
	ldr	r0, [r9, r3, asl #2]
	str	r2, [sp, #76]
	str	r4, [sp, #72]
	str	r7, [sp, #68]
	str	r8, [sp, #64]
	str	ip, [sp, #60]
	str	lr, [sp, #56]
	str	r1, [sp, #52]
	ldr	r2, [sp, #396]
	ldr	r8, [sp, #136]
	ldr	r4, [sp, #140]
	ldr	r2, [fp, r2, asl #2]
	ldr	r3, [sp, #420]
	add	r4, r4, r8
	add	r7, r3, #1
	ldr	lr, [sp, #124]
	str	r2, [sp, #48]
	str	r4, [sp, #132]
	ldr	r2, [sp, #116]
	ldr	r4, [sp, #108]
	ldr	ip, [sp, #128]
	ldr	r1, [sp, #120]
	ldr	r3, [sp, #112]
	add	ip, ip, lr
	add	r1, r1, r2
	add	r3, r3, r4
	str	ip, [sp, #280]
	str	r1, [sp, #276]
	ldr	ip, [sp, #100]
	ldr	r1, [sp, #92]
	str	r3, [sp, #272]
	ldr	r8, [sp, #104]
	ldr	r3, [sp, #84]
	ldr	lr, [sp, #96]
	ldr	r2, [sp, #88]
	add	r8, r8, ip
	add	lr, lr, r1
	add	r2, r2, r3
	ldr	r1, [sp, #64]
	ldr	r3, [sp, #56]
	str	r8, [sp, #268]
	str	lr, [sp, #264]
	ldr	r8, [sp, #76]
	str	r2, [sp, #260]
	ldr	r4, [sp, #80]
	ldr	lr, [sp, #68]
	ldr	r2, [sp, #60]
	add	r4, r4, r8
	ldr	ip, [sp, #72]
	add	lr, lr, r1
	add	r2, r2, r3
	str	r4, [sp, #256]
	str	lr, [sp, #252]
	str	r2, [sp, #248]
	ldr	r8, [sp, #48]
	ldr	r4, [sp, #52]
	add	r0, r0, ip
	ldr	lr, [sp, #132]
	ldr	ip, [sp, #352]
	ldr	r2, [sp, #280]
	ldr	r1, [sp, #356]
	add	r4, r4, r8
	str	lr, [sl, ip, asl #2]
	ldr	r3, [sp, #360]
	str	r2, [sl, r1, asl #2]
	ldr	lr, [sp, #272]
	ldr	ip, [sp, #364]
	ldr	r2, [sp, #268]
	ldr	r1, [sp, #368]
	str	r4, [sp, #244]
	ldr	r4, [sp, #276]
	add	r8, r7, #1
	str	r4, [sl, r3, asl #2]
	str	lr, [sl, ip, asl #2]
	ldr	r4, [sp, #264]
	str	r2, [sl, r1, asl #2]
	ldr	r3, [sp, #372]
	ldr	lr, [sp, #260]
	ldr	ip, [sp, #376]
	ldr	r2, [sp, #256]
	ldr	r1, [sp, #380]
	str	r4, [sl, r3, asl #2]
	str	lr, [sl, ip, asl #2]
	ldr	r3, [sp, #384]
	str	r2, [sl, r1, asl #2]
	ldr	ip, [sp, #252]
	ldr	r4, [sp, #388]
	ldr	r1, [sp, #248]
	ldr	lr, [sp, #392]
	str	r0, [sl, r3, asl #2]
	str	ip, [sl, r4, asl #2]
	str	r1, [sl, lr, asl #2]
	ldr	r3, [sp, #244]
	ldr	r2, [sp, #396]
	ldr	r4, [sp, #400]
	str	r3, [sl, r2, asl #2]
	ldr	ip, [sp, #400]
	ldr	lr, [sp, #404]
	ldr	r2, [sp, #408]
	ldr	r4, [r9, r4, asl #2]
	ldr	ip, [fp, ip, asl #2]
	ldr	lr, [r9, lr, asl #2]
	ldr	r2, [r9, r2, asl #2]
	ldr	r1, [sp, #404]
	str	r4, [sp, #44]
	ldr	r1, [fp, r1, asl #2]
	str	ip, [sp, #40]
	str	lr, [sp, #32]
	str	r2, [sp, #24]
	add	r3, sp, #408
	ldmia	r3, {r3, r4, lr}	@ phole ldm
	ldr	ip, [sp, #412]
	ldr	r2, [sp, #420]
	ldr	r3, [fp, r3, asl #2]
	ldr	r4, [r9, r4, asl #2]
	ldr	ip, [fp, ip, asl #2]
	str	r1, [sp, #28]
	ldr	r2, [r9, r2, asl #2]
	ldr	r1, [fp, lr, asl #2]
	ldr	r0, [r9, lr, asl #2]
	str	r3, [sp, #20]
	str	r4, [sp, #16]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #420]
	ldr	r4, [sp, #316]
	ldr	lr, [sp, #40]
	ldr	ip, [sp, #44]
	ldr	r3, [fp, r3, asl #2]
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #32]
	add	ip, ip, lr
	add	r4, r4, #1
	str	r3, [sp, #0]
	str	r4, [sp, #316]
	str	ip, [sp, #36]
	add	r1, r1, r2
	ldr	r4, [sp, #20]
	ldr	lr, [sp, #12]
	ldr	r3, [sp, #24]
	ldr	ip, [sp, #16]
	str	r1, [sp, #240]
	ldr	r1, [sp, #8]
	add	r3, r3, r4
	add	ip, ip, lr
	str	r3, [sp, #236]
	ldr	lr, [r9, r8, asl #2]
	ldr	r3, [sp, #0]
	str	ip, [sp, #232]
	add	r0, r0, r1
	ldr	ip, [fp, r7, asl #2]
	ldr	r1, [fp, r8, asl #2]
	ldr	r2, [sp, #4]
	ldr	r4, [r9, r7, asl #2]
	add	r2, r2, r3
	add	r4, r4, ip
	add	lr, lr, r1
	ldr	r3, [sp, #400]
	str	r2, [sp, #228]
	str	r4, [sp, #224]
	ldr	r2, [sp, #316]
	ldr	r4, [sp, #36]
	str	lr, [sp, #220]
	ldr	ip, [sp, #404]
	ldr	lr, [sp, #240]
	str	r4, [sl, r3, asl #2]
	cmp	r2, #56
	str	lr, [sl, ip, asl #2]
	ldr	r2, [sp, #236]
	ldr	r1, [sp, #408]
	ldr	r3, [sp, #412]
	ldr	r4, [sp, #232]
	str	r2, [sl, r1, asl #2]
	ldr	ip, [sp, #416]
	str	r4, [sl, r3, asl #2]
	ldr	r1, [sp, #228]
	ldr	lr, [sp, #420]
	ldr	r2, [sp, #224]
	ldr	r3, [sp, #220]
	str	r0, [sl, ip, asl #2]
	str	r1, [sl, lr, asl #2]
	str	r2, [sl, r7, asl #2]
	str	r3, [sl, r8, asl #2]
	add	r8, r8, #1
	str	r8, [sp, #424]
	bne	.L77
	ldr	r4, [sp, #308]
	ldr	r7, [sp, #304]
	add	r4, r4, #1
	cmp	r4, r7
	str	r4, [sp, #308]
	bne	.L76
.L79:
	add	sp, sp, #428
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L83:
	.align	2
.L82:
	.word	xresult
	.word	xval1
	.word	xval2
	.size	bench_fixed_add, .-bench_fixed_add
	.align	2
	.global	bench_i32_add
	.type	bench_i32_add, %function
bench_i32_add:
	@ args = 0, pretend = 0, frame = 428
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #428
	str	r0, [sp, #304]
	beq	.L90
	mov	r1, #0
	ldr	sl, .L93
	ldr	r9, .L93+4
	ldr	fp, .L93+8
	str	r1, [sp, #308]
.L87:
	mov	r8, #0
	str	r8, [sp, #316]
	str	r8, [sp, #424]
.L88:
	ldr	r2, [sp, #424]
	add	r2, r2, #1
	add	r3, r2, #1
	add	r4, r3, #1
	add	r7, r4, #1
	add	r8, r7, #1
	add	ip, r8, #1
	add	lr, ip, #1
	add	r1, lr, #1
	str	r2, [sp, #312]
	add	r2, r1, #1
	add	r5, r2, #1
	add	r6, r5, #1
	str	r3, [sp, #320]
	add	r3, r6, #1
	str	r4, [sp, #324]
	add	r4, r3, #1
	str	r7, [sp, #328]
	add	r7, r4, #1
	str	r8, [sp, #332]
	add	r8, r7, #1
	str	ip, [sp, #336]
	add	ip, r8, #1
	str	lr, [sp, #340]
	add	lr, ip, #1
	str	r1, [sp, #344]
	add	r1, lr, #1
	str	r2, [sp, #348]
	add	r2, r1, #1
	str	r3, [sp, #352]
	add	r3, r2, #1
	str	r4, [sp, #356]
	add	r4, r3, #1
	str	r7, [sp, #360]
	add	r7, r4, #1
	str	r8, [sp, #364]
	str	r2, [sp, #380]
	add	r8, r7, #1
	str	r3, [sp, #384]
	str	r4, [sp, #388]
	ldr	r2, [sp, #424]
	ldr	r3, [sp, #424]
	ldr	r4, [sp, #312]
	str	ip, [sp, #368]
	add	ip, r8, #1
	ldr	r2, [r9, r2, asl #2]
	ldr	r3, [fp, r3, asl #2]
	str	lr, [sp, #372]
	ldr	r4, [r9, r4, asl #2]
	add	lr, ip, #1
	str	r1, [sp, #376]
	add	r1, lr, #1
	str	r7, [sp, #392]
	str	r8, [sp, #396]
	str	ip, [sp, #400]
	str	lr, [sp, #404]
	str	r1, [sp, #408]
	str	r2, [sp, #216]
	str	r3, [sp, #212]
	str	r4, [sp, #208]
	ldr	r7, [sp, #312]
	ldr	r8, [sp, #320]
	ldr	ip, [sp, #320]
	ldr	lr, [sp, #324]
	ldr	r7, [fp, r7, asl #2]
	ldr	r8, [r9, r8, asl #2]
	ldr	ip, [fp, ip, asl #2]
	ldr	lr, [r9, lr, asl #2]
	str	r7, [sp, #204]
	str	r8, [sp, #200]
	str	ip, [sp, #196]
	str	lr, [sp, #192]
	ldr	r1, [sp, #324]
	ldr	r2, [sp, #328]
	ldr	r3, [sp, #328]
	ldr	r4, [sp, #332]
	ldr	r7, [sp, #332]
	ldr	r8, [sp, #336]
	ldr	ip, [sp, #336]
	ldr	lr, [sp, #340]
	ldr	r1, [fp, r1, asl #2]
	ldr	r2, [r9, r2, asl #2]
	ldr	r3, [fp, r3, asl #2]
	ldr	r4, [r9, r4, asl #2]
	ldr	r7, [fp, r7, asl #2]
	ldr	r8, [r9, r8, asl #2]
	ldr	ip, [fp, ip, asl #2]
	ldr	lr, [r9, lr, asl #2]
	str	r1, [sp, #188]
	str	r2, [sp, #184]
	str	r3, [sp, #180]
	str	r4, [sp, #176]
	str	r7, [sp, #172]
	str	r8, [sp, #168]
	str	ip, [sp, #164]
	str	lr, [sp, #160]
	add	r1, sp, #340
	ldmia	r1, {r1, r2, r7}	@ phole ldm
	ldr	r3, [fp, r2, asl #2]
	ldr	r1, [fp, r1, asl #2]
	ldr	r7, [fp, r7, asl #2]
	ldr	r4, [sp, #348]
	ldr	r8, [sp, #408]
	str	r1, [sp, #156]
	ldr	r0, [r9, r2, asl #2]
	str	r3, [sp, #152]
	ldr	r4, [r9, r4, asl #2]
	str	r7, [sp, #144]
	ldr	ip, [sp, #216]
	ldr	lr, [sp, #212]
	ldr	r1, [sp, #208]
	ldr	r2, [sp, #204]
	ldr	r3, [sp, #200]
	ldr	r7, [sp, #196]
	add	r8, r8, #1
	str	r4, [sp, #148]
	str	r8, [sp, #412]
	add	r4, ip, lr
	ldr	r8, [sp, #192]
	add	lr, r1, r2
	add	ip, r3, r7
	ldr	r2, [sp, #188]
	ldr	r3, [sp, #184]
	ldr	r7, [sp, #180]
	add	r1, r8, r2
	add	r2, r3, r7
	ldr	r8, [sp, #176]
	ldr	r7, [sp, #172]
	add	r3, r8, r7
	ldr	r7, [sp, #164]
	ldr	r8, [sp, #168]
	add	r8, r8, r7
	str	r8, [sp, #300]
	ldr	r7, [sp, #156]
	ldr	r8, [sp, #160]
	add	r8, r8, r7
	str	r8, [sp, #296]
	ldr	r8, [sp, #152]
	ldr	r7, [sp, #148]
	add	r0, r0, r8
	ldr	r8, [sp, #144]
	add	r7, r7, r8
	str	r7, [sp, #292]
	ldr	r8, [fp, r5, asl #2]
	ldr	r7, [r9, r5, asl #2]
	add	r7, r7, r8
	str	r7, [sp, #288]
	ldr	r8, [fp, r6, asl #2]
	ldr	r7, [r9, r6, asl #2]
	add	r7, r7, r8
	str	r7, [sp, #284]
	ldr	r7, [sp, #412]
	ldr	r8, [sp, #424]
	add	r7, r7, #1
	str	r4, [sl, r8, asl #2]
	str	r7, [sp, #416]
	ldr	r4, [sp, #312]
	ldr	r7, [sp, #320]
	str	lr, [sl, r4, asl #2]
	ldr	r8, [sp, #324]
	str	ip, [sl, r7, asl #2]
	ldr	ip, [sp, #328]
	str	r1, [sl, r8, asl #2]
	ldr	lr, [sp, #332]
	str	r2, [sl, ip, asl #2]
	ldr	r1, [sp, #336]
	ldr	r2, [sp, #300]
	str	r3, [sl, lr, asl #2]
	ldr	r4, [sp, #296]
	str	r2, [sl, r1, asl #2]
	ldr	r3, [sp, #340]
	ldr	r7, [sp, #344]
	ldr	ip, [sp, #292]
	ldr	r8, [sp, #348]
	ldr	lr, [sp, #288]
	ldr	r1, [sp, #284]
	str	r4, [sl, r3, asl #2]
	str	r0, [sl, r7, asl #2]
	str	ip, [sl, r8, asl #2]
	str	lr, [sl, r5, asl #2]
	str	r1, [sl, r6, asl #2]
	ldr	r3, [sp, #352]
	ldr	r4, [sp, #352]
	ldr	r7, [sp, #356]
	ldr	r2, [sp, #416]
	ldr	r3, [r9, r3, asl #2]
	ldr	r4, [fp, r4, asl #2]
	ldr	r7, [r9, r7, asl #2]
	add	r2, r2, #1
	str	r2, [sp, #420]
	str	r3, [sp, #140]
	str	r4, [sp, #136]
	str	r7, [sp, #128]
	ldr	r8, [sp, #356]
	ldr	ip, [sp, #360]
	ldr	lr, [sp, #360]
	ldr	r1, [sp, #364]
	ldr	r2, [sp, #364]
	ldr	r3, [sp, #368]
	ldr	r4, [sp, #368]
	ldr	r7, [sp, #372]
	ldr	r8, [fp, r8, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	lr, [fp, lr, asl #2]
	ldr	r1, [r9, r1, asl #2]
	ldr	r2, [fp, r2, asl #2]
	ldr	r3, [r9, r3, asl #2]
	ldr	r4, [fp, r4, asl #2]
	ldr	r7, [r9, r7, asl #2]
	str	r8, [sp, #124]
	str	ip, [sp, #120]
	str	lr, [sp, #116]
	str	r1, [sp, #112]
	str	r2, [sp, #108]
	str	r3, [sp, #104]
	str	r4, [sp, #100]
	str	r7, [sp, #96]
	ldr	r8, [sp, #372]
	ldr	ip, [sp, #376]
	ldr	lr, [sp, #376]
	ldr	r1, [sp, #380]
	ldr	r8, [fp, r8, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	lr, [fp, lr, asl #2]
	ldr	r1, [r9, r1, asl #2]
	ldr	r3, [sp, #384]
	str	r8, [sp, #92]
	str	ip, [sp, #88]
	str	lr, [sp, #84]
	str	r1, [sp, #80]
	ldr	r2, [sp, #380]
	ldr	r7, [sp, #388]
	ldr	r8, [sp, #388]
	ldr	ip, [sp, #392]
	ldr	lr, [sp, #392]
	ldr	r1, [sp, #396]
	ldr	r4, [fp, r3, asl #2]
	ldr	r2, [fp, r2, asl #2]
	ldr	r7, [r9, r7, asl #2]
	ldr	r8, [fp, r8, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	lr, [fp, lr, asl #2]
	ldr	r1, [r9, r1, asl #2]
	ldr	r0, [r9, r3, asl #2]
	str	r2, [sp, #76]
	str	r4, [sp, #72]
	str	r7, [sp, #68]
	str	r8, [sp, #64]
	str	ip, [sp, #60]
	str	lr, [sp, #56]
	str	r1, [sp, #52]
	ldr	r2, [sp, #396]
	ldr	r8, [sp, #136]
	ldr	r4, [sp, #140]
	ldr	r2, [fp, r2, asl #2]
	ldr	r3, [sp, #420]
	add	r4, r4, r8
	add	r7, r3, #1
	ldr	lr, [sp, #124]
	str	r2, [sp, #48]
	str	r4, [sp, #132]
	ldr	r2, [sp, #116]
	ldr	r4, [sp, #108]
	ldr	ip, [sp, #128]
	ldr	r1, [sp, #120]
	ldr	r3, [sp, #112]
	add	ip, ip, lr
	add	r1, r1, r2
	add	r3, r3, r4
	str	ip, [sp, #280]
	str	r1, [sp, #276]
	ldr	ip, [sp, #100]
	ldr	r1, [sp, #92]
	str	r3, [sp, #272]
	ldr	r8, [sp, #104]
	ldr	r3, [sp, #84]
	ldr	lr, [sp, #96]
	ldr	r2, [sp, #88]
	add	r8, r8, ip
	add	lr, lr, r1
	add	r2, r2, r3
	ldr	r1, [sp, #64]
	ldr	r3, [sp, #56]
	str	r8, [sp, #268]
	str	lr, [sp, #264]
	ldr	r8, [sp, #76]
	str	r2, [sp, #260]
	ldr	r4, [sp, #80]
	ldr	lr, [sp, #68]
	ldr	r2, [sp, #60]
	add	r4, r4, r8
	ldr	ip, [sp, #72]
	add	lr, lr, r1
	add	r2, r2, r3
	str	r4, [sp, #256]
	str	lr, [sp, #252]
	str	r2, [sp, #248]
	ldr	r8, [sp, #48]
	ldr	r4, [sp, #52]
	add	r0, r0, ip
	ldr	lr, [sp, #132]
	ldr	ip, [sp, #352]
	ldr	r2, [sp, #280]
	ldr	r1, [sp, #356]
	add	r4, r4, r8
	str	lr, [sl, ip, asl #2]
	ldr	r3, [sp, #360]
	str	r2, [sl, r1, asl #2]
	ldr	lr, [sp, #272]
	ldr	ip, [sp, #364]
	ldr	r2, [sp, #268]
	ldr	r1, [sp, #368]
	str	r4, [sp, #244]
	ldr	r4, [sp, #276]
	add	r8, r7, #1
	str	r4, [sl, r3, asl #2]
	str	lr, [sl, ip, asl #2]
	ldr	r4, [sp, #264]
	str	r2, [sl, r1, asl #2]
	ldr	r3, [sp, #372]
	ldr	lr, [sp, #260]
	ldr	ip, [sp, #376]
	ldr	r2, [sp, #256]
	ldr	r1, [sp, #380]
	str	r4, [sl, r3, asl #2]
	str	lr, [sl, ip, asl #2]
	ldr	r3, [sp, #384]
	str	r2, [sl, r1, asl #2]
	ldr	ip, [sp, #252]
	ldr	r4, [sp, #388]
	ldr	r1, [sp, #248]
	ldr	lr, [sp, #392]
	str	r0, [sl, r3, asl #2]
	str	ip, [sl, r4, asl #2]
	str	r1, [sl, lr, asl #2]
	ldr	r3, [sp, #244]
	ldr	r2, [sp, #396]
	ldr	r4, [sp, #400]
	str	r3, [sl, r2, asl #2]
	ldr	ip, [sp, #400]
	ldr	lr, [sp, #404]
	ldr	r2, [sp, #408]
	ldr	r4, [r9, r4, asl #2]
	ldr	ip, [fp, ip, asl #2]
	ldr	lr, [r9, lr, asl #2]
	ldr	r2, [r9, r2, asl #2]
	ldr	r1, [sp, #404]
	str	r4, [sp, #44]
	ldr	r1, [fp, r1, asl #2]
	str	ip, [sp, #40]
	str	lr, [sp, #32]
	str	r2, [sp, #24]
	add	r3, sp, #408
	ldmia	r3, {r3, r4, lr}	@ phole ldm
	ldr	ip, [sp, #412]
	ldr	r2, [sp, #420]
	ldr	r3, [fp, r3, asl #2]
	ldr	r4, [r9, r4, asl #2]
	ldr	ip, [fp, ip, asl #2]
	str	r1, [sp, #28]
	ldr	r2, [r9, r2, asl #2]
	ldr	r1, [fp, lr, asl #2]
	ldr	r0, [r9, lr, asl #2]
	str	r3, [sp, #20]
	str	r4, [sp, #16]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #420]
	ldr	r4, [sp, #316]
	ldr	lr, [sp, #40]
	ldr	ip, [sp, #44]
	ldr	r3, [fp, r3, asl #2]
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #32]
	add	ip, ip, lr
	add	r4, r4, #1
	str	r3, [sp, #0]
	str	r4, [sp, #316]
	str	ip, [sp, #36]
	add	r1, r1, r2
	ldr	r4, [sp, #20]
	ldr	lr, [sp, #12]
	ldr	r3, [sp, #24]
	ldr	ip, [sp, #16]
	str	r1, [sp, #240]
	ldr	r1, [sp, #8]
	add	r3, r3, r4
	add	ip, ip, lr
	str	r3, [sp, #236]
	ldr	lr, [r9, r8, asl #2]
	ldr	r3, [sp, #0]
	str	ip, [sp, #232]
	add	r0, r0, r1
	ldr	ip, [fp, r7, asl #2]
	ldr	r1, [fp, r8, asl #2]
	ldr	r2, [sp, #4]
	ldr	r4, [r9, r7, asl #2]
	add	r2, r2, r3
	add	r4, r4, ip
	add	lr, lr, r1
	ldr	r3, [sp, #400]
	str	r2, [sp, #228]
	str	r4, [sp, #224]
	ldr	r2, [sp, #316]
	ldr	r4, [sp, #36]
	str	lr, [sp, #220]
	ldr	ip, [sp, #404]
	ldr	lr, [sp, #240]
	str	r4, [sl, r3, asl #2]
	cmp	r2, #56
	str	lr, [sl, ip, asl #2]
	ldr	r2, [sp, #236]
	ldr	r1, [sp, #408]
	ldr	r3, [sp, #412]
	ldr	r4, [sp, #232]
	str	r2, [sl, r1, asl #2]
	ldr	ip, [sp, #416]
	str	r4, [sl, r3, asl #2]
	ldr	r1, [sp, #228]
	ldr	lr, [sp, #420]
	ldr	r2, [sp, #224]
	ldr	r3, [sp, #220]
	str	r0, [sl, ip, asl #2]
	str	r1, [sl, lr, asl #2]
	str	r2, [sl, r7, asl #2]
	str	r3, [sl, r8, asl #2]
	add	r8, r8, #1
	str	r8, [sp, #424]
	bne	.L88
	ldr	r4, [sp, #308]
	ldr	r7, [sp, #304]
	add	r4, r4, #1
	cmp	r4, r7
	str	r4, [sp, #308]
	bne	.L87
.L90:
	add	sp, sp, #428
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L94:
	.align	2
.L93:
	.word	i32result
	.word	i32val1
	.word	i32val2
	.size	bench_i32_add, .-bench_i32_add
	.align	2
	.global	bench_i64_add
	.type	bench_i64_add, %function
bench_i64_add:
	@ args = 0, pretend = 0, frame = 708
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r0, r0, asl #1
	sub	sp, sp, #708
	str	r0, [sp, #704]
	movne	r0, #0
	strne	r0, [sp, #624]
	beq	.L101
.L98:
	mov	r8, #0
	str	r8, [sp, #628]
	mov	r2, r8
.L99:
	add	r0, r2, #1
	add	ip, r0, #1
	add	lr, ip, #1
	add	r7, lr, #1
	add	r8, r7, #1
	add	sl, r8, #1
	add	r9, sl, #1
	add	r6, r9, #1
	add	r5, r6, #1
	add	r4, r5, #1
	add	r1, r4, #1
	add	r3, r1, #1
	add	fp, r3, #1
	str	r3, [sp, #632]
	add	r3, fp, #1
	str	fp, [sp, #636]
	add	fp, r3, #1
	str	r3, [sp, #640]
	add	r3, fp, #1
	str	fp, [sp, #644]
	add	fp, r3, #1
	str	r3, [sp, #648]
	add	r3, fp, #1
	str	fp, [sp, #652]
	add	fp, r3, #1
	str	r3, [sp, #656]
	add	r3, fp, #1
	str	fp, [sp, #660]
	add	fp, r3, #1
	str	r3, [sp, #664]
	add	r3, fp, #1
	str	fp, [sp, #668]
	add	fp, r3, #1
	str	r3, [sp, #0]
	add	r3, fp, #1
	str	r3, [sp, #672]
	add	r3, r3, #1
	str	r3, [sp, #676]
	add	r3, r3, #1
	str	r3, [sp, #680]
	add	r3, r3, #1
	str	r3, [sp, #684]
	add	r3, r3, #1
	str	r3, [sp, #688]
	mov	r5, r5, asl #3
	add	r3, r3, #1
	str	r3, [sp, #692]
	mov	r7, r7, asl #3
	add	r3, r3, #1
	mov	r8, r8, asl #3
	str	r5, [sp, #452]
	mov	r4, r4, asl #3
	ldr	r5, .L104
	mov	r2, r2, asl #3
	str	r7, [sp, #564]
	str	r8, [sp, #548]
	str	r4, [sp, #428]
	mov	r1, r1, asl #3
	add	r4, r3, #1
	str	r2, [sp, #620]
	str	r1, [sp, #404]
	str	r4, [sp, #700]
	ldr	r1, [sp, #564]
	add	r4, r2, r5
	ldr	r2, [sp, #548]
	mov	r0, r0, asl #3
	mov	ip, ip, asl #3
	mov	lr, lr, asl #3
	mov	r6, r6, asl #3
	mov	sl, sl, asl #3
	mov	r9, r9, asl #3
	add	r7, ip, r5
	add	r8, lr, r5
	add	r1, r1, r5
	add	r2, r2, r5
	str	r6, [sp, #476]
	add	r6, r0, r5
	str	r3, [sp, #696]
	str	sl, [sp, #524]
	str	r9, [sp, #500]
	str	r6, [sp, #608]
	str	r7, [sp, #592]
	str	r8, [sp, #576]
	ldr	r7, .L104
	str	r1, [sp, #560]
	str	r2, [sp, #536]
	ldr	r6, [sp, #476]
	add	r3, sl, r5
	ldr	r8, [sp, #452]
	ldr	r1, [sp, #428]
	ldr	r2, [sp, #404]
	add	r5, r9, r5
	add	r6, r6, r7
	str	r3, [sp, #512]
	ldr	r3, [sp, #632]
	add	r8, r8, r7
	add	r1, r1, r7
	add	r2, r2, r7
	str	r5, [sp, #488]
	str	r6, [sp, #464]
	add	r5, sp, #636
	ldmia	r5, {r5, r6, r7}	@ phole ldm
	mov	r3, r3, asl #3
	str	r3, [sp, #388]
	mov	r5, r5, asl #3
	mov	r6, r6, asl #3
	mov	r7, r7, asl #3
	ldr	r3, [sp, #660]
	mov	fp, fp, asl #3
	str	r8, [sp, #440]
	str	r1, [sp, #416]
	str	r2, [sp, #392]
	str	r5, [sp, #372]
	str	r6, [sp, #352]
	str	r7, [sp, #332]
	ldr	r8, [sp, #648]
	ldr	r1, [sp, #652]
	ldr	r2, [sp, #656]
	ldr	r5, [sp, #664]
	ldr	r6, [sp, #668]
	ldr	r7, [sp, #0]
	str	fp, [sp, #148]
	ldr	fp, .L104+4
	mov	r3, r3, asl #3
	mov	r8, r8, asl #3
	mov	r1, r1, asl #3
	mov	r2, r2, asl #3
	str	r3, [sp, #244]
	mov	r5, r5, asl #3
	add	r3, ip, fp
	mov	r6, r6, asl #3
	mov	r7, r7, asl #3
	str	r8, [sp, #312]
	str	r1, [sp, #292]
	ldr	r8, [sp, #620]
	str	r2, [sp, #268]
	str	r5, [sp, #220]
	str	r6, [sp, #196]
	str	r7, [sp, #172]
	str	r3, [sp, #596]
	ldr	r6, [sp, #564]
	add	r2, r8, fp
	add	r1, r0, fp
	ldr	r8, .L104+4
	add	r5, lr, fp
	ldr	r7, [sp, #548]
	add	fp, r6, fp
	ldr	r6, [sp, #476]
	add	r3, sl, r8
	str	r5, [sp, #580]
	add	r7, r7, r8
	add	r5, r9, r8
	add	r6, r6, r8
	str	r7, [sp, #540]
	str	r3, [sp, #516]
	str	r5, [sp, #492]
	ldr	r3, [sp, #428]
	str	r6, [sp, #468]
	ldr	r7, [sp, #452]
	ldr	r5, [sp, #404]
	ldr	r6, .L104+4
	add	r7, r7, r8
	add	r5, r5, r6
	add	r8, r3, r8
	str	r7, [sp, #444]
	ldmia	r4, {r3-r4}
	str	r8, [sp, #420]
	str	r5, [sp, #396]
	ldmia	r2, {r7-r8}
	ldr	r5, [sp, #608]
	adds	r7, r7, r3
	adc	r8, r8, r4
	ldmia	r1, {r2-r3}
	str	r2, [sp, #600]
	str	r3, [sp, #604]
	ldmia	r5, {r3-r4}
	str	r7, [sp, #612]
	str	r8, [sp, #616]
	add	r6, sp, #600
	ldmia	r6, {r6-r7}
	ldr	r1, [sp, #592]
	adds	r6, r6, r3
	ldr	r8, [sp, #596]
	adc	r7, r7, r4
	str	r6, [sp, #600]
	str	r7, [sp, #604]
	ldmia	r1, {r3-r4}
	ldmia	r8, {r7-r8}
	adds	r7, r7, r3
	ldr	r3, [sp, #580]
	ldr	r5, [sp, #576]
	adc	r8, r8, r4
	ldmia	r3, {r2-r3}
	str	r2, [sp, #568]
	str	r3, [sp, #572]
	ldmia	r5, {r3-r4}
	str	r7, [sp, #584]
	str	r8, [sp, #588]
	add	r6, sp, #568
	ldmia	r6, {r6-r7}
	adds	r6, r6, r3
	adc	r7, r7, r4
	str	r6, [sp, #568]
	str	r7, [sp, #572]
	ldmia	fp, {r7-r8}
	str	r7, [sp, #552]
	str	r8, [sp, #556]
	add	r1, sp, #552
	ldmia	r1, {r1-r2}
	ldr	r8, [sp, #560]
	ldr	r5, [sp, #536]
	ldmia	r8, {r3-r4}
	adds	r1, r1, r3
	ldr	r3, [sp, #540]
	adc	r2, r2, r4
	str	r1, [sp, #552]
	str	r2, [sp, #556]
	ldmia	r3, {r2-r3}
	str	r2, [sp, #528]
	str	r3, [sp, #532]
	add	r6, sp, #528
	ldmia	r6, {r6-r7}
	ldmia	r5, {r3-r4}
	ldr	fp, [sp, #512]
	adds	r6, r6, r3
	ldr	r8, [sp, #516]
	adc	r7, r7, r4
	str	r6, [sp, #528]
	str	r7, [sp, #532]
	ldmia	fp, {r3-r4}
	ldmia	r8, {r7-r8}
	adds	r7, r7, r3
	adc	r8, r8, r4
	ldr	r5, [sp, #488]
	ldr	r2, [sp, #492]
	str	r7, [sp, #504]
	str	r8, [sp, #508]
	ldmia	r5, {r3-r4}
	ldmia	r2, {r1-r2}
	ldr	r8, [sp, #464]
	ldr	r7, [sp, #468]
	adds	r1, r1, r3
	adc	r2, r2, r4
	ldmia	r7, {r6-r7}
	ldmia	r8, {r3-r4}
	adds	r6, r6, r3
	adc	r7, r7, r4
	str	r1, [sp, #480]
	str	r2, [sp, #484]
	ldr	r5, [sp, #440]
	ldr	r2, [sp, #444]
	str	r6, [sp, #456]
	str	r7, [sp, #460]
	ldmia	r5, {r3-r4}
	ldmia	r2, {r1-r2}
	ldr	r8, [sp, #416]
	ldr	r7, [sp, #420]
	adds	r1, r1, r3
	adc	r2, r2, r4
	ldmia	r7, {r6-r7}
	ldmia	r8, {r3-r4}
	adds	r6, r6, r3
	adc	r7, r7, r4
	str	r1, [sp, #432]
	str	r2, [sp, #436]
	str	r6, [sp, #408]
	str	r7, [sp, #412]
	ldr	fp, [sp, #396]
	ldr	r5, [sp, #392]
	ldr	r7, .L104
	ldmia	r5, {r3-r4}
	ldmia	fp, {r1-r2}
	ldr	r6, [sp, #388]
	adds	r1, r1, r3
	ldr	r8, [sp, #372]
	ldr	fp, [sp, #352]
	ldr	r3, [sp, #332]
	add	r6, r6, r7
	add	r8, r8, r7
	add	fp, fp, r7
	add	r3, r3, r7
	adc	r2, r2, r4
	str	r6, [sp, #384]
	str	r8, [sp, #364]
	str	fp, [sp, #344]
	ldr	r8, [sp, #244]
	str	r3, [sp, #324]
	ldr	r4, [sp, #312]
	ldr	r3, .L104
	ldr	r5, [sp, #292]
	ldr	r6, [sp, #268]
	ldr	fp, [sp, #220]
	add	r4, r4, r7
	add	r5, r5, r7
	add	r6, r6, r7
	add	fp, fp, r3
	add	r7, r8, r7
	str	r4, [sp, #304]
	str	r5, [sp, #280]
	str	r6, [sp, #256]
	str	r7, [sp, #232]
	str	fp, [sp, #208]
	ldr	r4, [sp, #196]
	ldr	r5, [sp, #172]
	ldr	r6, [sp, #148]
	add	r7, sp, #672
	ldmia	r7, {r7, r8, fp}	@ phole ldm
	add	r4, r4, r3
	add	r5, r5, r3
	add	r6, r6, r3
	mov	r7, r7, asl #3
	mov	r8, r8, asl #3
	mov	fp, fp, asl #3
	str	r4, [sp, #184]
	str	r5, [sp, #160]
	str	r6, [sp, #136]
	str	r7, [sp, #132]
	str	r8, [sp, #116]
	str	fp, [sp, #100]
	ldr	r3, [sp, #684]
	ldr	r5, [sp, #692]
	ldr	r6, [sp, #696]
	mov	r3, r3, asl #3
	ldr	r4, [sp, #688]
	mov	r5, r5, asl #3
	mov	r6, r6, asl #3
	ldr	r7, [sp, #700]
	str	r3, [sp, #84]
	str	r5, [sp, #52]
	ldr	r3, .L104+8
	ldr	r5, [sp, #564]
	str	r6, [sp, #32]
	ldr	r6, [sp, #548]
	mov	r4, r4, asl #3
	mov	r7, r7, asl #3
	ldr	r8, [sp, #620]
	add	r6, r6, r3
	str	r4, [sp, #72]
	str	r7, [sp, #12]
	add	r4, r5, r3
	add	r7, sl, r3
	ldr	r5, [sp, #476]
	str	r6, [sp, #544]
	str	r7, [sp, #520]
	ldr	r6, [sp, #452]
	ldr	r7, .L104+8
	add	fp, r8, r3
	add	r0, r0, r3
	add	r8, r9, r3
	add	ip, ip, r3
	add	lr, lr, r3
	add	r3, r5, r3
	add	r6, r6, r7
	str	r8, [sp, #496]
	str	r3, [sp, #472]
	ldr	r8, [sp, #428]
	ldr	r3, [sp, #404]
	ldr	r5, [sp, #388]
	str	r6, [sp, #448]
	ldr	r6, .L104+4
	add	r8, r8, r7
	add	r3, r3, r7
	str	r8, [sp, #424]
	str	r3, [sp, #400]
	ldr	r7, [sp, #372]
	add	r3, r5, r6
	ldr	r8, [sp, #352]
	ldr	r5, [sp, #332]
	add	r7, r7, r6
	add	r8, r8, r6
	add	r5, r5, r6
	str	r7, [sp, #368]
	str	r8, [sp, #348]
	ldr	r7, [sp, #312]
	str	r5, [sp, #328]
	ldr	r8, [sp, #292]
	ldr	r5, .L104+4
	add	r6, r7, r6
	add	r8, r8, r5
	str	r6, [sp, #308]
	str	r8, [sp, #284]
	ldr	r6, [sp, #268]
	ldr	r7, [sp, #244]
	add	r6, r6, r5
	str	r6, [sp, #260]
	ldr	r8, [sp, #220]
	ldr	r6, [sp, #196]
	add	r7, r7, r5
	add	r8, r8, r5
	add	r5, r6, r5
	str	r7, [sp, #236]
	str	r8, [sp, #212]
	str	r5, [sp, #188]
	ldr	r8, .L104+4
	ldr	r7, [sp, #172]
	ldr	r5, [sp, #148]
	add	r7, r7, r8
	add	r5, r5, r8
	str	r7, [sp, #164]
	str	r5, [sp, #140]
	add	r6, sp, #612
	ldmia	r6, {r6-r7}
	stmia	fp, {r6-r7}
	add	r7, sp, #600
	ldmia	r7, {r7-r8}
	add	r5, sp, #584
	ldmia	r5, {r5-r6}
	stmia	r0, {r7-r8}
	stmia	ip, {r5-r6}
	add	r6, sp, #568
	ldmia	r6, {r6-r7}
	add	fp, sp, #528
	ldmia	fp, {fp-ip}
	stmia	lr, {r6-r7}
	add	r7, sp, #552
	ldmia	r7, {r7-r8}
	ldr	lr, [sp, #544]
	ldr	r6, [sp, #520]
	stmia	r4, {r7-r8}
	add	r4, sp, #504
	ldmia	r4, {r4-r5}
	add	r7, sp, #480
	ldmia	r7, {r7-r8}
	stmia	lr, {fp-ip}
	stmia	r6, {r4-r5}
	add	r4, sp, #456
	ldmia	r4, {r4-r5}
	ldr	fp, [sp, #496]
	ldr	r6, [sp, #472]
	stmia	fp, {r7-r8}
	stmia	r6, {r4-r5}
	add	r7, sp, #432
	ldmia	r7, {r7-r8}
	add	r4, sp, #408
	ldmia	r4, {r4-r5}
	ldr	fp, [sp, #448]
	ldr	r6, [sp, #424]
	stmia	fp, {r7-r8}
	ldmia	r3, {fp-ip}
	ldr	r7, [sp, #400]
	str	fp, [sp, #376]
	str	ip, [sp, #380]
	ldr	ip, [sp, #384]
	stmia	r6, {r4-r5}
	ldmia	ip, {r3-r4}
	stmia	r7, {r1-r2}
	add	r0, sp, #376
	ldmia	r0, {r0-r1}
	ldr	r5, [sp, #364]
	adds	r0, r0, r3
	ldr	r2, [sp, #368]
	adc	r1, r1, r4
	str	r0, [sp, #376]
	str	r1, [sp, #380]
	ldmia	r5, {r3-r4}
	ldmia	r2, {r1-r2}
	ldr	r8, [sp, #344]
	adds	r1, r1, r3
	ldr	r7, [sp, #348]
	adc	r2, r2, r4
	ldr	lr, [sp, #324]
	ldr	ip, [sp, #328]
	ldmia	r8, {r3-r4}
	str	r1, [sp, #356]
	str	r2, [sp, #360]
	ldmia	r7, {r6-r7}
	ldmia	ip, {fp-ip}
	adds	r6, r6, r3
	ldr	r2, [sp, #304]
	ldr	r1, [sp, #308]
	adc	r7, r7, r4
	ldmia	lr, {r3-r4}
	adds	fp, fp, r3
	adc	ip, ip, r4
	ldmia	r1, {r0-r1}
	ldmia	r2, {r3-r4}
	adds	r0, r0, r3
	adc	r1, r1, r4
	str	fp, [sp, #316]
	str	ip, [sp, #320]
	str	r6, [sp, #336]
	str	r7, [sp, #340]
	str	r0, [sp, #296]
	str	r1, [sp, #300]
	ldr	r4, [sp, #284]
	ldr	r5, [sp, #280]
	ldmia	r4, {r3-r4}
	str	r3, [sp, #272]
	str	r4, [sp, #276]
	add	r6, sp, #272
	ldmia	r6, {r6-r7}
	ldmia	r5, {r3-r4}
	ldr	fp, [sp, #256]
	adds	r6, r6, r3
	ldr	r8, [sp, #260]
	adc	r7, r7, r4
	ldr	r2, [sp, #232]
	ldr	r1, [sp, #236]
	ldmia	fp, {r3-r4}
	str	r6, [sp, #272]
	str	r7, [sp, #276]
	ldmia	r8, {r7-r8}
	ldmia	r1, {r0-r1}
	adds	r7, r7, r3
	adc	r8, r8, r4
	ldmia	r2, {r3-r4}
	adds	r0, r0, r3
	adc	r1, r1, r4
	ldr	r4, [sp, #212]
	ldr	r5, [sp, #208]
	ldmia	r4, {r3-r4}
	str	r3, [sp, #200]
	str	r4, [sp, #204]
	ldmia	r5, {r3-r4}
	str	r7, [sp, #248]
	str	r8, [sp, #252]
	add	r6, sp, #200
	ldmia	r6, {r6-r7}
	ldr	fp, [sp, #184]
	adds	r6, r6, r3
	ldr	r8, [sp, #188]
	adc	r7, r7, r4
	str	r0, [sp, #224]
	str	r1, [sp, #228]
	ldmia	fp, {r3-r4}
	ldr	r2, [sp, #160]
	ldr	r1, [sp, #164]
	str	r6, [sp, #200]
	str	r7, [sp, #204]
	ldmia	r8, {r7-r8}
	ldmia	r1, {r0-r1}
	adds	r7, r7, r3
	adc	r8, r8, r4
	ldmia	r2, {r3-r4}
	adds	r0, r0, r3
	adc	r1, r1, r4
	str	r7, [sp, #176]
	str	r8, [sp, #180]
	str	r0, [sp, #152]
	str	r1, [sp, #156]
	ldr	r3, [sp, #140]
	ldr	r5, [sp, #136]
	ldr	r7, .L104
	ldmia	r3, {r1-r2}
	ldr	r8, [sp, #116]
	ldmia	r5, {r3-r4}
	adds	r1, r1, r3
	adc	r2, r2, r4
	ldr	r6, [sp, #132]
	ldr	fp, [sp, #100]
	ldr	ip, [sp, #84]
	ldr	lr, [sp, #72]
	ldr	r0, [sp, #52]
	ldr	r3, [sp, #32]
	ldr	r4, [sp, #12]
	add	r8, r8, r7
	add	r6, r6, r7
	add	fp, fp, r7
	add	ip, ip, r7
	add	lr, lr, r7
	add	r0, r0, r7
	add	r3, r3, r7
	add	r4, r4, r7
	str	r8, [sp, #112]
	ldr	r7, .L104+8
	ldr	r8, [sp, #372]
	ldr	r5, [sp, #628]
	str	r6, [sp, #128]
	str	fp, [sp, #96]
	ldr	r6, [sp, #388]
	add	fp, r8, r7
	str	ip, [sp, #76]
	ldr	r8, [sp, #292]
	ldr	ip, [sp, #352]
	str	lr, [sp, #64]
	str	r0, [sp, #44]
	ldr	lr, [sp, #332]
	ldr	r0, [sp, #312]
	add	r5, r5, #1
	str	r3, [sp, #24]
	str	r4, [sp, #4]
	add	r3, r6, r7
	add	r4, ip, r7
	add	r6, lr, r7
	str	r5, [sp, #628]
	add	r5, r0, r7
	add	r7, r8, r7
	ldr	lr, .L104+8
	str	r7, [sp, #288]
	ldr	ip, [sp, #268]
	ldr	r0, [sp, #244]
	ldr	r7, [sp, #220]
	add	ip, ip, lr
	add	r0, r0, lr
	add	r7, r7, lr
	str	ip, [sp, #264]
	str	r0, [sp, #240]
	str	r7, [sp, #216]
	ldr	r8, [sp, #196]
	ldr	r0, [sp, #148]
	add	r8, r8, lr
	ldr	ip, [sp, #172]
	ldr	r7, [sp, #132]
	str	r8, [sp, #192]
	ldr	r8, .L104+4
	add	ip, ip, lr
	add	lr, r0, lr
	str	lr, [sp, #144]
	add	r0, r7, r8
	ldr	lr, [sp, #116]
	ldr	r7, [sp, #100]
	str	ip, [sp, #168]
	add	ip, lr, r8
	add	lr, r7, r8
	ldr	r7, [sp, #84]
	add	r8, r7, r8
	str	r8, [sp, #80]
	ldr	r7, .L104+4
	ldr	r8, [sp, #72]
	add	r8, r8, r7
	str	r8, [sp, #68]
	ldr	r8, [sp, #52]
	add	r8, r8, r7
	str	r8, [sp, #48]
	ldr	r8, [sp, #32]
	add	r7, r8, r7
	str	r7, [sp, #28]
	ldr	r8, .L104+4
	ldr	r7, [sp, #12]
	add	r7, r7, r8
	str	r7, [sp, #8]
	add	r7, sp, #376
	ldmia	r7, {r7-r8}
	stmia	r3, {r7-r8}
	add	r7, sp, #356
	ldmia	r7, {r7-r8}
	stmia	fp, {r7-r8}
	add	r7, sp, #336
	ldmia	r7, {r7-r8}
	ldr	fp, [sp, #288]
	stmia	r4, {r7-r8}
	add	r3, sp, #316
	ldmia	r3, {r3-r4}
	stmia	r6, {r3-r4}
	add	r6, sp, #296
	ldmia	r6, {r6-r7}
	add	r3, sp, #248
	ldmia	r3, {r3-r4}
	stmia	r5, {r6-r7}
	add	r7, sp, #272
	ldmia	r7, {r7-r8}
	ldr	r5, [sp, #264]
	stmia	fp, {r7-r8}
	stmia	r5, {r3-r4}
	add	r6, sp, #224
	ldmia	r6, {r6-r7}
	add	r3, sp, #200
	ldmia	r3, {r3-r4}
	ldr	r8, [sp, #240]
	ldr	r5, [sp, #216]
	stmia	r8, {r6-r7}
	add	r6, sp, #176
	ldmia	r6, {r6-r7}
	ldr	r8, [sp, #192]
	stmia	r5, {r3-r4}
	add	r3, sp, #152
	ldmia	r3, {r3-r4}
	stmia	r8, {r6-r7}
	ldmia	r0, {r7-r8}
	ldr	r5, [sp, #168]
	str	r7, [sp, #120]
	str	r8, [sp, #124]
	ldr	r6, [sp, #144]
	ldr	r8, [sp, #128]
	stmia	r5, {r3-r4}
	ldmia	r8, {r3-r4}
	stmia	r6, {r1-r2}
	add	r0, sp, #120
	ldmia	r0, {r0-r1}
	adds	r0, r0, r3
	adc	r1, r1, r4
	str	r0, [sp, #120]
	str	r1, [sp, #124]
	ldmia	ip, {r1-r2}
	str	r1, [sp, #104]
	str	r2, [sp, #108]
	add	r5, sp, #104
	ldmia	r5, {r5-r6}
	ldr	r2, [sp, #112]
	ldr	r0, [sp, #76]
	ldmia	r2, {r3-r4}
	adds	r5, r5, r3
	adc	r6, r6, r4
	str	r5, [sp, #104]
	str	r6, [sp, #108]
	ldmia	lr, {r6-r7}
	str	r6, [sp, #88]
	str	r7, [sp, #92]
	add	fp, sp, #88
	ldmia	fp, {fp-ip}
	ldr	r7, [sp, #96]
	ldr	lr, [sp, #80]
	ldmia	r7, {r3-r4}
	adds	fp, fp, r3
	adc	ip, ip, r4
	ldr	r5, [sp, #64]
	ldr	r2, [sp, #68]
	ldmia	r0, {r3-r4}
	str	fp, [sp, #88]
	str	ip, [sp, #92]
	ldmia	lr, {fp-ip}
	ldmia	r2, {r1-r2}
	adds	fp, fp, r3
	adc	ip, ip, r4
	ldmia	r5, {r3-r4}
	adds	r1, r1, r3
	adc	r2, r2, r4
	str	r1, [sp, #56]
	str	r2, [sp, #60]
	ldr	r8, [sp, #44]
	ldr	r7, [sp, #48]
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #28]
	ldmia	r8, {r3-r4}
	ldmia	r7, {r6-r7}
	adds	r6, r6, r3
	adc	r7, r7, r4
	ldmia	r1, {r0-r1}
	ldmia	r2, {r3-r4}
	ldr	r5, [sp, #4]
	adds	r0, r0, r3
	ldr	r3, [sp, #8]
	adc	r1, r1, r4
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	ldmia	r3, {r1-r2}
	ldmia	r5, {r3-r4}
	adds	r1, r1, r3
	ldr	r8, .L104+8
	str	r6, [sp, #36]
	str	r7, [sp, #40]
	adc	r2, r2, r4
	ldr	r6, [sp, #628]
	ldr	r7, [sp, #132]
	ldr	lr, [sp, #116]
	ldr	r4, [sp, #100]
	ldr	r5, [sp, #84]
	add	r3, lr, r8
	add	r0, r7, r8
	add	lr, r4, r8
	ldr	r7, [sp, #52]
	add	r4, r5, r8
	cmp	r6, #28
	ldr	r5, [sp, #32]
	ldr	r6, [sp, #72]
	add	sl, r7, r8
	add	r9, r6, r8
	ldr	r6, [sp, #12]
	add	r8, r5, r8
	ldr	r5, .L104+8
	add	r7, r6, r5
	add	r5, sp, #120
	ldmia	r5, {r5-r6}
	stmia	r0, {r5-r6}
	add	r5, sp, #104
	ldmia	r5, {r5-r6}
	stmia	r3, {r5-r6}
	add	r5, sp, #88
	ldmia	r5, {r5-r6}
	stmia	lr, {r5-r6}
	stmia	r4, {fp-ip}
	add	fp, sp, #56
	ldmia	fp, {fp-ip}
	add	r3, sp, #36
	ldmia	r3, {r3-r4}
	stmia	r9, {fp-ip}
	stmia	sl, {r3-r4}
	add	r4, sp, #16
	ldmia	r4, {r4-r5}
	stmia	r8, {r4-r5}
	ldr	r5, [sp, #700]
	stmia	r7, {r1-r2}
	add	r2, r5, #1
	bne	.L99
	ldr	r6, [sp, #624]
	ldr	r7, [sp, #704]
	add	r6, r6, #1
	cmp	r6, r7
	str	r6, [sp, #624]
	bne	.L98
.L101:
	add	sp, sp, #708
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L105:
	.align	2
.L104:
	.word	i64val2
	.word	i64val1
	.word	i64result
	.size	bench_i64_add, .-bench_i64_add
	.align	2
	.global	bench_float_mul
	.type	bench_float_mul, %function
bench_float_mul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	fp, r0, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	ldr	r8, .L115
	ldr	r7, .L115+4
	ldr	r6, .L115+8
	mov	r9, #0
.L109:
	mov	sl, #0
	mov	r5, sl
.L110:
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__mulsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__mulsf3
	add	sl, sl, #1
	cmp	sl, #56
	str	r0, [r8, r4, asl #2]	@ float
	add	r5, r4, #1
	bne	.L110
	add	r9, r9, #1
	cmp	r9, fp
	bne	.L109
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L116:
	.align	2
.L115:
	.word	fresult
	.word	fval1
	.word	fval2
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
	str	r0, [sp, #4]
	beq	.L123
	mov	r2, #0
	ldr	r9, .L126
	ldr	sl, .L126+4
	ldr	r8, .L126+8
	str	r2, [sp, #0]
.L120:
	mov	fp, #0
	mov	r4, fp
.L121:
	mov	r5, r4, asl #3
	add	ip, r5, sl
	add	r1, r5, r8
	ldmia	r1, {r2-r3}
	ldmia	ip, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r7, r4, asl #3
	add	ip, r7, r8
	add	lr, r7, sl
	add	r6, r6, r9
	ldmia	ip, {r2-r3}
	stmia	r6, {r0-r1}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r7, r7, r9
	stmia	r7, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__muldf3
	add	fp, fp, #1
	add	r5, r5, r9
	cmp	fp, #28
	stmia	r5, {r0-r1}
	add	r4, r4, #1
	bne	.L121
	ldr	r3, [sp, #0]
	ldr	r2, [sp, #4]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [sp, #0]
	bne	.L120
.L123:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L127:
	.align	2
.L126:
	.word	dresult
	.word	dval1
	.word	dval2
	.size	bench_double_mul, .-bench_double_mul
	.align	2
	.global	bench_fixed_mul
	.type	bench_fixed_mul, %function
bench_fixed_mul:
	@ args = 0, pretend = 0, frame = 436
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #436
	str	r0, [sp, #312]
	movne	r0, #0
	ldrne	lr, .L137
	strne	r0, [sp, #316]
	beq	.L134
.L131:
	mov	r5, #0
	str	r5, [sp, #320]
	str	r5, [sp, #432]
.L132:
	ldr	r1, [sp, #432]
	add	r1, r1, #1
	add	r2, r1, #1
	add	r3, r2, #1
	add	r4, r3, #1
	add	r5, r4, #1
	add	r6, r5, #1
	add	r7, r6, #1
	add	r8, r7, #1
	add	r9, r8, #1
	add	sl, r9, #1
	add	fp, sl, #1
	add	ip, fp, #1
	add	r0, ip, #1
	str	r1, [sp, #68]
	add	r1, r0, #1
	str	r2, [sp, #60]
	add	r2, r1, #1
	str	r3, [sp, #324]
	add	r3, r2, #1
	str	r4, [sp, #328]
	add	r4, r3, #1
	str	r5, [sp, #332]
	add	r5, r4, #1
	str	r6, [sp, #336]
	add	r6, r5, #1
	str	r7, [sp, #340]
	add	r7, r6, #1
	str	r8, [sp, #344]
	str	r1, [sp, #364]
	add	r8, r7, #1
	str	r2, [sp, #368]
	ldr	r1, [sp, #432]
	ldr	r2, .L137+4
	str	r9, [sp, #348]
	add	r9, r8, #1
	ldr	r1, [r2, r1, asl #2]
	str	sl, [sp, #352]
	str	r3, [sp, #372]
	add	sl, r9, #1
	ldr	r3, [sp, #68]
	ldr	r2, [sp, #432]
	str	fp, [sp, #64]
	add	fp, sl, #1
	ldr	r2, [lr, r2, asl #2]
	str	ip, [sp, #356]
	str	r5, [sp, #380]
	add	ip, fp, #1
	ldr	r5, .L137+4
	str	r6, [sp, #384]
	ldr	r6, [lr, r3, asl #2]
	str	r0, [sp, #360]
	add	r0, ip, #1
	str	r4, [sp, #376]
	str	r7, [sp, #388]
	ldr	r4, [r5, r3, asl #2]
	str	r8, [sp, #392]
	str	r9, [sp, #396]
	str	sl, [sp, #400]
	str	fp, [sp, #404]
	str	ip, [sp, #408]
	str	r0, [sp, #412]
	str	r1, [sp, #40]
	str	r2, [sp, #36]
	ldr	r0, .L137+4
	str	r6, [sp, #32]
	ldr	ip, [sp, #332]
	ldr	r1, [sp, #336]
	ldr	ip, [r0, ip, asl #2]
	ldr	r2, .L137+4
	ldr	r0, [sp, #332]
	ldr	r7, [sp, #60]
	ldr	r9, [sp, #324]
	ldr	fp, [sp, #328]
	ldr	r1, [r2, r1, asl #2]
	ldr	sl, .L137+4
	ldr	r0, [lr, r0, asl #2]
	ldr	r2, [sp, #336]
	ldr	r6, [r5, r7, asl #2]
	ldr	r8, [sl, r9, asl #2]
	ldr	r5, [lr, r7, asl #2]
	ldr	r2, [lr, r2, asl #2]
	ldr	r7, [lr, r9, asl #2]
	str	ip, [sp, #188]
	ldr	r9, [sl, fp, asl #2]
	str	r0, [sp, #184]
	ldr	sl, [lr, fp, asl #2]
	ldr	r3, [sp, #340]
	ldr	fp, .L137+4
	ldr	ip, [sp, #344]
	ldr	r0, .L137+4
	ldr	r3, [fp, r3, asl #2]
	ldr	ip, [r0, ip, asl #2]
	str	r1, [sp, #180]
	str	r2, [sp, #176]
	ldr	fp, [sp, #340]
	ldr	r0, [sp, #344]
	ldr	r1, [sp, #348]
	ldr	r2, .L137+4
	ldr	fp, [lr, fp, asl #2]
	ldr	r0, [lr, r0, asl #2]
	ldr	r1, [r2, r1, asl #2]
	str	r3, [sp, #172]
	str	fp, [sp, #168]
	str	ip, [sp, #164]
	str	r0, [sp, #160]
	ldr	fp, .L137+4
	str	r1, [sp, #156]
	ldr	r3, [sp, #352]
	ldr	ip, [sp, #64]
	ldr	r3, [fp, r3, asl #2]
	ldr	r0, .L137+4
	ldr	fp, [sp, #352]
	ldr	ip, [r0, ip, asl #2]
	ldr	fp, [lr, fp, asl #2]
	ldr	r2, [sp, #348]
	str	fp, [sp, #144]
	ldr	r2, [lr, r2, asl #2]
	ldr	fp, [sp, #40]
	str	ip, [sp, #140]
	ldr	ip, [sp, #36]
	str	r2, [sp, #152]
	str	r3, [sp, #148]
	smull	r2, r3, fp, ip
	ldr	r0, [sp, #64]
	str	r2, [sp, #52]
	str	r3, [sp, #56]
	ldr	r0, [lr, r0, asl #2]
	mov	r2, r2, lsr #16
	str	r0, [sp, #28]
	orr	r0, r2, r3, asl #16
	str	r0, [sp, #304]
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #412]
	smull	fp, ip, r4, r0
	mov	r3, ip, asr #16
	str	r3, [sp, #300]
	smull	r3, r4, r6, r5
	mov	r5, r3, lsr #16
	mov	r3, r4, asr #16
	orr	r6, r5, r4, asl #16
	str	r3, [sp, #292]
	smull	r3, r4, r8, r7
	add	r1, r1, #1
	mov	r7, r3, lsr #16
	str	r1, [sp, #416]
	mov	r3, r4, asr #16
	ldr	r1, [sp, #56]
	orr	r8, r7, r4, asl #16
	str	r3, [sp, #284]
	smull	r3, r4, r9, sl
	mov	r1, r1, asr #16
	str	r1, [sp, #308]
	mov	r1, fp, lsr #16
	orr	r2, r1, ip, asl #16
	ldr	fp, [sp, #188]
	ldr	ip, [sp, #184]
	mov	r9, r3, lsr #16
	mov	r3, r4, asr #16
	orr	sl, r9, r4, asl #16
	str	r3, [sp, #276]
	smull	r3, r4, fp, ip
	mov	r0, r3, lsr #16
	orr	r1, r0, r4, asl #16
	str	r2, [sp, #296]
	str	r6, [sp, #288]
	str	r8, [sp, #280]
	str	sl, [sp, #272]
	str	r1, [sp, #264]
	ldr	r2, [sp, #180]
	ldr	r5, [sp, #176]
	mov	r3, r4, asr #16
	str	r3, [sp, #268]
	smull	r3, r4, r2, r5
	mov	r6, r3, lsr #16
	mov	r3, r4, asr #16
	orr	r7, r6, r4, asl #16
	ldr	r8, [sp, #172]
	ldr	fp, [sp, #168]
	ldr	ip, [sp, #164]
	ldr	r0, [sp, #160]
	ldr	r1, [sp, #156]
	ldr	r2, [sp, #152]
	ldr	r4, [sp, #144]
	str	r3, [sp, #260]
	ldr	r3, [sp, #148]
	smull	r9, sl, r8, fp
	smull	r5, r6, r1, r2
	str	r7, [sp, #256]
	smull	r1, r2, r3, r4
	smull	r7, r8, ip, r0
	ldr	r3, [sp, #28]
	ldr	r0, [sp, #140]
	mov	r9, r9, lsr #16
	smull	fp, ip, r0, r3
	mov	r3, fp, lsr #16
	orr	r3, r3, ip, asl #16
	ldr	ip, [sp, #416]
	ldr	fp, .L137+8
	add	ip, ip, #1
	ldr	r0, [sp, #432]
	str	ip, [sp, #420]
	ldr	ip, [sp, #304]
	orr	r9, r9, sl, asl #16
	str	ip, [fp, r0, asl #2]
	ldr	ip, [sp, #296]
	ldr	r0, [sp, #68]
	mov	r7, r7, lsr #16
	str	ip, [fp, r0, asl #2]
	ldr	ip, [sp, #288]
	ldr	r0, [sp, #60]
	mov	r5, r5, lsr #16
	str	ip, [fp, r0, asl #2]
	ldr	ip, [sp, #280]
	ldr	r0, [sp, #324]
	mov	r1, r1, lsr #16
	str	ip, [fp, r0, asl #2]
	ldr	ip, [sp, #272]
	ldr	r0, [sp, #328]
	orr	r7, r7, r8, asl #16
	str	ip, [fp, r0, asl #2]
	ldr	ip, [sp, #264]
	ldr	r0, [sp, #332]
	orr	r5, r5, r6, asl #16
	str	ip, [fp, r0, asl #2]
	ldr	ip, [sp, #256]
	ldr	r0, [sp, #336]
	ldr	sl, [sp, #348]
	str	ip, [fp, r0, asl #2]
	ldr	r0, [sp, #340]
	ldr	ip, [sp, #352]
	str	r9, [fp, r0, asl #2]
	ldr	r9, [sp, #344]
	ldr	r0, [sp, #64]
	orr	r1, r1, r2, asl #16
	str	r7, [fp, r9, asl #2]
	ldr	r2, [sp, #356]
	str	r5, [fp, sl, asl #2]
	str	r1, [fp, ip, asl #2]
	str	r3, [fp, r0, asl #2]
	ldr	r3, .L137+4
	ldr	r1, [sp, #420]
	ldr	r2, [r3, r2, asl #2]
	ldr	r4, [sp, #360]
	ldr	r5, .L137+4
	add	r1, r1, #1
	ldr	r4, [r5, r4, asl #2]
	str	r1, [sp, #424]
	str	r2, [sp, #24]
	ldr	r1, .L137+4
	ldr	r3, [sp, #356]
	ldr	r5, [sp, #360]
	ldr	r2, [sp, #380]
	add	r6, sp, #364
	ldmia	r6, {r6, r8, r9}	@ phole ldm
	ldr	r0, [sp, #376]
	ldr	r3, [lr, r3, asl #2]
	ldr	r5, [lr, r5, asl #2]
	ldr	r7, .L137+4
	ldr	r2, [r1, r2, asl #2]
	ldr	fp, [r7, r6, asl #2]
	ldr	sl, [r1, r0, asl #2]
	ldr	ip, [lr, r6, asl #2]
	str	r3, [sp, #20]
	ldr	r6, [lr, r9, asl #2]
	str	r4, [sp, #4]
	str	r5, [sp, #0]
	ldr	r4, [lr, r8, asl #2]
	ldr	r5, [r7, r8, asl #2]
	ldr	r7, [r7, r9, asl #2]
	ldr	r8, [lr, r0, asl #2]
	str	r2, [sp, #136]
	ldr	r0, [sp, #384]
	ldr	r3, [sp, #380]
	ldr	r0, [r1, r0, asl #2]
	ldr	r1, [sp, #384]
	ldr	r9, [lr, r3, asl #2]
	ldr	r1, [lr, r1, asl #2]
	ldr	r2, [sp, #388]
	ldr	r3, .L137+4
	str	r0, [sp, #132]
	str	r1, [sp, #128]
	ldr	r0, [sp, #392]
	ldr	r1, .L137+4
	ldr	r2, [r3, r2, asl #2]
	ldr	r3, [sp, #388]
	ldr	r0, [r1, r0, asl #2]
	ldr	r1, [sp, #392]
	ldr	r3, [lr, r3, asl #2]
	ldr	r1, [lr, r1, asl #2]
	str	r2, [sp, #124]
	str	r3, [sp, #120]
	ldr	r2, [sp, #396]
	ldr	r3, .L137+4
	str	r0, [sp, #116]
	str	r1, [sp, #112]
	ldr	r0, [sp, #400]
	ldr	r1, .L137+4
	ldr	r2, [r3, r2, asl #2]
	ldr	r0, [r1, r0, asl #2]
	ldr	r3, [sp, #396]
	ldr	r1, [sp, #400]
	str	r2, [sp, #108]
	ldr	r2, [sp, #424]
	ldr	r3, [lr, r3, asl #2]
	ldr	r1, [lr, r1, asl #2]
	add	r2, r2, #1
	str	r3, [sp, #104]
	str	r0, [sp, #100]
	str	r1, [sp, #96]
	str	r2, [sp, #428]
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #20]
	smull	r0, r1, r2, r3
	str	r0, [sp, #52]
	str	r1, [sp, #56]
	mov	r0, r0, lsr #16
	orr	r0, r0, r1, asl #16
	ldr	r1, [sp, #56]
	str	r0, [sp, #248]
	mov	r1, r1, asr #16
	ldr	r0, [sp, #4]
	str	r1, [sp, #252]
	ldr	r1, [sp, #0]
	smull	r2, r3, r0, r1
	mov	r0, r2, lsr #16
	orr	r1, r0, r3, asl #16
	mov	r2, r3, asr #16
	str	r1, [sp, #240]
	str	r2, [sp, #244]
	smull	r0, r1, r5, r4
	smull	r2, r3, fp, ip
	mov	r4, r1
	mov	fp, r2, lsr #16
	orr	ip, fp, r3, asl #16
	mov	r2, r3, asr #16
	mov	r1, r0, lsr #16
	mov	r3, r4, asr #16
	str	r2, [sp, #236]
	str	r3, [sp, #228]
	orr	r2, r1, r4, asl #16
	smull	r3, r4, r7, r6
	mov	r5, r3, lsr #16
	mov	r3, r4, asr #16
	orr	r6, r5, r4, asl #16
	str	r3, [sp, #220]
	smull	r3, r4, sl, r8
	ldr	sl, [sp, #136]
	mov	r7, r3, lsr #16
	mov	r3, r4, asr #16
	orr	r8, r7, r4, asl #16
	str	r3, [sp, #212]
	smull	r3, r4, sl, r9
	ldr	r0, [sp, #132]
	ldr	r1, [sp, #128]
	mov	fp, r3, lsr #16
	smull	r9, sl, r0, r1
	orr	fp, fp, r4, asl #16
	ldr	r3, [sp, #120]
	ldr	r4, [sp, #116]
	ldr	r0, [sp, #112]
	str	r2, [sp, #224]
	ldr	r2, [sp, #124]
	str	r6, [sp, #216]
	str	r8, [sp, #208]
	smull	r5, r6, r4, r0
	smull	r7, r8, r2, r3
	ldr	r4, [sp, #104]
	ldr	r3, [sp, #108]
	str	ip, [sp, #232]
	smull	r1, r2, r3, r4
	mov	r0, r1, lsr #16
	orr	r3, r0, r2, asl #16
	str	r3, [sp, #8]
	ldr	r2, [sp, #100]
	ldr	r3, [sp, #96]
	mov	r9, r9, lsr #16
	smull	r0, r1, r2, r3
	str	r0, [sp, #44]
	str	r1, [sp, #48]
	mov	r0, r0, lsr #16
	orr	r4, r0, r1, asl #16
	ldr	r0, [sp, #48]
	str	r4, [sp, #44]
	mov	r0, r0, asr #16
	str	r0, [sp, #48]
	ldr	r1, [sp, #428]
	ldr	r3, .L137+8
	ldr	r4, [sp, #248]
	ldr	r2, [sp, #356]
	add	r1, r1, #1
	str	r4, [r3, r2, asl #2]
	ldr	r0, [sp, #360]
	ldr	r4, [sp, #232]
	ldr	r2, [sp, #364]
	str	r1, [sp, #68]
	ldr	r1, [sp, #240]
	orr	r9, r9, sl, asl #16
	str	r1, [r3, r0, asl #2]
	str	r4, [r3, r2, asl #2]
	ldr	r1, [sp, #224]
	ldr	r0, [sp, #368]
	ldr	r4, [sp, #216]
	ldr	r2, [sp, #372]
	str	r1, [r3, r0, asl #2]
	str	r4, [r3, r2, asl #2]
	ldr	r1, [sp, #208]
	add	r0, sp, #376
	ldmia	r0, {r0, r2, r4}	@ phole ldm
	str	r1, [r3, r0, asl #2]
	ldr	sl, [sp, #392]
	str	fp, [r3, r2, asl #2]
	ldr	ip, [sp, #8]
	str	r9, [r3, r4, asl #2]
	ldr	fp, [sp, #396]
	ldr	r9, [sp, #388]
	ldr	r1, [sp, #44]
	ldr	r0, [sp, #400]
	mov	r7, r7, lsr #16
	mov	r5, r5, lsr #16
	orr	r7, r7, r8, asl #16
	orr	r5, r5, r6, asl #16
	str	r7, [r3, r9, asl #2]
	ldr	r4, .L137+4
	str	r5, [r3, sl, asl #2]
	ldr	r9, .L137+4
	str	ip, [r3, fp, asl #2]
	str	r1, [r3, r0, asl #2]
	add	r3, sp, #404
	ldmia	r3, {r3, r5, r6, r8}	@ phole ldm
	ldr	sl, [sp, #420]
	ldr	r0, [sp, #424]
	ldr	r2, [r4, r3, asl #2]
	ldr	ip, [r4, r5, asl #2]
	ldr	r7, [lr, r6, asl #2]
	ldr	r4, [r4, r6, asl #2]
	ldr	sl, [r9, sl, asl #2]
	ldr	r6, [r9, r8, asl #2]
	ldr	r0, [r9, r0, asl #2]
	ldr	r9, [sp, #424]
	ldr	fp, [sp, #420]
	ldr	r9, [lr, r9, asl #2]
	ldr	r1, [lr, r5, asl #2]
	str	sl, [sp, #92]
	ldr	r5, [lr, r8, asl #2]
	str	r0, [sp, #88]
	ldr	r8, [lr, fp, asl #2]
	str	r9, [sp, #84]
	ldr	sl, [sp, #428]
	ldr	fp, .L137+4
	ldr	r0, [sp, #68]
	ldr	r9, .L137+4
	ldr	sl, [fp, sl, asl #2]
	ldr	r0, [r9, r0, asl #2]
	ldr	fp, [sp, #428]
	ldr	r9, [sp, #68]
	ldr	fp, [lr, fp, asl #2]
	ldr	r9, [lr, r9, asl #2]
	ldr	r3, [lr, r3, asl #2]
	str	sl, [sp, #80]
	str	fp, [sp, #76]
	str	r0, [sp, #72]
	str	r9, [sp, #16]
	ldr	sl, [sp, #320]
	add	sl, sl, #1
	str	sl, [sp, #320]
	smull	r9, sl, r2, r3
	mov	r3, sl
	mov	r2, r3, asr #16
	mov	sl, r9, lsr #16
	orr	fp, sl, r3, asl #16
	str	r2, [sp, #204]
	smull	r2, r3, ip, r1
	mov	ip, r2, lsr #16
	mov	r2, r3, asr #16
	str	r2, [sp, #196]
	smull	r1, r2, r4, r7
	ldr	r4, [sp, #92]
	str	fp, [sp, #200]
	mov	fp, r1, lsr #16
	orr	r0, ip, r3, asl #16
	orr	fp, fp, r2, asl #16
	smull	r2, r3, r4, r8
	mov	r7, r2, lsr #16
	str	r0, [sp, #192]
	ldr	r1, [sp, #84]
	ldr	r0, [sp, #88]
	ldr	r4, [sp, #76]
	orr	r7, r7, r3, asl #16
	mov	r8, r3, asr #16
	ldr	r3, [sp, #80]
	smull	r9, sl, r6, r5
	smull	r5, r6, r0, r1
	smull	r1, r2, r3, r4
	mov	r0, r1, lsr #16
	orr	r3, r0, r2, asl #16
	mov	r1, r2, asr #16
	str	r3, [sp, #8]
	ldr	r2, [sp, #72]
	ldr	r3, [sp, #16]
	str	r1, [sp, #12]
	smull	r0, r1, r2, r3
	str	r0, [sp, #44]
	str	r1, [sp, #48]
	mov	r0, r0, lsr #16
	orr	r4, r0, r1, asl #16
	ldr	r0, [sp, #48]
	ldr	r3, .L137+8
	ldr	r1, [sp, #320]
	ldr	r2, [sp, #404]
	str	r4, [sp, #44]
	ldr	r4, [sp, #200]
	mov	r0, r0, asr #16
	str	r4, [r3, r2, asl #2]
	str	r0, [sp, #48]
	add	r0, sp, #408
	ldmia	r0, {r0, r2, r4}	@ phole ldm
	mov	r9, r9, lsr #16
	cmp	r1, #56
	ldr	r1, [sp, #192]
	orr	r9, r9, sl, asl #16
	str	r1, [r3, r0, asl #2]
	mov	r5, r5, lsr #16
	str	fp, [r3, r2, asl #2]
	ldr	sl, [sp, #424]
	str	r9, [r3, r4, asl #2]
	ldr	r9, [sp, #420]
	orr	r5, r5, r6, asl #16
	str	r7, [r3, r9, asl #2]
	str	r5, [r3, sl, asl #2]
	ldr	r0, [sp, #68]
	ldr	ip, [sp, #8]
	ldr	fp, [sp, #428]
	ldr	r1, [sp, #44]
	add	r2, r0, #1
	str	ip, [r3, fp, asl #2]
	mov	r6, r6, asr #16
	str	r1, [r3, r0, asl #2]
	str	r2, [sp, #432]
	bne	.L132
	ldr	r3, [sp, #316]
	ldr	r4, [sp, #312]
	add	r3, r3, #1
	cmp	r3, r4
	str	r3, [sp, #316]
	bne	.L131
.L134:
	add	sp, sp, #436
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L138:
	.align	2
.L137:
	.word	xval2
	.word	xval1
	.word	xresult
	.size	bench_fixed_mul, .-bench_fixed_mul
	.align	2
	.global	bench_i32_mul
	.type	bench_i32_mul, %function
bench_i32_mul:
	@ args = 0, pretend = 0, frame = 436
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #436
	str	r0, [sp, #308]
	beq	.L145
	mov	r1, #0
	ldr	sl, .L148
	ldr	r9, .L148+4
	ldr	fp, .L148+8
	str	r1, [sp, #312]
.L142:
	mov	r1, #0
	str	r1, [sp, #320]
	str	r1, [sp, #428]
.L143:
	ldr	r2, [sp, #428]
	add	r2, r2, #1
	add	r3, r2, #1
	add	r4, r3, #1
	add	r0, r4, #1
	add	ip, r0, #1
	add	lr, ip, #1
	add	r1, lr, #1
	str	r2, [sp, #316]
	add	r2, r1, #1
	str	r3, [sp, #324]
	add	r3, r2, #1
	str	r4, [sp, #328]
	add	r4, r3, #1
	str	ip, [sp, #332]
	add	ip, r4, #1
	str	lr, [sp, #336]
	add	lr, ip, #1
	str	r1, [sp, #340]
	add	r1, lr, #1
	str	r2, [sp, #344]
	add	r2, r1, #1
	str	r3, [sp, #348]
	add	r3, r2, #1
	str	r4, [sp, #352]
	add	r4, r3, #1
	str	ip, [sp, #356]
	add	ip, r4, #1
	str	lr, [sp, #360]
	add	lr, ip, #1
	str	r1, [sp, #364]
	add	r1, lr, #1
	str	r2, [sp, #368]
	str	r3, [sp, #372]
	add	r2, r1, #1
	str	r4, [sp, #376]
	str	ip, [sp, #380]
	str	lr, [sp, #384]
	str	r1, [sp, #388]
	ldr	r3, [sp, #428]
	ldr	r4, [sp, #428]
	ldr	ip, [sp, #316]
	ldr	lr, [sp, #316]
	ldr	r1, [sp, #324]
	ldr	r3, [r9, r3, asl #2]
	ldr	r4, [fp, r4, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	lr, [fp, lr, asl #2]
	ldr	r1, [r9, r1, asl #2]
	str	r2, [sp, #392]
	str	r3, [sp, #224]
	str	r4, [sp, #220]
	str	ip, [sp, #216]
	str	lr, [sp, #212]
	str	r1, [sp, #208]
	ldr	r2, [sp, #324]
	ldr	r3, [sp, #328]
	ldr	r4, [sp, #328]
	ldr	ip, [sp, #332]
	ldr	lr, [sp, #332]
	ldr	r1, [sp, #336]
	ldr	r2, [fp, r2, asl #2]
	ldr	r3, [r9, r3, asl #2]
	ldr	r4, [fp, r4, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	lr, [fp, lr, asl #2]
	ldr	r1, [r9, r1, asl #2]
	str	r2, [sp, #204]
	str	r3, [sp, #200]
	str	r4, [sp, #196]
	str	ip, [sp, #192]
	str	lr, [sp, #188]
	str	r1, [sp, #184]
	ldr	r2, [sp, #336]
	ldr	r3, [sp, #340]
	ldr	r4, [sp, #340]
	ldr	ip, [sp, #344]
	ldr	lr, [sp, #344]
	ldr	r1, [sp, #348]
	ldr	r2, [fp, r2, asl #2]
	ldr	r3, [r9, r3, asl #2]
	ldr	r4, [fp, r4, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	lr, [fp, lr, asl #2]
	ldr	r1, [r9, r1, asl #2]
	str	r2, [sp, #180]
	str	r3, [sp, #176]
	str	r4, [sp, #172]
	str	ip, [sp, #168]
	str	lr, [sp, #164]
	str	r1, [sp, #160]
	add	r2, sp, #348
	ldmia	r2, {r2, r3, ip}	@ phole ldm
	ldr	r1, [sp, #392]
	ldr	r2, [fp, r2, asl #2]
	ldr	r3, [r9, r3, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	r4, [sp, #352]
	ldr	lr, [sp, #356]
	add	r1, r1, #1
	ldr	r4, [fp, r4, asl #2]
	ldr	lr, [fp, lr, asl #2]
	str	r2, [sp, #156]
	str	r3, [sp, #152]
	ldr	r2, [sp, #220]
	ldr	r3, [sp, #212]
	str	ip, [sp, #144]
	str	r1, [sp, #396]
	ldr	ip, [sp, #224]
	ldr	r1, [sp, #216]
	mul	ip, r2, ip
	mul	r1, r3, r1
	str	r4, [sp, #148]
	str	lr, [sp, #140]
	ldr	r4, [sp, #204]
	ldr	lr, [sp, #196]
	ldr	r2, [sp, #208]
	ldr	r3, [sp, #200]
	mul	r2, r4, r2
	mul	r3, lr, r3
	ldr	r4, [r9, r0, asl #2]
	ldr	lr, [fp, r0, asl #2]
	mul	r4, lr, r4
	ldr	lr, [sp, #188]
	str	r4, [sp, #304]
	ldr	r4, [sp, #192]
	mul	r4, lr, r4
	ldr	lr, [sp, #180]
	str	r4, [sp, #300]
	ldr	r4, [sp, #184]
	mul	r4, lr, r4
	str	r4, [sp, #296]
	ldr	lr, [sp, #172]
	ldr	r4, [sp, #176]
	mul	r4, lr, r4
	ldr	lr, [sp, #164]
	str	r4, [sp, #292]
	ldr	r4, [sp, #168]
	mul	r4, lr, r4
	ldr	lr, [sp, #156]
	str	r4, [sp, #288]
	ldr	r4, [sp, #160]
	mul	r4, lr, r4
	ldr	lr, [sp, #148]
	str	r4, [sp, #284]
	ldr	r4, [sp, #152]
	mul	r4, lr, r4
	ldr	lr, [sp, #140]
	str	r4, [sp, #280]
	ldr	r4, [sp, #144]
	mul	r4, lr, r4
	str	r4, [sp, #276]
	ldr	r4, [sp, #396]
	add	r4, r4, #1
	add	lr, r4, #1
	str	r4, [sp, #400]
	add	r4, lr, #1
	str	lr, [sp, #404]
	str	r4, [sp, #408]
	add	lr, r4, #1
	ldr	r4, [sp, #428]
	str	lr, [sp, #412]
	str	ip, [sl, r4, asl #2]
	ldr	ip, [sp, #316]
	ldr	lr, [sp, #324]
	str	r1, [sl, ip, asl #2]
	ldr	r1, [sp, #328]
	str	r2, [sl, lr, asl #2]
	ldr	r4, [sp, #300]
	str	r3, [sl, r1, asl #2]
	ldr	r2, [sp, #304]
	ldr	r3, [sp, #332]
	ldr	lr, [sp, #296]
	ldr	ip, [sp, #336]
	str	r2, [sl, r0, asl #2]
	str	r4, [sl, r3, asl #2]
	str	lr, [sl, ip, asl #2]
	ldr	r2, [sp, #292]
	ldr	r1, [sp, #340]
	ldr	r4, [sp, #288]
	ldr	r3, [sp, #344]
	ldr	lr, [sp, #284]
	ldr	ip, [sp, #348]
	str	r2, [sl, r1, asl #2]
	str	r4, [sl, r3, asl #2]
	str	lr, [sl, ip, asl #2]
	ldr	ip, [sp, #412]
	ldr	r2, [sp, #280]
	ldr	r1, [sp, #352]
	ldr	r4, [sp, #276]
	ldr	r3, [sp, #356]
	add	ip, ip, #1
	str	r2, [sl, r1, asl #2]
	str	ip, [sp, #416]
	str	r4, [sl, r3, asl #2]
	ldr	lr, [sp, #360]
	ldr	r2, [sp, #364]
	ldr	r3, [sp, #364]
	ldr	r4, [sp, #368]
	ldr	ip, [sp, #368]
	ldr	lr, [r9, lr, asl #2]
	ldr	r1, [sp, #360]
	ldr	r2, [r9, r2, asl #2]
	ldr	r3, [fp, r3, asl #2]
	ldr	r4, [r9, r4, asl #2]
	ldr	ip, [fp, ip, asl #2]
	ldr	r5, [fp, r1, asl #2]
	str	lr, [sp, #136]
	str	r2, [sp, #128]
	str	r3, [sp, #124]
	str	r4, [sp, #120]
	str	ip, [sp, #116]
	ldr	lr, [sp, #372]
	ldr	r1, [sp, #372]
	ldr	r2, [sp, #376]
	ldr	r3, [sp, #376]
	ldr	r4, [sp, #380]
	ldr	ip, [sp, #380]
	ldr	lr, [r9, lr, asl #2]
	ldr	r1, [fp, r1, asl #2]
	ldr	r2, [r9, r2, asl #2]
	ldr	r3, [fp, r3, asl #2]
	ldr	r4, [r9, r4, asl #2]
	ldr	ip, [fp, ip, asl #2]
	str	lr, [sp, #112]
	str	r1, [sp, #108]
	str	r2, [sp, #104]
	str	r3, [sp, #100]
	str	r4, [sp, #96]
	str	ip, [sp, #92]
	ldr	lr, [sp, #384]
	ldr	r1, [sp, #384]
	ldr	r2, [sp, #388]
	ldr	r3, [sp, #388]
	ldr	r4, [sp, #392]
	ldr	ip, [sp, #392]
	ldr	lr, [r9, lr, asl #2]
	ldr	r1, [fp, r1, asl #2]
	ldr	r2, [r9, r2, asl #2]
	ldr	r3, [fp, r3, asl #2]
	ldr	r4, [r9, r4, asl #2]
	ldr	ip, [fp, ip, asl #2]
	str	lr, [sp, #88]
	str	r1, [sp, #84]
	str	r2, [sp, #80]
	str	r3, [sp, #76]
	str	r4, [sp, #72]
	str	ip, [sp, #68]
	ldr	r2, [sp, #400]
	ldr	r3, [sp, #400]
	ldr	r4, [sp, #404]
	ldr	r2, [r9, r2, asl #2]
	ldr	r3, [fp, r3, asl #2]
	ldr	r4, [r9, r4, asl #2]
	str	r2, [sp, #60]
	str	r3, [sp, #56]
	str	r4, [sp, #52]
	ldr	r2, [sp, #136]
	ldr	r4, [sp, #124]
	ldr	r3, [sp, #128]
	ldr	r1, [sp, #396]
	mul	r2, r5, r2
	mul	r3, r4, r3
	ldr	lr, [sp, #396]
	ldr	ip, [sp, #404]
	ldr	r0, [fp, r1, asl #2]
	ldr	lr, [r9, lr, asl #2]
	ldr	ip, [fp, ip, asl #2]
	ldr	r1, [sp, #416]
	str	lr, [sp, #64]
	str	ip, [sp, #48]
	add	lr, r1, #1
	str	r2, [sp, #132]
	ldr	r1, [sp, #116]
	str	r3, [sp, #272]
	ldr	ip, [sp, #120]
	ldr	r3, [sp, #108]
	ldr	r2, [sp, #112]
	mul	ip, r1, ip
	mul	r2, r3, r2
	str	ip, [sp, #268]
	str	r2, [sp, #264]
	ldr	ip, [sp, #100]
	ldr	r2, [sp, #92]
	ldr	r4, [sp, #104]
	ldr	r1, [sp, #96]
	mul	r4, ip, r4
	mul	r1, r2, r1
	str	r4, [sp, #260]
	str	r1, [sp, #256]
	ldr	r4, [sp, #84]
	ldr	r3, [sp, #88]
	ldr	r1, [sp, #76]
	mul	r3, r4, r3
	ldr	ip, [sp, #80]
	str	r3, [sp, #252]
	mul	ip, r1, ip
	ldr	r3, [sp, #68]
	ldr	r2, [sp, #72]
	ldr	r4, [sp, #64]
	mul	r2, r3, r2
	ldr	r1, [sp, #56]
	str	ip, [sp, #248]
	ldr	ip, [sp, #60]
	mul	r4, r0, r4
	mul	ip, r1, ip
	add	r0, lr, #1
	str	r2, [sp, #244]
	ldr	r3, [sp, #52]
	ldr	r2, [sp, #48]
	str	r4, [sp, #240]
	add	r4, r0, #1
	mul	r3, r2, r3
	str	ip, [sp, #236]
	ldr	r2, [sp, #360]
	add	ip, r4, #1
	str	r4, [sp, #420]
	ldr	r4, [sp, #132]
	add	r1, ip, #1
	str	r4, [sl, r2, asl #2]
	str	ip, [sp, #424]
	ldr	r4, [sp, #268]
	ldr	ip, [sp, #364]
	ldr	r2, [sp, #368]
	str	r1, [sp, #432]
	ldr	r1, [sp, #272]
	str	r1, [sl, ip, asl #2]
	str	r4, [sl, r2, asl #2]
	ldr	r1, [sp, #264]
	ldr	ip, [sp, #372]
	ldr	r4, [sp, #260]
	ldr	r2, [sp, #376]
	str	r1, [sl, ip, asl #2]
	str	r4, [sl, r2, asl #2]
	ldr	r1, [sp, #256]
	ldr	ip, [sp, #380]
	ldr	r4, [sp, #252]
	str	r1, [sl, ip, asl #2]
	ldr	r2, [sp, #384]
	ldr	r1, [sp, #248]
	ldr	ip, [sp, #388]
	str	r4, [sl, r2, asl #2]
	str	r1, [sl, ip, asl #2]
	ldr	r4, [sp, #244]
	ldr	r2, [sp, #392]
	ldr	r1, [sp, #240]
	ldr	ip, [sp, #396]
	str	r4, [sl, r2, asl #2]
	str	r1, [sl, ip, asl #2]
	ldr	r4, [sp, #236]
	ldr	r2, [sp, #400]
	ldr	ip, [sp, #404]
	str	r4, [sl, r2, asl #2]
	ldr	r1, [sp, #408]
	str	r3, [sl, ip, asl #2]
	ldr	r4, [sp, #412]
	ldr	r3, [sp, #412]
	ldr	ip, [sp, #416]
	ldr	r1, [r9, r1, asl #2]
	ldr	r2, [sp, #408]
	ldr	r3, [r9, r3, asl #2]
	ldr	r4, [fp, r4, asl #2]
	ldr	ip, [r9, ip, asl #2]
	ldr	r7, [fp, r2, asl #2]
	str	r1, [sp, #44]
	str	r3, [sp, #36]
	str	r4, [sp, #32]
	str	ip, [sp, #28]
	ldr	r1, [sp, #416]
	ldr	r2, [sp, #420]
	ldr	r1, [fp, r1, asl #2]
	ldr	r2, [r9, r2, asl #2]
	ldr	r3, [sp, #420]
	ldr	r4, [sp, #424]
	ldr	ip, [sp, #424]
	str	r1, [sp, #24]
	str	r2, [sp, #20]
	ldr	r3, [fp, r3, asl #2]
	ldr	r1, [sp, #432]
	ldr	r2, [sp, #432]
	ldr	r4, [r9, r4, asl #2]
	ldr	ip, [fp, ip, asl #2]
	str	r3, [sp, #16]
	ldr	r1, [r9, r1, asl #2]
	ldr	r2, [fp, r2, asl #2]
	ldr	r3, [sp, #44]
	str	r4, [sp, #12]
	str	ip, [sp, #8]
	ldr	r4, [sp, #36]
	ldr	ip, [sp, #32]
	str	r1, [sp, #4]
	str	r2, [sp, #0]
	mul	r3, r7, r3
	ldr	r2, [fp, lr, asl #2]
	ldr	r1, [sp, #24]
	ldr	r7, [r9, lr, asl #2]
	ldr	r8, [sp, #28]
	mul	r4, ip, r4
	mul	r8, r1, r8
	mul	r7, r2, r7
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #0]
	str	r4, [sp, #232]
	mul	r1, r2, r1
	ldr	r4, [sp, #16]
	ldr	r5, [sp, #20]
	str	r3, [sp, #40]
	ldr	r6, [r9, r0, asl #2]
	ldr	r3, [fp, r0, asl #2]
	ldr	ip, [sp, #8]
	mul	r5, r4, r5
	ldr	r4, [sp, #12]
	mul	r6, r3, r6
	str	r1, [sp, #228]
	ldr	r3, [sp, #320]
	mul	r4, ip, r4
	ldr	r1, [sp, #40]
	ldr	ip, [sp, #408]
	add	r3, r3, #1
	str	r1, [sl, ip, asl #2]
	ldr	r2, [sp, #412]
	str	r3, [sp, #320]
	cmp	r3, #56
	ldr	ip, [sp, #416]
	ldr	r3, [sp, #232]
	ldr	r1, [sp, #424]
	str	r3, [sl, r2, asl #2]
	str	r8, [sl, ip, asl #2]
	ldr	r2, [sp, #432]
	str	r7, [sl, lr, asl #2]
	ldr	lr, [sp, #420]
	ldr	r3, [sp, #228]
	str	r6, [sl, r0, asl #2]
	str	r5, [sl, lr, asl #2]
	str	r4, [sl, r1, asl #2]
	add	r4, r2, #1
	str	r3, [sl, r2, asl #2]
	str	r4, [sp, #428]
	bne	.L143
	ldr	ip, [sp, #312]
	ldr	lr, [sp, #308]
	add	ip, ip, #1
	cmp	ip, lr
	str	ip, [sp, #312]
	bne	.L142
.L145:
	add	sp, sp, #436
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L149:
	.align	2
.L148:
	.word	i32result
	.word	i32val1
	.word	i32val2
	.size	bench_i32_mul, .-bench_i32_mul
	.align	2
	.global	bench_i64_mul
	.type	bench_i64_mul, %function
bench_i64_mul:
	@ args = 0, pretend = 0, frame = 1232
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r0, r0, asl #1
	sub	sp, sp, #1232
	movne	r1, #0
	str	r0, [sp, #1228]
	ldrne	fp, .L159
	strne	r1, [sp, #1140]
	beq	.L156
.L153:
	mov	r1, #0
	str	r1, [sp, #1144]
.L154:
	add	r0, r1, #1
	add	r2, r0, #1
	add	lr, r2, #1
	add	r5, lr, #1
	add	r6, r5, #1
	mov	r5, r5, asl #3
	mov	r4, r2, asl #3
	str	r5, [sp, #1020]
	add	r3, r6, #1
	str	r4, [sp, #1080]
	add	r5, r4, fp
	ldr	r4, [sp, #1020]
	mov	r6, r6, asl #3
	mov	ip, r3, asl #3
	mov	r1, r1, asl #3
	str	ip, [sp, #956]
	str	r1, [sp, #1136]
	add	ip, r6, fp
	add	r4, r4, fp
	mov	lr, lr, asl #3
	str	r4, [sp, #1012]
	str	ip, [sp, #980]
	ldr	r4, [sp, #1136]
	ldr	ip, .L159+4
	str	r3, [sp, #1152]
	add	r3, lr, fp
	ldr	r4, [r4, ip]
	str	r3, [sp, #1048]
	ldr	r3, [sp, #956]
	str	r4, [sp, #172]
	add	sl, r3, fp
	ldr	r4, .L159+4
	ldr	r3, [sp, #1080]
	mov	r0, r0, asl #3
	ldr	ip, [r0, ip]
	ldr	r3, [r3, r4]
	str	ip, [sp, #168]
	str	r3, [sp, #164]
	ldr	ip, [sp, #1020]
	ldr	r3, .L159+4
	ldr	r4, [lr, r4]
	ldr	ip, [ip, r3]
	str	r4, [sp, #160]
	str	ip, [sp, #152]
	ldr	r4, [sp, #956]
	ldr	ip, .L159+4
	add	r2, r0, fp
	ldr	r4, [r4, ip]
	ldr	ip, [sp, #1048]
	ldr	r3, [r6, r3]
	ldr	r2, [r2, #4]
	ldr	ip, [ip, #4]
	add	r1, r1, fp
	ldr	r9, [r1, #4]
	str	r6, [sp, #988]
	ldr	r1, [r5, #4]
	str	r3, [sp, #144]
	str	r4, [sp, #136]
	str	r2, [sp, #1092]
	str	ip, [sp, #1032]
	ldr	r2, [sp, #1012]
	ldr	r3, [sp, #980]
	ldr	r5, [r2, #4]
	ldr	r8, [r3, #4]
	ldr	r2, [sp, #1092]
	ldr	r3, [sp, #168]
	ldr	r4, [sp, #1152]
	mul	r2, r3, r2
	ldr	ip, [sp, #172]
	add	r4, r4, #1
	str	r4, [sp, #1156]
	mul	ip, r9, ip
	ldr	r4, [sp, #164]
	str	r2, [sp, #1096]
	ldr	r2, [sp, #152]
	mul	r4, r1, r4
	mul	r2, r5, r2
	ldr	r3, [sp, #144]
	ldr	r1, [sp, #160]
	str	ip, [sp, #1116]
	ldr	ip, [sp, #1032]
	mul	r3, r8, r3
	ldr	sl, [sl, #4]
	mul	ip, r1, ip
	str	r4, [sp, #1064]
	ldr	r4, [sp, #136]
	str	r2, [sp, #1000]
	ldr	r2, .L159+4
	mul	r4, sl, r4
	str	r3, [sp, #968]
	add	r3, r0, r2
	str	ip, [sp, #1036]
	ldr	r1, [sp, #1136]
	ldr	ip, [sp, #1156]
	str	r3, [sp, #1104]
	ldr	r3, [sp, #1020]
	add	r1, r1, r2
	add	r5, r3, r2
	str	r4, [sp, #940]
	ldr	r3, [sp, #956]
	ldr	r4, [sp, #1080]
	add	ip, ip, #1
	str	r1, [sp, #1128]
	str	ip, [sp, #1160]
	add	ip, lr, r2
	add	r1, r4, r2
	str	ip, [sp, #1052]
	add	r4, r6, r2
	add	ip, r3, r2
	ldr	r2, [sp, #1128]
	ldr	r2, [r2, #4]
	str	r2, [sp, #1120]
	ldr	r2, [sp, #1160]
	ldr	ip, [ip, #4]
	add	r2, r2, #1
	ldr	r3, [sp, #1104]
	str	r2, [sp, #1164]
	str	ip, [sp, #944]
	ldr	r2, [sp, #988]
	ldr	ip, [sp, #1020]
	ldr	r1, [r1, #4]
	ldr	sl, [r3, #4]
	ldr	ip, [ip, fp]
	ldr	r3, [sp, #1136]
	ldr	r2, [r2, fp]
	ldr	r4, [r4, #4]
	str	r1, [sp, #1068]
	ldr	r1, [sp, #1052]
	ldr	r6, [r3, fp]
	str	ip, [sp, #156]
	str	r2, [sp, #148]
	ldr	ip, [sp, #1120]
	ldr	r2, [sp, #1116]
	ldr	r1, [r1, #4]
	str	r4, [sp, #972]
	ldr	r4, [sp, #1080]
	mla	ip, r6, ip, r2
	ldr	r3, [sp, #956]
	str	r1, [sp, #1040]
	ldr	r1, [r4, fp]
	ldr	r4, [sp, #1164]
	ldr	r5, [r5, #4]
	ldr	r3, [r3, fp]
	add	r4, r4, #1
	ldr	r7, [r0, fp]
	str	r5, [sp, #1004]
	str	r3, [sp, #140]
	ldr	r5, [lr, fp]
	str	r4, [sp, #1168]
	str	ip, [sp, #1124]
	ldr	ip, [sp, #172]
	ldr	r2, [sp, #1096]
	umull	r3, r4, ip, r6
	ldr	ip, [sp, #168]
	mla	r2, r7, sl, r2
	str	r3, [sp, #1108]
	str	r4, [sp, #1112]
	umull	r3, r4, ip, r7
	str	r2, [sp, #1100]
	str	r3, [sp, #1084]
	str	r4, [sp, #1088]
	ldr	r2, [sp, #1068]
	ldr	r3, [sp, #1064]
	ldr	r4, [sp, #164]
	mla	r2, r1, r2, r3
	str	r2, [sp, #1072]
	umull	r2, r3, r4, r1
	ldr	ip, [sp, #1040]
	ldr	r1, [sp, #1036]
	ldr	r4, [sp, #160]
	mla	ip, r5, ip, r1
	str	r2, [sp, #1056]
	str	r3, [sp, #1060]
	umull	r2, r3, r4, r5
	ldr	r1, [sp, #156]
	str	r2, [sp, #1024]
	str	r3, [sp, #1028]
	str	ip, [sp, #1044]
	ldr	r2, [sp, #1000]
	ldr	ip, [sp, #1004]
	mla	ip, r1, ip, r2
	str	ip, [sp, #1008]
	ldr	ip, [sp, #152]
	ldr	r2, [sp, #972]
	umull	r3, r4, ip, r1
	str	r3, [sp, #992]
	str	r4, [sp, #996]
	ldr	r3, [sp, #148]
	ldr	r4, [sp, #968]
	ldr	ip, [sp, #944]
	mla	r2, r3, r2, r4
	ldr	r3, [sp, #144]
	ldr	r4, [sp, #148]
	str	r2, [sp, #976]
	umull	r1, r2, r3, r4
	str	r1, [sp, #960]
	str	r2, [sp, #964]
	ldr	r1, [sp, #140]
	ldr	r2, [sp, #940]
	mla	ip, r1, ip, r2
	str	ip, [sp, #948]
	ldr	ip, [sp, #136]
	umull	r3, r4, ip, r1
	str	r3, [sp, #932]
	str	r4, [sp, #936]
	ldr	r2, [sp, #1168]
	ldr	r4, [sp, #1156]
	ldr	ip, [sp, #1160]
	add	r6, r2, #1
	ldr	r1, [sp, #1164]
	add	r7, r6, #1
	mov	r4, r4, asl #3
	mov	ip, ip, asl #3
	add	r3, r7, #1
	str	r4, [sp, #928]
	str	ip, [sp, #900]
	ldr	r4, [sp, #1124]
	ldr	ip, [sp, #1112]
	mov	r1, r1, asl #3
	mov	r2, r2, asl #3
	str	r3, [sp, #1172]
	str	r1, [sp, #864]
	str	r2, [sp, #832]
	ldr	r1, [sp, #1100]
	ldr	r2, [sp, #1088]
	mov	r3, r3, asl #3
	add	ip, r4, ip
	str	r3, [sp, #736]
	ldr	r4, [sp, #1060]
	ldr	r3, [sp, #1072]
	add	r2, r1, r2
	str	ip, [sp, #1112]
	ldr	r1, [sp, #1028]
	ldr	ip, [sp, #1044]
	add	r4, r3, r4
	str	r2, [sp, #1088]
	ldr	r3, [sp, #996]
	ldr	r2, [sp, #1008]
	add	r1, ip, r1
	str	r4, [sp, #1060]
	ldr	ip, [sp, #964]
	ldr	r4, [sp, #976]
	add	r3, r2, r3
	add	ip, r4, ip
	ldr	r2, [sp, #936]
	ldr	r4, .L159+8
	str	r1, [sp, #1028]
	str	r3, [sp, #996]
	ldr	r1, [sp, #948]
	ldr	r3, [sp, #1136]
	mov	r6, r6, asl #3
	mov	r7, r7, asl #3
	add	r2, r1, r2
	add	r3, r3, r4
	str	r6, [sp, #800]
	str	r7, [sp, #768]
	str	ip, [sp, #964]
	str	r2, [sp, #936]
	str	r3, [sp, #1132]
	ldr	ip, [sp, #1080]
	ldr	r1, [sp, #1020]
	ldr	r2, [sp, #988]
	ldr	r3, [sp, #956]
	add	r0, r0, r4
	add	ip, ip, r4
	add	lr, lr, r4
	add	r1, r1, r4
	add	r2, r2, r4
	add	r3, r3, r4
	ldr	r4, [sp, #928]
	str	ip, [sp, #1076]
	add	r4, r4, fp
	str	r1, [sp, #1016]
	str	r2, [sp, #984]
	str	r3, [sp, #952]
	str	r4, [sp, #916]
	add	r3, r6, fp
	add	r4, r7, fp
	ldr	r1, [sp, #864]
	ldr	r2, [sp, #832]
	ldr	ip, [sp, #900]
	str	r3, [sp, #792]
	str	r4, [sp, #760]
	ldr	r3, [sp, #1132]
	ldr	r4, [sp, #1076]
	add	r1, r1, fp
	add	r2, r2, fp
	add	ip, ip, fp
	str	r1, [sp, #856]
	str	r2, [sp, #824]
	ldr	r1, [sp, #1108]
	ldr	r2, [sp, #1112]
	stmia	r3, {r1-r2}
	ldr	r1, [sp, #1084]
	ldr	r2, [sp, #1088]
	stmia	r0, {r1-r2}
	add	r2, sp, #1056
	ldmia	r2, {r2-r3}
	stmia	r4, {r2-r3}
	add	r1, sp, #1024
	ldmia	r1, {r1-r2}
	ldr	r4, [sp, #1016]
	str	ip, [sp, #888]
	ldr	ip, [sp, #736]
	stmia	lr, {r1-r2}
	add	r2, sp, #992
	ldmia	r2, {r2-r3}
	stmia	r4, {r2-r3}
	add	r1, sp, #960
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #984]
	add	ip, ip, fp
	str	ip, [sp, #728]
	stmia	r3, {r1-r2}
	add	r1, sp, #932
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #952]
	ldr	ip, .L159+4
	stmia	r3, {r1-r2}
	ldr	r2, [sp, #864]
	ldr	r4, [sp, #928]
	ldr	r2, [r2, ip]
	ldr	r4, [r4, ip]
	str	r2, [sp, #120]
	ldr	r2, [sp, #736]
	ldr	r1, [sp, #900]
	ldr	r3, [sp, #832]
	ldr	r2, [r2, ip]
	ldr	r1, [r1, ip]
	ldr	r3, [r3, ip]
	str	r4, [sp, #132]
	ldr	r4, [r6, ip]
	str	r2, [sp, #96]
	ldr	r2, [sp, #824]
	str	r1, [sp, #124]
	str	r3, [sp, #116]
	ldr	r1, [r7, ip]
	ldr	r3, [sp, #916]
	ldr	ip, [sp, #856]
	str	r4, [sp, #108]
	ldr	r4, [sp, #888]
	ldr	r0, [r2, #4]
	ldr	r2, [sp, #1172]
	ldr	r5, [r3, #4]
	ldr	r6, [r4, #4]
	ldr	r3, [sp, #792]
	ldr	r4, [sp, #760]
	str	r1, [sp, #104]
	ldr	r1, [ip, #4]
	ldr	ip, [sp, #728]
	add	r2, r2, #1
	ldr	r7, [r3, #4]
	ldr	lr, [r4, #4]
	ldr	r8, [ip, #4]
	str	r2, [sp, #1176]
	ldr	r4, [sp, #120]
	ldr	r3, [sp, #124]
	mul	r4, r1, r4
	ldr	ip, [sp, #116]
	ldr	r1, [sp, #108]
	mul	r3, r6, r3
	mul	ip, r0, ip
	mul	r1, r7, r1
	str	r3, [sp, #876]
	ldr	r2, [sp, #104]
	ldr	r3, [sp, #96]
	str	r4, [sp, #844]
	str	ip, [sp, #812]
	str	r1, [sp, #780]
	ldr	r4, [sp, #1176]
	ldr	r1, .L159+4
	ldr	ip, [sp, #928]
	mul	r2, lr, r2
	mul	r3, r8, r3
	add	ip, ip, r1
	add	r4, r4, #1
	str	ip, [sp, #920]
	str	r4, [sp, #1180]
	ldr	ip, .L159+4
	ldr	r4, [sp, #832]
	str	r2, [sp, #748]
	add	r0, r4, ip
	str	r3, [sp, #720]
	ldr	r4, [sp, #768]
	ldr	r3, [sp, #864]
	ldr	r2, [sp, #900]
	add	lr, r4, ip
	add	r2, r2, r1
	ldr	r4, [sp, #736]
	add	r1, r3, r1
	ldr	r3, [sp, #800]
	str	r2, [sp, #892]
	add	r2, r3, ip
	add	r3, r4, ip
	ldr	r4, [sp, #892]
	ldr	ip, [sp, #920]
	ldr	r4, [r4, #4]
	ldr	r1, [r1, #4]
	ldr	r0, [r0, #4]
	ldr	sl, [sp, #132]
	ldr	r2, [r2, #4]
	mul	sl, r5, sl
	str	r4, [sp, #880]
	ldr	r5, [ip, #4]
	str	r1, [sp, #848]
	str	r0, [sp, #816]
	str	r2, [sp, #784]
	ldr	ip, [sp, #1180]
	ldr	r2, [sp, #900]
	add	ip, ip, #1
	ldr	r2, [r2, fp]
	str	ip, [sp, #1184]
	ldr	ip, [sp, #832]
	str	r2, [sp, #128]
	ldr	r2, [sp, #800]
	ldr	r0, [ip, fp]
	ldr	r3, [r3, #4]
	ldr	ip, [sp, #736]
	ldr	r2, [r2, fp]
	ldr	r1, [sp, #928]
	ldr	ip, [ip, fp]
	str	r3, [sp, #724]
	ldr	r3, [sp, #864]
	str	r2, [sp, #112]
	ldr	r2, [sp, #1184]
	ldr	r4, [r1, fp]
	ldr	lr, [lr, #4]
	ldr	r1, [r3, fp]
	str	ip, [sp, #100]
	ldr	r3, [sp, #768]
	ldr	ip, [sp, #132]
	add	r2, r2, #1
	str	lr, [sp, #752]
	str	r2, [sp, #1188]
	ldr	lr, [r3, fp]
	umull	r2, r3, ip, r4
	mla	r5, r4, r5, sl
	str	r2, [sp, #904]
	str	r3, [sp, #908]
	ldr	r4, [sp, #876]
	ldr	r3, [sp, #128]
	ldr	r2, [sp, #880]
	mov	ip, r3
	mla	r2, r3, r2, r4
	ldr	r4, [sp, #124]
	str	r2, [sp, #884]
	umull	r2, r3, r4, ip
	str	r5, [sp, #912]
	str	r2, [sp, #868]
	str	r3, [sp, #872]
	ldr	r3, [sp, #844]
	ldr	r2, [sp, #848]
	ldr	r4, [sp, #120]
	mla	r2, r1, r2, r3
	str	r2, [sp, #852]
	umull	r2, r3, r4, r1
	ldr	ip, [sp, #816]
	ldr	r1, [sp, #812]
	ldr	r4, [sp, #116]
	mla	ip, r0, ip, r1
	str	r2, [sp, #836]
	str	r3, [sp, #840]
	umull	r2, r3, r4, r0
	ldr	r1, [sp, #112]
	str	r2, [sp, #804]
	str	r3, [sp, #808]
	str	ip, [sp, #820]
	ldr	r2, [sp, #780]
	ldr	ip, [sp, #784]
	ldr	r0, [sp, #724]
	mla	ip, r1, ip, r2
	str	ip, [sp, #788]
	ldr	ip, [sp, #108]
	ldr	r2, [sp, #752]
	umull	r3, r4, ip, r1
	str	r3, [sp, #772]
	str	r4, [sp, #776]
	ldr	r3, [sp, #748]
	ldr	r4, [sp, #100]
	mla	r2, lr, r2, r3
	ldr	r3, [sp, #104]
	str	r2, [sp, #756]
	umull	r1, r2, r3, lr
	ldr	r3, [sp, #96]
	ldr	ip, [sp, #720]
	str	r1, [sp, #740]
	str	r2, [sp, #744]
	umull	r1, r2, r3, r4
	mla	r0, r4, r0, ip
	ldr	ip, [sp, #1188]
	str	r1, [sp, #712]
	str	r2, [sp, #716]
	add	r8, ip, #1
	ldr	r2, [sp, #1176]
	ldr	r3, [sp, #1180]
	ldr	r4, [sp, #1184]
	add	lr, r8, #1
	add	r1, lr, #1
	mov	r2, r2, asl #3
	mov	r3, r3, asl #3
	mov	r4, r4, asl #3
	str	r1, [sp, #1192]
	str	r2, [sp, #708]
	str	r3, [sp, #688]
	str	r4, [sp, #656]
	ldr	r2, [sp, #908]
	ldr	r4, [sp, #872]
	ldr	r3, [sp, #884]
	mov	ip, ip, asl #3
	mov	r1, r1, asl #3
	add	r2, r5, r2
	str	ip, [sp, #628]
	str	r1, [sp, #528]
	ldr	ip, [sp, #852]
	ldr	r1, [sp, #840]
	add	r4, r3, r4
	str	r2, [sp, #908]
	ldr	r3, [sp, #808]
	ldr	r2, [sp, #820]
	add	r1, ip, r1
	str	r4, [sp, #872]
	ldr	ip, [sp, #776]
	ldr	r4, [sp, #788]
	add	r3, r2, r3
	str	r1, [sp, #840]
	ldr	r2, [sp, #744]
	ldr	r1, [sp, #756]
	add	ip, r4, ip
	add	r2, r1, r2
	str	r3, [sp, #808]
	str	ip, [sp, #776]
	ldr	r3, [sp, #716]
	ldr	ip, .L159+8
	ldr	r4, [sp, #928]
	ldr	r1, [sp, #900]
	add	r3, r0, r3
	add	r4, r4, ip
	add	r1, r1, ip
	str	r2, [sp, #744]
	str	r3, [sp, #716]
	str	r4, [sp, #924]
	str	r1, [sp, #896]
	ldr	r2, [sp, #864]
	ldr	r1, [sp, #768]
	ldr	r3, [sp, #832]
	ldr	r4, [sp, #800]
	mov	r8, r8, asl #3
	add	r2, r2, ip
	add	r3, r3, ip
	add	r4, r4, ip
	mov	lr, lr, asl #3
	add	ip, r1, ip
	str	r8, [sp, #596]
	str	lr, [sp, #560]
	str	r2, [sp, #860]
	str	r3, [sp, #828]
	str	r4, [sp, #796]
	ldr	r3, .L159+8
	str	ip, [sp, #764]
	ldr	r2, [sp, #736]
	ldr	r1, [sp, #656]
	add	r2, r2, r3
	str	r2, [sp, #732]
	add	r3, r8, fp
	ldr	r2, [sp, #628]
	str	r3, [sp, #584]
	ldr	r3, [sp, #924]
	add	r2, r2, fp
	add	lr, r1, fp
	str	r2, [sp, #620]
	add	r1, sp, #904
	ldmia	r1, {r1-r2}
	stmia	r3, {r1-r2}
	add	r1, sp, #868
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #896]
	ldr	ip, [sp, #688]
	stmia	r3, {r1-r2}
	add	r1, sp, #836
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #860]
	ldr	r4, [sp, #708]
	stmia	r3, {r1-r2}
	add	r1, sp, #804
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #828]
	add	ip, ip, fp
	stmia	r3, {r1-r2}
	add	r1, sp, #772
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #796]
	add	r0, r4, fp
	stmia	r3, {r1-r2}
	add	r1, sp, #740
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #764]
	str	ip, [sp, #680]
	ldr	r4, [sp, #560]
	ldr	ip, [sp, #528]
	stmia	r3, {r1-r2}
	add	r1, sp, #712
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #732]
	add	r4, r4, fp
	add	ip, ip, fp
	str	r4, [sp, #552]
	str	ip, [sp, #516]
	stmia	r3, {r1-r2}
	ldr	ip, .L159+4
	ldr	r4, [sp, #708]
	ldr	r2, [sp, #656]
	ldr	r4, [r4, ip]
	ldr	r2, [r2, ip]
	ldr	r1, [sp, #688]
	ldr	r3, [sp, #628]
	str	r4, [sp, #92]
	ldr	r4, [r8, ip]
	ldr	r1, [r1, ip]
	ldr	r3, [r3, ip]
	str	r2, [sp, #80]
	ldr	r2, [sp, #528]
	str	r4, [sp, #68]
	ldr	r4, [sp, #620]
	ldr	r2, [r2, ip]
	str	r1, [sp, #84]
	str	r3, [sp, #76]
	ldr	r1, [sp, #560]
	ldr	r3, [sp, #680]
	ldr	r5, [r0, #4]
	ldr	r0, [r4, #4]
	ldr	r4, [sp, #1192]
	ldr	r1, [r1, ip]
	ldr	r6, [r3, #4]
	ldr	ip, [sp, #584]
	ldr	r3, [sp, #516]
	str	r2, [sp, #56]
	ldr	r2, [sp, #552]
	add	r4, r4, #1
	ldr	r7, [ip, #4]
	ldr	r8, [r3, #4]
	str	r1, [sp, #64]
	ldr	r1, [lr, #4]
	ldr	lr, [r2, #4]
	str	r4, [sp, #1196]
	ldr	ip, [sp, #84]
	ldr	r2, [sp, #80]
	mul	ip, r6, ip
	ldr	r3, [sp, #76]
	str	ip, [sp, #668]
	ldr	r4, [sp, #68]
	ldr	ip, [sp, #64]
	mul	r2, r1, r2
	mul	r3, r0, r3
	mul	r4, r7, r4
	mul	ip, lr, ip
	ldr	r1, [sp, #56]
	str	r2, [sp, #640]
	ldr	r2, [sp, #1196]
	mul	r1, r8, r1
	ldr	sl, [sp, #92]
	str	r3, [sp, #608]
	str	r4, [sp, #572]
	ldr	r3, [sp, #708]
	ldr	r4, .L159+4
	str	ip, [sp, #540]
	ldr	ip, [sp, #688]
	add	r2, r2, #1
	mul	sl, r5, sl
	add	r6, ip, r4
	add	r5, r3, r4
	ldr	ip, [sp, #596]
	ldr	r3, [sp, #628]
	str	r2, [sp, #1200]
	ldr	r2, [sp, #656]
	add	r0, r3, r4
	str	r1, [sp, #508]
	add	r1, r2, r4
	add	r4, ip, r4
	str	r4, [sp, #588]
	ldr	ip, [sp, #588]
	ldr	r3, .L159+4
	ldr	r4, [sp, #528]
	ldr	r6, [r6, #4]
	ldr	r1, [r1, #4]
	ldr	r0, [r0, #4]
	ldr	ip, [ip, #4]
	add	r4, r4, r3
	ldr	r2, [sp, #560]
	str	r4, [sp, #520]
	ldr	r5, [r5, #4]
	str	r6, [sp, #672]
	str	r1, [sp, #644]
	str	r0, [sp, #612]
	str	ip, [sp, #576]
	ldr	ip, [sp, #688]
	add	lr, r2, r3
	ldr	ip, [ip, fp]
	ldr	r2, [sp, #1200]
	str	ip, [sp, #88]
	ldr	ip, [sp, #596]
	ldr	r3, [sp, #708]
	ldr	ip, [ip, fp]
	add	r2, r2, #1
	ldr	r1, [r4, #4]
	str	r2, [sp, #1204]
	ldr	r4, [r3, fp]
	ldr	r3, [sp, #628]
	str	ip, [sp, #72]
	ldr	ip, [sp, #1204]
	ldr	r0, [r3, fp]
	ldr	r2, [sp, #656]
	ldr	r3, [sp, #528]
	add	ip, ip, #1
	ldr	lr, [lr, #4]
	ldr	r3, [r3, fp]
	str	r1, [sp, #512]
	str	ip, [sp, #1208]
	ldr	r1, [r2, fp]
	ldr	ip, [sp, #92]
	ldr	r2, [sp, #560]
	str	lr, [sp, #544]
	str	r3, [sp, #60]
	ldr	lr, [r2, fp]
	umull	r2, r3, ip, r4
	mla	r5, r4, r5, sl
	str	r2, [sp, #692]
	str	r3, [sp, #696]
	ldr	r4, [sp, #668]
	ldr	r3, [sp, #88]
	mov	r2, r6
	mla	r2, r3, r2, r4
	ldr	r4, [sp, #84]
	mov	ip, r3
	str	r2, [sp, #676]
	umull	r2, r3, r4, ip
	str	r2, [sp, #660]
	str	r3, [sp, #664]
	ldr	r3, [sp, #640]
	ldr	r2, [sp, #644]
	str	r5, [sp, #700]
	mla	r2, r1, r2, r3
	str	r2, [sp, #648]
	ldr	r4, [sp, #80]
	ldr	ip, [sp, #612]
	umull	r2, r3, r4, r1
	ldr	r1, [sp, #608]
	ldr	r4, [sp, #76]
	mla	ip, r0, ip, r1
	str	r2, [sp, #632]
	str	r3, [sp, #636]
	umull	r2, r3, r4, r0
	ldr	r1, [sp, #72]
	str	r2, [sp, #600]
	str	r3, [sp, #604]
	str	ip, [sp, #616]
	ldr	r2, [sp, #572]
	ldr	ip, [sp, #576]
	ldr	r0, [sp, #512]
	mla	ip, r1, ip, r2
	str	ip, [sp, #580]
	ldr	ip, [sp, #68]
	ldr	r2, [sp, #544]
	umull	r3, r4, ip, r1
	str	r3, [sp, #564]
	str	r4, [sp, #568]
	ldr	r3, [sp, #540]
	ldr	r4, [sp, #60]
	mla	r2, lr, r2, r3
	ldr	r3, [sp, #64]
	str	r2, [sp, #548]
	umull	r1, r2, r3, lr
	ldr	r3, [sp, #56]
	ldr	ip, [sp, #508]
	str	r1, [sp, #532]
	str	r2, [sp, #536]
	umull	r1, r2, r3, r4
	mla	r0, r4, r0, ip
	ldr	ip, [sp, #1208]
	str	r1, [sp, #500]
	str	r2, [sp, #504]
	add	r9, ip, #1
	ldr	r2, [sp, #1196]
	ldr	r3, [sp, #1200]
	ldr	r4, [sp, #1204]
	add	lr, r9, #1
	add	r1, lr, #1
	mov	r9, r9, asl #3
	mov	r2, r2, asl #3
	mov	r3, r3, asl #3
	mov	r4, r4, asl #3
	mov	ip, ip, asl #3
	mov	lr, lr, asl #3
	str	r1, [sp, #1212]
	str	r2, [sp, #496]
	str	r3, [sp, #476]
	str	r4, [sp, #444]
	str	ip, [sp, #416]
	str	r9, [sp, #384]
	str	lr, [sp, #348]
	ldr	r2, [sp, #696]
	ldr	r4, [sp, #664]
	ldr	r3, [sp, #676]
	add	r2, r5, r2
	mov	r1, r1, asl #3
	add	r4, r3, r4
	ldr	ip, [sp, #648]
	ldr	r3, [sp, #604]
	str	r1, [sp, #316]
	str	r2, [sp, #696]
	ldr	r1, [sp, #636]
	ldr	r2, [sp, #616]
	add	r1, ip, r1
	add	r3, r2, r3
	ldr	ip, [sp, #568]
	ldr	r2, [sp, #536]
	str	r4, [sp, #664]
	str	r1, [sp, #636]
	ldr	r4, [sp, #580]
	ldr	r1, [sp, #548]
	str	r3, [sp, #604]
	ldr	r3, [sp, #504]
	add	ip, r4, ip
	add	r2, r1, r2
	add	r3, r0, r3
	str	ip, [sp, #568]
	str	r2, [sp, #536]
	ldr	ip, .L159+8
	str	r3, [sp, #504]
	ldr	r4, [sp, #708]
	ldr	r1, [sp, #688]
	ldr	r2, [sp, #656]
	ldr	r3, [sp, #628]
	add	r4, r4, ip
	add	r1, r1, ip
	add	r2, r2, ip
	add	r3, r3, ip
	str	r4, [sp, #704]
	str	r1, [sp, #684]
	str	r2, [sp, #652]
	ldr	r1, [sp, #560]
	str	r3, [sp, #624]
	ldr	r4, [sp, #596]
	ldr	r2, [sp, #528]
	ldr	r3, .L159+8
	add	r4, r4, ip
	add	r2, r2, r3
	add	ip, r1, ip
	str	r4, [sp, #592]
	str	ip, [sp, #556]
	add	r3, r9, fp
	str	r2, [sp, #524]
	ldr	r2, [sp, #416]
	ldr	r1, [sp, #444]
	str	r3, [sp, #372]
	ldr	r3, [sp, #704]
	add	r2, r2, fp
	add	lr, r1, fp
	str	r2, [sp, #408]
	add	r1, sp, #692
	ldmia	r1, {r1-r2}
	stmia	r3, {r1-r2}
	add	r1, sp, #660
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #684]
	ldr	ip, [sp, #476]
	stmia	r3, {r1-r2}
	add	r1, sp, #632
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #652]
	ldr	r4, [sp, #496]
	stmia	r3, {r1-r2}
	add	r1, sp, #600
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #624]
	add	ip, ip, fp
	add	r0, r4, fp
	str	ip, [sp, #468]
	ldr	r4, [sp, #348]
	ldr	ip, [sp, #316]
	stmia	r3, {r1-r2}
	add	r1, sp, #564
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #592]
	add	r4, r4, fp
	add	ip, ip, fp
	stmia	r3, {r1-r2}
	add	r1, sp, #532
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #556]
	str	r4, [sp, #340]
	str	ip, [sp, #304]
	ldr	r4, [sp, #496]
	ldr	ip, .L159+4
	stmia	r3, {r1-r2}
	add	r1, sp, #500
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #524]
	ldr	r4, [r4, ip]
	stmia	r3, {r1-r2}
	str	r4, [sp, #52]
	ldr	r1, [sp, #476]
	ldr	r2, [sp, #444]
	ldr	r1, [r1, ip]
	ldr	r2, [r2, ip]
	ldr	r3, [sp, #416]
	ldr	r4, [r9, ip]
	ldr	r3, [r3, ip]
	str	r1, [sp, #44]
	str	r2, [sp, #40]
	ldr	r1, [sp, #348]
	ldr	r2, [sp, #316]
	ldr	r1, [r1, ip]
	ldr	r2, [r2, ip]
	str	r3, [sp, #36]
	ldr	ip, [sp, #372]
	ldr	r3, [sp, #468]
	str	r4, [sp, #28]
	ldr	r4, [sp, #408]
	ldr	r5, [r0, #4]
	ldr	r6, [r3, #4]
	ldr	r0, [r4, #4]
	ldr	r7, [ip, #4]
	str	r1, [sp, #24]
	ldr	r4, [sp, #44]
	ldr	r1, [lr, #4]
	ldr	ip, [sp, #40]
	mul	r4, r6, r4
	mul	ip, r1, ip
	ldr	r3, [sp, #304]
	str	r2, [sp, #16]
	ldr	r2, [sp, #340]
	ldr	r8, [r3, #4]
	ldr	lr, [r2, #4]
	ldr	sl, [sp, #52]
	str	r4, [sp, #456]
	str	ip, [sp, #428]
	ldr	r1, [sp, #36]
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #24]
	mul	r1, r0, r1
	ldr	r4, [sp, #16]
	mul	r2, r7, r2
	mul	r3, lr, r3
	mul	r4, r8, r4
	ldr	ip, [sp, #496]
	str	r1, [sp, #396]
	ldr	r1, .L159+4
	str	r2, [sp, #360]
	str	r3, [sp, #328]
	ldr	r2, [sp, #476]
	ldr	r3, [sp, #444]
	mul	sl, r5, sl
	str	r4, [sp, #296]
	add	r5, ip, r1
	ldr	r4, [sp, #416]
	ldr	ip, .L159+4
	add	r6, r2, r1
	add	r1, r3, r1
	ldr	r3, [sp, #348]
	add	r0, r4, ip
	ldr	r4, [sp, #316]
	add	lr, r3, ip
	ldr	r1, [r1, #4]
	ldr	r3, [sp, #476]
	add	r4, r4, ip
	add	r2, r9, ip
	ldr	ip, [r2, #4]
	ldr	r6, [r6, #4]
	ldr	r0, [r0, #4]
	ldr	lr, [lr, #4]
	str	r2, [sp, #376]
	str	r1, [sp, #432]
	ldr	r2, [sp, #496]
	ldr	r1, [r4, #4]
	ldr	r3, [r3, fp]
	str	r4, [sp, #308]
	ldr	r5, [r5, #4]
	ldr	r4, [r2, fp]
	str	r0, [sp, #400]
	str	ip, [sp, #364]
	str	lr, [sp, #332]
	str	r1, [sp, #300]
	str	r6, [sp, #460]
	str	r3, [sp, #48]
	ldr	ip, [sp, #444]
	ldr	r2, [sp, #416]
	ldr	r3, [r9, fp]
	ldr	r1, [ip, fp]
	ldr	r0, [r2, fp]
	ldr	ip, [sp, #348]
	ldr	r2, [sp, #316]
	str	r3, [sp, #32]
	ldr	r3, [sp, #1212]
	ldr	lr, [ip, fp]
	ldr	r2, [r2, fp]
	ldr	ip, [sp, #52]
	add	r3, r3, #1
	b	.L160
.L161:
	.align	2
.L159:
	.word	i64val2
	.word	i64val1
	.word	i64result
.L160:
	str	r2, [sp, #20]
	str	r3, [sp, #1216]
	umull	r2, r3, ip, r4
	mla	r5, r4, r5, sl
	str	r2, [sp, #480]
	str	r3, [sp, #484]
	ldr	r4, [sp, #456]
	ldr	r3, [sp, #48]
	mov	r2, r6
	mla	r2, r3, r2, r4
	ldr	r4, [sp, #44]
	mov	ip, r3
	str	r2, [sp, #464]
	umull	r2, r3, r4, ip
	str	r2, [sp, #448]
	str	r3, [sp, #452]
	ldr	r3, [sp, #428]
	ldr	r2, [sp, #432]
	ldr	r4, [sp, #40]
	mla	r2, r1, r2, r3
	str	r2, [sp, #436]
	umull	r2, r3, r4, r1
	ldr	ip, [sp, #400]
	ldr	r1, [sp, #396]
	ldr	r4, [sp, #36]
	mla	ip, r0, ip, r1
	str	r2, [sp, #420]
	str	r3, [sp, #424]
	umull	r2, r3, r4, r0
	ldr	r1, [sp, #32]
	str	r2, [sp, #388]
	str	r3, [sp, #392]
	str	ip, [sp, #404]
	ldr	r2, [sp, #360]
	ldr	ip, [sp, #364]
	str	r5, [sp, #488]
	mla	ip, r1, ip, r2
	str	ip, [sp, #368]
	ldr	ip, [sp, #28]
	ldr	r2, [sp, #332]
	umull	r3, r4, ip, r1
	str	r3, [sp, #352]
	str	r4, [sp, #356]
	ldr	r3, [sp, #328]
	ldr	r4, [sp, #20]
	mla	r2, lr, r2, r3
	ldr	r3, [sp, #24]
	str	r2, [sp, #336]
	umull	r1, r2, r3, lr
	ldr	r3, [sp, #16]
	str	r1, [sp, #320]
	str	r2, [sp, #324]
	ldr	ip, [sp, #296]
	umull	r1, r2, r3, r4
	ldr	r0, [sp, #300]
	str	r1, [sp, #288]
	str	r2, [sp, #292]
	mla	r0, r4, r0, ip
	ldr	ip, [sp, #1216]
	ldr	r2, [sp, #1216]
	add	ip, ip, #1
	add	lr, ip, #1
	add	r1, lr, #1
	mov	r3, ip, asl #3
	str	ip, [sp, #1220]
	mov	r2, r2, asl #3
	ldr	ip, [sp, #484]
	mov	r4, r1, asl #3
	str	r1, [sp, #1224]
	str	r2, [sp, #284]
	ldr	r1, [sp, #464]
	ldr	r2, [sp, #452]
	add	ip, r5, ip
	str	r3, [sp, #260]
	str	r4, [sp, #196]
	ldr	r3, [sp, #436]
	ldr	r4, [sp, #424]
	add	r2, r1, r2
	str	ip, [sp, #484]
	ldr	r1, [sp, #392]
	ldr	ip, [sp, #404]
	add	r4, r3, r4
	add	r1, ip, r1
	ldr	r3, [sp, #356]
	str	r2, [sp, #452]
	str	r4, [sp, #424]
	ldr	r2, [sp, #368]
	ldr	r4, [sp, #336]
	ldr	ip, [sp, #324]
	add	r3, r2, r3
	add	ip, r4, ip
	str	r1, [sp, #392]
	str	r3, [sp, #356]
	str	ip, [sp, #324]
	ldr	r3, .L159+8
	ldr	r1, [sp, #292]
	ldr	r4, [sp, #476]
	add	r1, r0, r1
	add	r4, r4, r3
	ldr	r2, [sp, #496]
	str	r4, [sp, #472]
	str	r1, [sp, #292]
	ldr	r4, [sp, #348]
	ldr	ip, [sp, #444]
	ldr	r1, [sp, #416]
	add	r2, r2, r3
	str	r2, [sp, #492]
	add	ip, ip, r3
	add	r1, r1, r3
	add	r2, r9, r3
	add	r3, r4, r3
	str	r3, [sp, #344]
	ldr	r3, [sp, #260]
	str	ip, [sp, #440]
	add	r3, r3, fp
	str	r1, [sp, #412]
	str	r2, [sp, #380]
	ldr	ip, [sp, #316]
	ldr	r2, [sp, #284]
	ldr	r1, .L159+8
	str	r3, [sp, #248]
	ldr	r3, [sp, #492]
	add	ip, ip, r1
	add	r0, r2, fp
	add	r1, sp, #480
	ldmia	r1, {r1-r2}
	stmia	r3, {r1-r2}
	add	r1, sp, #448
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #472]
	str	ip, [sp, #312]
	stmia	r3, {r1-r2}
	add	r1, sp, #420
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #440]
	ldr	ip, [sp, #196]
	stmia	r3, {r1-r2}
	add	r1, sp, #388
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #412]
	mov	lr, lr, asl #3
	stmia	r3, {r1-r2}
	add	r1, sp, #352
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #380]
	add	r4, lr, fp
	add	ip, ip, fp
	str	r4, [sp, #220]
	str	ip, [sp, #192]
	stmia	r3, {r1-r2}
	add	r1, sp, #320
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #344]
	ldr	ip, .L159+4
	stmia	r3, {r1-r2}
	add	r1, sp, #288
	ldmia	r1, {r1-r2}
	ldr	r3, [sp, #312]
	ldr	r4, [sp, #284]
	stmia	r3, {r1-r2}
	ldr	r1, [sp, #260]
	ldr	r3, [sp, #196]
	ldr	r1, [r1, ip]
	ldr	r8, [r4, ip]
	ldr	r3, [r3, ip]
	ldr	r4, [sp, #248]
	str	r1, [sp, #8]
	str	r3, [sp, #0]
	ldr	r4, [r4, #4]
	ldr	r3, [sp, #8]
	ldr	r2, [lr, ip]
	str	r4, [sp, #232]
	mul	r4, r3, r4
	str	r2, [sp, #4]
	ldr	r0, [r0, #4]
	ldr	ip, [sp, #220]
	ldr	r2, [sp, #192]
	ldr	r1, [ip, #4]
	str	r0, [sp, #272]
	str	r4, [sp, #236]
	ldr	r0, [r2, #4]
	ldr	r4, [sp, #4]
	ldr	ip, [sp, #0]
	mul	r4, r1, r4
	mul	ip, r0, ip
	ldr	r2, .L159+4
	ldr	r1, [sp, #284]
	ldr	r5, [sp, #272]
	add	r1, r1, r2
	str	r4, [sp, #208]
	str	ip, [sp, #184]
	str	r1, [sp, #280]
	ldr	r3, [sp, #260]
	ldr	r4, [sp, #196]
	add	r3, r3, r2
	add	r1, lr, r2
	add	r0, r4, r2
	ldr	r1, [r1, #4]
	ldr	r2, [r3, #4]
	str	r3, [sp, #252]
	ldr	r3, [sp, #284]
	str	r1, [sp, #212]
	ldr	r1, [r3, fp]
	ldr	ip, [sp, #280]
	str	r2, [sp, #240]
	umull	r2, r3, r8, r1
	ldr	r7, [ip, #4]
	ldr	r4, [sp, #260]
	ldr	ip, [sp, #196]
	ldr	r4, [r4, fp]
	ldr	sl, [ip, fp]
	str	r2, [sp, #264]
	str	r3, [sp, #268]
	ldr	ip, [sp, #236]
	ldr	r3, [sp, #240]
	mul	r5, r8, r5
	mla	r3, r4, r3, ip
	str	r3, [sp, #244]
	ldr	r3, [sp, #8]
	ldr	r0, [r0, #4]
	mla	r7, r1, r7, r5
	umull	r1, r2, r3, r4
	str	r0, [sp, #188]
	ldr	r4, [sp, #4]
	ldr	r0, [lr, fp]
	str	r1, [sp, #224]
	str	r2, [sp, #228]
	umull	r2, r3, r4, r0
	ldr	r1, [sp, #208]
	ldr	ip, [sp, #212]
	str	r2, [sp, #200]
	str	r3, [sp, #204]
	mla	ip, r0, ip, r1
	ldr	r3, [sp, #0]
	str	ip, [sp, #216]
	umull	r1, r2, r3, sl
	ldr	ip, [sp, #184]
	ldr	r0, [sp, #188]
	str	r7, [sp, #276]
	mla	r0, sl, r0, ip
	str	r1, [sp, #176]
	str	r2, [sp, #180]
	ldr	r4, [sp, #1144]
	ldr	ip, [sp, #268]
	add	r4, r4, #1
	add	ip, r7, ip
	str	r4, [sp, #1144]
	str	ip, [sp, #268]
	ldr	r2, [sp, #228]
	ldr	r1, [sp, #244]
	ldr	r4, [sp, #204]
	ldr	r3, [sp, #216]
	ldr	ip, [sp, #180]
	add	r2, r1, r2
	add	r4, r3, r4
	add	ip, r0, ip
	ldr	r3, .L159+8
	str	r2, [sp, #228]
	str	r4, [sp, #204]
	str	ip, [sp, #180]
	ldr	r2, [sp, #284]
	ldr	r4, [sp, #260]
	ldr	ip, [sp, #196]
	ldr	r1, [sp, #1144]
	add	r0, r2, r3
	add	r4, r4, r3
	add	lr, lr, r3
	add	sl, ip, r3
	cmp	r1, #28
	add	r1, sp, #264
	ldmia	r1, {r1-r2}
	stmia	r0, {r1-r2}
	add	r2, sp, #224
	ldmia	r2, {r2-r3}
	stmia	r4, {r2-r3}
	add	r1, sp, #200
	ldmia	r1, {r1-r2}
	stmia	lr, {r1-r2}
	add	r2, sp, #176
	ldmia	r2, {r2-r3}
	stmia	sl, {r2-r3}
	ldr	r3, [sp, #1224]
	str	r4, [sp, #256]
	add	r1, r3, #1
	bne	.L154
	ldr	r4, [sp, #1140]
	ldr	ip, [sp, #1228]
	add	r4, r4, #1
	cmp	r4, ip
	str	r4, [sp, #1140]
	bne	.L153
.L156:
	add	sp, sp, #1232
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.size	bench_i64_mul, .-bench_i64_mul
	.global	__divsf3
	.align	2
	.global	bench_float_div
	.type	bench_float_div, %function
bench_float_div:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	fp, r0, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	ldr	r8, .L171
	ldr	r7, .L171+4
	ldr	r6, .L171+8
	mov	r9, #0
.L165:
	mov	sl, #0
	mov	r5, sl
.L166:
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]	@ float
	ldr	r1, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	__divsf3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]	@ float
	ldr	r1, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	__divsf3
	add	sl, sl, #1
	cmp	sl, #56
	str	r0, [r8, r4, asl #2]	@ float
	add	r5, r4, #1
	bne	.L166
	add	r9, r9, #1
	cmp	r9, fp
	bne	.L165
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L172:
	.align	2
.L171:
	.word	fresult
	.word	fval1
	.word	fval2
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
	str	r0, [sp, #4]
	beq	.L179
	mov	r2, #0
	ldr	r9, .L182
	ldr	sl, .L182+4
	ldr	r8, .L182+8
	str	r2, [sp, #0]
.L176:
	mov	fp, #0
	mov	r4, fp
.L177:
	mov	r5, r4, asl #3
	add	ip, r5, sl
	add	r1, r5, r8
	ldmia	r1, {r2-r3}
	ldmia	ip, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r7, r4, asl #3
	add	ip, r7, r8
	add	lr, r7, sl
	add	r6, r6, r9
	ldmia	ip, {r2-r3}
	stmia	r6, {r0-r1}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r7, r7, r9
	stmia	r7, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__divdf3
	add	fp, fp, #1
	add	r5, r5, r9
	cmp	fp, #28
	stmia	r5, {r0-r1}
	add	r4, r4, #1
	bne	.L177
	ldr	r3, [sp, #0]
	ldr	r2, [sp, #4]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [sp, #0]
	bne	.L176
.L179:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L183:
	.align	2
.L182:
	.word	dresult
	.word	dval1
	.word	dval2
	.size	bench_double_div, .-bench_double_div
	.global	__divdi3
	.align	2
	.global	bench_fixed_div
	.type	bench_fixed_div, %function
bench_fixed_div:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #8
	str	r0, [sp, #0]
	beq	.L190
	mov	r2, #0
	ldr	r9, .L193
	ldr	sl, .L193+4
	ldr	r8, .L193+8
	str	r2, [sp, #4]
.L187:
	mov	fp, #0
	mov	r7, fp
.L188:
	ldr	r0, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r1, r0, asr #31
	mov	r1, r1, asl #16
	mov	r3, r2, asr #31
	orr	r1, r1, r0, lsr #16
	mov	r0, r0, asl #16
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r7, r6, #1
	ldr	r4, [sl, r7, asl #2]
	ldr	r2, [r8, r7, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r6, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	r6, r7, #1
	ldr	r4, [sl, r6, asl #2]
	ldr	r2, [r8, r6, asl #2]
	mov	r5, r4, asr #31
	mov	r5, r5, asl #16
	orr	r5, r5, r4, lsr #16
	mov	r4, r4, asl #16
	str	r0, [r9, r7, asl #2]
	mov	r3, r2, asr #31
	mov	r0, r4
	mov	r1, r5
	bl	__divdi3
	add	fp, fp, #1
	cmp	fp, #56
	str	r0, [r9, r6, asl #2]
	add	r7, r6, #1
	bne	.L188
	ldmia	sp, {r2, r3}	@ phole ldm
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [sp, #4]
	bne	.L187
.L190:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L194:
	.align	2
.L193:
	.word	xresult
	.word	xval1
	.word	xval2
	.size	bench_fixed_div, .-bench_fixed_div
	.global	__udivsi3
	.align	2
	.global	bench_i32_div
	.type	bench_i32_div, %function
bench_i32_div:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	fp, r0, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	ldr	r8, .L204
	ldr	r7, .L204+4
	ldr	r6, .L204+8
	mov	r9, #0
.L198:
	mov	sl, #0
	mov	r5, sl
.L199:
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	r5, r4, #1
	str	r0, [r8, r4, asl #2]
	ldr	r1, [r6, r5, asl #2]
	ldr	r0, [r7, r5, asl #2]
	bl	__udivsi3
	add	r4, r5, #1
	str	r0, [r8, r5, asl #2]
	ldr	r1, [r6, r4, asl #2]
	ldr	r0, [r7, r4, asl #2]
	bl	__udivsi3
	add	sl, sl, #1
	cmp	sl, #56
	str	r0, [r8, r4, asl #2]
	add	r5, r4, #1
	bne	.L199
	add	r9, r9, #1
	cmp	r9, fp
	bne	.L198
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L205:
	.align	2
.L204:
	.word	i32result
	.word	i32val1
	.word	i32val2
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
	str	r0, [sp, #4]
	beq	.L212
	mov	r2, #0
	ldr	r9, .L215
	ldr	sl, .L215+4
	ldr	r8, .L215+8
	str	r2, [sp, #0]
.L209:
	mov	fp, #0
	mov	r4, fp
.L210:
	mov	r5, r4, asl #3
	add	ip, r5, sl
	add	r1, r5, r8
	ldmia	r1, {r2-r3}
	ldmia	ip, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r6, r6, r9
	stmia	r6, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	ip, r6, r8
	add	lr, r6, sl
	add	r5, r5, r9
	stmia	r5, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r7, r4, asl #3
	add	ip, r7, r8
	add	lr, r7, sl
	add	r6, r6, r9
	ldmia	ip, {r2-r3}
	stmia	r6, {r0-r1}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	ip, r5, r8
	add	lr, r5, sl
	add	r7, r7, r9
	stmia	r7, {r0-r1}
	ldmia	ip, {r2-r3}
	ldmia	lr, {r0-r1}
	bl	__udivdi3
	add	fp, fp, #1
	add	r5, r5, r9
	cmp	fp, #28
	stmia	r5, {r0-r1}
	add	r4, r4, #1
	bne	.L210
	ldr	r3, [sp, #0]
	ldr	r2, [sp, #4]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [sp, #0]
	bne	.L209
.L212:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L216:
	.align	2
.L215:
	.word	i64result
	.word	i64val1
	.word	i64val2
	.size	bench_i64_div, .-bench_i64_div
	.align	2
	.global	bench_quake_sqrt
	.type	bench_quake_sqrt, %function
bench_quake_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r9, r0, #0
	ldrne	r7, .L226
	ldrne	r6, .L226+4
	movne	sl, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L220:
	mov	r8, #0
	mov	r5, r8
.L221:
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]	@ float
	ldr	r0, [r6, r5, asl #2]	@ float
	bl	magic_sqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]	@ float
	ldr	r0, [r6, r4, asl #2]	@ float
	bl	magic_sqrt
	add	r8, r8, #1
	cmp	r8, #56
	str	r0, [r7, r4, asl #2]	@ float
	add	r5, r4, #1
	bne	.L221
	add	sl, sl, #1
	cmp	sl, r9
	bne	.L220
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L227:
	.align	2
.L226:
	.word	fresult
	.word	fval1
	.size	bench_quake_sqrt, .-bench_quake_sqrt
	.align	2
	.global	bench_approximate_double_sqrt
	.type	bench_approximate_double_sqrt, %function
bench_approximate_double_sqrt:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r0, r0, asl #1
	sub	sp, sp, #4
	str	r0, [sp, #0]
	ldrne	sl, .L237
	ldrne	r8, .L237+4
	movne	fp, #0
	beq	.L234
.L231:
	mov	r9, #0
	mov	r4, r9
.L232:
	mov	r5, r4, asl #3
	add	r3, r5, sl
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r7, r4, asl #3
	add	r3, r7, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r7, r7, r8
	stmia	r7, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	approximate_double_sqrt
	add	r9, r9, #1
	add	r5, r5, r8
	cmp	r9, #28
	stmia	r5, {r0-r1}
	add	r4, r4, #1
	bne	.L232
	ldr	r3, [sp, #0]
	add	fp, fp, #1
	cmp	fp, r3
	bne	.L231
.L234:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L238:
	.align	2
.L237:
	.word	dval1
	.word	dresult
	.size	bench_approximate_double_sqrt, .-bench_approximate_double_sqrt
	.align	2
	.global	bench_fixed_sqrt
	.type	bench_fixed_sqrt, %function
bench_fixed_sqrt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r9, r0, #0
	ldrne	r7, .L248
	ldrne	r6, .L248+4
	movne	sl, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L242:
	mov	r8, #0
	mov	r5, r8
.L243:
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r5, r4, #1
	str	r0, [r7, r4, asl #2]
	ldr	r0, [r6, r5, asl #2]
	bl	fpsqrt
	add	r4, r5, #1
	str	r0, [r7, r5, asl #2]
	ldr	r0, [r6, r4, asl #2]
	bl	fpsqrt
	add	r8, r8, #1
	cmp	r8, #56
	str	r0, [r7, r4, asl #2]
	add	r5, r4, #1
	bne	.L243
	add	sl, sl, #1
	cmp	sl, r9
	bne	.L242
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L249:
	.align	2
.L248:
	.word	xresult
	.word	xval1
	.size	bench_fixed_sqrt, .-bench_fixed_sqrt
	.align	2
	.global	bench_double_sqrt
	.type	bench_double_sqrt, %function
bench_double_sqrt:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r0, r0, asl #1
	sub	sp, sp, #4
	str	r0, [sp, #0]
	ldrne	sl, .L259
	ldrne	r8, .L259+4
	movne	fp, #0
	beq	.L256
.L253:
	mov	r9, #0
	mov	r4, r9
.L254:
	mov	r5, r4, asl #3
	add	r3, r5, sl
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r6, r4, asl #3
	add	r3, r6, sl
	add	r5, r5, r8
	stmia	r5, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r7, r4, asl #3
	add	r3, r7, sl
	add	r6, r6, r8
	stmia	r6, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r4, r4, #1
	mov	r5, r4, asl #3
	add	r3, r5, sl
	add	r7, r7, r8
	stmia	r7, {r0-r1}
	ldmia	r3, {r0-r1}
	bl	sqrt
	add	r9, r9, #1
	add	r5, r5, r8
	cmp	r9, #28
	stmia	r5, {r0-r1}
	add	r4, r4, #1
	bne	.L254
	ldr	r3, [sp, #0]
	add	fp, fp, #1
	cmp	fp, r3
	bne	.L253
.L256:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L260:
	.align	2
.L259:
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
	ldrne	r7, .L270
	ldrne	r6, .L270+4
	movne	sl, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L264:
	mov	r8, #0
	mov	r5, r8
.L265:
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r5, r4, #1
	str	r0, [r6, r4, asl #2]	@ float
	ldr	r0, [r7, r5, asl #2]	@ float
	bl	sqrtf
	add	r4, r5, #1
	str	r0, [r6, r5, asl #2]	@ float
	ldr	r0, [r7, r4, asl #2]	@ float
	bl	sqrtf
	add	r8, r8, #1
	cmp	r8, #56
	str	r0, [r6, r4, asl #2]	@ float
	add	r5, r4, #1
	bne	.L265
	add	sl, sl, #1
	cmp	sl, r9
	bne	.L264
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L271:
	.align	2
.L270:
	.word	fval1
	.word	fresult
	.size	bench_float_sqrt, .-bench_float_sqrt
	.align	2
	.global	fill_i64_array
	.type	fill_i64_array, %function
fill_i64_array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	mov	sl, r0
	mov	r7, r1
	mov	r8, r2
	mov	r6, #0
	b	.L273
.L287:
	bne	.L278
	cmp	r7, #65536
	bcs	.L288
.L278:
	bl	lrand48
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #16
	add	r0, r0, r3
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	rsb	r0, r3, r0
	mov	r1, r0, asr #31
.L277:
	orrs	r2, r0, r1
	add	r3, sl, r6
	add	r6, r6, #8
	moveq	r0, #1
	moveq	r1, #0
	cmp	r6, #7168
	stmia	r3, {r0-r1}
	beq	.L289
.L273:
	cmp	r8, #0
	bls	.L287
	bl	lrand48
	mov	r4, r0
	mov	r5, r4, asr #31
	bl	lrand48
	mov	r5, r4
	mov	r1, r0, asr #31
	mov	r4, #0
	orr	r0, r0, r4
	orr	r1, r1, r5
	b	.L277
.L288:
	bl	lrand48
	mov	r1, r0, asr #31
	b	.L277
.L289:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
	.size	fill_i64_array, .-fill_i64_array
	.align	2
	.global	fill_i32_array
	.type	fill_i32_array, %function
fill_i32_array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r4, #0
	b	.L291
.L302:
	bl	lrand48
	cmp	r0, #0
	moveq	r0, #1
	str	r0, [r4, r6]
	add	r4, r4, #4
	cmp	r4, #7168
	beq	.L301
.L291:
	cmp	r5, #65536
	bcs	.L302
	bl	lrand48
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #16
	add	r0, r0, r3
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	rsb	r0, r3, r0
	cmp	r0, #0
	moveq	r0, #1
	str	r0, [r4, r6]
	add	r4, r4, #4
	cmp	r4, #7168
	bne	.L291
.L301:
	ldmfd	sp!, {r4, r5, r6, pc}
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
.L304:
	bl	drand48
	mov	r5, r1
	mov	r4, r0
	bl	lrand48
	tst	r0, #1
	moveq	r0, r8
	moveq	r1, r9
	ldrne	r0, .L317
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
	bge	.L308
.L313:
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
	bgt	.L313
.L308:
	add	r3, fp, sl
	add	sl, sl, #8
	cmp	sl, #7168
	stmia	r3, {r4-r5}
	bne	.L304
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sp, sp, #4
	bx	lr
.L318:
	.align	2
.L317:
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
.L320:
	bl	drand48
	mov	r5, r1
	mov	r4, r0
	bl	lrand48
	tst	r0, #1
	moveq	r0, r8
	moveq	r1, r9
	ldrne	r0, .L333
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
	bge	.L324
.L329:
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
	bgt	.L329
.L324:
	mov	r0, r4
	mov	r1, r5
	bl	__truncdfsf2
	str	r0, [sl, fp]	@ float
	add	sl, sl, #4
	cmp	sl, #7168
	bne	.L320
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sp, sp, #4
	bx	lr
.L334:
	.align	2
.L333:
	.word	1072693248
	.size	fill_float_array, .-fill_float_array
	.align	2
	.global	timer
	.type	timer, %function
timer:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	ldr	r3, .L340
	sub	sp, sp, #8
	subs	r1, r0, #0
	ldmia	r3, {r4-r5}
	mov	r0, sp
	stmia	sp, {r4-r5}
	beq	.L336
	bl	sync
	mov	r0, #0
	bl	fflush
	ldr	r0, .L340+4
	bl	usleep
	mov	r1, #0
	ldr	r0, .L340+8
	bl	gettimeofday
	mov	r0, #0
	mov	r1, #0
.L338:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, pc}
.L336:
	bl	gettimeofday
	ldr	r4, .L340+8
	ldr	r0, [sp, #0]
	ldr	ip, [r4, #0]
	rsb	r3, r0, r0, asl #5
	rsb	r2, ip, ip, asl #5
	rsb	r3, r3, r3, asl #6
	add	r0, r0, r3, asl #3
	rsb	r2, r2, r2, asl #6
	ldr	r1, [r4, #4]
	ldr	r3, [sp, #4]
	add	ip, ip, r2, asl #3
	add	r3, r3, r0, asl #6
	add	r1, r1, ip, asl #6
	rsb	r3, r1, r3
	mov	r0, r3
	mov	r1, r0, asr #31
	b	.L338
.L341:
	.align	2
.L340:
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
	ble	.L344
	bl	__floatdidf
.L343:
	ldr	r2, .L346
	mov	r3, #0
	bl	__divdf3
	mov	r2, r6
	mov	ip, r1
	mov	r3, r0
	mov	r1, r5
	ldr	r0, .L346+4
	str	ip, [sp, #0]
	bl	printf
	mov	r0, r5
	mov	r1, r6
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L344:
	movs	r4, r6, lsr #1
	mov	r3, r5, rrx
	orr	r0, r7, r3
	orr	r1, r8, r4
	bl	__floatdidf
	mov	r2, r0
	mov	r3, r1
	bl	__adddf3
	b	.L343
.L347:
	.align	2
.L346:
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
	ldr	r7, .L350
	ldr	r5, .L350+4
	ldr	r6, .L350+8
	sub	sp, sp, #4
	mov	r4, r0
	ldr	r0, .L350+12
	bl	puts
	mov	r8, #0
	mov	r2, r6
	ldr	r3, .L350+16
	mov	r1, r5
	mov	r0, r7
	str	r8, [sp, #0]
	bl	fill_float_array
	ldr	r0, .L350+20
	bl	printf
	mov	r1, r4
	ldr	r0, .L350+24
	bl	avg_of_3_runs
	ldr	r0, .L350+28
	bl	printf
	mov	r1, r4
	ldr	r0, .L350+32
	bl	avg_of_3_runs
	mov	r1, r7
	ldr	r0, .L350+36
	bl	fill_fixed_array_from_float_array
	ldr	r0, .L350+40
	bl	printf
	mov	r1, r4
	ldr	r0, .L350+44
	bl	avg_of_3_runs
	mov	r2, r6
	ldr	r3, .L350+16
	mov	r1, r5
	ldr	r0, .L350+48
	str	r8, [sp, #0]
	bl	fill_double_array
	ldr	r0, .L350+52
	bl	printf
	mov	r1, r4
	ldr	r0, .L350+56
	bl	avg_of_3_runs
	ldr	r0, .L350+60
	bl	printf
	ldr	r0, .L350+64
	mov	r1, r4
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	avg_of_3_runs
.L351:
	.align	2
.L350:
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
	ldr	r8, .L354
	ldr	r0, .L354+4
	bl	puts
	ldr	r4, .L354+8
	ldr	r5, .L354+12
	ldr	r7, .L354+16
	ldr	r0, .L354+20
	bl	printf
	mov	r6, #0
	mov	r0, r8
	ldr	r3, .L354+24
	ldr	r1, .L354+28
	mov	r2, #0
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r2, r5
	ldr	r3, .L354+32
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, sl
	ldr	r0, .L354+36
	bl	avg_of_3_runs
	ldr	r0, .L354+40
	bl	printf
	ldr	r3, .L354+24
	ldr	r0, .L354+44
	ldr	r1, .L354+28
	mov	r2, #0
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r2, r5
	ldr	r3, .L354+32
	mov	r1, r4
	ldr	r0, .L354+48
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r1, sl
	ldr	r0, .L354+52
	bl	avg_of_3_runs
	ldr	r0, .L354+56
	bl	printf
	mov	r0, r8
	ldr	r3, .L354+24
	ldr	r1, .L354+28
	mov	r2, #0
	str	r6, [sp, #0]
	bl	fill_float_array
	ldr	r3, .L354+32
	mov	r2, r5
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, r8
	ldr	r0, .L354+60
	bl	fill_fixed_array_from_float_array
	mov	r1, r7
	ldr	r0, .L354+64
	bl	fill_fixed_array_from_float_array
	mov	r1, sl
	ldr	r0, .L354+68
	bl	avg_of_3_runs
	ldr	r0, .L354+72
	bl	printf
	ldr	r0, .L354+76
	mvn	r1, #0
	bl	fill_i32_array
	ldr	r0, .L354+80
	ldr	r1, .L354+84
	bl	fill_i32_array
	mov	r1, sl
	ldr	r0, .L354+88
	bl	avg_of_3_runs
	ldr	r0, .L354+92
	bl	printf
	ldr	r0, .L354+96
	mvn	r1, #0
	mvn	r2, #0
	bl	fill_i64_array
	ldr	r0, .L354+100
	mvn	r1, #0
	mov	r2, #0
	bl	fill_i64_array
	ldr	r0, .L354+104
	mov	r1, sl
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	avg_of_3_runs
.L355:
	.align	2
.L354:
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
	ldr	r4, .L358
	ldr	r5, .L358+4
	ldr	r8, .L358+8
	ldr	r0, .L358+12
	bl	puts
	ldr	r7, .L358+16
	ldr	r0, .L358+20
	bl	printf
	mov	r6, #0
	mov	r0, r8
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L358+24
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r2, r5
	ldr	r3, .L358+24
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, sl
	ldr	r0, .L358+28
	bl	avg_of_3_runs
	ldr	r0, .L358+32
	bl	printf
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L358+24
	ldr	r0, .L358+36
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r2, r5
	ldr	r3, .L358+24
	mov	r1, r4
	ldr	r0, .L358+40
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r1, sl
	ldr	r0, .L358+44
	bl	avg_of_3_runs
	ldr	r0, .L358+48
	bl	printf
	mov	r0, r8
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L358+24
	str	r6, [sp, #0]
	bl	fill_float_array
	ldr	r3, .L358+24
	mov	r2, r5
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, r8
	ldr	r0, .L358+52
	bl	fill_fixed_array_from_float_array
	mov	r1, r7
	ldr	r0, .L358+56
	bl	fill_fixed_array_from_float_array
	ldr	r4, .L358+60
	mov	r1, sl
	ldr	r0, .L358+64
	bl	avg_of_3_runs
	ldr	r0, .L358+68
	bl	printf
	mov	r1, r4
	ldr	r0, .L358+72
	bl	fill_i32_array
	mov	r1, r4
	ldr	r0, .L358+76
	bl	fill_i32_array
	mov	r1, sl
	ldr	r0, .L358+80
	bl	avg_of_3_runs
	mvn	r4, #0
	mov	r5, #0
	ldr	r0, .L358+84
	bl	printf
	mov	r1, r4
	mov	r2, r5
	ldr	r0, .L358+88
	bl	fill_i64_array
	mov	r1, r4
	mov	r2, r5
	ldr	r0, .L358+92
	bl	fill_i64_array
	ldr	r0, .L358+96
	mov	r1, sl
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	avg_of_3_runs
.L359:
	.align	2
.L358:
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
	ldr	r4, .L362
	ldr	r5, .L362+4
	ldr	r8, .L362+8
	ldr	r0, .L362+12
	bl	puts
	ldr	r7, .L362+16
	ldr	r0, .L362+20
	bl	printf
	mov	r6, #0
	mov	r0, r8
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L362+24
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r2, r5
	ldr	r3, .L362+24
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, sl
	ldr	r0, .L362+28
	bl	avg_of_3_runs
	ldr	r0, .L362+32
	bl	printf
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L362+24
	ldr	r0, .L362+36
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r2, r5
	ldr	r3, .L362+24
	mov	r1, r4
	ldr	r0, .L362+40
	str	r6, [sp, #0]
	bl	fill_double_array
	mov	r1, sl
	ldr	r0, .L362+44
	bl	avg_of_3_runs
	ldr	r0, .L362+48
	bl	printf
	mov	r0, r8
	mov	r1, r4
	mov	r2, r5
	ldr	r3, .L362+24
	str	r6, [sp, #0]
	bl	fill_float_array
	ldr	r3, .L362+24
	mov	r2, r5
	mov	r1, r4
	mov	r0, r7
	str	r6, [sp, #0]
	bl	fill_float_array
	mov	r1, r8
	ldr	r0, .L362+52
	bl	fill_fixed_array_from_float_array
	mov	r1, r7
	ldr	r0, .L362+56
	bl	fill_fixed_array_from_float_array
	mov	r1, sl
	ldr	r0, .L362+60
	bl	avg_of_3_runs
	mvn	r4, #0
	ldr	r0, .L362+64
	bl	printf
	mov	r1, r4
	ldr	r0, .L362+68
	bl	fill_i32_array
	mov	r1, r4
	ldr	r0, .L362+72
	bl	fill_i32_array
	mov	r1, sl
	ldr	r0, .L362+76
	bl	avg_of_3_runs
	mvn	r4, #0
	mvn	r5, #0
	ldr	r0, .L362+80
	bl	printf
	mov	r1, r4
	mov	r2, r5
	ldr	r0, .L362+84
	bl	fill_i64_array
	mov	r1, r4
	mov	r2, r5
	ldr	r0, .L362+88
	bl	fill_i64_array
	ldr	r0, .L362+92
	mov	r1, sl
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	avg_of_3_runs
.L363:
	.align	2
.L362:
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
	.ascii	"COMPILED WITH MANUAL 32-FOLD UNROLLING OF LOOPS\000"
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
	ldr	r0, .L370
	mov	r5, r1
	bl	srand48
	mov	r1, #0
	cmp	r4, #1
	ldr	r0, .L370+4
	mov	r3, r1
	mov	r2, #10
	ble	.L369
	ldr	r0, [r5, #4]
	bl	__strtol_internal
	mov	r4, r0
	ldr	r0, .L370+8
	bl	puts
	ldr	r0, .L370+12
	bl	puts
	ldr	r0, .L370+16
	bl	puts
	ldr	r0, .L370+20
	bl	puts
	ldr	r0, .L370+24
	bl	puts
	mov	r1, #32
	ldr	r0, .L370+28
	bl	printf
	mov	r1, #64
	ldr	r0, .L370+32
	bl	printf
	mov	r1, r4
	ldr	r0, .L370+36
	bl	printf
	bl	sync
	ldr	r0, .L370+40
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
.L369:
	bl	puts
	mov	r0, #1
	ldmfd	sp!, {r4, r5, pc}
.L371:
	.align	2
.L370:
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
