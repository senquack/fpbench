	.file	1 "fpbench.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.text
	.align	2
	.globl	bench_float_sub
	.set	nomips16
	.set	nomicromips
	.ent	bench_float_sub
	.type	bench_float_sub, @function
bench_float_sub:
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
	sub.s	$f11,$f1,$f7
	lwxc1	$f5,$3($12)
	lwxc1	$f8,$5($11)
	lwxc1	$f4,$3($11)
	sub.s	$f12,$f0,$f6
	lwxc1	$f13,$5($10)
	lwxc1	$f3,$3($10)
	sub.s	$f14,$f2,$f5
	lwxc1	$f15,$5($9)
	lwxc1	$f10,$3($9)
	sub.s	$f16,$f8,$f4
	lwxc1	$f17,$5($8)
	lwxc1	$f9,$3($8)
	sub.s	$f18,$f13,$f3
	lwxc1	$f19,$5($7)
	lwxc1	$f7,$3($7)
	sub.s	$f6,$f15,$f10
	swxc1	$f11,$6($2)
	addiu	$2,$2,32
	sub.s	$f1,$f17,$f9
	swxc1	$f12,$6($15)
	swxc1	$f14,$6($12)
	sub.s	$f0,$f19,$f7
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
	.end	bench_float_sub
	.size	bench_float_sub, .-bench_float_sub
	.align	2
	.globl	bench_fixed_sub
	.set	nomips16
	.set	nomicromips
	.ent	bench_fixed_sub
	.type	bench_fixed_sub, @function
bench_fixed_sub:
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
	beq	$4,$0,$L20
	sw	$4,64($sp)

	lw	$3,%got(xresult)($28)
	lw	$18,%got(xval1)($28)
	lw	$16,%got(xval2)($28)
	sw	$0,16($sp)
$L23:
	move	$14,$0
$L22:
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
	subu	$fp,$fp,$17
	lw	$19,0($19)
	subu	$15,$24,$15
	lw	$10,0($10)
	subu	$13,$22,$13
	lw	$17,0($25)
	subu	$12,$21,$12
	lw	$25,0($23)
	subu	$20,$20,$11
	lw	$22,8($sp)
	subu	$11,$19,$10
	lw	$24,12($sp)
	addu	$19,$3,$14
	subu	$23,$17,$25
	addu	$9,$3,$9
	sw	$fp,0($19)
	subu	$21,$22,$24
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
	bne	$14,$10,$L22
	sw	$23,0($2)

	lw	$14,16($sp)
	lw	$17,64($sp)
	addiu	$fp,$14,1
	bne	$fp,$17,$L23
	sw	$fp,16($sp)

$L20:
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
	.end	bench_fixed_sub
	.size	bench_fixed_sub, .-bench_fixed_sub
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
	beq	$4,$0,$L52
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$13,7168			# 0x1c00
	lw	$6,%got(fresult)($28)
	lw	$5,%got(fval2)($28)
	lw	$3,%got(fval1)($28)
	move	$2,$0
$L37:
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
	bne	$2,$13,$L37
	swxc1	$f0,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L37
	move	$2,$0

$L52:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_float_add
	.size	bench_float_add, .-bench_float_add
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
	beq	$4,$0,$L53
	sw	$4,64($sp)

	lw	$3,%got(xresult)($28)
	lw	$18,%got(xval1)($28)
	lw	$16,%got(xval2)($28)
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
	.end	bench_fixed_add
	.size	bench_fixed_add, .-bench_fixed_add
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
	beq	$4,$0,$L85
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$13,7168			# 0x1c00
	lw	$6,%got(fresult)($28)
	lw	$5,%got(fval2)($28)
	lw	$3,%got(fval1)($28)
	move	$2,$0
$L70:
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
	bne	$2,$13,$L70
	swxc1	$f0,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L70
	move	$2,$0

$L85:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_float_mul
	.size	bench_float_mul, .-bench_float_mul
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
	beq	$4,$0,$L86
	sw	$4,56($sp)

	lw	$17,%got(xval1)($28)
	lw	$16,%got(xval2)($28)
	lw	$5,%got(xresult)($28)
	sw	$0,8($sp)
$L89:
	move	$4,$0
$L88:
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
	bne	$4,$12,$L88
	sw	$13,0($20)

	lw	$4,8($sp)
	lw	$10,56($sp)
	addiu	$11,$4,1
	bne	$11,$10,$L89
	sw	$11,8($sp)

$L86:
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
	.globl	bench_integer_mul
	.set	nomips16
	.set	nomicromips
	.ent	bench_integer_mul
	.type	bench_integer_mul, @function
bench_integer_mul:
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
	beq	$4,$0,$L100
	sw	$4,64($sp)

	lw	$3,%got(xresult)($28)
	lw	$18,%got(xval1)($28)
	lw	$16,%got(xval2)($28)
	sw	$0,16($sp)
$L103:
	move	$14,$0
$L102:
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
	bne	$14,$10,$L102
	sw	$23,0($2)

	lw	$14,16($sp)
	lw	$17,64($sp)
	addiu	$fp,$14,1
	bne	$fp,$17,$L103
	sw	$fp,16($sp)

$L100:
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
	.end	bench_integer_mul
	.size	bench_integer_mul, .-bench_integer_mul
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
	beq	$4,$0,$L132
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$13,7168			# 0x1c00
	lw	$6,%got(fresult)($28)
	lw	$5,%got(fval1)($28)
	lw	$3,%got(fval2)($28)
	move	$2,$0
$L117:
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
	bne	$2,$13,$L117
	swxc1	$f14,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L117
	move	$2,$0

$L132:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_float_div
	.size	bench_float_div, .-bench_float_div
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
	beq	$4,$0,$L146
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
$L135:
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
	bne	$16,$21,$L135
	sw	$2,0($17)

	addiu	$22,$22,1
	bne	$22,$23,$L135
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

$L146:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_fixed_div
	.size	bench_fixed_div, .-bench_fixed_div
	.align	2
	.globl	bench_integer_div
	.set	nomips16
	.set	nomicromips
	.ent	bench_integer_div
	.type	bench_integer_div, @function
bench_integer_div:
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
	beq	$4,$0,$L147
	sw	$4,64($sp)

	lw	$13,%got(xresult)($28)
	lw	$10,%got(xval1)($28)
	lw	$8,%got(xval2)($28)
	sw	$0,16($sp)
$L150:
	move	$6,$0
$L149:
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
	div	$0,$19,$12
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
	div	$0,$18,$fp
	sw	$19,0($25)
	mflo	$18
	teq	$17,$0,7
	div	$0,$24,$17
	lw	$17,8($sp)
	sw	$18,0($11)
	mflo	$fp
	teq	$23,$0,7
	div	$0,$16,$23
	lw	$16,12($sp)
	sw	$fp,0($9)
	mflo	$24
	teq	$16,$0,7
	div	$0,$17,$16
	sw	$24,0($7)
	mflo	$23
	teq	$22,$0,7
	div	$0,$15,$22
	sw	$23,0($5)
	mflo	$15
	teq	$21,$0,7
	div	$0,$14,$21
	li	$21,7168			# 0x1c00
	sw	$15,0($4)
	mflo	$22
	teq	$20,$0,7
	div	$0,$12,$20
	sw	$22,0($3)
	mflo	$14
	bne	$6,$21,$L149
	sw	$14,0($2)

	lw	$6,16($sp)
	lw	$12,64($sp)
	addiu	$19,$6,1
	bne	$19,$12,$L150
	sw	$19,16($sp)

$L147:
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
	.end	bench_integer_div
	.size	bench_integer_div, .-bench_integer_div
	.align	2
	.globl	bench_float_sqrt
	.set	nomips16
	.set	nomicromips
	.ent	bench_float_sqrt
	.type	bench_float_sqrt, @function
bench_float_sqrt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L179
	lui	$28,%hi(__gnu_local_gp)

	move	$10,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$9,7168			# 0x1c00
	lw	$5,%got(fval1)($28)
	lw	$3,%got(fresult)($28)
	move	$2,$0
$L164:
	addiu	$14,$2,4
	lwxc1	$f7,$5($2)
	addiu	$13,$2,8
	addiu	$12,$2,12
	lwxc1	$f6,$5($14)
	addiu	$11,$2,16
	addiu	$8,$2,20
	lwxc1	$f5,$5($13)
	addiu	$7,$2,24
	addiu	$6,$2,28
	lwxc1	$f4,$5($12)
	lwxc1	$f3,$5($11)
	sqrt.s	$f8,$f7
	lwxc1	$f2,$5($8)
	lwxc1	$f1,$5($7)
	lwxc1	$f0,$5($6)
	sqrt.s	$f9,$f6
	swxc1	$f8,$3($2)
	addiu	$2,$2,32
	sqrt.s	$f10,$f5
	swxc1	$f9,$3($14)
	sqrt.s	$f11,$f4
	swxc1	$f10,$3($13)
	sqrt.s	$f12,$f3
	swxc1	$f11,$3($12)
	sqrt.s	$f13,$f2
	swxc1	$f12,$3($11)
	sqrt.s	$f14,$f1
	swxc1	$f13,$3($8)
	sqrt.s	$f15,$f0
	swxc1	$f14,$3($7)
	bne	$2,$9,$L164
	swxc1	$f15,$3($6)

	addiu	$10,$10,1
	bne	$10,$4,$L164
	move	$2,$0

$L179:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_float_sqrt
	.size	bench_float_sqrt, .-bench_float_sqrt
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
	bne	$3,$0,$L197
	li	$6,268435456			# 0x10000000

	subu	$4,$4,$2
	li	$6,1342177280			# 0x50000000
	li	$3,65536			# 0x10000
$L181:
	sltu	$5,$4,$6
	bne	$5,$0,$L198
	addiu	$7,$3,8192

	subu	$4,$4,$6
	ori	$3,$3,0x8000
	addiu	$7,$3,8192
$L198:
	sll	$8,$7,13
	sltu	$9,$4,$8
	bne	$9,$0,$L199
	addiu	$10,$3,4096

	subu	$4,$4,$8
	ori	$3,$3,0x4000
	addiu	$10,$3,4096
$L199:
	sll	$11,$10,12
	sltu	$12,$4,$11
	bne	$12,$0,$L200
	addiu	$13,$3,2048

	subu	$4,$4,$11
	ori	$3,$3,0x2000
	addiu	$13,$3,2048
$L200:
	sll	$14,$13,11
	sltu	$15,$4,$14
	bne	$15,$0,$L201
	addiu	$24,$3,1024

	subu	$4,$4,$14
	ori	$3,$3,0x1000
	addiu	$24,$3,1024
$L201:
	sll	$25,$24,10
	sltu	$2,$4,$25
	bne	$2,$0,$L202
	addiu	$6,$3,512

	subu	$4,$4,$25
	ori	$3,$3,0x800
	addiu	$6,$3,512
$L202:
	sll	$7,$6,9
	sltu	$5,$4,$7
	bne	$5,$0,$L203
	addiu	$8,$3,256

	subu	$4,$4,$7
	ori	$3,$3,0x400
	addiu	$8,$3,256
$L203:
	sll	$9,$8,8
	sltu	$10,$4,$9
	bne	$10,$0,$L204
	addiu	$11,$3,128

	subu	$4,$4,$9
	ori	$3,$3,0x200
	addiu	$11,$3,128
$L204:
	sll	$12,$11,7
	sltu	$13,$4,$12
	bne	$13,$0,$L205
	addiu	$14,$3,64

	subu	$4,$4,$12
	ori	$3,$3,0x100
	addiu	$14,$3,64
$L205:
	sll	$15,$14,6
	sltu	$24,$4,$15
	bne	$24,$0,$L206
	addiu	$25,$3,32

	subu	$4,$4,$15
	ori	$3,$3,0x80
	addiu	$25,$3,32
$L206:
	sll	$2,$25,5
	sltu	$6,$4,$2
	bne	$6,$0,$L207
	addiu	$7,$3,16

	subu	$4,$4,$2
	ori	$3,$3,0x40
	addiu	$7,$3,16
$L207:
	sll	$8,$7,4
	sltu	$5,$4,$8
	bne	$5,$0,$L208
	addiu	$9,$3,8

	subu	$4,$4,$8
	ori	$3,$3,0x20
	addiu	$9,$3,8
$L208:
	sll	$10,$9,3
	sltu	$11,$4,$10
	bne	$11,$0,$L209
	addiu	$12,$3,4

	subu	$4,$4,$10
	ori	$3,$3,0x10
	addiu	$12,$3,4
$L209:
	sll	$13,$12,2
	sltu	$14,$4,$13
	bne	$14,$0,$L210
	addiu	$15,$3,2

	subu	$4,$4,$13
	ori	$3,$3,0x8
	addiu	$15,$3,2
$L210:
	sll	$24,$15,1
	sltu	$25,$4,$24
	bne	$25,$0,$L195
	nop

	subu	$4,$4,$24
	ori	$3,$3,0x4
$L195:
	addiu	$2,$3,1
	ori	$6,$3,0x2
	sltu	$4,$4,$2
	move	$7,$3
	movz	$7,$6,$4
	j	$31
	sll	$2,$7,7

$L197:
	.option	pic0
	j	$L181
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
	beq	$4,$0,$L227
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
$L214:
	move	$fp,$0
$L213:
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
	bne	$fp,$24,$L213
	sw	$2,0($15)

	lw	$25,24($sp)
	lw	$fp,28($sp)
	addiu	$31,$25,1
	bne	$31,$fp,$L214
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

$L227:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_fixed_sqrt
	.size	bench_fixed_sqrt, .-bench_fixed_sqrt
	.align	2
	.globl	flush_cache
	.set	nomips16
	.set	nomicromips
	.ent	flush_cache
	.type	flush_cache, @function
flush_cache:
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	lui	$28,%hi(__gnu_local_gp)
	sw	$17,32($sp)
	lui	$17,%hi(dummy_array+262144)
	sw	$16,28($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lui	$16,%hi(dummy_array)
	sw	$31,36($sp)
	addiu	$17,$17,%lo(dummy_array+262144)
	addiu	$16,$16,%lo(dummy_array)
	.cprestore	16
$L229:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lw	$28,16($sp)
	bne	$16,$17,$L229
	sw	$2,-4($16)

	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	flush_cache
	.size	flush_cache, .-flush_cache
	.align	2
	.globl	timer
	.set	nomips16
	.set	nomicromips
	.ent	timer
	.type	timer, @function
timer:
	.frame	$sp,48,$31		# vars= 8, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-48
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,44($sp)
	sw	$17,40($sp)
	sw	$16,36($sp)
	.cprestore	16
	sw	$0,24($sp)
	beq	$4,$0,$L240
	sw	$0,28($sp)

	lw	$25,%call16(sync)($28)
	lui	$16,%hi(dummy_array)
	lui	$17,%hi(dummy_array+262144)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	addiu	$16,$16,%lo(dummy_array)

	move	$4,$0
	lw	$28,16($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	addiu	$17,$17,%lo(dummy_array+262144)

	lw	$28,16($sp)
$L241:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lw	$28,16($sp)
	bne	$16,$17,$L241
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$13,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$13,0xa120

	lui	$14,%hi(begin_time.3613)
	lw	$28,16($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$14,%lo(begin_time.3613)

	move	$2,$0
	lw	$31,44($sp)
	move	$3,$0
	lw	$17,40($sp)
	lw	$16,36($sp)
	j	$31
	addiu	$sp,$sp,48

$L240:
	lw	$25,%call16(gettimeofday)($28)
	addiu	$4,$sp,24
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lui	$2,%hi(begin_time.3613)
	lw	$6,28($sp)
	li	$5,983040			# 0xf0000
	lw	$8,24($sp)
	li	$9,-1048576			# 0xfffffffffff00000
	lw	$3,%lo(begin_time.3613)($2)
	addiu	$7,$5,16960
	mtlo	$6
	lw	$31,44($sp)
	ori	$10,$9,0xbdc0
	lw	$17,40($sp)
	addiu	$4,$2,%lo(begin_time.3613)
	lw	$16,36($sp)
	lw	$12,4($4)
	addiu	$sp,$sp,48
	madd	$8,$7
	madd	$3,$10
	mflo	$11
	subu	$2,$11,$12
	j	$31
	sra	$3,$2,31

	.set	macro
	.set	reorder
	.end	timer
	.size	timer, .-timer
	.globl	__udivdi3
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
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

	lui	$11,%hi($LC1)
	lw	$28,24($sp)
	lui	$10,%hi($LC0)
	ldc1	$f2,%lo($LC1)($11)
	move	$6,$19
	addiu	$4,$10,%lo($LC0)
	move	$7,$20
	lw	$25,%call16(printf)($28)
	mul.d	$f0,$f0,$f2
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
	.frame	$sp,80,$31		# vars= 0, regs= 10/4, args= 16, gp= 8
	.mask	0xc0ff0000,-20
	.fmask	0x00f00000,-8
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-80
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$21,44($sp)
	lui	$2,%hi($LC6)
	sw	$17,28($sp)
	move	$21,$4
	lui	$3,%hi($LC2)
	sdc1	$f20,64($sp)
	addiu	$17,$4,7168
	sw	$19,36($sp)
	lui	$4,%hi($LC5)
	sw	$18,32($sp)
	sw	$16,24($sp)
	lui	$19,%hi($LC4)
	sdc1	$f22,72($sp)
	lui	$18,%hi($LC3)
	sw	$31,60($sp)
	move	$16,$5
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$20,40($sp)
	.cprestore	16
	lwc1	$f20,%lo($LC6)($2)
	lwc1	$f21,%lo($LC2)($3)
	.option	pic0
	j	$L267
	.option	pic2
	lwc1	$f22,%lo($LC5)($4)

$L277:
	li	$31,2			# 0x2
	beq	$2,$31,$L260
	lw	$25,%call16(rand)($28)

	lwc1	$f8,0($21)
$L261:
	mtc1	$0,$f13
	c.eq.s	$fcc2,$f8,$f13
	bc1f	$fcc2,$L266
	nop

	swc1	$f20,0($21)
$L266:
	addiu	$21,$21,4
	beq	$21,$17,$L278
	lw	$31,60($sp)

$L267:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$20,$2,1

	lw	$28,16($sp)
	beq	$16,$0,$L276
	addiu	$22,$2,1

$L255:
	mtc1	$20,$f0
	lw	$25,%call16(rand)($28)
	mtc1	$22,$f2
	cvt.s.w	$f1,$f0
	cvt.s.w	$f3,$f2
	div.s	$f4,$f1,$f3
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	swc1	$f4,0($21)

	li	$11,1431633920			# 0x55550000
	sra	$10,$2,31
	addiu	$12,$11,21846
	mult	$2,$12
	mfhi	$13
	subu	$14,$13,$10
	sll	$15,$14,1
	addu	$24,$15,$14
	subu	$2,$2,$24
	bne	$2,$0,$L277
	lw	$28,16($sp)

	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	li	$10,1759182848			# 0x68db0000
	sra	$13,$2,31
	lwc1	$f9,0($21)
	ori	$11,$10,0x8bad
	mult	$2,$11
	li	$24,5000			# 0x1388
	mfhi	$12
	sra	$14,$12,11
	subu	$15,$14,$13
	mul	$3,$15,$24
	subu	$2,$2,$3
	addiu	$4,$2,1
	mtc1	$4,$f10
	cvt.s.w	$f11,$f10
	mul.s	$f8,$f11,$f9
	c.le.s	$fcc0,$f21,$f8
	bc1f	$fcc0,$L272
	lw	$28,16($sp)

	lwc1	$f14,%lo($LC3)($18)
	addiu	$21,$21,4
	bne	$21,$17,$L267
	swc1	$f14,-4($21)

	lw	$31,60($sp)
$L278:
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	ldc1	$f22,72($sp)
	ldc1	$f20,64($sp)
	j	$31
	addiu	$sp,$sp,80

$L260:
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	li	$4,1717960704			# 0x66660000
	sra	$3,$2,31
	lwc1	$f5,0($21)
	addiu	$fp,$4,26215
	lw	$28,16($sp)
	mult	$2,$fp
	mfhi	$5
	sra	$6,$5,2
	subu	$23,$6,$3
	sll	$7,$23,1
	sll	$20,$23,3
	addu	$8,$7,$20
	subu	$9,$2,$8
	addiu	$22,$9,1
	mtc1	$22,$f6
	cvt.s.w	$f7,$f6
	div.s	$f8,$f5,$f7
$L274:
	.option	pic0
	j	$L261
	.option	pic2
	swc1	$f8,0($21)

$L276:
	lw	$25,%call16(rand)($28)
	li	$23,1			# 0x1
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	li	$fp,-1			# 0xffffffffffffffff

	move	$6,$23
	lw	$28,16($sp)
	andi	$5,$2,0x1
	movn	$6,$fp,$5
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	mul	$20,$20,$6

	andi	$8,$2,0x1
	lw	$28,16($sp)
	movn	$23,$fp,$8
	.option	pic0
	j	$L255
	.option	pic2
	mul	$22,$22,$23

$L272:
	lwc1	$f12,%lo($LC4)($19)
	c.le.s	$fcc1,$f8,$f12
	bc1f	$fcc1,$L274
	nop

	.option	pic0
	j	$L266
	.option	pic2
	swc1	$f22,0($21)

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
$L280:
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
	bne	$2,$13,$L280
	swc1	$f4,0($10)

	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	fill_fixed_array_from_float_array
	.size	fill_fixed_array_from_float_array, .-fill_fixed_array_from_float_array
	.align	2
	.globl	fill_arrays
	.set	nomips16
	.set	nomicromips
	.ent	fill_arrays
	.type	fill_arrays, @function
fill_arrays:
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$5,1			# 0x1
	sw	$31,36($sp)
	sw	$16,28($sp)
	lui	$16,%hi($LC7)
	.cprestore	16
	lw	$4,%got(fval1)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sw	$17,32($sp)

	lw	$28,16($sp)
	lw	$4,%got(fval2)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	move	$5,$0

	move	$2,$0
	lwc1	$f0,%lo($LC7)($16)
	li	$15,7168			# 0x1c00
	lw	$28,16($sp)
	lw	$4,%got(xval1)($28)
	lw	$3,%got(fval1)($28)
$L291:
	addiu	$6,$2,4
	lwxc1	$f8,$3($2)
	addiu	$24,$2,8
	addiu	$14,$2,12
	lwxc1	$f7,$3($6)
	addiu	$13,$2,16
	addiu	$12,$2,20
	lwxc1	$f6,$3($24)
	addiu	$11,$2,24
	addiu	$10,$2,28
	lwxc1	$f5,$3($14)
	addu	$7,$4,$2
	lwxc1	$f4,$3($13)
	mul.s	$f9,$f8,$f0
	addu	$31,$4,$6
	addu	$24,$4,$24
	lwxc1	$f3,$3($12)
	mul.s	$f10,$f7,$f0
	addu	$14,$4,$14
	addu	$13,$4,$13
	lwxc1	$f2,$3($11)
	mul.s	$f11,$f6,$f0
	addu	$12,$4,$12
	addu	$11,$4,$11
	lwxc1	$f1,$3($10)
	mul.s	$f12,$f5,$f0
	addu	$10,$4,$10
	addiu	$2,$2,32
	mul.s	$f13,$f4,$f0
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
	swc1	$f18,0($31)
	trunc.w.s $f5,$f15
	swc1	$f19,0($24)
	trunc.w.s $f4,$f16
	swc1	$f8,0($14)
	swc1	$f7,0($13)
	swc1	$f6,0($12)
	swc1	$f5,0($11)
	bne	$2,$15,$L291
	swc1	$f4,0($10)

	lwc1	$f0,%lo($LC7)($16)
	move	$2,$0
	lw	$4,%got(xval2)($28)
	li	$15,7168			# 0x1c00
	lw	$3,%got(fval2)($28)
$L292:
	addiu	$14,$2,12
	lwxc1	$f9,$3($2)
	addiu	$13,$2,16
	addiu	$12,$2,20
	lwxc1	$f12,$3($14)
	addiu	$11,$2,24
	addiu	$16,$2,4
	lwxc1	$f13,$3($13)
	addiu	$24,$2,8
	addiu	$10,$2,28
	lwxc1	$f10,$3($16)
	addu	$17,$4,$2
	lwxc1	$f11,$3($24)
	mul.s	$f14,$f9,$f0
	addu	$31,$4,$14
	addu	$6,$4,$16
	lwxc1	$f3,$3($12)
	mul.s	$f17,$f12,$f0
	addu	$14,$4,$13
	addu	$5,$4,$24
	lwxc1	$f2,$3($11)
	mul.s	$f18,$f13,$f0
	addu	$13,$4,$12
	addiu	$2,$2,32
	lwxc1	$f1,$3($10)
	mul.s	$f15,$f10,$f0
	addu	$12,$4,$11
	addu	$11,$4,$10
	mul.s	$f16,$f11,$f0
	mul.s	$f19,$f3,$f0
	mul.s	$f9,$f2,$f0
	mul.s	$f10,$f1,$f0
	trunc.w.s $f8,$f14
	trunc.w.s $f7,$f15
	trunc.w.s $f6,$f16
	trunc.w.s $f5,$f17
	trunc.w.s $f4,$f18
	swc1	$f8,0($17)
	trunc.w.s $f11,$f19
	swc1	$f7,0($6)
	trunc.w.s $f12,$f9
	swc1	$f6,0($5)
	trunc.w.s $f13,$f10
	swc1	$f5,0($31)
	swc1	$f4,0($14)
	swc1	$f11,0($13)
	swc1	$f12,0($12)
	bne	$2,$15,$L292
	swc1	$f13,0($11)

	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	fill_arrays
	.size	fill_arrays, .-fill_arrays
	.section	.rodata.str1.4
	.align	2
$LC8:
	.ascii	"\012SUBTRACTION BENCHMARKS:\000"
	.align	2
$LC9:
	.ascii	"\011Float subtraction:\012\011\000"
	.align	2
$LC10:
	.ascii	"\011Fixed-point 16.16 subtraction:\012\011\000"
	.align	2
$LC11:
	.ascii	"\011Note: skipping integer timing; will be same as fixed"
	.ascii	"-point.\000"
	.text
	.align	2
	.globl	bench_subtraction
	.set	nomips16
	.set	nomicromips
	.ent	bench_subtraction
	.type	bench_subtraction, @function
bench_subtraction:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,28($sp)
	sw	$16,24($sp)
	.cprestore	16
	.option	pic0
	jal	fill_arrays
	.option	pic2
	move	$16,$4

	lui	$4,%hi($LC8)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC8)

	lui	$2,%hi($LC9)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC9)

	lui	$3,%hi(bench_float_sub)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$3,%lo(bench_float_sub)

	lui	$5,%hi($LC10)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$5,%lo($LC10)

	lui	$6,%hi(bench_fixed_sub)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$6,%lo(bench_fixed_sub)

	lui	$7,%hi($LC11)
	lw	$28,16($sp)
	lw	$31,28($sp)
	addiu	$4,$7,%lo($LC11)
	lw	$16,24($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jr	$25
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	bench_subtraction
	.size	bench_subtraction, .-bench_subtraction
	.section	.rodata.str1.4
	.align	2
$LC12:
	.ascii	"\012ADDITION BENCHMARKS:\000"
	.align	2
$LC13:
	.ascii	"\011Float addition:\012\011\000"
	.align	2
$LC14:
	.ascii	"\011Fixed-point 16.16 addition:\012\011\000"
	.text
	.align	2
	.globl	bench_addition
	.set	nomips16
	.set	nomicromips
	.ent	bench_addition
	.type	bench_addition, @function
bench_addition:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,28($sp)
	sw	$16,24($sp)
	.cprestore	16
	.option	pic0
	jal	fill_arrays
	.option	pic2
	move	$16,$4

	lui	$4,%hi($LC12)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC12)

	lui	$2,%hi($LC13)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC13)

	lui	$3,%hi(bench_float_add)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$3,%lo(bench_float_add)

	lui	$5,%hi($LC14)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$5,%lo($LC14)

	lui	$6,%hi(bench_fixed_add)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$6,%lo(bench_fixed_add)

	lui	$7,%hi($LC11)
	lw	$28,16($sp)
	lw	$31,28($sp)
	addiu	$4,$7,%lo($LC11)
	lw	$16,24($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jr	$25
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	bench_addition
	.size	bench_addition, .-bench_addition
	.section	.rodata.str1.4
	.align	2
$LC15:
	.ascii	"\012MULTIPLICATION BENCHMARKS:\000"
	.align	2
$LC16:
	.ascii	"\011Float multiplication:\012\011\000"
	.align	2
$LC17:
	.ascii	"\011Fixed-point 16.16 multiplication:\012\011\000"
	.align	2
$LC18:
	.ascii	"\011Integer multiplication:\012\011\000"
	.text
	.align	2
	.globl	bench_multiplication
	.set	nomips16
	.set	nomicromips
	.ent	bench_multiplication
	.type	bench_multiplication, @function
bench_multiplication:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,28($sp)
	sw	$16,24($sp)
	.cprestore	16
	.option	pic0
	jal	fill_arrays
	.option	pic2
	move	$16,$4

	lui	$4,%hi($LC15)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC15)

	lui	$2,%hi($LC16)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC16)

	lui	$3,%hi(bench_float_mul)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$3,%lo(bench_float_mul)

	beq	$16,$0,$L317
	lw	$28,16($sp)

	lw	$7,%got(fresult)($28)
	move	$14,$0
	lw	$6,%got(fval2)($28)
	li	$5,7168			# 0x1c00
	lw	$15,%got(fval1)($28)
	move	$24,$0
$L316:
	lwxc1	$f1,$6($24)
	addiu	$31,$24,4
	addiu	$13,$24,8
	lwxc1	$f7,$15($24)
	addiu	$12,$24,12
	addiu	$11,$24,16
	addiu	$10,$24,20
	lwxc1	$f0,$6($31)
	addiu	$9,$24,24
	addiu	$8,$24,28
	lwxc1	$f6,$15($31)
	lwxc1	$f2,$6($13)
	mul.s	$f11,$f1,$f7
	lwxc1	$f5,$15($13)
	lwxc1	$f8,$6($12)
	lwxc1	$f4,$15($12)
	mul.s	$f12,$f0,$f6
	lwxc1	$f13,$6($11)
	lwxc1	$f3,$15($11)
	mul.s	$f14,$f2,$f5
	lwxc1	$f15,$6($10)
	lwxc1	$f10,$15($10)
	mul.s	$f16,$f8,$f4
	lwxc1	$f17,$6($9)
	lwxc1	$f9,$15($9)
	mul.s	$f18,$f13,$f3
	lwxc1	$f19,$6($8)
	lwxc1	$f7,$15($8)
	mul.s	$f6,$f15,$f10
	swxc1	$f11,$7($24)
	addiu	$24,$24,32
	mul.s	$f1,$f17,$f9
	swxc1	$f12,$7($31)
	swxc1	$f14,$7($13)
	mul.s	$f0,$f19,$f7
	swxc1	$f16,$7($12)
	swxc1	$f18,$7($11)
	swxc1	$f6,$7($10)
	swxc1	$f1,$7($9)
	bne	$24,$5,$L316
	swxc1	$f0,$7($8)

	addiu	$14,$14,1
	bne	$16,$14,$L316
	move	$24,$0

$L317:
	lui	$4,%hi($LC17)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC17)

	lui	$2,%hi(bench_fixed_mul)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$2,%lo(bench_fixed_mul)

	lui	$3,%hi($LC18)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$3,%lo($LC18)

	lui	$7,%hi(bench_integer_mul)
	lw	$28,16($sp)
	move	$5,$16
	lw	$31,28($sp)
	addiu	$4,$7,%lo(bench_integer_mul)
	lw	$16,24($sp)
	.option	pic0
	j	avg_of_3_runs
	.option	pic2
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	bench_multiplication
	.size	bench_multiplication, .-bench_multiplication
	.section	.rodata.str1.4
	.align	2
$LC19:
	.ascii	"\012DIVISION BENCHMARKS:\000"
	.align	2
$LC20:
	.ascii	"\011Float Division:\012\011\000"
	.align	2
$LC21:
	.ascii	"\011Fixed-point 16.16 Division:\012\011\000"
	.align	2
$LC22:
	.ascii	"\011Integer Division:\012\011\000"
	.text
	.align	2
	.globl	bench_division
	.set	nomips16
	.set	nomicromips
	.ent	bench_division
	.type	bench_division, @function
bench_division:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,28($sp)
	sw	$16,24($sp)
	.cprestore	16
	.option	pic0
	jal	fill_arrays
	.option	pic2
	move	$16,$4

	lui	$4,%hi($LC19)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC19)

	lui	$2,%hi($LC20)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC20)

	lui	$3,%hi(bench_float_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$3,%lo(bench_float_div)

	lui	$5,%hi($LC21)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$5,%lo($LC21)

	lui	$6,%hi(bench_fixed_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$6,%lo(bench_fixed_div)

	lui	$7,%hi($LC22)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$7,%lo($LC22)

	lui	$8,%hi(bench_integer_div)
	lw	$28,16($sp)
	move	$5,$16
	lw	$31,28($sp)
	addiu	$4,$8,%lo(bench_integer_div)
	lw	$16,24($sp)
	.option	pic0
	j	avg_of_3_runs
	.option	pic2
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	bench_division
	.size	bench_division, .-bench_division
	.section	.rodata.str1.4
	.align	2
$LC23:
	.ascii	"\012SQUARE-ROOT BENCHMARKS:\000"
	.align	2
$LC24:
	.ascii	"\011Float Square Root:\012\011\000"
	.align	2
$LC25:
	.ascii	"\011Fixed-point 16.16 Square Root:\012\011\000"
	.text
	.align	2
	.globl	bench_squareroot
	.set	nomips16
	.set	nomicromips
	.ent	bench_squareroot
	.type	bench_squareroot, @function
bench_squareroot:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,28($sp)
	sw	$16,24($sp)
	.cprestore	16
	.option	pic0
	jal	fill_arrays
	.option	pic2
	move	$16,$4

	lui	$4,%hi($LC23)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC23)

	lui	$2,%hi($LC24)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC24)

	lui	$3,%hi(bench_float_sqrt)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$3,%lo(bench_float_sqrt)

	lui	$5,%hi($LC25)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$5,%lo($LC25)

	lui	$6,%hi(bench_fixed_sqrt)
	lw	$28,16($sp)
	move	$5,$16
	lw	$31,28($sp)
	addiu	$4,$6,%lo(bench_fixed_sqrt)
	lw	$16,24($sp)
	.option	pic0
	j	avg_of_3_runs
	.option	pic2
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	bench_squareroot
	.size	bench_squareroot, .-bench_squareroot
	.section	.rodata.str1.4
	.align	2
$LC26:
	.ascii	"Missing argument: number of iterations\000"
	.align	2
$LC27:
	.ascii	"32-bit Floating Point vs. 16.16 Fixed-point Math Speed C"
	.ascii	"omparison\000"
	.align	2
$LC28:
	.ascii	"Written by Dan Silsby  dansilsby <AT> gmail <DOT> com\000"
	.align	2
$LC29:
	.ascii	"NOTE: before each benchmark is timed, sync(), fflush(),\012"
	.ascii	"a L2 cache flush, and .5 second delay are all executed.\000"
	.align	2
$LC30:
	.ascii	"Times reported are an average of 3 of these benchmark ru"
	.ascii	"ns.\012\000"
	.align	2
$LC31:
	.ascii	"Benchmark requested: %u iterations over %u-length arrays"
	.ascii	".\012\000"
	.align	2
$LC32:
	.ascii	"Reported sizeof(float) on this architecture: %d\012\012\000"
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
	lw	$25,%call16(srand)($28)
	.reloc	1f,R_MIPS_JALR,srand
1:	jalr	$25
	move	$4,$2

	slt	$2,$16,2
	bne	$2,$0,$L336
	lw	$28,16($sp)

	lw	$25,%call16(atoi)($28)
	.reloc	1f,R_MIPS_JALR,atoi
1:	jalr	$25
	lw	$4,4($17)

	lui	$4,%hi($LC27)
	lw	$28,16($sp)
	move	$16,$2
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC27)

	lui	$3,%hi($LC28)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$3,%lo($LC28)

	lui	$5,%hi($LC29)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$5,%lo($LC29)

	lui	$6,%hi($LC30)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$6,%lo($LC30)

	lui	$7,%hi($LC31)
	lw	$28,16($sp)
	li	$6,1792			# 0x700
	addiu	$4,$7,%lo($LC31)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	move	$5,$16

	lui	$8,%hi($LC32)
	lw	$28,16($sp)
	li	$5,4			# 0x4
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$8,%lo($LC32)

	.option	pic0
	jal	bench_addition
	.option	pic2
	move	$4,$16

	.option	pic0
	jal	bench_subtraction
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

	lui	$9,%hi(dummy_array)
	li	$12,262144			# 0x40000
	addiu	$10,$9,%lo(dummy_array)
	lw	$11,%lo(dummy_array)($9)
	addu	$13,$12,$10
	lw	$14,-4($13)
	xor	$15,$11,$14
	sltu	$2,$15,1
$L334:
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

$L336:
	lui	$24,%hi($LC26)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$24,%lo($LC26)

	.option	pic0
	j	$L334
	.option	pic2
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.local	begin_time.3613
	.comm	begin_time.3613,8,4
	.local	dummy_array
	.comm	dummy_array,262144,4

	.comm	xresult,7168,4

	.comm	xval2,7168,4

	.comm	xval1,7168,4

	.comm	fresult,7168,4

	.comm	fval2,7168,4

	.comm	fval1,7168,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
$LC1:
	.word	-1598689907
	.word	1051772663
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
$LC2:
	.word	1191181824
	.align	2
$LC3:
	.word	1182793812
	.align	2
$LC4:
	.word	-956301824
	.align	2
$LC5:
	.word	-964689836
	.align	2
$LC6:
	.word	1039979355
	.align	2
$LC7:
	.word	1199570944
	.ident	"GCC: (Buildroot 2014.05-gbb847d4) 4.9.1"
