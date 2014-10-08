	.file	1 "fpbench.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.text
	.align	2
	.globl	bench_float_add
	.set	nomips16
	.set	nomicromips
	.ent	bench_float_add
	.type	bench_float_add, @function
bench_float_add:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L19
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$13,7168			# 0x1c00
	lw	$6,%got(fresult)($28)
	lw	$5,%got(fval1)($28)
	lw	$3,%got(fval2)($28)
	move	$2,$0
$L3:
	lwxc1	$f1,$5($2)
	addiu	$15,$2,4
	addiu	$12,$2,8
	lwxc1	$f7,$3($2)
	addiu	$11,$2,12
	addiu	$10,$2,16
	addiu	$9,$2,20
	lwxc1	$f0,$5($15)
	addiu	$8,$2,24
	addiu	$7,$2,28
	lwxc1	$f6,$3($15)
	lwxc1	$f2,$5($12)
	add.s	$f11,$f1,$f7
	lwxc1	$f5,$3($12)
	lwxc1	$f8,$5($11)
	lwxc1	$f4,$3($11)
	add.s	$f12,$f0,$f6
	lwxc1	$f13,$5($10)
	lwxc1	$f3,$3($10)
	add.s	$f14,$f2,$f5
	lwxc1	$f15,$5($9)
	lwxc1	$f10,$3($9)
	add.s	$f16,$f8,$f4
	lwxc1	$f17,$5($8)
	lwxc1	$f9,$3($8)
	add.s	$f18,$f13,$f3
	lwxc1	$f19,$5($7)
	lwxc1	$f7,$3($7)
	add.s	$f6,$f15,$f10
	swxc1	$f11,$6($2)
	addiu	$2,$2,32
	add.s	$f1,$f17,$f9
	swxc1	$f12,$6($15)
	swxc1	$f14,$6($12)
	add.s	$f0,$f19,$f7
	swxc1	$f16,$6($11)
	swxc1	$f18,$6($10)
	swxc1	$f6,$6($9)
	swxc1	$f1,$6($8)
	bne	$2,$13,$L3
	swxc1	$f0,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L3
	move	$2,$0

$L19:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_float_add
	.size	bench_float_add, .-bench_float_add
	.align	2
	.globl	bench_double_add
	.set	nomips16
	.set	nomicromips
	.ent	bench_double_add
	.type	bench_double_add, @function
bench_double_add:
	.frame	$sp,8,$31		# vars= 0, regs= 0/2, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00300000,0
	.set	noreorder
	.set	nomacro
	sll	$4,$4,1
	beq	$4,$0,$L37
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-8
	addiu	$28,$28,%lo(__gnu_local_gp)
	sdc1	$f20,0($sp)
	move	$14,$0
	li	$13,7168			# 0x1c00
	lw	$6,%got(dresult)($28)
	lw	$5,%got(dval1)($28)
	lw	$3,%got(dval2)($28)
$L23:
	move	$2,$0
$L22:
	addiu	$15,$2,8
	ldxc1	$f2,$3($2)
	addiu	$12,$2,16
	ldxc1	$f0,$3($15)
	addiu	$11,$2,24
	addiu	$10,$2,32
	ldxc1	$f12,$5($15)
	addiu	$9,$2,40
	addiu	$8,$2,48
	ldxc1	$f14,$5($2)
	addiu	$7,$2,56
	ldxc1	$f4,$3($12)
	ldxc1	$f16,$3($11)
	add.d	$f12,$f12,$f0
	ldxc1	$f10,$5($12)
	ldxc1	$f0,$3($10)
	add.d	$f14,$f14,$f2
	ldxc1	$f8,$5($11)
	ldxc1	$f6,$5($10)
	add.d	$f10,$f10,$f4
	ldxc1	$f20,$5($9)
	ldxc1	$f4,$3($9)
	add.d	$f8,$f8,$f16
	ldxc1	$f2,$5($8)
	add.d	$f6,$f6,$f0
	ldxc1	$f18,$3($8)
	ldxc1	$f0,$5($7)
	ldxc1	$f16,$3($7)
	add.d	$f20,$f20,$f4
	sdxc1	$f14,$6($2)
	addiu	$2,$2,64
	sdxc1	$f12,$6($15)
	add.d	$f14,$f2,$f18
	sdxc1	$f10,$6($12)
	add.d	$f12,$f0,$f16
	sdxc1	$f8,$6($11)
	sdxc1	$f6,$6($10)
	sdxc1	$f20,$6($9)
	sdxc1	$f14,$6($8)
	bne	$2,$13,$L22
	sdxc1	$f12,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L23
	ldc1	$f20,0($sp)

	j	$31
	addiu	$sp,$sp,8

$L37:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_double_add
	.size	bench_double_add, .-bench_double_add
	.align	2
	.globl	bench_fixed_add
	.set	nomips16
	.set	nomicromips
	.ent	bench_fixed_add
	.type	bench_fixed_add, @function
bench_fixed_add:
	.frame	$sp,64,$31		# vars= 16, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.cprestore	0
	beq	$4,$0,$L38
	sw	$4,64($sp)

	lw	$3,%got(xresult)($28)
	lw	$18,%got(xval1)($28)
	lw	$16,%got(xval2)($28)
	sw	$0,16($sp)
$L41:
	move	$14,$0
$L40:
	addu	$10,$16,$14
	addiu	$9,$14,4
	addiu	$8,$14,8
	addiu	$7,$14,12
	lw	$17,0($10)
	addiu	$6,$14,16
	addu	$12,$18,$9
	addu	$19,$18,$8
	addu	$23,$16,$7
	addu	$25,$18,$6
	lw	$24,0($12)
	addu	$10,$16,$6
	lw	$22,0($19)
	lw	$12,0($23)
	addu	$13,$18,$14
	lw	$19,0($25)
	addu	$11,$16,$9
	lw	$23,0($10)
	addu	$20,$16,$8
	addiu	$5,$14,20
	lw	$fp,0($13)
	addiu	$4,$14,24
	lw	$15,0($11)
	addiu	$2,$14,28
	lw	$13,0($20)
	addu	$21,$18,$7
	sw	$19,8($sp)
	addu	$25,$18,$2
	sw	$23,12($sp)
	addu	$20,$18,$5
	addu	$23,$16,$2
	lw	$21,0($21)
	addu	$11,$16,$5
	addu	$19,$18,$4
	lw	$20,0($20)
	addu	$10,$16,$4
	lw	$11,0($11)
	addu	$fp,$fp,$17
	lw	$19,0($19)
	addu	$15,$24,$15
	lw	$10,0($10)
	addu	$13,$22,$13
	lw	$17,0($25)
	addu	$12,$21,$12
	lw	$25,0($23)
	addu	$20,$20,$11
	lw	$22,8($sp)
	addu	$11,$19,$10
	lw	$24,12($sp)
	addu	$19,$3,$14
	addu	$23,$17,$25
	addu	$9,$3,$9
	sw	$fp,0($19)
	addu	$21,$22,$24
	addu	$8,$3,$8
	sw	$15,0($9)
	addu	$7,$3,$7
	addu	$6,$3,$6
	sw	$13,0($8)
	addu	$5,$3,$5
	sw	$12,0($7)
	addu	$4,$3,$4
	sw	$21,0($6)
	addu	$2,$3,$2
	sw	$20,0($5)
	addiu	$14,$14,32
	sw	$11,0($4)
	li	$10,7168			# 0x1c00
	bne	$14,$10,$L40
	sw	$23,0($2)

	lw	$14,16($sp)
	lw	$17,64($sp)
	addiu	$fp,$14,1
	bne	$fp,$17,$L41
	sw	$fp,16($sp)

$L38:
	lw	$fp,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	bench_fixed_add
	.size	bench_fixed_add, .-bench_fixed_add
	.align	2
	.globl	bench_i32_add
	.set	nomips16
	.set	nomicromips
	.ent	bench_i32_add
	.type	bench_i32_add, @function
bench_i32_add:
	.frame	$sp,64,$31		# vars= 16, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.cprestore	0
	beq	$4,$0,$L53
	sw	$4,64($sp)

	lw	$3,%got(i32result)($28)
	lw	$18,%got(i32val2)($28)
	lw	$16,%got(i32val1)($28)
	sw	$0,16($sp)
$L56:
	move	$14,$0
$L55:
	addu	$10,$16,$14
	addiu	$9,$14,4
	addiu	$8,$14,8
	addiu	$7,$14,12
	lw	$17,0($10)
	addiu	$6,$14,16
	addu	$12,$18,$9
	addu	$19,$18,$8
	addu	$23,$16,$7
	addu	$25,$18,$6
	lw	$24,0($12)
	addu	$10,$16,$6
	lw	$22,0($19)
	lw	$12,0($23)
	addu	$13,$18,$14
	lw	$19,0($25)
	addu	$11,$16,$9
	lw	$23,0($10)
	addu	$20,$16,$8
	addiu	$5,$14,20
	lw	$fp,0($13)
	addiu	$4,$14,24
	lw	$15,0($11)
	addiu	$2,$14,28
	lw	$13,0($20)
	addu	$21,$18,$7
	sw	$19,8($sp)
	addu	$25,$18,$2
	sw	$23,12($sp)
	addu	$20,$18,$5
	addu	$23,$16,$2
	lw	$21,0($21)
	addu	$11,$16,$5
	addu	$19,$18,$4
	lw	$20,0($20)
	addu	$10,$16,$4
	lw	$11,0($11)
	addu	$fp,$fp,$17
	lw	$19,0($19)
	addu	$15,$24,$15
	lw	$10,0($10)
	addu	$13,$22,$13
	lw	$17,0($25)
	addu	$12,$21,$12
	lw	$25,0($23)
	addu	$20,$20,$11
	lw	$22,8($sp)
	addu	$11,$19,$10
	lw	$24,12($sp)
	addu	$19,$3,$14
	addu	$23,$17,$25
	addu	$9,$3,$9
	sw	$fp,0($19)
	addu	$21,$22,$24
	addu	$8,$3,$8
	sw	$15,0($9)
	addu	$7,$3,$7
	addu	$6,$3,$6
	sw	$13,0($8)
	addu	$5,$3,$5
	sw	$12,0($7)
	addu	$4,$3,$4
	sw	$21,0($6)
	addu	$2,$3,$2
	sw	$20,0($5)
	addiu	$14,$14,32
	sw	$11,0($4)
	li	$10,7168			# 0x1c00
	bne	$14,$10,$L55
	sw	$23,0($2)

	lw	$14,16($sp)
	lw	$17,64($sp)
	addiu	$fp,$14,1
	bne	$fp,$17,$L56
	sw	$fp,16($sp)

$L53:
	lw	$fp,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	bench_i32_add
	.size	bench_i32_add, .-bench_i32_add
	.align	2
	.globl	bench_i64_add
	.set	nomips16
	.set	nomicromips
	.ent	bench_i64_add
	.type	bench_i64_add, @function
bench_i64_add:
	.frame	$sp,80,$31		# vars= 32, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	sll	$4,$4,1
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$sp,$sp,-80
	sw	$fp,76($sp)
	sw	$23,72($sp)
	sw	$22,68($sp)
	sw	$21,64($sp)
	sw	$20,60($sp)
	sw	$19,56($sp)
	sw	$18,52($sp)
	sw	$17,48($sp)
	sw	$16,44($sp)
	.cprestore	0
	beq	$4,$0,$L68
	sw	$4,24($sp)

	lw	$18,%got(i64result)($28)
	lw	$17,%got(i64val2)($28)
	lw	$16,%got(i64val1)($28)
	sw	$0,20($sp)
$L71:
	lw	$2,0($17)
	li	$9,8			# 0x8
	lw	$3,0($16)
	lw	$6,4($17)
	lw	$5,4($16)
	addu	$7,$2,$3
	addu	$8,$6,$5
	sltu	$10,$7,$2
	sw	$7,0($18)
	addu	$11,$10,$8
	sw	$11,4($18)
$L70:
	addu	$14,$17,$9
	addu	$10,$16,$9
	addiu	$4,$9,24
	lw	$25,0($14)
	addiu	$2,$9,32
	lw	$fp,0($10)
	addu	$22,$17,$4
	addu	$21,$16,$4
	lw	$14,4($14)
	addu	$20,$17,$2
	lw	$10,4($10)
	addu	$3,$25,$fp
	lw	$5,0($22)
	addiu	$7,$9,8
	lw	$22,4($22)
	lw	$fp,0($20)
	addiu	$6,$9,16
	sw	$3,12($sp)
	addu	$13,$17,$7
	sw	$14,16($sp)
	addu	$8,$16,$7
	lw	$3,0($21)
	addu	$19,$16,$2
	lw	$12,0($13)
	addu	$24,$17,$6
	lw	$13,4($13)
	addu	$23,$16,$6
	addu	$14,$5,$3
	lw	$3,12($sp)
	lw	$15,0($8)
	addu	$7,$18,$7
	lw	$11,0($24)
	sltu	$5,$14,$5
	sltu	$25,$3,$25
	lw	$3,0($19)
	lw	$8,4($8)
	addu	$6,$18,$6
	lw	$24,4($24)
	addu	$4,$18,$4
	sw	$fp,28($sp)
	addu	$fp,$12,$15
	sw	$25,8($sp)
	addu	$2,$18,$2
	sw	$13,32($sp)
	sltu	$12,$fp,$12
	lw	$25,28($sp)
	lw	$15,0($23)
	lw	$23,4($23)
	addu	$13,$25,$3
	lw	$3,32($sp)
	lw	$25,16($sp)
	addu	$15,$11,$15
	lw	$21,4($21)
	addu	$24,$24,$23
	addu	$8,$3,$8
	lw	$20,4($20)
	lw	$19,4($19)
	addu	$10,$25,$10
	lw	$3,8($sp)
	sltu	$11,$15,$11
	lw	$25,28($sp)
	addu	$11,$11,$24
	lw	$24,12($sp)
	addu	$22,$22,$21
	addu	$10,$3,$10
	addu	$21,$20,$19
	addu	$12,$12,$8
	sltu	$23,$13,$25
	addu	$8,$18,$9
	addu	$5,$5,$22
	addu	$20,$23,$21
	sw	$24,0($8)
	addiu	$9,$9,40
	sw	$10,4($8)
	sw	$fp,0($7)
	li	$fp,7168			# 0x1c00
	sw	$12,4($7)
	sw	$15,0($6)
	sw	$11,4($6)
	sw	$14,0($4)
	sw	$5,4($4)
	sw	$13,0($2)
	bne	$9,$fp,$L70
	sw	$20,4($2)

	lw	$9,20($sp)
	lw	$14,24($sp)
	addiu	$15,$9,1
	bne	$15,$14,$L71
	sw	$15,20($sp)

$L68:
	lw	$fp,76($sp)
	lw	$23,72($sp)
	lw	$22,68($sp)
	lw	$21,64($sp)
	lw	$20,60($sp)
	lw	$19,56($sp)
	lw	$18,52($sp)
	lw	$17,48($sp)
	lw	$16,44($sp)
	j	$31
	addiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	bench_i64_add
	.size	bench_i64_add, .-bench_i64_add
	.align	2
	.globl	bench_float_mul
	.set	nomips16
	.set	nomicromips
	.ent	bench_float_mul
	.type	bench_float_mul, @function
bench_float_mul:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L98
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$13,7168			# 0x1c00
	lw	$6,%got(fresult)($28)
	lw	$5,%got(fval1)($28)
	lw	$3,%got(fval2)($28)
	move	$2,$0
$L83:
	lwxc1	$f1,$5($2)
	addiu	$15,$2,4
	addiu	$12,$2,8
	lwxc1	$f7,$3($2)
	addiu	$11,$2,12
	addiu	$10,$2,16
	addiu	$9,$2,20
	lwxc1	$f0,$5($15)
	addiu	$8,$2,24
	addiu	$7,$2,28
	lwxc1	$f6,$3($15)
	lwxc1	$f2,$5($12)
	mul.s	$f11,$f1,$f7
	lwxc1	$f5,$3($12)
	lwxc1	$f8,$5($11)
	lwxc1	$f4,$3($11)
	mul.s	$f12,$f0,$f6
	lwxc1	$f13,$5($10)
	lwxc1	$f3,$3($10)
	mul.s	$f14,$f2,$f5
	lwxc1	$f15,$5($9)
	lwxc1	$f10,$3($9)
	mul.s	$f16,$f8,$f4
	lwxc1	$f17,$5($8)
	lwxc1	$f9,$3($8)
	mul.s	$f18,$f13,$f3
	lwxc1	$f19,$5($7)
	lwxc1	$f7,$3($7)
	mul.s	$f6,$f15,$f10
	swxc1	$f11,$6($2)
	addiu	$2,$2,32
	mul.s	$f1,$f17,$f9
	swxc1	$f12,$6($15)
	swxc1	$f14,$6($12)
	mul.s	$f0,$f19,$f7
	swxc1	$f16,$6($11)
	swxc1	$f18,$6($10)
	swxc1	$f6,$6($9)
	swxc1	$f1,$6($8)
	bne	$2,$13,$L83
	swxc1	$f0,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L83
	move	$2,$0

$L98:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_float_mul
	.size	bench_float_mul, .-bench_float_mul
	.align	2
	.globl	bench_double_mul
	.set	nomips16
	.set	nomicromips
	.ent	bench_double_mul
	.type	bench_double_mul, @function
bench_double_mul:
	.frame	$sp,8,$31		# vars= 0, regs= 0/2, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00300000,0
	.set	noreorder
	.set	nomacro
	sll	$4,$4,1
	beq	$4,$0,$L116
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-8
	addiu	$28,$28,%lo(__gnu_local_gp)
	sdc1	$f20,0($sp)
	move	$14,$0
	li	$13,7168			# 0x1c00
	lw	$6,%got(dresult)($28)
	lw	$5,%got(dval1)($28)
	lw	$3,%got(dval2)($28)
$L102:
	move	$2,$0
$L101:
	addiu	$15,$2,8
	ldxc1	$f2,$3($2)
	addiu	$12,$2,16
	ldxc1	$f0,$3($15)
	addiu	$11,$2,24
	addiu	$10,$2,32
	ldxc1	$f12,$5($15)
	addiu	$9,$2,40
	addiu	$8,$2,48
	ldxc1	$f14,$5($2)
	addiu	$7,$2,56
	ldxc1	$f4,$3($12)
	ldxc1	$f16,$3($11)
	mul.d	$f12,$f12,$f0
	ldxc1	$f10,$5($12)
	ldxc1	$f0,$3($10)
	ldxc1	$f8,$5($11)
	mul.d	$f14,$f14,$f2
	ldxc1	$f6,$5($10)
	mul.d	$f10,$f10,$f4
	ldxc1	$f20,$5($9)
	ldxc1	$f4,$3($9)
	mul.d	$f8,$f8,$f16
	ldxc1	$f2,$5($8)
	ldxc1	$f18,$3($8)
	mul.d	$f6,$f6,$f0
	ldxc1	$f16,$3($7)
	ldxc1	$f0,$5($7)
	sdxc1	$f14,$6($2)
	mul.d	$f20,$f20,$f4
	addiu	$2,$2,64
	sdxc1	$f12,$6($15)
	mul.d	$f14,$f2,$f18
	sdxc1	$f10,$6($12)
	sdxc1	$f8,$6($11)
	mul.d	$f12,$f0,$f16
	sdxc1	$f6,$6($10)
	sdxc1	$f20,$6($9)
	sdxc1	$f14,$6($8)
	bne	$2,$13,$L101
	sdxc1	$f12,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L102
	ldc1	$f20,0($sp)

	j	$31
	addiu	$sp,$sp,8

$L116:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_double_mul
	.size	bench_double_mul, .-bench_double_mul
	.align	2
	.globl	bench_fixed_mul
	.set	nomips16
	.set	nomicromips
	.ent	bench_fixed_mul
	.type	bench_fixed_mul, @function
bench_fixed_mul:
	.frame	$sp,56,$31		# vars= 8, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	.cprestore	0
	beq	$4,$0,$L117
	sw	$4,56($sp)

	lw	$17,%got(xval1)($28)
	lw	$16,%got(xval2)($28)
	lw	$5,%got(xresult)($28)
	sw	$0,8($sp)
$L120:
	move	$4,$0
$L119:
	addu	$3,$17,$4
	addu	$2,$16,$4
	addiu	$25,$4,4
	lw	$fp,0($3)
	addiu	$23,$4,12
	lw	$3,0($2)
	addu	$9,$17,$25
	addu	$8,$16,$25
	addiu	$22,$4,16
	addiu	$24,$4,8
	lw	$19,0($9)
	mult	$fp,$3
	lw	$18,0($8)
	addu	$11,$16,$23
	addu	$2,$17,$22
	addu	$7,$17,$24
	addu	$6,$16,$24
	lw	$12,0($11)
	mfhi	$fp
	lw	$11,0($2)
	mflo	$2
	lw	$15,0($7)
	mult	$19,$18
	lw	$14,0($6)
	addu	$10,$17,$23
	addu	$6,$16,$22
	addiu	$21,$4,20
	mflo	$18
	lw	$13,0($10)
	mfhi	$19
	lw	$10,0($6)
	mult	$15,$14
	addu	$9,$17,$21
	addu	$8,$16,$21
	addiu	$20,$4,24
	mflo	$14
	lw	$9,0($9)
	mfhi	$15
	lw	$8,0($8)
	mult	$13,$12
	addu	$7,$17,$20
	addu	$6,$16,$20
	srl	$2,$2,16
	mflo	$12
	lw	$3,0($7)
	mfhi	$13
	lw	$7,0($6)
	mult	$11,$10
	sll	$19,$19,16
	srl	$18,$18,16
	sll	$15,$15,16
	mflo	$10
	mfhi	$11
	mult	$9,$8
	srl	$14,$14,16
	sll	$13,$13,16
	srl	$12,$12,16
	mflo	$8
	mfhi	$9
	mult	$3,$7
	sll	$fp,$fp,16
	sll	$11,$11,16
	srl	$10,$10,16
	mflo	$6
	mfhi	$3
	sll	$9,$9,16
	srl	$8,$8,16
	addu	$7,$5,$4
	or	$fp,$fp,$2
	addu	$25,$5,$25
	srl	$6,$6,16
	sw	$fp,0($7)
	sll	$3,$3,16
	or	$2,$19,$18
	addu	$24,$5,$24
	or	$19,$15,$14
	sw	$2,0($25)
	or	$18,$13,$12
	addu	$23,$5,$23
	sw	$19,0($24)
	addu	$22,$5,$22
	or	$15,$11,$10
	sw	$18,0($23)
	addu	$21,$5,$21
	or	$14,$9,$8
	sw	$15,0($22)
	addu	$20,$5,$20
	or	$13,$3,$6
	sw	$14,0($21)
	addiu	$4,$4,28
	li	$12,7168			# 0x1c00
	bne	$4,$12,$L119
	sw	$13,0($20)

	lw	$4,8($sp)
	lw	$10,56($sp)
	addiu	$11,$4,1
	bne	$11,$10,$L120
	sw	$11,8($sp)

$L117:
	lw	$fp,52($sp)
	lw	$23,48($sp)
	lw	$22,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	bench_fixed_mul
	.size	bench_fixed_mul, .-bench_fixed_mul
	.align	2
	.globl	bench_i32_mul
	.set	nomips16
	.set	nomicromips
	.ent	bench_i32_mul
	.type	bench_i32_mul, @function
bench_i32_mul:
	.frame	$sp,64,$31		# vars= 16, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.cprestore	0
	beq	$4,$0,$L131
	sw	$4,64($sp)

	lw	$3,%got(i32result)($28)
	lw	$18,%got(i32val2)($28)
	lw	$16,%got(i32val1)($28)
	sw	$0,16($sp)
$L134:
	move	$14,$0
$L133:
	addu	$10,$16,$14
	addiu	$9,$14,4
	addiu	$8,$14,8
	addiu	$7,$14,12
	lw	$17,0($10)
	addiu	$6,$14,16
	addu	$12,$18,$9
	addu	$19,$18,$8
	addu	$23,$16,$7
	addu	$25,$18,$6
	lw	$24,0($12)
	addu	$10,$16,$6
	lw	$22,0($19)
	lw	$12,0($23)
	addu	$13,$18,$14
	lw	$19,0($25)
	addu	$11,$16,$9
	lw	$23,0($10)
	addu	$20,$16,$8
	addiu	$5,$14,20
	lw	$fp,0($13)
	addiu	$4,$14,24
	lw	$15,0($11)
	addiu	$2,$14,28
	lw	$13,0($20)
	addu	$21,$18,$7
	sw	$19,8($sp)
	addu	$25,$18,$2
	sw	$23,12($sp)
	addu	$20,$18,$5
	addu	$23,$16,$2
	lw	$21,0($21)
	addu	$11,$16,$5
	addu	$19,$18,$4
	lw	$20,0($20)
	addu	$10,$16,$4
	lw	$11,0($11)
	mul	$fp,$fp,$17
	lw	$19,0($19)
	mul	$15,$24,$15
	lw	$10,0($10)
	mul	$13,$22,$13
	lw	$17,0($25)
	mul	$12,$21,$12
	lw	$25,0($23)
	mul	$20,$20,$11
	lw	$22,8($sp)
	mul	$11,$19,$10
	lw	$24,12($sp)
	addu	$19,$3,$14
	mul	$23,$17,$25
	addu	$9,$3,$9
	sw	$fp,0($19)
	mul	$21,$22,$24
	addu	$8,$3,$8
	sw	$15,0($9)
	addu	$7,$3,$7
	addu	$6,$3,$6
	sw	$13,0($8)
	addu	$5,$3,$5
	sw	$12,0($7)
	addu	$4,$3,$4
	addu	$2,$3,$2
	addiu	$14,$14,32
	sw	$21,0($6)
	li	$10,7168			# 0x1c00
	sw	$20,0($5)
	sw	$11,0($4)
	bne	$14,$10,$L133
	sw	$23,0($2)

	lw	$14,16($sp)
	lw	$17,64($sp)
	addiu	$fp,$14,1
	bne	$fp,$17,$L134
	sw	$fp,16($sp)

$L131:
	lw	$fp,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	bench_i32_mul
	.size	bench_i32_mul, .-bench_i32_mul
	.align	2
	.globl	bench_i64_mul
	.set	nomips16
	.set	nomicromips
	.ent	bench_i64_mul
	.type	bench_i64_mul, @function
bench_i64_mul:
	.frame	$sp,72,$31		# vars= 24, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	sll	$4,$4,1
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$sp,$sp,-72
	sw	$fp,68($sp)
	sw	$23,64($sp)
	sw	$22,60($sp)
	sw	$21,56($sp)
	sw	$20,52($sp)
	sw	$19,48($sp)
	sw	$18,44($sp)
	sw	$17,40($sp)
	sw	$16,36($sp)
	.cprestore	0
	beq	$4,$0,$L146
	sw	$4,28($sp)

	lw	$19,%got(i64result)($28)
	lw	$17,%got(i64val2)($28)
	lw	$16,%got(i64val1)($28)
	sw	$0,24($sp)
$L149:
	move	$6,$0
$L148:
	addiu	$9,$6,8
	addiu	$8,$6,16
	addiu	$7,$6,24
	addu	$5,$17,$9
	addu	$11,$17,$6
	addu	$3,$17,$8
	addu	$25,$17,$7
	lw	$12,0($5)
	addu	$24,$16,$6
	lw	$10,0($11)
	addu	$23,$16,$9
	lw	$4,0($3)
	addu	$22,$16,$8
	lw	$2,0($25)
	addu	$21,$16,$7
	lw	$20,4($24)
	lw	$18,4($23)
	addu	$fp,$19,$6
	lw	$24,0($24)
	addu	$9,$19,$9
	lw	$15,4($22)
	mul	$20,$20,$10
	lw	$14,4($21)
	mul	$18,$18,$12
	lw	$23,0($23)
	addu	$8,$19,$8
	mul	$15,$15,$4
	lw	$22,0($22)
	mul	$14,$14,$2
	lw	$21,0($21)
	multu	$10,$24
	addu	$7,$19,$7
	addiu	$6,$6,32
	mfhi	$13
	mflo	$10
	sw	$13,12($sp)
	lw	$13,4($11)
	lw	$11,0($5)
	sw	$10,8($sp)
	multu	$11,$23
	lw	$11,4($3)
	mflo	$12
	mfhi	$10
	multu	$4,$22
	mflo	$4
	sw	$12,16($sp)
	sw	$10,20($sp)
	lw	$12,4($5)
	mfhi	$5
	multu	$2,$21
	lw	$10,4($25)
	mflo	$2
	mfhi	$3
	mul	$25,$13,$24
	addu	$24,$25,$20
	mul	$20,$12,$23
	lw	$12,20($sp)
	addu	$23,$20,$18
	mul	$18,$11,$22
	addu	$11,$23,$12
	sw	$11,20($sp)
	addu	$22,$18,$15
	mul	$15,$10,$21
	lw	$21,12($sp)
	lw	$10,8($sp)
	addu	$5,$22,$5
	addu	$13,$24,$21
	lw	$24,20($sp)
	sw	$10,0($fp)
	sw	$13,12($sp)
	lw	$25,12($sp)
	addu	$14,$15,$14
	addu	$3,$14,$3
	sw	$25,4($fp)
	sw	$24,4($9)
	lw	$fp,16($sp)
	sw	$fp,0($9)
	li	$9,7168			# 0x1c00
	sw	$4,0($8)
	sw	$5,4($8)
	sw	$2,0($7)
	bne	$6,$9,$L148
	sw	$3,4($7)

	lw	$6,24($sp)
	lw	$2,28($sp)
	addiu	$4,$6,1
	bne	$4,$2,$L149
	sw	$4,24($sp)

$L146:
	lw	$fp,68($sp)
	lw	$23,64($sp)
	lw	$22,60($sp)
	lw	$21,56($sp)
	lw	$20,52($sp)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	bench_i64_mul
	.size	bench_i64_mul, .-bench_i64_mul
	.align	2
	.globl	bench_float_div
	.set	nomips16
	.set	nomicromips
	.ent	bench_float_div
	.type	bench_float_div, @function
bench_float_div:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L174
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$13,7168			# 0x1c00
	lw	$6,%got(fresult)($28)
	lw	$5,%got(fval1)($28)
	lw	$3,%got(fval2)($28)
	move	$2,$0
$L159:
	addiu	$15,$2,4
	lwxc1	$f0,$5($2)
	addiu	$12,$2,8
	addiu	$11,$2,12
	lwxc1	$f7,$3($2)
	addiu	$10,$2,16
	addiu	$9,$2,20
	lwxc1	$f6,$5($15)
	addiu	$8,$2,24
	addiu	$7,$2,28
	lwxc1	$f14,$3($15)
	lwxc1	$f5,$5($12)
	lwxc1	$f13,$3($12)
	div.s	$f15,$f0,$f7
	lwxc1	$f4,$5($11)
	lwxc1	$f12,$3($11)
	lwxc1	$f3,$5($10)
	lwxc1	$f11,$3($10)
	lwxc1	$f2,$5($9)
	lwxc1	$f10,$3($9)
	lwxc1	$f1,$5($8)
	lwxc1	$f9,$3($8)
	lwxc1	$f16,$5($7)
	lwxc1	$f8,$3($7)
	div.s	$f17,$f6,$f14
	swxc1	$f15,$6($2)
	addiu	$2,$2,32
	div.s	$f18,$f5,$f13
	swxc1	$f17,$6($15)
	div.s	$f19,$f4,$f12
	swxc1	$f18,$6($12)
	div.s	$f0,$f3,$f11
	swxc1	$f19,$6($11)
	div.s	$f7,$f2,$f10
	swxc1	$f0,$6($10)
	div.s	$f6,$f1,$f9
	swxc1	$f7,$6($9)
	div.s	$f14,$f16,$f8
	swxc1	$f6,$6($8)
	bne	$2,$13,$L159
	swxc1	$f14,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L159
	move	$2,$0

$L174:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_float_div
	.size	bench_float_div, .-bench_float_div
	.align	2
	.globl	bench_double_div
	.set	nomips16
	.set	nomicromips
	.ent	bench_double_div
	.type	bench_double_div, @function
bench_double_div:
	.frame	$sp,40,$31		# vars= 0, regs= 0/10, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x3ff00000,-8
	.set	noreorder
	.set	nomacro
	sll	$15,$4,1
	beq	$15,$0,$L192
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	sdc1	$f28,32($sp)
	move	$14,$0
	li	$13,7168			# 0x1c00
	lw	$5,%got(dresult)($28)
	lw	$4,%got(dval1)($28)
	lw	$3,%got(dval2)($28)
	sdc1	$f26,24($sp)
	sdc1	$f24,16($sp)
	sdc1	$f22,8($sp)
	sdc1	$f20,0($sp)
$L178:
	move	$2,$0
$L177:
	ldxc1	$f0,$3($2)
	addiu	$12,$2,8
	addiu	$11,$2,16
	ldxc1	$f10,$4($2)
	addiu	$10,$2,24
	addiu	$9,$2,32
	addiu	$8,$2,40
	ldxc1	$f20,$3($12)
	addiu	$7,$2,48
	addiu	$6,$2,56
	ldxc1	$f6,$4($11)
	ldxc1	$f18,$3($11)
	div.d	$f10,$f10,$f0
	ldxc1	$f4,$4($10)
	ldxc1	$f16,$3($10)
	ldxc1	$f8,$4($12)
	ldxc1	$f2,$4($9)
	ldxc1	$f14,$3($9)
	ldxc1	$f0,$4($8)
	ldxc1	$f12,$3($8)
	ldxc1	$f22,$4($7)
	ldxc1	$f24,$3($7)
	ldxc1	$f26,$4($6)
	ldxc1	$f28,$3($6)
	div.d	$f8,$f8,$f20
	sdxc1	$f10,$5($2)
	addiu	$2,$2,64
	div.d	$f20,$f6,$f18
	sdxc1	$f8,$5($12)
	div.d	$f6,$f4,$f16
	sdxc1	$f20,$5($11)
	div.d	$f18,$f2,$f14
	sdxc1	$f6,$5($10)
	div.d	$f10,$f0,$f12
	sdxc1	$f18,$5($9)
	div.d	$f4,$f22,$f24
	sdxc1	$f10,$5($8)
	div.d	$f16,$f26,$f28
	sdxc1	$f4,$5($7)
	bne	$2,$13,$L177
	sdxc1	$f16,$5($6)

	addiu	$14,$14,1
	bne	$14,$15,$L178
	ldc1	$f28,32($sp)

	ldc1	$f26,24($sp)
	ldc1	$f24,16($sp)
	ldc1	$f22,8($sp)
	ldc1	$f20,0($sp)
	j	$31
	addiu	$sp,$sp,40

$L192:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_double_div
	.size	bench_double_div, .-bench_double_div
	.globl	__divdi3
	.align	2
	.globl	bench_fixed_div
	.set	nomips16
	.set	nomicromips
	.ent	bench_fixed_div
	.type	bench_fixed_div, @function
bench_fixed_div:
	.frame	$sp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L206
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$22,52($sp)
	move	$22,$0
	sw	$21,48($sp)
	li	$21,7168			# 0x1c00
	sw	$23,56($sp)
	move	$23,$4
	sw	$31,60($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.cprestore	16
	lw	$20,%got(xresult)($28)
	lw	$19,%got(xval1)($28)
	lw	$18,%got(xval2)($28)
	move	$16,$0
$L195:
	addu	$3,$19,$16
	lw	$25,%call16(__divdi3)($28)
	addu	$2,$18,$16
	addu	$17,$20,$16
	lw	$4,0($3)
	lw	$6,0($2)
	sra	$7,$4,31
	srl	$5,$4,16
	sll	$8,$7,16
	sll	$4,$4,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$8

	addiu	$6,$16,4
	lw	$28,16($sp)
	addu	$9,$19,$6
	sw	$2,0($17)
	addu	$10,$18,$6
	addu	$17,$20,$6
	lw	$11,0($9)
	lw	$6,0($10)
	lw	$25,%call16(__divdi3)($28)
	sra	$12,$11,31
	srl	$13,$11,16
	sll	$14,$12,16
	sll	$4,$11,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$13,$14

	addiu	$15,$16,8
	lw	$28,16($sp)
	addu	$24,$19,$15
	sw	$2,0($17)
	addu	$3,$18,$15
	addu	$17,$20,$15
	lw	$4,0($24)
	lw	$6,0($3)
	lw	$25,%call16(__divdi3)($28)
	sra	$2,$4,31
	srl	$5,$4,16
	sll	$8,$2,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$8

	addiu	$7,$16,12
	lw	$28,16($sp)
	addiu	$16,$16,16
	addu	$6,$19,$7
	sw	$2,0($17)
	addu	$9,$18,$7
	addu	$17,$20,$7
	lw	$10,0($6)
	lw	$6,0($9)
	lw	$25,%call16(__divdi3)($28)
	sra	$11,$10,31
	srl	$12,$10,16
	sll	$13,$11,16
	sll	$4,$10,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$12,$13

	lw	$28,16($sp)
	bne	$16,$21,$L195
	sw	$2,0($17)

	addiu	$22,$22,1
	bne	$22,$23,$L195
	move	$16,$0

	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,64

$L206:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_fixed_div
	.size	bench_fixed_div, .-bench_fixed_div
	.align	2
	.globl	bench_i32_div
	.set	nomips16
	.set	nomicromips
	.ent	bench_i32_div
	.type	bench_i32_div, @function
bench_i32_div:
	.frame	$sp,64,$31		# vars= 16, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.cprestore	0
	beq	$4,$0,$L207
	sw	$4,64($sp)

	lw	$13,%got(i32result)($28)
	lw	$10,%got(i32val1)($28)
	lw	$8,%got(i32val2)($28)
	sw	$0,16($sp)
$L210:
	move	$6,$0
$L209:
	addu	$14,$10,$6
	addu	$12,$8,$6
	addiu	$11,$6,4
	lw	$19,0($14)
	addiu	$9,$6,8
	lw	$12,0($12)
	addu	$15,$10,$11
	addu	$17,$8,$11
	addu	$21,$10,$9
	teq	$12,$0,7
	divu	$0,$19,$12
	lw	$18,0($15)
	lw	$fp,0($17)
	addu	$16,$8,$9
	lw	$24,0($21)
	addiu	$7,$6,12
	addiu	$5,$6,16
	lw	$17,0($16)
	addu	$22,$10,$7
	addu	$20,$8,$7
	addu	$25,$10,$5
	lw	$16,0($22)
	addu	$21,$8,$5
	lw	$23,0($20)
	addiu	$4,$6,20
	lw	$14,0($25)
	addiu	$3,$6,24
	lw	$20,0($21)
	addu	$15,$10,$4
	addu	$22,$8,$4
	addu	$21,$8,$3
	sw	$14,8($sp)
	addu	$14,$10,$3
	sw	$20,12($sp)
	addiu	$2,$6,28
	lw	$15,0($15)
	addu	$11,$13,$11
	lw	$22,0($22)
	addu	$25,$10,$2
	lw	$14,0($14)
	addu	$20,$8,$2
	lw	$21,0($21)
	addu	$9,$13,$9
	lw	$12,0($25)
	addu	$7,$13,$7
	lw	$20,0($20)
	addu	$25,$13,$6
	addu	$5,$13,$5
	addu	$4,$13,$4
	addu	$3,$13,$3
	addu	$2,$13,$2
	addiu	$6,$6,32
	mflo	$19
	teq	$fp,$0,7
	divu	$0,$18,$fp
	sw	$19,0($25)
	mflo	$18
	teq	$17,$0,7
	divu	$0,$24,$17
	lw	$17,8($sp)
	sw	$18,0($11)
	mflo	$fp
	teq	$23,$0,7
	divu	$0,$16,$23
	lw	$16,12($sp)
	sw	$fp,0($9)
	mflo	$24
	teq	$16,$0,7
	divu	$0,$17,$16
	sw	$24,0($7)
	mflo	$23
	teq	$22,$0,7
	divu	$0,$15,$22
	sw	$23,0($5)
	mflo	$15
	teq	$21,$0,7
	divu	$0,$14,$21
	li	$21,7168			# 0x1c00
	sw	$15,0($4)
	mflo	$22
	teq	$20,$0,7
	divu	$0,$12,$20
	sw	$22,0($3)
	mflo	$14
	bne	$6,$21,$L209
	sw	$14,0($2)

	lw	$6,16($sp)
	lw	$12,64($sp)
	addiu	$19,$6,1
	bne	$19,$12,$L210
	sw	$19,16($sp)

$L207:
	lw	$fp,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	bench_i32_div
	.size	bench_i32_div, .-bench_i32_div
	.globl	__udivdi3
	.align	2
	.globl	bench_i64_div
	.set	nomips16
	.set	nomicromips
	.ent	bench_i64_div
	.type	bench_i64_div, @function
bench_i64_div:
	.frame	$sp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$23,56($sp)
	sll	$23,$4,1
	sw	$31,60($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	beq	$23,$0,$L222
	.cprestore	16

	lw	$19,%got(i64result)($28)
	move	$22,$0
	lw	$18,%got(i64val1)($28)
	li	$21,7168			# 0x1c00
	lw	$17,%got(i64val2)($28)
	move	$16,$0
$L224:
	addu	$3,$18,$16
	lw	$25,%call16(__udivdi3)($28)
	addu	$2,$17,$16
	addu	$20,$19,$16
	lw	$4,0($3)
	lw	$5,4($3)
	lw	$6,0($2)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	lw	$7,4($2)

	addiu	$4,$16,8
	lw	$28,16($sp)
	addu	$7,$17,$4
	sw	$2,0($20)
	addu	$5,$18,$4
	sw	$3,4($20)
	addu	$20,$19,$4
	lw	$25,%call16(__udivdi3)($28)
	lw	$4,0($5)
	lw	$6,0($7)
	lw	$5,4($5)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	lw	$7,4($7)

	addiu	$6,$16,16
	lw	$28,16($sp)
	addu	$8,$18,$6
	sw	$2,0($20)
	addu	$9,$17,$6
	sw	$3,4($20)
	addu	$20,$19,$6
	lw	$4,0($8)
	lw	$5,4($8)
	lw	$6,0($9)
	lw	$25,%call16(__udivdi3)($28)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	lw	$7,4($9)

	addiu	$10,$16,24
	lw	$28,16($sp)
	addu	$11,$18,$10
	sw	$2,0($20)
	addu	$12,$17,$10
	sw	$3,4($20)
	addu	$20,$19,$10
	lw	$4,0($11)
	lw	$5,4($11)
	lw	$6,0($12)
	lw	$25,%call16(__udivdi3)($28)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	lw	$7,4($12)

	addiu	$13,$16,32
	lw	$28,16($sp)
	addu	$14,$18,$13
	sw	$2,0($20)
	addu	$15,$17,$13
	sw	$3,4($20)
	addu	$20,$19,$13
	lw	$25,%call16(__udivdi3)($28)
	lw	$4,0($14)
	lw	$5,4($14)
	lw	$6,0($15)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	lw	$7,4($15)

	addiu	$24,$16,40
	lw	$28,16($sp)
	addu	$5,$18,$24
	sw	$3,4($20)
	addu	$3,$17,$24
	sw	$2,0($20)
	addu	$20,$19,$24
	lw	$25,%call16(__udivdi3)($28)
	lw	$4,0($5)
	lw	$6,0($3)
	lw	$5,4($5)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	lw	$7,4($3)

	addiu	$7,$16,48
	lw	$28,16($sp)
	addiu	$16,$16,56
	addu	$4,$18,$7
	sw	$2,0($20)
	addu	$2,$17,$7
	sw	$3,4($20)
	addu	$20,$19,$7
	lw	$25,%call16(__udivdi3)($28)
	lw	$5,4($4)
	lw	$6,0($2)
	lw	$4,0($4)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	lw	$7,4($2)

	lw	$28,16($sp)
	sw	$2,0($20)
	bne	$16,$21,$L224
	sw	$3,4($20)

	addiu	$22,$22,1
	bne	$22,$23,$L224
	move	$16,$0

$L222:
	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	bench_i64_div
	.size	bench_i64_div, .-bench_i64_div
	.align	2
	.globl	bench_quake_sqrt
	.set	nomips16
	.set	nomicromips
	.ent	bench_quake_sqrt
	.type	bench_quake_sqrt, @function
bench_quake_sqrt:
	.frame	$sp,8,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x00030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	lui	$28,%hi(__gnu_local_gp)
	sw	$17,4($sp)
	move	$17,$4
	sw	$16,0($sp)
	beq	$4,$0,$L236
	addiu	$28,$28,%lo(__gnu_local_gp)

	lui	$2,%hi($LC0)
	lw	$14,%got(fval1)($28)
	lui	$3,%hi($LC1)
	lw	$13,%got(fresult)($28)
	lwc1	$f5,%lo($LC0)($2)
	li	$12,1597440000			# 0x5f370000
	move	$16,$0
	lwc1	$f4,%lo($LC1)($3)
	addiu	$12,$12,23007
	li	$4,7168			# 0x1c00
$L239:
	move	$2,$0
$L238:
	lwxc1	$f0,$14($2)
	addiu	$25,$2,4
	addiu	$24,$2,8
	addiu	$15,$2,12
	lwxc1	$f6,$14($25)
	lwxc1	$f1,$14($24)
	lwxc1	$f2,$14($15)
	mfc1	$11,$f0
	mfc1	$10,$f6
	sra	$7,$11,1
	mfc1	$9,$f1
	subu	$7,$12,$7
	sra	$6,$10,1
	mfc1	$8,$f2
	sra	$5,$9,1
	subu	$6,$12,$6
	sra	$3,$8,1
	mul.s	$f7,$f0,$f5
	subu	$5,$12,$5
	mtc1	$7,$f14
	subu	$3,$12,$3
	mul.s	$f9,$f6,$f5
	mul.s	$f11,$f1,$f5
	mul.s	$f13,$f2,$f5
	mtc1	$6,$f16
	mtc1	$5,$f18
	mtc1	$3,$f0
	mul.s	$f15,$f7,$f14
	mul.s	$f17,$f9,$f16
	mul.s	$f19,$f11,$f18
	mul.s	$f7,$f13,$f0
	mul.s	$f3,$f14,$f15
	mul.s	$f2,$f16,$f17
	mul.s	$f9,$f18,$f19
	mul.s	$f11,$f0,$f7
	sub.s	$f12,$f4,$f3
	mtc1	$7,$f6
	sub.s	$f13,$f4,$f2
	mtc1	$6,$f1
	mtc1	$5,$f8
	mtc1	$3,$f10
	sub.s	$f14,$f4,$f9
	sub.s	$f15,$f4,$f11
	mul.s	$f17,$f6,$f12
	mtc1	$11,$f3
	mul.s	$f19,$f1,$f13
	mul.s	$f7,$f8,$f14
	mtc1	$10,$f1
	mul.s	$f8,$f10,$f15
	mtc1	$8,$f12
	mtc1	$9,$f10
	mul.s	$f9,$f3,$f17
	mul.s	$f2,$f1,$f19
	mul.s	$f13,$f12,$f8
	mul.s	$f11,$f10,$f7
	swxc1	$f9,$13($2)
	addiu	$2,$2,16
	swxc1	$f2,$13($25)
	swxc1	$f11,$13($24)
	bne	$2,$4,$L238
	swxc1	$f13,$13($15)

	addiu	$16,$16,1
	bne	$16,$17,$L239
	nop

$L236:
	lw	$17,4($sp)
	lw	$16,0($sp)
	j	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	bench_quake_sqrt
	.size	bench_quake_sqrt, .-bench_quake_sqrt
	.align	2
	.globl	bench_float_sqrt
	.set	nomips16
	.set	nomicromips
	.ent	bench_float_sqrt
	.type	bench_float_sqrt, @function
bench_float_sqrt:
	.frame	$sp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L292
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$23,56($sp)
	move	$23,$0
	sw	$22,52($sp)
	li	$22,7168			# 0x1c00
	sw	$20,44($sp)
	move	$20,$4
	sw	$31,60($sp)
	sw	$21,48($sp)
	sw	$19,40($sp)
	sw	$16,28($sp)
	.cprestore	16
	lw	$18,%got(fval1)($28)
	lw	$17,%got(fresult)($28)
	move	$19,$0
$L250:
	lwxc1	$f12,$18($19)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc0,$f0,$f0
	bc1f	$fcc0,$L276
	lw	$25,%call16(sqrtf)($28)

	addiu	$16,$19,4
$L284:
	swxc1	$f0,$17($19)
	lwxc1	$f12,$18($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1f	$fcc1,$L277
	lw	$25,%call16(sqrtf)($28)

	addiu	$19,$16,4
$L285:
	swxc1	$f0,$17($16)
	lwxc1	$f12,$18($19)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1f	$fcc2,$L278
	lw	$25,%call16(sqrtf)($28)

	addiu	$21,$16,8
$L286:
	swxc1	$f0,$17($19)
	lwxc1	$f12,$18($21)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1f	$fcc3,$L279
	lw	$25,%call16(sqrtf)($28)

	addiu	$19,$16,12
$L287:
	swxc1	$f0,$17($21)
	lwxc1	$f12,$18($19)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1f	$fcc4,$L280
	lw	$25,%call16(sqrtf)($28)

	addiu	$21,$16,16
$L288:
	swxc1	$f0,$17($19)
	lwxc1	$f12,$18($21)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1f	$fcc5,$L281
	lw	$25,%call16(sqrtf)($28)

	addiu	$19,$16,20
$L289:
	swxc1	$f0,$17($21)
	lwxc1	$f12,$18($19)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1f	$fcc6,$L282
	lw	$25,%call16(sqrtf)($28)

	addiu	$21,$16,24
$L290:
	swxc1	$f0,$17($19)
	lwxc1	$f12,$18($21)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1f	$fcc7,$L283
	lw	$25,%call16(sqrtf)($28)

	addiu	$19,$16,28
$L291:
	bne	$19,$22,$L250
	swxc1	$f0,$17($21)

	addiu	$23,$23,1
	bne	$23,$20,$L250
	move	$19,$0

	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,64

$L292:
	j	$31
	nop

$L276:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$16,$19,4

	.option	pic0
	j	$L284
	.option	pic2
	lw	$28,16($sp)

$L277:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$19,$16,4

	.option	pic0
	j	$L285
	.option	pic2
	lw	$28,16($sp)

$L278:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$21,$16,8

	.option	pic0
	j	$L286
	.option	pic2
	lw	$28,16($sp)

$L279:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$19,$16,12

	.option	pic0
	j	$L287
	.option	pic2
	lw	$28,16($sp)

$L280:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$21,$16,16

	.option	pic0
	j	$L288
	.option	pic2
	lw	$28,16($sp)

$L281:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$19,$16,20

	.option	pic0
	j	$L289
	.option	pic2
	lw	$28,16($sp)

$L282:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$21,$16,24

	.option	pic0
	j	$L290
	.option	pic2
	lw	$28,16($sp)

$L283:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$19,$16,28

	.option	pic0
	j	$L291
	.option	pic2
	lw	$28,16($sp)

	.set	macro
	.set	reorder
	.end	bench_float_sqrt
	.size	bench_float_sqrt, .-bench_float_sqrt
	.align	2
	.globl	bench_double_sqrt
	.set	nomips16
	.set	nomicromips
	.ent	bench_double_sqrt
	.type	bench_double_sqrt, @function
bench_double_sqrt:
	.frame	$sp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,44($sp)
	sll	$20,$4,1
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	beq	$20,$0,$L293
	.cprestore	16

	lw	$18,%got(dval1)($28)
	move	$23,$0
	lw	$17,%got(dresult)($28)
	li	$22,7168			# 0x1c00
	move	$19,$0
$L296:
	ldxc1	$f12,$18($19)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc0,$f0,$f0
	bc1f	$fcc0,$L320
	lw	$25,%call16(sqrt)($28)

	addiu	$16,$19,8
$L328:
	sdxc1	$f0,$17($19)
	ldxc1	$f12,$18($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1f	$fcc1,$L321
	lw	$25,%call16(sqrt)($28)

	addiu	$19,$16,8
$L329:
	sdxc1	$f0,$17($16)
	ldxc1	$f12,$18($19)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1f	$fcc2,$L322
	lw	$25,%call16(sqrt)($28)

	addiu	$21,$16,16
$L330:
	sdxc1	$f0,$17($19)
	ldxc1	$f12,$18($21)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1f	$fcc3,$L323
	lw	$25,%call16(sqrt)($28)

	addiu	$19,$16,24
$L331:
	sdxc1	$f0,$17($21)
	ldxc1	$f12,$18($19)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1f	$fcc4,$L324
	lw	$25,%call16(sqrt)($28)

	addiu	$21,$16,32
$L332:
	sdxc1	$f0,$17($19)
	ldxc1	$f12,$18($21)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1f	$fcc5,$L325
	lw	$25,%call16(sqrt)($28)

	addiu	$19,$16,40
$L333:
	sdxc1	$f0,$17($21)
	ldxc1	$f12,$18($19)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1f	$fcc6,$L326
	lw	$25,%call16(sqrt)($28)

	addiu	$21,$16,48
$L334:
	sdxc1	$f0,$17($19)
	ldxc1	$f12,$18($21)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1f	$fcc7,$L327
	lw	$25,%call16(sqrt)($28)

	addiu	$19,$16,56
$L335:
	bne	$19,$22,$L296
	sdxc1	$f0,$17($21)

	addiu	$23,$23,1
	bne	$23,$20,$L296
	move	$19,$0

$L293:
	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,64

$L320:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$16,$19,8

	.option	pic0
	j	$L328
	.option	pic2
	lw	$28,16($sp)

$L321:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$19,$16,8

	.option	pic0
	j	$L329
	.option	pic2
	lw	$28,16($sp)

$L322:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$21,$16,16

	.option	pic0
	j	$L330
	.option	pic2
	lw	$28,16($sp)

$L323:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$19,$16,24

	.option	pic0
	j	$L331
	.option	pic2
	lw	$28,16($sp)

$L324:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$21,$16,32

	.option	pic0
	j	$L332
	.option	pic2
	lw	$28,16($sp)

$L325:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$19,$16,40

	.option	pic0
	j	$L333
	.option	pic2
	lw	$28,16($sp)

$L326:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$21,$16,48

	.option	pic0
	j	$L334
	.option	pic2
	lw	$28,16($sp)

$L327:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$19,$16,56

	.option	pic0
	j	$L335
	.option	pic2
	lw	$28,16($sp)

	.set	macro
	.set	reorder
	.end	bench_double_sqrt
	.size	bench_double_sqrt, .-bench_double_sqrt
	.align	2
	.globl	fpsqrt
	.set	nomips16
	.set	nomicromips
	.ent	fpsqrt
	.type	fpsqrt, @function
fpsqrt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,1073741824			# 0x40000000
	sltu	$3,$4,$2
	bne	$3,$0,$L353
	li	$6,268435456			# 0x10000000

	subu	$4,$4,$2
	li	$6,1342177280			# 0x50000000
	li	$3,65536			# 0x10000
$L337:
	sltu	$5,$4,$6
	bne	$5,$0,$L354
	addiu	$7,$3,8192

	subu	$4,$4,$6
	ori	$3,$3,0x8000
	addiu	$7,$3,8192
$L354:
	sll	$8,$7,13
	sltu	$9,$4,$8
	bne	$9,$0,$L355
	addiu	$10,$3,4096

	subu	$4,$4,$8
	ori	$3,$3,0x4000
	addiu	$10,$3,4096
$L355:
	sll	$11,$10,12
	sltu	$12,$4,$11
	bne	$12,$0,$L356
	addiu	$13,$3,2048

	subu	$4,$4,$11
	ori	$3,$3,0x2000
	addiu	$13,$3,2048
$L356:
	sll	$14,$13,11
	sltu	$15,$4,$14
	bne	$15,$0,$L357
	addiu	$24,$3,1024

	subu	$4,$4,$14
	ori	$3,$3,0x1000
	addiu	$24,$3,1024
$L357:
	sll	$25,$24,10
	sltu	$2,$4,$25
	bne	$2,$0,$L358
	addiu	$6,$3,512

	subu	$4,$4,$25
	ori	$3,$3,0x800
	addiu	$6,$3,512
$L358:
	sll	$7,$6,9
	sltu	$5,$4,$7
	bne	$5,$0,$L359
	addiu	$8,$3,256

	subu	$4,$4,$7
	ori	$3,$3,0x400
	addiu	$8,$3,256
$L359:
	sll	$9,$8,8
	sltu	$10,$4,$9
	bne	$10,$0,$L360
	addiu	$11,$3,128

	subu	$4,$4,$9
	ori	$3,$3,0x200
	addiu	$11,$3,128
$L360:
	sll	$12,$11,7
	sltu	$13,$4,$12
	bne	$13,$0,$L361
	addiu	$14,$3,64

	subu	$4,$4,$12
	ori	$3,$3,0x100
	addiu	$14,$3,64
$L361:
	sll	$15,$14,6
	sltu	$24,$4,$15
	bne	$24,$0,$L362
	addiu	$25,$3,32

	subu	$4,$4,$15
	ori	$3,$3,0x80
	addiu	$25,$3,32
$L362:
	sll	$2,$25,5
	sltu	$6,$4,$2
	bne	$6,$0,$L363
	addiu	$7,$3,16

	subu	$4,$4,$2
	ori	$3,$3,0x40
	addiu	$7,$3,16
$L363:
	sll	$8,$7,4
	sltu	$5,$4,$8
	bne	$5,$0,$L364
	addiu	$9,$3,8

	subu	$4,$4,$8
	ori	$3,$3,0x20
	addiu	$9,$3,8
$L364:
	sll	$10,$9,3
	sltu	$11,$4,$10
	bne	$11,$0,$L365
	addiu	$12,$3,4

	subu	$4,$4,$10
	ori	$3,$3,0x10
	addiu	$12,$3,4
$L365:
	sll	$13,$12,2
	sltu	$14,$4,$13
	bne	$14,$0,$L366
	addiu	$15,$3,2

	subu	$4,$4,$13
	ori	$3,$3,0x8
	addiu	$15,$3,2
$L366:
	sll	$24,$15,1
	sltu	$25,$4,$24
	bne	$25,$0,$L351
	nop

	subu	$4,$4,$24
	ori	$3,$3,0x4
$L351:
	addiu	$2,$3,1
	ori	$6,$3,0x2
	sltu	$4,$4,$2
	move	$7,$3
	movz	$7,$6,$4
	j	$31
	sll	$2,$7,7

$L353:
	.option	pic0
	j	$L337
	.option	pic2
	move	$3,$0

	.set	macro
	.set	reorder
	.end	fpsqrt
	.size	fpsqrt, .-fpsqrt
	.align	2
	.globl	bench_fixed_sqrt
	.set	nomips16
	.set	nomicromips
	.ent	bench_fixed_sqrt
	.type	bench_fixed_sqrt, @function
bench_fixed_sqrt:
	.frame	$sp,72,$31		# vars= 8, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L383
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-72
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	sw	$31,68($sp)
	sw	$fp,64($sp)
	sw	$23,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	.cprestore	16
	sw	$4,28($sp)
	sw	$0,24($sp)
	lw	$17,%got(xval1)($28)
	lw	$16,%got(xresult)($28)
$L370:
	move	$fp,$0
$L369:
	addu	$2,$17,$fp
	addiu	$23,$fp,4
	addiu	$22,$fp,8
	lw	$4,0($2)
	addiu	$21,$fp,12
	addiu	$20,$fp,16
	.option	pic0
	jal	fpsqrt
	.option	pic2
	addiu	$19,$fp,20

	addu	$4,$17,$23
	addu	$5,$16,$fp
	addiu	$18,$fp,24
	lw	$4,0($4)
	addiu	$fp,$fp,28
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,0($5)

	addu	$3,$17,$22
	addu	$6,$16,$23
	lw	$4,0($3)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,0($6)

	addu	$7,$17,$21
	addu	$8,$16,$22
	lw	$4,0($7)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,0($8)

	addu	$9,$17,$20
	addu	$10,$16,$21
	lw	$4,0($9)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,0($10)

	addu	$11,$17,$19
	addu	$12,$16,$20
	lw	$4,0($11)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,0($12)

	addu	$13,$17,$18
	addu	$14,$16,$19
	lw	$4,0($13)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,0($14)

	addu	$15,$16,$18
	li	$24,7168			# 0x1c00
	bne	$fp,$24,$L369
	sw	$2,0($15)

	lw	$25,24($sp)
	lw	$fp,28($sp)
	addiu	$31,$25,1
	bne	$31,$fp,$L370
	sw	$31,24($sp)

	lw	$31,68($sp)
	lw	$fp,64($sp)
	lw	$23,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	j	$31
	addiu	$sp,$sp,72

$L383:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_fixed_sqrt
	.size	bench_fixed_sqrt, .-bench_fixed_sqrt
	.align	2
	.globl	magic_sqrt
	.set	nomips16
	.set	nomicromips
	.ent	magic_sqrt
	.type	magic_sqrt, @function
magic_sqrt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi($LC0)
	mfc1	$4,$f12
	li	$5,1597440000			# 0x5f370000
	lwc1	$f0,%lo($LC0)($3)
	sra	$2,$4,1
	addiu	$6,$5,23007
	lui	$8,%hi($LC1)
	subu	$7,$6,$2
	lwc1	$f5,%lo($LC1)($8)
	mtc1	$7,$f1
	mul.s	$f2,$f12,$f0
	mul.s	$f3,$f2,$f1
	mul.s	$f4,$f1,$f3
	sub.s	$f6,$f5,$f4
	mul.s	$f8,$f1,$f6
	j	$31
	mul.s	$f0,$f12,$f8

	.set	macro
	.set	reorder
	.end	magic_sqrt
	.size	magic_sqrt, .-magic_sqrt
	.align	2
	.globl	approximate_double_sqrt
	.set	nomips16
	.set	nomicromips
	.ent	approximate_double_sqrt
	.type	approximate_double_sqrt, @function
approximate_double_sqrt:
	.frame	$sp,16,$31		# vars= 8, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	lui	$3,%hi($LC2)
	sdc1	$f12,8($sp)
	li	$5,-1077084160			# 0xffffffffbfcd0000
	lui	$2,%hi($LC3)
	ldc1	$f8,%lo($LC2)($3)
	ori	$6,$5,0xd90a
	lw	$4,12($sp)
	ldc1	$f10,%lo($LC3)($2)
	subu	$7,$6,$4
	srl	$8,$7,1
	mul.d	$f14,$f12,$f8
	sw	$8,12($sp)
	ldc1	$f2,8($sp)
	addiu	$sp,$sp,16
	mul.d	$f6,$f2,$f14
	mul.d	$f0,$f2,$f2
	mul.d	$f4,$f0,$f6
	msub.d	$f16,$f4,$f2,$f10
	mul.d	$f8,$f16,$f14
	mul.d	$f18,$f16,$f16
	mul.d	$f2,$f18,$f8
	msub.d	$f6,$f2,$f16,$f10
	mul.d	$f4,$f6,$f14
	mul.d	$f0,$f6,$f6
	mul.d	$f16,$f0,$f4
	msub.d	$f18,$f16,$f6,$f10
	mul.d	$f2,$f18,$f14
	mul.d	$f8,$f18,$f18
	mul.d	$f6,$f8,$f2
	msub.d	$f4,$f6,$f18,$f10
	mul.d	$f0,$f4,$f4
	mul.d	$f14,$f4,$f14
	mul.d	$f16,$f0,$f14
	msub.d	$f10,$f16,$f4,$f10
	j	$31
	mul.d	$f0,$f10,$f12

	.set	macro
	.set	reorder
	.end	approximate_double_sqrt
	.size	approximate_double_sqrt, .-approximate_double_sqrt
	.align	2
	.globl	bench_approximate_double_sqrt
	.set	nomips16
	.set	nomicromips
	.ent	bench_approximate_double_sqrt
	.type	bench_approximate_double_sqrt, @function
bench_approximate_double_sqrt:
	.frame	$sp,72,$31		# vars= 8, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	sll	$4,$4,1
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	sw	$23,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	.cprestore	16
	beq	$4,$0,$L388
	sw	$4,28($sp)

	lw	$17,%got(dval1)($28)
	lw	$16,%got(dresult)($28)
	sw	$0,24($sp)
$L391:
	move	$fp,$0
$L390:
	ldxc1	$f12,$17($fp)
	addiu	$23,$fp,8
	addiu	$22,$fp,16
	addiu	$21,$fp,24
	addiu	$20,$fp,32
	addiu	$19,$fp,40
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	addiu	$18,$fp,48

	ldxc1	$f12,$17($23)
	sdxc1	$f0,$16($fp)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	addiu	$fp,$fp,56

	ldxc1	$f12,$17($22)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdxc1	$f0,$16($23)

	ldxc1	$f12,$17($21)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdxc1	$f0,$16($22)

	ldxc1	$f12,$17($20)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdxc1	$f0,$16($21)

	ldxc1	$f12,$17($19)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdxc1	$f0,$16($20)

	ldxc1	$f12,$17($18)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdxc1	$f0,$16($19)

	li	$2,7168			# 0x1c00
	bne	$fp,$2,$L390
	sdxc1	$f0,$16($18)

	lw	$3,24($sp)
	lw	$6,28($sp)
	addiu	$5,$3,1
	bne	$5,$6,$L391
	sw	$5,24($sp)

$L388:
	lw	$31,68($sp)
	lw	$fp,64($sp)
	lw	$23,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	bench_approximate_double_sqrt
	.size	bench_approximate_double_sqrt, .-bench_approximate_double_sqrt
	.align	2
	.globl	timer
	.set	nomips16
	.set	nomicromips
	.ent	timer
	.type	timer, @function
timer:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,36($sp)
	sw	$0,24($sp)
	.cprestore	16
	bne	$4,$0,$L406
	sw	$0,28($sp)

	lw	$25,%call16(gettimeofday)($28)
	addiu	$4,$sp,24
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lui	$2,%hi(begin_time.3629)
	lw	$7,28($sp)
	li	$6,983040			# 0xf0000
	lw	$5,24($sp)
	li	$9,-1048576			# 0xfffffffffff00000
	lw	$3,%lo(begin_time.3629)($2)
	addiu	$8,$6,16960
	mtlo	$7
	lw	$31,36($sp)
	ori	$10,$9,0xbdc0
	addiu	$4,$2,%lo(begin_time.3629)
	lw	$12,4($4)
	addiu	$sp,$sp,40
	madd	$5,$8
	madd	$3,$10
	mflo	$11
	subu	$2,$11,$12
	j	$31
	sra	$3,$2,31

$L406:
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	li	$13,458752			# 0x70000
	lw	$28,16($sp)
	lw	$25,%call16(usleep)($28)
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$13,0xa120

	lui	$14,%hi(begin_time.3629)
	lw	$28,16($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$14,%lo(begin_time.3629)

	move	$2,$0
	lw	$31,36($sp)
	move	$3,$0
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	timer
	.size	timer, .-timer
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC4:
	.ascii	"AVG: %llu usecs, or %f secs.\012\000"
	.globl	__floatundidf
	.text
	.align	2
	.globl	avg_of_3_runs
	.set	nomips16
	.set	nomicromips
	.ent	avg_of_3_runs
	.type	avg_of_3_runs, @function
avg_of_3_runs:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,48($sp)
	move	$19,$4
	li	$4,1			# 0x1
	sw	$20,52($sp)
	move	$20,$5
	sw	$31,60($sp)
	.cprestore	24
	sw	$21,56($sp)
	sw	$18,44($sp)
	sw	$17,40($sp)
	.option	pic0
	jal	timer
	.option	pic2
	sw	$16,36($sp)

	move	$25,$19
	jalr	$25
	move	$4,$20

	.option	pic0
	jal	timer
	.option	pic2
	move	$4,$0

	li	$4,1			# 0x1
	move	$17,$2
	.option	pic0
	jal	timer
	.option	pic2
	move	$21,$3

	move	$25,$19
	jalr	$25
	move	$4,$20

	.option	pic0
	jal	timer
	.option	pic2
	move	$4,$0

	li	$4,1			# 0x1
	move	$16,$2
	.option	pic0
	jal	timer
	.option	pic2
	move	$18,$3

	move	$25,$19
	jalr	$25
	move	$4,$20

	.option	pic0
	jal	timer
	.option	pic2
	move	$4,$0

	addu	$8,$16,$17
	addu	$4,$18,$21
	lw	$28,24($sp)
	sltu	$5,$8,$16
	addu	$9,$5,$4
	addu	$4,$8,$2
	addu	$2,$9,$3
	lw	$25,%call16(__udivdi3)($28)
	sltu	$3,$4,$8
	li	$6,3			# 0x3
	move	$7,$0
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$3,$2

	lw	$28,24($sp)
	move	$5,$3
	move	$4,$2
	move	$19,$2
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	move	$20,$3

	lui	$11,%hi($LC5)
	lw	$28,24($sp)
	lui	$10,%hi($LC4)
	ldc1	$f2,%lo($LC5)($11)
	move	$6,$19
	addiu	$4,$10,%lo($LC4)
	move	$7,$20
	lw	$25,%call16(printf)($28)
	div.d	$f0,$f0,$f2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f0,16($sp)

	move	$2,$19
	lw	$31,60($sp)
	move	$3,$20
	lw	$21,56($sp)
	lw	$20,52($sp)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	avg_of_3_runs
	.size	avg_of_3_runs, .-avg_of_3_runs
	.align	2
	.globl	fill_float_array
	.set	nomips16
	.set	nomicromips
	.ent	fill_float_array
	.type	fill_float_array, @function
fill_float_array:
	.frame	$sp,72,$31		# vars= 8, regs= 3/6, args= 16, gp= 8
	.mask	0x80030000,-28
	.fmask	0x03f00000,-8
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	lui	$2,%hi($LC6)
	sdc1	$f22,56($sp)
	mtc1	$6,$f22
	lui	$28,%hi(__gnu_local_gp)
	sw	$17,40($sp)
	addiu	$17,$4,7168
	sdc1	$f24,64($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,36($sp)
	move	$16,$4
	sdc1	$f20,48($sp)
	sw	$31,44($sp)
	ldc1	$f20,88($sp)
	.cprestore	16
	mtc1	$7,$f23
	ldc1	$f24,%lo($LC6)($2)
$L414:
	lw	$25,%call16(drand48)($28)
	.reloc	1f,R_MIPS_JALR,drand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
	swc1	$f0,24($sp)
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	swc1	$f1,28($sp)

	mov.d	$f2,$f20
	lwc1	$f0,24($sp)
	andi	$3,$2,0x1
	lwc1	$f1,28($sp)
	movn.d	$f2,$f24,$3
	mul.d	$f0,$f2,$f0
	c.lt.d	$fcc0,$f0,$f22
	bc1f	$fcc0,$L411
	lw	$28,16($sp)

$L416:
	lw	$25,%call16(drand48)($28)
	.reloc	1f,R_MIPS_JALR,drand48
1:	jalr	$25
	nop

	mul.d	$f0,$f0,$f20
	c.lt.d	$fcc1,$f0,$f22
	bc1t	$fcc1,$L416
	lw	$28,16($sp)

$L411:
	cvt.s.d	$f0,$f0
	addiu	$16,$16,4
	bne	$16,$17,$L414
	swc1	$f0,-4($16)

	lw	$31,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	ldc1	$f24,64($sp)
	ldc1	$f22,56($sp)
	ldc1	$f20,48($sp)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	fill_float_array
	.size	fill_float_array, .-fill_float_array
	.align	2
	.globl	fill_fixed_array_from_float_array
	.set	nomips16
	.set	nomicromips
	.ent	fill_fixed_array_from_float_array
	.type	fill_fixed_array_from_float_array, @function
fill_fixed_array_from_float_array:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi($LC7)
	addiu	$sp,$sp,-8
	lwc1	$f0,%lo($LC7)($3)
	move	$2,$0
	li	$13,7168			# 0x1c00
	sw	$16,4($sp)
$L421:
	addiu	$6,$2,4
	lwxc1	$f8,$5($2)
	addiu	$8,$2,8
	addiu	$15,$2,12
	lwxc1	$f7,$5($6)
	addiu	$14,$2,16
	addiu	$12,$2,20
	lwxc1	$f5,$5($15)
	addiu	$11,$2,24
	addiu	$10,$2,28
	lwxc1	$f4,$5($14)
	addu	$7,$4,$2
	lwxc1	$f6,$5($8)
	mul.s	$f9,$f8,$f0
	addu	$6,$4,$6
	addu	$3,$4,$8
	lwxc1	$f3,$5($12)
	mul.s	$f10,$f7,$f0
	addu	$15,$4,$15
	addu	$14,$4,$14
	lwxc1	$f2,$5($11)
	mul.s	$f12,$f5,$f0
	addu	$12,$4,$12
	addu	$11,$4,$11
	lwxc1	$f1,$5($10)
	mul.s	$f13,$f4,$f0
	addu	$10,$4,$10
	addiu	$2,$2,32
	mul.s	$f11,$f6,$f0
	mul.s	$f14,$f3,$f0
	mul.s	$f15,$f2,$f0
	mul.s	$f16,$f1,$f0
	trunc.w.s $f17,$f9
	trunc.w.s $f18,$f10
	trunc.w.s $f19,$f11
	trunc.w.s $f8,$f12
	trunc.w.s $f7,$f13
	swc1	$f17,0($7)
	trunc.w.s $f6,$f14
	swc1	$f18,0($6)
	trunc.w.s $f5,$f15
	swc1	$f19,0($3)
	trunc.w.s $f4,$f16
	swc1	$f8,0($15)
	swc1	$f7,0($14)
	swc1	$f6,0($12)
	swc1	$f5,0($11)
	bne	$2,$13,$L421
	swc1	$f4,0($10)

	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	fill_fixed_array_from_float_array
	.size	fill_fixed_array_from_float_array, .-fill_fixed_array_from_float_array
	.align	2
	.globl	fill_double_array
	.set	nomips16
	.set	nomicromips
	.ent	fill_double_array
	.type	fill_double_array, @function
fill_double_array:
	.frame	$sp,72,$31		# vars= 8, regs= 3/6, args= 16, gp= 8
	.mask	0x80030000,-28
	.fmask	0x03f00000,-8
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	lui	$2,%hi($LC6)
	sdc1	$f22,56($sp)
	mtc1	$6,$f22
	lui	$28,%hi(__gnu_local_gp)
	sw	$17,40($sp)
	addiu	$17,$4,7168
	sdc1	$f24,64($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,36($sp)
	move	$16,$4
	sdc1	$f20,48($sp)
	sw	$31,44($sp)
	ldc1	$f20,88($sp)
	.cprestore	16
	mtc1	$7,$f23
	ldc1	$f24,%lo($LC6)($2)
	lw	$25,%call16(drand48)($28)
$L442:
	.reloc	1f,R_MIPS_JALR,drand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
	swc1	$f0,24($sp)
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	swc1	$f1,28($sp)

	mov.d	$f2,$f20
	lwc1	$f0,24($sp)
	andi	$3,$2,0x1
	lwc1	$f1,28($sp)
	movn.d	$f2,$f24,$3
	mul.d	$f0,$f2,$f0
	c.lt.d	$fcc0,$f0,$f22
	bc1f	$fcc0,$L433
	lw	$28,16($sp)

$L438:
	lw	$25,%call16(drand48)($28)
	.reloc	1f,R_MIPS_JALR,drand48
1:	jalr	$25
	nop

	mul.d	$f0,$f0,$f20
	c.lt.d	$fcc1,$f0,$f22
	bc1t	$fcc1,$L438
	lw	$28,16($sp)

$L433:
	sdc1	$f0,0($16)
	addiu	$16,$16,8
	bne	$16,$17,$L442
	lw	$25,%call16(drand48)($28)

	lw	$31,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	ldc1	$f24,64($sp)
	ldc1	$f22,56($sp)
	ldc1	$f20,48($sp)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	fill_double_array
	.size	fill_double_array, .-fill_double_array
	.align	2
	.globl	fill_i32_array
	.set	nomips16
	.set	nomicromips
	.ent	fill_i32_array
	.type	fill_i32_array, @function
fill_i32_array:
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,36($sp)
	li	$19,-2147483648			# 0xffffffff80000000
	sw	$17,28($sp)
	li	$17,65536			# 0x10000
	sw	$22,48($sp)
	ori	$19,$19,0xffff
	sw	$21,44($sp)
	move	$22,$4
	sw	$20,40($sp)
	li	$21,-65536			# 0xffffffffffff0000
	sw	$18,32($sp)
	addiu	$20,$4,7168
	sw	$31,52($sp)
	li	$18,1			# 0x1
	sw	$16,24($sp)
	sltu	$17,$5,$17
	.option	pic0
	j	$L448
	.option	pic2
	.cprestore	16

$L497:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L445:
	movz	$2,$18,$2
	addiu	$16,$22,4
	bne	$17,$0,$L451
	sw	$2,0($22)

$L498:
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L471:
	movz	$2,$18,$2
	lw	$25,%call16(lrand48)($28)
	beq	$17,$0,$L472
	sw	$2,0($16)

$L499:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bltz	$2,$L491
	lw	$28,16($sp)

$L474:
	movz	$2,$18,$2
	lw	$25,%call16(lrand48)($28)
	beq	$17,$0,$L475
	sw	$2,4($16)

$L500:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bltz	$2,$L492
	lw	$28,16($sp)

$L477:
	movz	$2,$18,$2
	lw	$25,%call16(lrand48)($28)
	beq	$17,$0,$L478
	sw	$2,8($16)

$L501:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bltz	$2,$L493
	lw	$28,16($sp)

$L480:
	movz	$2,$18,$2
	lw	$25,%call16(lrand48)($28)
	beq	$17,$0,$L481
	sw	$2,12($16)

$L502:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bltz	$2,$L494
	lw	$28,16($sp)

$L483:
	movz	$2,$18,$2
	lw	$25,%call16(lrand48)($28)
	beq	$17,$0,$L484
	sw	$2,16($16)

$L503:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bltz	$2,$L495
	lw	$28,16($sp)

$L486:
	movz	$2,$18,$2
	addiu	$22,$16,24
	beq	$22,$20,$L496
	sw	$2,20($16)

$L448:
	beq	$17,$0,$L497
	lw	$25,%call16(lrand48)($28)

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bgez	$2,$L445
	lw	$28,16($sp)

	addiu	$2,$2,-1
	addiu	$16,$22,4
	or	$3,$2,$21
	addiu	$2,$3,1
	movz	$2,$18,$2
	beq	$17,$0,$L498
	sw	$2,0($22)

$L451:
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bgez	$2,$L471
	lw	$28,16($sp)

	addiu	$4,$2,-1
	lw	$25,%call16(lrand48)($28)
	or	$5,$4,$21
	addiu	$2,$5,1
	movz	$2,$18,$2
	bne	$17,$0,$L499
	sw	$2,0($16)

$L472:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	movz	$2,$18,$2
	lw	$28,16($sp)
	sw	$2,4($16)
	bne	$17,$0,$L500
	lw	$25,%call16(lrand48)($28)

$L475:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	movz	$2,$18,$2
	lw	$28,16($sp)
	sw	$2,8($16)
	bne	$17,$0,$L501
	lw	$25,%call16(lrand48)($28)

$L478:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	movz	$2,$18,$2
	lw	$28,16($sp)
	sw	$2,12($16)
	bne	$17,$0,$L502
	lw	$25,%call16(lrand48)($28)

$L481:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	movz	$2,$18,$2
	lw	$28,16($sp)
	sw	$2,16($16)
	bne	$17,$0,$L503
	lw	$25,%call16(lrand48)($28)

$L484:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	addiu	$22,$16,24

	movz	$2,$18,$2
	lw	$28,16($sp)
	bne	$22,$20,$L448
	sw	$2,20($16)

$L496:
	lw	$31,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,56

$L492:
	addiu	$8,$2,-1
	or	$9,$8,$21
	.option	pic0
	j	$L477
	.option	pic2
	addiu	$2,$9,1

$L491:
	addiu	$6,$2,-1
	or	$7,$6,$21
	.option	pic0
	j	$L474
	.option	pic2
	addiu	$2,$7,1

$L495:
	addiu	$14,$2,-1
	or	$15,$14,$21
	.option	pic0
	j	$L486
	.option	pic2
	addiu	$2,$15,1

$L494:
	addiu	$12,$2,-1
	or	$13,$12,$21
	.option	pic0
	j	$L483
	.option	pic2
	addiu	$2,$13,1

$L493:
	addiu	$10,$2,-1
	or	$11,$10,$21
	.option	pic0
	j	$L480
	.option	pic2
	addiu	$2,$11,1

	.set	macro
	.set	reorder
	.end	fill_i32_array
	.size	fill_i32_array, .-fill_i32_array
	.align	2
	.globl	fill_i64_array
	.set	nomips16
	.set	nomicromips
	.ent	fill_i64_array
	.type	fill_i64_array, @function
fill_i64_array:
	.frame	$sp,64,$31		# vars= 0, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,36($sp)
	li	$19,65536			# 0x10000
	sw	$17,28($sp)
	li	$17,-2147483648			# 0xffffffff80000000
	sw	$20,40($sp)
	li	$20,-65536			# 0xffffffffffff0000
	sw	$18,32($sp)
	addiu	$18,$4,7168
	sw	$22,48($sp)
	sltu	$19,$6,$19
	sw	$16,24($sp)
	move	$22,$4
	sw	$31,60($sp)
	move	$16,$7
	sw	$fp,56($sp)
	ori	$17,$17,0xffff
	sw	$23,52($sp)
	sw	$21,44($sp)
	.cprestore	16
$L513:
	bne	$16,$0,$L546
	lw	$25,%call16(lrand48)($28)

	bne	$19,$0,$L531
	nop

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sra	$4,$2,31
$L507:
	li	$7,1			# 0x1
	or	$6,$2,$4
	movz	$2,$7,$6
	addiu	$21,$22,8
	movz	$4,$0,$6
	sw	$2,0($22)
	bne	$16,$0,$L547
	sw	$4,4($22)

$L532:
	beq	$19,$0,$L519
	lw	$25,%call16(lrand48)($28)

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$17
	bltz	$2,$L548
	lw	$28,16($sp)

$L541:
	sra	$12,$2,31
	lw	$25,%call16(lrand48)($28)
	li	$14,1			# 0x1
	or	$13,$2,$12
	movz	$2,$14,$13
	addiu	$fp,$21,8
	movz	$12,$0,$13
	sw	$2,0($21)
	bne	$16,$0,$L522
	sw	$12,4($21)

$L552:
	beq	$19,$0,$L523
	nop

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$17
	bltz	$2,$L549
	lw	$28,16($sp)

$L542:
	sra	$4,$2,31
	lw	$25,%call16(lrand48)($28)
	li	$5,1			# 0x1
	or	$31,$2,$4
	movz	$2,$5,$31
	addiu	$23,$21,16
	movz	$4,$0,$31
	sw	$2,8($21)
	bne	$16,$0,$L526
	sw	$4,4($fp)

$L553:
	beq	$19,$0,$L527
	nop

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$17
	bltz	$2,$L550
	lw	$28,16($sp)

$L543:
	sra	$9,$2,31
$L538:
	li	$11,1			# 0x1
	or	$10,$2,$9
	movz	$2,$11,$10
	addiu	$22,$21,24
	movz	$9,$0,$10
	sw	$2,16($21)
	bne	$22,$18,$L513
	sw	$9,4($23)

	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,64

$L550:
	addiu	$2,$2,-1
	or	$7,$2,$20
	.option	pic0
	j	$L543
	.option	pic2
	addiu	$2,$7,1

$L549:
	addiu	$23,$2,-1
	or	$24,$23,$20
	.option	pic0
	j	$L542
	.option	pic2
	addiu	$2,$24,1

$L548:
	addiu	$9,$2,-1
	or	$10,$9,$20
	.option	pic0
	j	$L541
	.option	pic2
	addiu	$2,$10,1

$L531:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$17
	bltz	$2,$L551
	lw	$28,16($sp)

	sra	$4,$2,31
$L554:
	li	$7,1			# 0x1
	or	$6,$2,$4
	movz	$2,$7,$6
	addiu	$21,$22,8
	movz	$4,$0,$6
	sw	$2,0($22)
	beq	$16,$0,$L532
	sw	$4,4($22)

$L547:
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	addiu	$fp,$21,8

	lw	$28,16($sp)
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	move	$22,$2

	li	$14,1			# 0x1
	sra	$11,$2,31
	lw	$28,16($sp)
	or	$12,$22,$11
	or	$13,$2,$12
	movz	$2,$14,$13
	movz	$12,$0,$13
	lw	$25,%call16(lrand48)($28)
	sw	$2,0($21)
	beq	$16,$0,$L552
	sw	$12,4($21)

$L522:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	addiu	$23,$21,16

	lw	$28,16($sp)
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	move	$22,$2

	li	$5,1			# 0x1
	sra	$3,$2,31
	lw	$28,16($sp)
	or	$4,$22,$3
	or	$31,$2,$4
	movz	$2,$5,$31
	movz	$4,$0,$31
	lw	$25,%call16(lrand48)($28)
	sw	$2,8($21)
	beq	$16,$0,$L553
	sw	$4,4($fp)

$L526:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	move	$fp,$2

	sra	$8,$2,31
	lw	$28,16($sp)
	.option	pic0
	j	$L538
	.option	pic2
	or	$9,$fp,$8

$L551:
	addiu	$2,$2,-1
	or	$3,$2,$20
	addiu	$2,$3,1
	.option	pic0
	j	$L554
	.option	pic2
	sra	$4,$2,31

$L527:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	.option	pic0
	j	$L543
	.option	pic2
	lw	$28,16($sp)

$L519:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	.option	pic0
	j	$L541
	.option	pic2
	lw	$28,16($sp)

$L523:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	.option	pic0
	j	$L542
	.option	pic2
	lw	$28,16($sp)

$L546:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	move	$21,$2

	sra	$5,$2,31
	lw	$28,16($sp)
	.option	pic0
	j	$L507
	.option	pic2
	or	$4,$21,$5

	.set	macro
	.set	reorder
	.end	fill_i64_array
	.size	fill_i64_array, .-fill_i64_array
	.section	.rodata.str1.4
	.align	2
$LC8:
	.ascii	"\012ADDITION BENCHMARKS:\000"
	.align	2
$LC9:
	.ascii	"Float:\012\011\000"
	.align	2
$LC12:
	.ascii	"Double:\012\011\000"
	.align	2
$LC13:
	.ascii	"Fixed-point 16.16:\012\011\000"
	.align	2
$LC14:
	.ascii	"32-bit integer:\012\011\000"
	.align	2
$LC15:
	.ascii	"64-bit integer:\012\011\000"
	.text
	.align	2
	.globl	bench_addition
	.set	nomips16
	.set	nomicromips
	.ent	bench_addition
	.type	bench_addition, @function
bench_addition:
	.frame	$sp,64,$31		# vars= 0, regs= 4/4, args= 24, gp= 8
	.mask	0x80070000,-20
	.fmask	0x00f00000,-8
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,32($sp)
	move	$16,$4
	lui	$4,%hi($LC8)
	sdc1	$f22,56($sp)
	sw	$31,44($sp)
	sw	$17,36($sp)
	addiu	$4,$4,%lo($LC8)
	.cprestore	24
	lui	$17,%hi($LC7)
	sw	$18,40($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	sdc1	$f20,48($sp)

	lui	$2,%hi($LC9)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC9)

	lui	$3,%hi($LC10)
	lui	$5,%hi($LC11)
	lw	$28,24($sp)
	ldc1	$f22,%lo($LC10)($3)
	ldc1	$f20,%lo($LC11)($5)
	lw	$4,%got(fval1)($28)
	mfc1	$6,$f22
	mfc1	$7,$f23
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f20,16($sp)

	mfc1	$7,$f23
	lw	$28,24($sp)
	mfc1	$6,$f22
	lw	$4,%got(fval2)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f20,16($sp)

	lui	$6,%hi(bench_float_add)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$6,%lo(bench_float_add)

	lui	$7,%hi($LC12)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$7,%lo($LC12)

	mfc1	$6,$f22
	lw	$28,24($sp)
	mfc1	$7,$f23
	lw	$4,%got(dval1)($28)
	.option	pic0
	jal	fill_double_array
	.option	pic2
	sdc1	$f20,16($sp)

	mfc1	$6,$f22
	lw	$28,24($sp)
	mfc1	$7,$f23
	lw	$4,%got(dval2)($28)
	.option	pic0
	jal	fill_double_array
	.option	pic2
	sdc1	$f20,16($sp)

	lui	$8,%hi(bench_double_add)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$8,%lo(bench_double_add)

	lui	$9,%hi($LC13)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$9,%lo($LC13)

	mfc1	$6,$f22
	lw	$28,24($sp)
	mfc1	$7,$f23
	lw	$4,%got(fval1)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f20,16($sp)

	mfc1	$6,$f22
	lw	$28,24($sp)
	mfc1	$7,$f23
	lw	$4,%got(fval2)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f20,16($sp)

	move	$2,$0
	lwc1	$f0,%lo($LC7)($17)
	li	$15,7168			# 0x1c00
	lw	$28,24($sp)
	lw	$6,%got(xval1)($28)
	lw	$3,%got(fval1)($28)
$L556:
	addiu	$18,$2,4
	lwxc1	$f8,$3($2)
	addiu	$24,$2,8
	addiu	$14,$2,12
	lwxc1	$f7,$3($18)
	addiu	$13,$2,16
	addiu	$12,$2,20
	lwxc1	$f6,$3($24)
	addiu	$11,$2,24
	addiu	$10,$2,28
	lwxc1	$f5,$3($14)
	addu	$31,$6,$2
	lwxc1	$f4,$3($13)
	mul.s	$f9,$f8,$f0
	addu	$5,$6,$18
	addu	$24,$6,$24
	lwxc1	$f3,$3($12)
	mul.s	$f10,$f7,$f0
	addu	$14,$6,$14
	addu	$13,$6,$13
	lwxc1	$f2,$3($11)
	mul.s	$f11,$f6,$f0
	addu	$12,$6,$12
	addu	$11,$6,$11
	lwxc1	$f1,$3($10)
	mul.s	$f12,$f5,$f0
	addu	$10,$6,$10
	addiu	$2,$2,32
	mul.s	$f13,$f4,$f0
	mul.s	$f14,$f3,$f0
	mul.s	$f15,$f2,$f0
	mul.s	$f16,$f1,$f0
	trunc.w.s $f17,$f9
	trunc.w.s $f18,$f10
	trunc.w.s $f19,$f11
	trunc.w.s $f21,$f12
	trunc.w.s $f23,$f13
	swc1	$f17,0($31)
	trunc.w.s $f22,$f14
	swc1	$f18,0($5)
	trunc.w.s $f20,$f15
	swc1	$f19,0($24)
	trunc.w.s $f8,$f16
	swc1	$f21,0($14)
	swc1	$f23,0($13)
	swc1	$f22,0($12)
	swc1	$f20,0($11)
	bne	$2,$15,$L556
	swc1	$f8,0($10)

	lwc1	$f0,%lo($LC7)($17)
	move	$2,$0
	lw	$6,%got(xval2)($28)
	li	$15,7168			# 0x1c00
	lw	$3,%got(fval2)($28)
$L557:
	addiu	$14,$2,12
	lwxc1	$f9,$3($2)
	addiu	$13,$2,16
	addiu	$12,$2,20
	lwxc1	$f5,$3($14)
	addiu	$11,$2,24
	addiu	$17,$2,4
	lwxc1	$f4,$3($13)
	addiu	$24,$2,8
	addiu	$10,$2,28
	lwxc1	$f3,$3($12)
	addu	$7,$6,$2
	lwxc1	$f2,$3($11)
	mul.s	$f10,$f9,$f0
	addu	$31,$6,$14
	addu	$18,$6,$17
	lwxc1	$f7,$3($17)
	mul.s	$f13,$f5,$f0
	addu	$14,$6,$13
	addu	$4,$6,$24
	lwxc1	$f6,$3($24)
	mul.s	$f14,$f4,$f0
	addu	$13,$6,$12
	addiu	$2,$2,32
	lwxc1	$f1,$3($10)
	mul.s	$f15,$f3,$f0
	addu	$12,$6,$11
	addu	$11,$6,$10
	mul.s	$f16,$f2,$f0
	mul.s	$f11,$f7,$f0
	mul.s	$f12,$f6,$f0
	mul.s	$f17,$f1,$f0
	trunc.w.s $f18,$f10
	trunc.w.s $f19,$f11
	trunc.w.s $f21,$f12
	trunc.w.s $f23,$f13
	trunc.w.s $f22,$f14
	swc1	$f18,0($7)
	trunc.w.s $f20,$f15
	swc1	$f19,0($18)
	trunc.w.s $f8,$f16
	swc1	$f21,0($4)
	trunc.w.s $f9,$f17
	swc1	$f23,0($31)
	swc1	$f22,0($14)
	swc1	$f20,0($13)
	swc1	$f8,0($12)
	bne	$2,$15,$L557
	swc1	$f9,0($11)

	lui	$6,%hi(bench_fixed_add)
	move	$5,$16
	addiu	$4,$6,%lo(bench_fixed_add)
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	lui	$18,%hi($LC15)

	lui	$15,%hi($LC14)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$15,%lo($LC14)

	lw	$28,24($sp)
	lw	$4,%got(i32val1)($28)
	.option	pic0
	jal	fill_i32_array
	.option	pic2
	li	$5,-1			# 0xffffffffffffffff

	lw	$28,24($sp)
	lw	$4,%got(i32val2)($28)
	.option	pic0
	jal	fill_i32_array
	.option	pic2
	li	$5,-1			# 0xffffffffffffffff

	lui	$3,%hi(bench_i32_add)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$3,%lo(bench_i32_add)

	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$18,%lo($LC15)

	li	$6,-1			# 0xffffffffffffffff
	lw	$28,24($sp)
	lw	$4,%got(i64val1)($28)
	.option	pic0
	jal	fill_i64_array
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

	li	$6,-1			# 0xffffffffffffffff
	lw	$28,24($sp)
	lw	$4,%got(i64val2)($28)
	.option	pic0
	jal	fill_i64_array
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

	move	$5,$16
	ldc1	$f22,56($sp)
	lui	$16,%hi(bench_i64_add)
	lw	$28,24($sp)
	ldc1	$f20,48($sp)
	addiu	$4,$16,%lo(bench_i64_add)
	lw	$31,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	.option	pic0
	j	avg_of_3_runs
	.option	pic2
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	bench_addition
	.size	bench_addition, .-bench_addition
	.section	.rodata.str1.4
	.align	2
$LC16:
	.ascii	"\012MULTIPLICATION BENCHMARKS:\000"
	.align	2
$LC19:
	.ascii	"Fixed-point:\012\011\000"
	.text
	.align	2
	.globl	bench_multiplication
	.set	nomips16
	.set	nomicromips
	.ent	bench_multiplication
	.type	bench_multiplication, @function
bench_multiplication:
	.frame	$sp,64,$31		# vars= 0, regs= 4/4, args= 24, gp= 8
	.mask	0x80070000,-20
	.fmask	0x00f00000,-8
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,32($sp)
	move	$16,$4
	lui	$4,%hi($LC16)
	sdc1	$f22,56($sp)
	sw	$31,44($sp)
	sw	$17,36($sp)
	addiu	$4,$4,%lo($LC16)
	.cprestore	24
	lui	$17,%hi($LC7)
	sw	$18,40($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	sdc1	$f20,48($sp)

	lui	$2,%hi($LC9)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC9)

	lui	$3,%hi($LC17)
	lui	$5,%hi($LC18)
	lw	$28,24($sp)
	ldc1	$f22,%lo($LC17)($3)
	ldc1	$f20,%lo($LC18)($5)
	lw	$4,%got(fval1)($28)
	mfc1	$6,$f22
	mfc1	$7,$f23
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f20,16($sp)

	mfc1	$7,$f23
	lw	$28,24($sp)
	mfc1	$6,$f22
	lw	$4,%got(fval2)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f20,16($sp)

	lui	$6,%hi(bench_float_mul)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$6,%lo(bench_float_mul)

	lui	$7,%hi($LC12)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$7,%lo($LC12)

	mfc1	$6,$f22
	lw	$28,24($sp)
	mfc1	$7,$f23
	lw	$4,%got(dval1)($28)
	.option	pic0
	jal	fill_double_array
	.option	pic2
	sdc1	$f20,16($sp)

	mfc1	$6,$f22
	lw	$28,24($sp)
	mfc1	$7,$f23
	lw	$4,%got(dval2)($28)
	.option	pic0
	jal	fill_double_array
	.option	pic2
	sdc1	$f20,16($sp)

	lui	$8,%hi(bench_double_mul)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$8,%lo(bench_double_mul)

	lui	$9,%hi($LC19)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$9,%lo($LC19)

	mfc1	$6,$f22
	lw	$28,24($sp)
	mfc1	$7,$f23
	lw	$4,%got(fval1)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f20,16($sp)

	mfc1	$6,$f22
	lw	$28,24($sp)
	mfc1	$7,$f23
	lw	$4,%got(fval2)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f20,16($sp)

	move	$2,$0
	lwc1	$f0,%lo($LC7)($17)
	li	$15,7168			# 0x1c00
	lw	$28,24($sp)
	lw	$6,%got(xval1)($28)
	lw	$3,%got(fval1)($28)
$L576:
	addiu	$18,$2,4
	lwxc1	$f8,$3($2)
	addiu	$24,$2,8
	addiu	$14,$2,12
	lwxc1	$f7,$3($18)
	addiu	$13,$2,16
	addiu	$12,$2,20
	lwxc1	$f6,$3($24)
	addiu	$11,$2,24
	addiu	$10,$2,28
	lwxc1	$f5,$3($14)
	addu	$31,$6,$2
	lwxc1	$f4,$3($13)
	mul.s	$f9,$f8,$f0
	addu	$5,$6,$18
	addu	$24,$6,$24
	lwxc1	$f3,$3($12)
	mul.s	$f10,$f7,$f0
	addu	$14,$6,$14
	addu	$13,$6,$13
	lwxc1	$f2,$3($11)
	mul.s	$f11,$f6,$f0
	addu	$12,$6,$12
	addu	$11,$6,$11
	lwxc1	$f1,$3($10)
	mul.s	$f12,$f5,$f0
	addu	$10,$6,$10
	addiu	$2,$2,32
	mul.s	$f13,$f4,$f0
	mul.s	$f14,$f3,$f0
	mul.s	$f15,$f2,$f0
	mul.s	$f16,$f1,$f0
	trunc.w.s $f17,$f9
	trunc.w.s $f18,$f10
	trunc.w.s $f19,$f11
	trunc.w.s $f21,$f12
	trunc.w.s $f23,$f13
	swc1	$f17,0($31)
	trunc.w.s $f22,$f14
	swc1	$f18,0($5)
	trunc.w.s $f20,$f15
	swc1	$f19,0($24)
	trunc.w.s $f8,$f16
	swc1	$f21,0($14)
	swc1	$f23,0($13)
	swc1	$f22,0($12)
	swc1	$f20,0($11)
	bne	$2,$15,$L576
	swc1	$f8,0($10)

	lwc1	$f0,%lo($LC7)($17)
	move	$2,$0
	lw	$6,%got(xval2)($28)
	li	$15,7168			# 0x1c00
	lw	$3,%got(fval2)($28)
$L577:
	addiu	$14,$2,12
	lwxc1	$f9,$3($2)
	addiu	$13,$2,16
	addiu	$12,$2,20
	lwxc1	$f5,$3($14)
	addiu	$11,$2,24
	addiu	$17,$2,4
	lwxc1	$f4,$3($13)
	addiu	$24,$2,8
	addiu	$10,$2,28
	lwxc1	$f3,$3($12)
	addu	$7,$6,$2
	lwxc1	$f2,$3($11)
	mul.s	$f10,$f9,$f0
	addu	$31,$6,$14
	addu	$18,$6,$17
	lwxc1	$f7,$3($17)
	mul.s	$f13,$f5,$f0
	addu	$14,$6,$13
	addu	$4,$6,$24
	lwxc1	$f6,$3($24)
	mul.s	$f14,$f4,$f0
	addu	$13,$6,$12
	addiu	$2,$2,32
	lwxc1	$f1,$3($10)
	mul.s	$f15,$f3,$f0
	addu	$12,$6,$11
	addu	$11,$6,$10
	mul.s	$f16,$f2,$f0
	mul.s	$f11,$f7,$f0
	mul.s	$f12,$f6,$f0
	mul.s	$f17,$f1,$f0
	trunc.w.s $f18,$f10
	trunc.w.s $f19,$f11
	trunc.w.s $f21,$f12
	trunc.w.s $f23,$f13
	trunc.w.s $f22,$f14
	swc1	$f18,0($7)
	trunc.w.s $f20,$f15
	swc1	$f19,0($18)
	trunc.w.s $f8,$f16
	swc1	$f21,0($4)
	trunc.w.s $f9,$f17
	swc1	$f23,0($31)
	swc1	$f22,0($14)
	swc1	$f20,0($13)
	swc1	$f8,0($12)
	bne	$2,$15,$L577
	swc1	$f9,0($11)

	lui	$6,%hi(bench_fixed_mul)
	move	$5,$16
	addiu	$4,$6,%lo(bench_fixed_mul)
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	lui	$18,%hi($LC15)

	lui	$15,%hi($LC14)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$15,%lo($LC14)

	lw	$28,24($sp)
	lw	$4,%got(i32val1)($28)
	.option	pic0
	jal	fill_i32_array
	.option	pic2
	li	$5,65535			# 0xffff

	lw	$28,24($sp)
	lw	$4,%got(i32val2)($28)
	.option	pic0
	jal	fill_i32_array
	.option	pic2
	li	$5,65535			# 0xffff

	lui	$3,%hi(bench_i32_mul)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$3,%lo(bench_i32_mul)

	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$18,%lo($LC15)

	li	$6,-1			# 0xffffffffffffffff
	lw	$28,24($sp)
	lw	$4,%got(i64val1)($28)
	.option	pic0
	jal	fill_i64_array
	.option	pic2
	move	$7,$0

	li	$6,-1			# 0xffffffffffffffff
	lw	$28,24($sp)
	lw	$4,%got(i64val2)($28)
	.option	pic0
	jal	fill_i64_array
	.option	pic2
	move	$7,$0

	move	$5,$16
	ldc1	$f22,56($sp)
	lui	$16,%hi(bench_i64_mul)
	lw	$28,24($sp)
	ldc1	$f20,48($sp)
	addiu	$4,$16,%lo(bench_i64_mul)
	lw	$31,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	.option	pic0
	j	avg_of_3_runs
	.option	pic2
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	bench_multiplication
	.size	bench_multiplication, .-bench_multiplication
	.section	.rodata.str1.4
	.align	2
$LC20:
	.ascii	"\012DIVISION BENCHMARKS:\000"
	.text
	.align	2
	.globl	bench_division
	.set	nomips16
	.set	nomicromips
	.ent	bench_division
	.type	bench_division, @function
bench_division:
	.frame	$sp,80,$31		# vars= 0, regs= 4/8, args= 24, gp= 8
	.mask	0x80070000,-36
	.fmask	0x0ff00000,-8
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-80
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,32($sp)
	move	$16,$4
	lui	$4,%hi($LC20)
	sdc1	$f26,72($sp)
	sw	$31,44($sp)
	sw	$17,36($sp)
	addiu	$4,$4,%lo($LC20)
	.cprestore	24
	lui	$17,%hi($LC7)
	sw	$18,40($sp)
	lw	$25,%call16(puts)($28)
	sdc1	$f24,64($sp)
	sdc1	$f22,56($sp)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	sdc1	$f20,48($sp)

	lui	$2,%hi($LC9)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC9)

	lui	$3,%hi($LC6)
	lui	$5,%hi($LC21)
	lw	$28,24($sp)
	ldc1	$f26,%lo($LC6)($3)
	ldc1	$f24,%lo($LC21)($5)
	lw	$4,%got(fval1)($28)
	mfc1	$6,$f26
	mfc1	$7,$f27
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f24,16($sp)

	lui	$6,%hi($LC22)
	lui	$7,%hi($LC23)
	lw	$28,24($sp)
	ldc1	$f22,%lo($LC22)($6)
	ldc1	$f20,%lo($LC23)($7)
	lw	$4,%got(fval2)($28)
	mfc1	$6,$f22
	mfc1	$7,$f23
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f20,16($sp)

	lui	$8,%hi(bench_float_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$8,%lo(bench_float_div)

	lui	$9,%hi($LC12)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$9,%lo($LC12)

	mfc1	$6,$f26
	lw	$28,24($sp)
	mfc1	$7,$f27
	lw	$4,%got(dval1)($28)
	.option	pic0
	jal	fill_double_array
	.option	pic2
	sdc1	$f24,16($sp)

	mfc1	$6,$f22
	lw	$28,24($sp)
	mfc1	$7,$f23
	lw	$4,%got(dval2)($28)
	.option	pic0
	jal	fill_double_array
	.option	pic2
	sdc1	$f20,16($sp)

	lui	$10,%hi(bench_double_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$10,%lo(bench_double_div)

	lui	$11,%hi($LC13)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$11,%lo($LC13)

	mfc1	$6,$f26
	lw	$28,24($sp)
	mfc1	$7,$f27
	lw	$4,%got(fval1)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f24,16($sp)

	mfc1	$6,$f22
	lw	$28,24($sp)
	mfc1	$7,$f23
	lw	$4,%got(fval2)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f20,16($sp)

	move	$2,$0
	lwc1	$f0,%lo($LC7)($17)
	li	$15,7168			# 0x1c00
	lw	$28,24($sp)
	lw	$6,%got(xval1)($28)
	lw	$3,%got(fval1)($28)
$L596:
	addiu	$18,$2,4
	lwxc1	$f8,$3($2)
	addiu	$24,$2,8
	addiu	$14,$2,12
	lwxc1	$f7,$3($18)
	addiu	$13,$2,16
	addiu	$12,$2,20
	lwxc1	$f6,$3($24)
	addiu	$31,$2,24
	addiu	$4,$2,28
	lwxc1	$f5,$3($14)
	addu	$7,$6,$2
	lwxc1	$f4,$3($13)
	mul.s	$f9,$f8,$f0
	addu	$5,$6,$18
	addu	$24,$6,$24
	lwxc1	$f3,$3($12)
	mul.s	$f10,$f7,$f0
	addu	$14,$6,$14
	addu	$13,$6,$13
	lwxc1	$f2,$3($31)
	mul.s	$f11,$f6,$f0
	addu	$12,$6,$12
	addu	$11,$6,$31
	lwxc1	$f1,$3($4)
	mul.s	$f12,$f5,$f0
	addu	$10,$6,$4
	addiu	$2,$2,32
	mul.s	$f13,$f4,$f0
	mul.s	$f14,$f3,$f0
	mul.s	$f15,$f2,$f0
	mul.s	$f16,$f1,$f0
	trunc.w.s $f17,$f9
	trunc.w.s $f18,$f10
	trunc.w.s $f19,$f11
	trunc.w.s $f21,$f12
	trunc.w.s $f23,$f13
	swc1	$f17,0($7)
	trunc.w.s $f25,$f14
	swc1	$f18,0($5)
	trunc.w.s $f27,$f15
	swc1	$f19,0($24)
	trunc.w.s $f26,$f16
	swc1	$f21,0($14)
	swc1	$f23,0($13)
	swc1	$f25,0($12)
	swc1	$f27,0($11)
	bne	$2,$15,$L596
	swc1	$f26,0($10)

	lwc1	$f24,%lo($LC7)($17)
	move	$2,$0
	lw	$6,%got(xval2)($28)
	li	$15,7168			# 0x1c00
	lw	$3,%got(fval2)($28)
$L597:
	addiu	$17,$2,4
	lwxc1	$f22,$3($2)
	addiu	$24,$2,8
	addiu	$14,$2,12
	lwxc1	$f20,$3($17)
	addiu	$13,$2,16
	addiu	$12,$2,20
	lwxc1	$f5,$3($14)
	addiu	$11,$2,24
	addiu	$10,$2,28
	lwxc1	$f4,$3($13)
	addu	$18,$6,$2
	lwxc1	$f9,$3($12)
	mul.s	$f8,$f22,$f24
	addu	$31,$6,$17
	addu	$4,$6,$24
	lwxc1	$f10,$3($11)
	mul.s	$f7,$f20,$f24
	addu	$14,$6,$14
	addu	$13,$6,$13
	lwxc1	$f11,$3($10)
	mul.s	$f12,$f5,$f24
	addu	$12,$6,$12
	addu	$11,$6,$11
	lwxc1	$f0,$3($24)
	mul.s	$f13,$f4,$f24
	addu	$10,$6,$10
	addiu	$2,$2,32
	mul.s	$f3,$f9,$f24
	mul.s	$f2,$f10,$f24
	mul.s	$f1,$f11,$f24
	mul.s	$f6,$f0,$f24
	trunc.w.s $f14,$f8
	trunc.w.s $f15,$f7
	trunc.w.s $f17,$f12
	trunc.w.s $f16,$f6
	trunc.w.s $f18,$f13
	swc1	$f14,0($18)
	trunc.w.s $f19,$f3
	swc1	$f15,0($31)
	trunc.w.s $f21,$f2
	trunc.w.s $f23,$f1
	swc1	$f16,0($4)
	swc1	$f17,0($14)
	swc1	$f18,0($13)
	swc1	$f19,0($12)
	swc1	$f21,0($11)
	bne	$2,$15,$L597
	swc1	$f23,0($10)

	lui	$6,%hi(bench_fixed_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$6,%lo(bench_fixed_div)

	lui	$15,%hi($LC14)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$15,%lo($LC14)

	lw	$28,24($sp)
	lw	$4,%got(i32val1)($28)
	.option	pic0
	jal	fill_i32_array
	.option	pic2
	li	$5,-1			# 0xffffffffffffffff

	lw	$28,24($sp)
	lw	$4,%got(i32val2)($28)
	.option	pic0
	jal	fill_i32_array
	.option	pic2
	li	$5,65535			# 0xffff

	lui	$3,%hi(bench_i32_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$3,%lo(bench_i32_div)

	lui	$4,%hi($LC15)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC15)

	li	$6,-1			# 0xffffffffffffffff
	lw	$28,24($sp)
	lw	$4,%got(i64val1)($28)
	.option	pic0
	jal	fill_i64_array
	.option	pic2
	li	$7,-1			# 0xffffffffffffffff

	li	$6,-1			# 0xffffffffffffffff
	lw	$28,24($sp)
	lw	$4,%got(i64val2)($28)
	.option	pic0
	jal	fill_i64_array
	.option	pic2
	move	$7,$0

	move	$5,$16
	ldc1	$f26,72($sp)
	lui	$16,%hi(bench_i64_div)
	lw	$28,24($sp)
	ldc1	$f24,64($sp)
	addiu	$4,$16,%lo(bench_i64_div)
	lw	$31,44($sp)
	ldc1	$f22,56($sp)
	lw	$18,40($sp)
	ldc1	$f20,48($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	.option	pic0
	j	avg_of_3_runs
	.option	pic2
	addiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	bench_division
	.size	bench_division, .-bench_division
	.section	.rodata.str1.4
	.align	2
$LC24:
	.ascii	"\012SQUARE-ROOT BENCHMARKS:\000"
	.align	2
$LC27:
	.ascii	"Float (Quake sqrt):\012\011\000"
	.align	2
$LC28:
	.ascii	"Double (approximate sqrt):\012\011\000"
	.text
	.align	2
	.globl	bench_squareroot
	.set	nomips16
	.set	nomicromips
	.ent	bench_squareroot
	.type	bench_squareroot, @function
bench_squareroot:
	.frame	$sp,56,$31		# vars= 0, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,36($sp)
	move	$16,$4
	lui	$4,%hi($LC24)
	sw	$17,40($sp)
	sw	$31,52($sp)
	lui	$17,%hi($LC26)
	sw	$18,44($sp)
	addiu	$4,$4,%lo($LC24)
	.cprestore	24
	lui	$18,%hi($LC25)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	sw	$19,48($sp)

	ldc1	$f0,%lo($LC26)($17)
	lw	$28,24($sp)
	lw	$7,%lo($LC25+4)($18)
	lw	$6,%lo($LC25)($18)
	lw	$4,%got(fval1)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f0,16($sp)

	lui	$2,%hi($LC9)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC9)

	lui	$3,%hi(bench_float_sqrt)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$3,%lo(bench_float_sqrt)

	lui	$5,%hi($LC27)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$5,%lo($LC27)

	lui	$6,%hi(bench_quake_sqrt)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$6,%lo(bench_quake_sqrt)

	lui	$7,%hi($LC7)
	lw	$28,24($sp)
	move	$2,$0
	lwc1	$f9,%lo($LC7)($7)
	li	$15,7168			# 0x1c00
	lw	$6,%got(xval1)($28)
	lw	$3,%got(fval1)($28)
$L616:
	addiu	$8,$2,4
	lwxc1	$f8,$3($2)
	addiu	$24,$2,8
	addiu	$14,$2,12
	lwxc1	$f7,$3($8)
	addiu	$13,$2,16
	addiu	$12,$2,20
	lwxc1	$f6,$3($24)
	addiu	$11,$2,24
	addiu	$10,$2,28
	lwxc1	$f5,$3($14)
	addu	$31,$6,$2
	lwxc1	$f4,$3($13)
	mul.s	$f10,$f8,$f9
	addu	$25,$6,$8
	addu	$24,$6,$24
	lwxc1	$f3,$3($12)
	mul.s	$f11,$f7,$f9
	addu	$14,$6,$14
	addu	$13,$6,$13
	lwxc1	$f2,$3($11)
	mul.s	$f12,$f6,$f9
	addu	$12,$6,$12
	addu	$11,$6,$11
	lwxc1	$f1,$3($10)
	mul.s	$f13,$f5,$f9
	addu	$10,$6,$10
	addiu	$2,$2,32
	mul.s	$f14,$f4,$f9
	mul.s	$f15,$f3,$f9
	mul.s	$f16,$f2,$f9
	mul.s	$f17,$f1,$f9
	trunc.w.s $f18,$f10
	trunc.w.s $f19,$f11
	trunc.w.s $f0,$f12
	trunc.w.s $f8,$f13
	trunc.w.s $f7,$f14
	swc1	$f18,0($31)
	trunc.w.s $f6,$f15
	swc1	$f19,0($25)
	trunc.w.s $f5,$f16
	swc1	$f0,0($24)
	trunc.w.s $f4,$f17
	swc1	$f8,0($14)
	swc1	$f7,0($13)
	swc1	$f6,0($12)
	swc1	$f5,0($11)
	bne	$2,$15,$L616
	swc1	$f4,0($10)

	lui	$6,%hi($LC13)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$6,%lo($LC13)

	lui	$15,%hi(bench_fixed_sqrt)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$15,%lo(bench_fixed_sqrt)

	ldc1	$f10,%lo($LC26)($17)
	lui	$17,%hi(bench_double_sqrt)
	lw	$28,24($sp)
	lw	$6,%lo($LC25)($18)
	lw	$7,%lo($LC25+4)($18)
	lui	$18,%hi($LC12)
	lw	$4,%got(dval1)($28)
	.option	pic0
	jal	fill_double_array
	.option	pic2
	sdc1	$f10,16($sp)

	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$18,%lo($LC12)

	addiu	$4,$17,%lo(bench_double_sqrt)
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	move	$5,$16

	lui	$3,%hi($LC28)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$3,%lo($LC28)

	move	$5,$16
	lui	$16,%hi(bench_approximate_double_sqrt)
	lw	$28,24($sp)
	lw	$31,52($sp)
	lw	$19,48($sp)
	addiu	$4,$16,%lo(bench_approximate_double_sqrt)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	.option	pic0
	j	avg_of_3_runs
	.option	pic2
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	bench_squareroot
	.size	bench_squareroot, .-bench_squareroot
	.section	.rodata.str1.4
	.align	2
$LC29:
	.ascii	"Missing argument: number of iterations\000"
	.align	2
$LC30:
	.ascii	"32-bit Floating Point vs. 16.16 Fixed-point Math Speed C"
	.ascii	"omparison\000"
	.align	2
$LC31:
	.ascii	"Written by Dan Silsby  dansilsby <AT> gmail <DOT> com\000"
	.align	2
$LC32:
	.ascii	"NOTE: before each benchmark is timed, sync(), fflush(),\012"
	.ascii	"and .5 second delay are all executed.\000"
	.align	2
$LC33:
	.ascii	"Times reported are an average of 3 of these benchmark ru"
	.ascii	"ns.\012\000"
	.align	2
$LC34:
	.ascii	"Benchmark requested: %u iterations.\012\000"
	.align	2
$LC35:
	.ascii	"Reported size of floats on this architecture:\011%d\012\000"
	.align	2
$LC36:
	.ascii	"Reported size of doubles on this architecture:\011%d\012"
	.ascii	"\012\000"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,28($sp)
	move	$16,$4
	move	$4,$0
	sw	$31,36($sp)
	sw	$17,32($sp)
	.cprestore	16
	lw	$25,%call16(time)($28)
	.reloc	1f,R_MIPS_JALR,time
1:	jalr	$25
	move	$17,$5

	lw	$28,16($sp)
	lw	$25,%call16(srand48)($28)
	.reloc	1f,R_MIPS_JALR,srand48
1:	jalr	$25
	move	$4,$2

	slt	$2,$16,2
	bne	$2,$0,$L630
	lw	$28,16($sp)

	lw	$25,%call16(atoi)($28)
	.reloc	1f,R_MIPS_JALR,atoi
1:	jalr	$25
	lw	$4,4($17)

	lui	$4,%hi($LC30)
	lw	$28,16($sp)
	move	$16,$2
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC30)

	lui	$3,%hi($LC31)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$3,%lo($LC31)

	lui	$5,%hi($LC32)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$5,%lo($LC32)

	lui	$6,%hi($LC33)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$6,%lo($LC33)

	lui	$7,%hi($LC34)
	lw	$28,16($sp)
	move	$5,$16
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$7,%lo($LC34)

	lui	$8,%hi($LC35)
	lw	$28,16($sp)
	li	$5,32			# 0x20
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$8,%lo($LC35)

	lui	$9,%hi($LC36)
	lw	$28,16($sp)
	li	$5,64			# 0x40
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$9,%lo($LC36)

	lw	$28,16($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	li	$10,983040			# 0xf0000
	lw	$28,16($sp)
	lw	$25,%call16(usleep)($28)
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	addiu	$4,$10,16960

	.option	pic0
	jal	bench_addition
	.option	pic2
	move	$4,$16

	.option	pic0
	jal	bench_multiplication
	.option	pic2
	move	$4,$16

	.option	pic0
	jal	bench_division
	.option	pic2
	move	$4,$16

	.option	pic0
	jal	bench_squareroot
	.option	pic2
	move	$4,$16

	move	$2,$0
$L628:
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

$L630:
	lui	$11,%hi($LC29)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$11,%lo($LC29)

	.option	pic0
	j	$L628
	.option	pic2
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.local	begin_time.3629
	.comm	begin_time.3629,8,4

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
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
$LC0:
	.word	1056964608
	.align	2
$LC1:
	.word	1069547520
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
$LC2:
	.word	0
	.word	1071644672
	.align	3
$LC3:
	.word	0
	.word	1073217536
	.align	3
$LC5:
	.word	0
	.word	1093567616
	.align	3
$LC6:
	.word	0
	.word	1072693248
	.section	.rodata.cst4
	.align	2
$LC7:
	.word	1199570944
	.section	.rodata.cst8
	.align	3
$LC10:
	.word	-350469331
	.word	1058682594
	.align	3
$LC11:
	.word	0
	.word	1087373184
	.align	3
$LC17:
	.word	-755914244
	.word	1062232653
	.align	3
$LC18:
	.word	0
	.word	1080467456
	.align	3
$LC21:
	.word	0
	.word	1084751872
	.align	3
$LC22:
	.word	-1717986918
	.word	1069128089
	.align	3
$LC23:
	.word	0
	.word	1085276160
	.align	3
$LC25:
	.word	-1998362383
	.word	1055193269
	.align	3
$LC26:
	.word	0
	.word	1088421888
	.ident	"GCC: (Buildroot 2014.05-gbb847d4) 4.9.1"
