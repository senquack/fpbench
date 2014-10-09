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
	beq	$4,$0,$L16
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$13,%got(fval1)($28)
	addiu	$25,$13,7168
	lw	$2,%got(fval1)($28)
$L14:
	lw	$5,%got(fval2)($28)
	lw	$3,%got(fresult)($28)
$L3:
	addiu	$24,$2,16
	lwc1	$f10,0($2)
	addiu	$15,$5,16
	addiu	$11,$2,32
	lwc1	$f1,0($5)
	addiu	$10,$5,32
	lwc1	$f2,4($2)
	addiu	$9,$2,48
	addiu	$8,$5,48
	lwc1	$f9,4($5)
	addiu	$2,$2,64
	addiu	$5,$5,64
	lwc1	$f0,-56($2)
	addiu	$12,$3,16
	addiu	$7,$3,32
	lwc1	$f8,-56($5)
	add.s	$f14,$f10,$f1
	addiu	$6,$3,48
	addiu	$3,$3,64
	lwc1	$f18,4($24)
	add.s	$f15,$f2,$f9
	lwc1	$f5,4($15)
	lwc1	$f3,-48($2)
	lwc1	$f6,-48($5)
	add.s	$f16,$f0,$f8
	lwc1	$f12,-32($2)
	lwc1	$f13,-32($5)
	lwc1	$f4,-52($2)
	add.s	$f19,$f3,$f6
	lwc1	$f7,-52($5)
	lwc1	$f10,8($24)
	add.s	$f2,$f12,$f13
	lwc1	$f11,8($15)
	lwc1	$f9,12($24)
	lwc1	$f8,12($15)
	add.s	$f17,$f4,$f7
	lwc1	$f1,4($11)
	add.s	$f7,$f18,$f5
	lwc1	$f6,4($10)
	add.s	$f4,$f10,$f11
	lwc1	$f0,8($11)
	lwc1	$f12,8($10)
	add.s	$f3,$f9,$f8
	swc1	$f14,-64($3)
	swc1	$f15,-60($3)
	add.s	$f14,$f1,$f6
	swc1	$f17,-52($3)
	add.s	$f15,$f0,$f12
	swc1	$f19,-48($3)
	swc1	$f16,-56($3)
	swc1	$f7,4($12)
	swc1	$f4,8($12)
	swc1	$f3,12($12)
	swc1	$f2,-32($3)
	swc1	$f14,4($7)
	swc1	$f15,8($7)
	lwc1	$f16,12($11)
	lwc1	$f13,-16($2)
	lwc1	$f17,-16($5)
	lwc1	$f18,12($10)
	lwc1	$f19,4($9)
	lwc1	$f10,4($8)
	lwc1	$f11,8($9)
	add.s	$f9,$f13,$f17
	lwc1	$f8,8($8)
	add.s	$f7,$f16,$f18
	lwc1	$f6,12($9)
	lwc1	$f5,12($8)
	add.s	$f2,$f19,$f10
	add.s	$f1,$f11,$f8
	swc1	$f7,12($7)
	swc1	$f9,-16($3)
	add.s	$f4,$f6,$f5
	swc1	$f2,4($6)
	swc1	$f1,8($6)
	bne	$2,$25,$L3
	swc1	$f4,12($6)

	addiu	$14,$14,1
	bne	$14,$4,$L14
	lw	$2,%got(fval1)($28)

$L16:
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
	.frame	$sp,24,$31		# vars= 0, regs= 0/6, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x03f00000,-8
	.set	noreorder
	.set	nomacro
	sll	$24,$4,1
	beq	$24,$0,$L30
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-24
	addiu	$28,$28,%lo(__gnu_local_gp)
	sdc1	$f24,16($sp)
	move	$15,$0
	lw	$14,%got(dval1)($28)
	sdc1	$f22,8($sp)
	sdc1	$f20,0($sp)
	addiu	$25,$14,7168
$L20:
	lw	$2,%got(dval1)($28)
	lw	$4,%got(dval2)($28)
	lw	$3,%got(dresult)($28)
$L19:
	addiu	$13,$2,32
	ldc1	$f0,0($4)
	addiu	$12,$4,32
	addiu	$10,$2,64
	ldc1	$f8,8($2)
	addiu	$9,$4,64
	addiu	$8,$2,96
	ldc1	$f2,16($4)
	addiu	$7,$4,96
	ldc1	$f10,0($2)
	addiu	$4,$4,128
	addiu	$2,$2,128
	ldc1	$f6,-120($4)
	addiu	$11,$3,32
	addiu	$6,$3,64
	ldc1	$f4,-112($2)
	addiu	$5,$3,96
	addiu	$3,$3,128
	ldc1	$f18,8($13)
	add.d	$f10,$f10,$f0
	ldc1	$f16,8($12)
	ldc1	$f14,-104($4)
	add.d	$f6,$f8,$f6
	ldc1	$f20,-104($2)
	add.d	$f4,$f4,$f2
	ldc1	$f12,-96($4)
	ldc1	$f8,-64($4)
	add.d	$f16,$f18,$f16
	ldc1	$f0,16($13)
	add.d	$f20,$f20,$f14
	ldc1	$f22,-96($2)
	ldc1	$f24,-64($2)
	ldc1	$f14,16($12)
	sdc1	$f10,-128($3)
	add.d	$f22,$f22,$f12
	ldc1	$f18,8($10)
	add.d	$f24,$f24,$f8
	ldc1	$f12,24($12)
	add.d	$f14,$f0,$f14
	ldc1	$f8,16($9)
	ldc1	$f0,16($10)
	ldc1	$f10,8($9)
	ldc1	$f2,24($13)
	sdc1	$f6,-120($3)
	add.d	$f6,$f0,$f8
	sdc1	$f4,-112($3)
	sdc1	$f22,-96($3)
	add.d	$f2,$f2,$f12
	sdc1	$f20,-104($3)
	add.d	$f12,$f18,$f10
	sdc1	$f16,8($11)
	sdc1	$f14,16($11)
	sdc1	$f2,24($11)
	sdc1	$f24,-64($3)
	sdc1	$f12,8($6)
	sdc1	$f6,16($6)
	ldc1	$f20,24($10)
	ldc1	$f22,-32($2)
	ldc1	$f24,-32($4)
	ldc1	$f16,24($9)
	ldc1	$f4,8($8)
	ldc1	$f18,8($7)
	ldc1	$f14,16($8)
	add.d	$f10,$f22,$f24
	ldc1	$f2,16($7)
	add.d	$f12,$f20,$f16
	ldc1	$f0,24($8)
	ldc1	$f8,24($7)
	add.d	$f6,$f4,$f18
	add.d	$f20,$f14,$f2
	sdc1	$f12,24($6)
	sdc1	$f10,-32($3)
	add.d	$f22,$f0,$f8
	sdc1	$f6,8($5)
	sdc1	$f20,16($5)
	bne	$2,$25,$L19
	sdc1	$f22,24($5)

	addiu	$15,$15,1
	bne	$15,$24,$L20
	ldc1	$f24,16($sp)

	ldc1	$f22,8($sp)
	ldc1	$f20,0($sp)
	j	$31
	addiu	$sp,$sp,24

$L30:
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
	.frame	$sp,40,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	lui	$28,%hi(__gnu_local_gp)
	sw	$23,32($sp)
	move	$23,$4
	sw	$fp,36($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,28($sp)
	sw	$21,24($sp)
	sw	$20,20($sp)
	sw	$19,16($sp)
	sw	$18,12($sp)
	sw	$17,8($sp)
	beq	$4,$0,$L31
	sw	$16,4($sp)

	lw	$21,%got(xval1)($28)
	move	$22,$0
	addiu	$21,$21,7168
$L34:
	lw	$2,%got(xval1)($28)
	lw	$5,%got(xval2)($28)
	lw	$3,%got(xresult)($28)
$L33:
	lw	$12,12($5)
	addiu	$15,$2,16
	lw	$16,12($2)
	addiu	$11,$2,32
	lw	$7,0($5)
	addiu	$10,$5,32
	lw	$4,8($5)
	addiu	$14,$3,16
	lw	$20,16($2)
	addu	$16,$16,$12
	lw	$24,16($5)
	addiu	$9,$2,48
	lw	$12,32($5)
	addiu	$8,$5,48
	lw	$19,0($2)
	addiu	$5,$5,64
	lw	$17,8($2)
	addiu	$2,$2,64
	lw	$13,-32($2)
	lw	$6,-60($5)
	addu	$19,$19,$7
	lw	$18,-60($2)
	addu	$17,$17,$4
	lw	$fp,-44($2)
	addu	$4,$20,$24
	lw	$25,-44($5)
	addu	$13,$13,$12
	lw	$20,-36($5)
	addiu	$7,$3,32
	lw	$12,-40($5)
	addu	$18,$18,$6
	lw	$24,-40($2)
	addiu	$6,$3,48
	lw	$15,12($15)
	addiu	$3,$3,64
	addu	$25,$fp,$25
	lw	$fp,4($11)
	sw	$19,-64($3)
	addu	$24,$24,$12
	addu	$15,$15,$20
	sw	$18,-60($3)
	lw	$20,8($10)
	lw	$12,4($10)
	lw	$19,8($11)
	sw	$16,-52($3)
	addu	$12,$fp,$12
	sw	$4,-48($3)
	addu	$18,$19,$20
	sw	$17,-56($3)
	sw	$25,4($14)
	sw	$24,8($14)
	sw	$15,12($14)
	sw	$13,-32($3)
	sw	$12,4($7)
	sw	$18,8($7)
	lw	$17,12($11)
	lw	$14,12($10)
	lw	$25,4($8)
	lw	$10,8($9)
	lw	$20,12($9)
	addu	$13,$17,$14
	lw	$fp,12($8)
	lw	$16,-16($2)
	lw	$4,-16($5)
	lw	$11,4($9)
	lw	$15,8($8)
	sw	$13,12($7)
	addu	$24,$16,$4
	addu	$9,$11,$25
	addu	$8,$10,$15
	addu	$7,$20,$fp
	sw	$24,-16($3)
	sw	$9,4($6)
	sw	$8,8($6)
	bne	$2,$21,$L33
	sw	$7,12($6)

	addiu	$22,$22,1
	bne	$22,$23,$L34
	nop

$L31:
	lw	$fp,36($sp)
	lw	$23,32($sp)
	lw	$22,28($sp)
	lw	$21,24($sp)
	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,40

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
	.frame	$sp,40,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	lui	$28,%hi(__gnu_local_gp)
	sw	$23,32($sp)
	move	$23,$4
	sw	$fp,36($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,28($sp)
	sw	$21,24($sp)
	sw	$20,20($sp)
	sw	$19,16($sp)
	sw	$18,12($sp)
	sw	$17,8($sp)
	beq	$4,$0,$L42
	sw	$16,4($sp)

	lw	$21,%got(i32val1)($28)
	move	$22,$0
	addiu	$21,$21,7168
$L45:
	lw	$2,%got(i32val1)($28)
	lw	$5,%got(i32val2)($28)
	lw	$3,%got(i32result)($28)
$L44:
	lw	$12,12($2)
	addiu	$20,$2,16
	lw	$16,12($5)
	addiu	$10,$2,32
	lw	$7,0($2)
	addiu	$11,$5,32
	lw	$4,8($2)
	addiu	$14,$3,16
	lw	$15,16($5)
	addu	$16,$16,$12
	lw	$24,16($2)
	addiu	$8,$2,48
	lw	$12,32($2)
	addiu	$9,$5,48
	lw	$19,0($5)
	addiu	$2,$2,64
	lw	$17,8($5)
	addiu	$5,$5,64
	lw	$13,-32($5)
	lw	$6,-60($2)
	addu	$19,$19,$7
	lw	$18,-60($5)
	addu	$17,$17,$4
	lw	$fp,-44($5)
	addu	$4,$15,$24
	lw	$25,-44($2)
	addu	$13,$13,$12
	lw	$24,-40($5)
	addiu	$7,$3,32
	lw	$12,-40($2)
	addu	$18,$18,$6
	lw	$15,-36($5)
	addiu	$6,$3,48
	lw	$20,12($20)
	addiu	$3,$3,64
	addu	$25,$fp,$25
	lw	$fp,4($11)
	sw	$19,-64($3)
	addu	$24,$24,$12
	addu	$15,$15,$20
	sw	$18,-60($3)
	lw	$20,8($10)
	lw	$12,4($10)
	lw	$19,8($11)
	sw	$16,-52($3)
	addu	$12,$fp,$12
	sw	$4,-48($3)
	addu	$18,$19,$20
	sw	$17,-56($3)
	sw	$25,4($14)
	sw	$24,8($14)
	sw	$15,12($14)
	sw	$13,-32($3)
	sw	$12,4($7)
	sw	$18,8($7)
	lw	$17,12($11)
	lw	$14,12($10)
	lw	$25,4($8)
	lw	$10,8($9)
	lw	$20,12($9)
	addu	$13,$17,$14
	lw	$fp,12($8)
	lw	$16,-16($5)
	lw	$4,-16($2)
	lw	$11,4($9)
	lw	$15,8($8)
	sw	$13,12($7)
	addu	$24,$16,$4
	addu	$9,$11,$25
	addu	$8,$10,$15
	addu	$7,$20,$fp
	sw	$24,-16($3)
	sw	$9,4($6)
	sw	$8,8($6)
	bne	$2,$21,$L44
	sw	$7,12($6)

	addiu	$22,$22,1
	bne	$22,$23,$L45
	nop

$L42:
	lw	$fp,36($sp)
	lw	$23,32($sp)
	lw	$22,28($sp)
	lw	$21,24($sp)
	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,40

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
	.frame	$sp,16,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x00070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$4,$4,1
	beq	$4,$0,$L63
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-16
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$15,$0
	sw	$18,12($sp)
	sw	$17,8($sp)
	sw	$16,4($sp)
	lw	$14,%got(i64val1)($28)
	addiu	$14,$14,7168
$L56:
	lw	$2,%got(i64val1)($28)
	lw	$5,%got(i64val2)($28)
	lw	$3,%got(i64result)($28)
$L55:
	addiu	$2,$2,32
	lw	$11,0($5)
	lw	$10,8($5)
	addiu	$5,$5,32
	lw	$7,-16($5)
	addiu	$3,$3,32
	lw	$8,-32($2)
	lw	$17,-24($2)
	lw	$18,-20($2)
	addu	$8,$11,$8
	lw	$13,-28($5)
	lw	$9,-28($2)
	addu	$17,$10,$17
	lw	$12,-20($5)
	sltu	$24,$8,$11
	lw	$6,-8($5)
	lw	$16,-16($2)
	addu	$9,$13,$9
	lw	$25,-8($2)
	sltu	$13,$17,$10
	addu	$12,$12,$18
	lw	$11,-12($5)
	lw	$10,-4($5)
	addu	$16,$7,$16
	lw	$18,-12($2)
	addu	$25,$6,$25
	sw	$8,-32($3)
	sltu	$7,$16,$7
	sw	$17,-24($3)
	sltu	$6,$25,$6
	lw	$8,-4($2)
	addu	$11,$11,$18
	sw	$16,-16($3)
	addu	$16,$24,$9
	sw	$25,-8($3)
	addu	$24,$7,$11
	addu	$17,$10,$8
	addu	$25,$13,$12
	sw	$16,-28($3)
	addu	$9,$6,$17
	sw	$24,-12($3)
	sw	$25,-20($3)
	bne	$2,$14,$L55
	sw	$9,-4($3)

	addiu	$15,$15,1
	bne	$15,$4,$L56
	lw	$18,12($sp)

	lw	$17,8($sp)
	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,16

$L63:
	j	$31
	nop

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
	beq	$4,$0,$L78
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$13,%got(fval1)($28)
	addiu	$25,$13,7168
	lw	$2,%got(fval1)($28)
$L76:
	lw	$5,%got(fval2)($28)
	lw	$3,%got(fresult)($28)
$L66:
	addiu	$24,$2,16
	lwc1	$f10,0($2)
	addiu	$15,$5,16
	addiu	$11,$2,32
	lwc1	$f1,0($5)
	addiu	$10,$5,32
	lwc1	$f2,4($2)
	addiu	$9,$2,48
	addiu	$8,$5,48
	lwc1	$f9,4($5)
	addiu	$2,$2,64
	addiu	$5,$5,64
	lwc1	$f0,-56($2)
	addiu	$12,$3,16
	addiu	$7,$3,32
	lwc1	$f8,-56($5)
	mul.s	$f14,$f10,$f1
	addiu	$6,$3,48
	addiu	$3,$3,64
	lwc1	$f18,4($24)
	mul.s	$f15,$f2,$f9
	lwc1	$f5,4($15)
	lwc1	$f3,-48($2)
	lwc1	$f6,-48($5)
	mul.s	$f16,$f0,$f8
	lwc1	$f12,-32($2)
	lwc1	$f13,-32($5)
	lwc1	$f4,-52($2)
	mul.s	$f19,$f3,$f6
	lwc1	$f7,-52($5)
	lwc1	$f10,8($24)
	mul.s	$f2,$f12,$f13
	lwc1	$f11,8($15)
	lwc1	$f9,12($24)
	lwc1	$f8,12($15)
	mul.s	$f17,$f4,$f7
	lwc1	$f1,4($11)
	mul.s	$f7,$f18,$f5
	lwc1	$f6,4($10)
	mul.s	$f4,$f10,$f11
	lwc1	$f0,8($11)
	lwc1	$f12,8($10)
	mul.s	$f3,$f9,$f8
	swc1	$f14,-64($3)
	swc1	$f15,-60($3)
	mul.s	$f14,$f1,$f6
	swc1	$f17,-52($3)
	mul.s	$f15,$f0,$f12
	swc1	$f19,-48($3)
	swc1	$f16,-56($3)
	swc1	$f7,4($12)
	swc1	$f4,8($12)
	swc1	$f3,12($12)
	swc1	$f2,-32($3)
	swc1	$f14,4($7)
	swc1	$f15,8($7)
	lwc1	$f16,12($11)
	lwc1	$f13,-16($2)
	lwc1	$f17,-16($5)
	lwc1	$f18,12($10)
	lwc1	$f19,4($9)
	lwc1	$f10,4($8)
	lwc1	$f11,8($9)
	mul.s	$f9,$f13,$f17
	lwc1	$f8,8($8)
	mul.s	$f7,$f16,$f18
	lwc1	$f6,12($9)
	lwc1	$f5,12($8)
	mul.s	$f2,$f19,$f10
	mul.s	$f1,$f11,$f8
	swc1	$f7,12($7)
	swc1	$f9,-16($3)
	mul.s	$f4,$f6,$f5
	swc1	$f2,4($6)
	swc1	$f1,8($6)
	bne	$2,$25,$L66
	swc1	$f4,12($6)

	addiu	$14,$14,1
	bne	$14,$4,$L76
	lw	$2,%got(fval1)($28)

$L78:
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
	.frame	$sp,24,$31		# vars= 0, regs= 0/6, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x03f00000,-8
	.set	noreorder
	.set	nomacro
	sll	$24,$4,1
	beq	$24,$0,$L92
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-24
	addiu	$28,$28,%lo(__gnu_local_gp)
	sdc1	$f24,16($sp)
	move	$15,$0
	lw	$14,%got(dval1)($28)
	sdc1	$f22,8($sp)
	sdc1	$f20,0($sp)
	addiu	$25,$14,7168
$L82:
	lw	$2,%got(dval1)($28)
	lw	$4,%got(dval2)($28)
	lw	$3,%got(dresult)($28)
$L81:
	addiu	$13,$2,32
	ldc1	$f0,0($4)
	addiu	$12,$4,32
	addiu	$10,$2,64
	ldc1	$f8,8($2)
	addiu	$9,$4,64
	addiu	$8,$2,96
	ldc1	$f2,16($4)
	addiu	$7,$4,96
	ldc1	$f10,0($2)
	addiu	$4,$4,128
	addiu	$2,$2,128
	ldc1	$f6,-120($4)
	addiu	$11,$3,32
	addiu	$6,$3,64
	ldc1	$f4,-112($2)
	addiu	$5,$3,96
	addiu	$3,$3,128
	ldc1	$f18,8($13)
	mul.d	$f10,$f10,$f0
	ldc1	$f16,8($12)
	ldc1	$f14,-104($4)
	ldc1	$f20,-104($2)
	mul.d	$f6,$f8,$f6
	ldc1	$f12,-96($4)
	ldc1	$f8,-64($4)
	mul.d	$f4,$f4,$f2
	ldc1	$f0,16($13)
	mul.d	$f20,$f20,$f14
	ldc1	$f22,-96($2)
	ldc1	$f24,-64($2)
	ldc1	$f14,16($12)
	mul.d	$f16,$f18,$f16
	sdc1	$f10,-128($3)
	mul.d	$f22,$f22,$f12
	ldc1	$f18,8($10)
	ldc1	$f12,24($12)
	mul.d	$f24,$f24,$f8
	ldc1	$f10,8($9)
	ldc1	$f8,16($9)
	mul.d	$f14,$f0,$f14
	ldc1	$f2,24($13)
	ldc1	$f0,16($10)
	sdc1	$f6,-120($3)
	sdc1	$f4,-112($3)
	mul.d	$f2,$f2,$f12
	sdc1	$f22,-96($3)
	sdc1	$f20,-104($3)
	mul.d	$f12,$f18,$f10
	sdc1	$f16,8($11)
	sdc1	$f14,16($11)
	mul.d	$f6,$f0,$f8
	sdc1	$f2,24($11)
	sdc1	$f24,-64($3)
	sdc1	$f12,8($6)
	sdc1	$f6,16($6)
	ldc1	$f20,24($10)
	ldc1	$f22,-32($2)
	ldc1	$f24,-32($4)
	ldc1	$f16,24($9)
	ldc1	$f4,8($8)
	ldc1	$f18,8($7)
	ldc1	$f14,16($8)
	mul.d	$f12,$f22,$f24
	ldc1	$f2,16($7)
	ldc1	$f0,24($8)
	mul.d	$f10,$f20,$f16
	ldc1	$f8,24($7)
	mul.d	$f6,$f4,$f18
	mul.d	$f20,$f14,$f2
	sdc1	$f10,24($6)
	mul.d	$f22,$f0,$f8
	sdc1	$f12,-32($3)
	sdc1	$f6,8($5)
	sdc1	$f20,16($5)
	bne	$2,$25,$L81
	sdc1	$f22,24($5)

	addiu	$15,$15,1
	bne	$15,$24,$L82
	ldc1	$f24,16($sp)

	ldc1	$f22,8($sp)
	ldc1	$f20,0($sp)
	j	$31
	addiu	$sp,$sp,24

$L92:
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
	.frame	$sp,32,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x00ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	lui	$28,%hi(__gnu_local_gp)
	sw	$23,28($sp)
	move	$23,$4
	sw	$22,24($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$21,20($sp)
	sw	$20,16($sp)
	sw	$19,12($sp)
	sw	$18,8($sp)
	sw	$17,4($sp)
	beq	$4,$0,$L93
	sw	$16,0($sp)

	lw	$20,%got(xval1)($28)
	move	$21,$0
	addiu	$20,$20,7168
$L96:
	lw	$2,%got(xval1)($28)
	lw	$4,%got(xval2)($28)
	lw	$3,%got(xresult)($28)
$L95:
	lw	$7,0($2)
	addiu	$11,$2,16
	lw	$6,0($4)
	addiu	$2,$2,32
	lw	$16,-28($2)
	addiu	$9,$4,16
	lw	$5,4($4)
	addiu	$4,$4,32
	mult	$7,$6
	lw	$8,-24($4)
	lw	$15,-20($4)
	addiu	$18,$3,16
	lw	$24,-24($2)
	addiu	$3,$3,32
	lw	$14,-20($2)
	mflo	$13
	lw	$12,-16($2)
	mfhi	$10
	lw	$7,-16($4)
	mult	$16,$5
	lw	$22,8($11)
	lw	$6,12($9)
	mflo	$16
	mfhi	$17
	mult	$24,$8
	lw	$8,8($9)
	sll	$19,$10,16
	lw	$10,4($11)
	srl	$5,$13,16
	mflo	$24
	mfhi	$25
	mult	$14,$15
	sll	$17,$17,16
	srl	$16,$16,16
	or	$19,$19,$5
	mflo	$14
	mfhi	$15
	sw	$19,-32($3)
	mult	$12,$7
	lw	$7,12($11)
	lw	$11,4($9)
	sll	$25,$25,16
	srl	$24,$24,16
	or	$5,$17,$16
	mflo	$12
	mfhi	$13
	sw	$5,-28($3)
	mult	$10,$11
	sll	$15,$15,16
	srl	$14,$14,16
	or	$17,$25,$24
	mflo	$10
	mfhi	$11
	sw	$17,-24($3)
	mult	$22,$8
	sll	$13,$13,16
	srl	$12,$12,16
	or	$16,$15,$14
	mflo	$8
	mfhi	$9
	sw	$16,-20($3)
	mult	$7,$6
	sll	$11,$11,16
	srl	$10,$10,16
	or	$25,$13,$12
	mflo	$22
	mfhi	$7
	sw	$25,-16($3)
	sll	$9,$9,16
	srl	$8,$8,16
	or	$24,$9,$8
	srl	$6,$22,16
	sw	$24,8($18)
	sll	$7,$7,16
	or	$22,$11,$10
	or	$15,$7,$6
	sw	$22,4($18)
	bne	$2,$20,$L95
	sw	$15,12($18)

	addiu	$21,$21,1
	bne	$21,$23,$L96
	nop

$L93:
	lw	$23,28($sp)
	lw	$22,24($sp)
	lw	$21,20($sp)
	lw	$20,16($sp)
	lw	$19,12($sp)
	lw	$18,8($sp)
	lw	$17,4($sp)
	lw	$16,0($sp)
	j	$31
	addiu	$sp,$sp,32

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
	.frame	$sp,40,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	lui	$28,%hi(__gnu_local_gp)
	sw	$23,32($sp)
	move	$23,$4
	sw	$fp,36($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,28($sp)
	sw	$21,24($sp)
	sw	$20,20($sp)
	sw	$19,16($sp)
	sw	$18,12($sp)
	sw	$17,8($sp)
	beq	$4,$0,$L102
	sw	$16,4($sp)

	lw	$21,%got(i32val1)($28)
	move	$22,$0
	addiu	$21,$21,7168
$L105:
	lw	$2,%got(i32val1)($28)
	lw	$5,%got(i32val2)($28)
	lw	$3,%got(i32result)($28)
$L104:
	lw	$4,0($2)
	addiu	$20,$2,16
	lw	$19,0($5)
	addiu	$10,$2,32
	lw	$12,8($2)
	addiu	$11,$5,32
	lw	$17,8($5)
	addiu	$14,$3,16
	lw	$6,4($2)
	mul	$19,$19,$4
	lw	$18,4($5)
	addiu	$8,$2,48
	lw	$15,16($5)
	mul	$17,$17,$12
	lw	$24,16($2)
	addiu	$9,$5,48
	lw	$12,32($2)
	mul	$18,$18,$6
	lw	$13,32($5)
	addiu	$6,$3,48
	lw	$7,12($2)
	mul	$4,$15,$24
	lw	$16,12($5)
	addiu	$2,$2,64
	lw	$fp,20($5)
	mul	$13,$13,$12
	lw	$25,-44($2)
	addiu	$5,$5,64
	lw	$12,-40($2)
	mul	$16,$16,$7
	lw	$24,-40($5)
	addiu	$7,$3,32
	lw	$15,-36($5)
	addiu	$3,$3,64
	lw	$20,12($20)
	mul	$25,$fp,$25
	lw	$fp,4($11)
	mul	$24,$24,$12
	lw	$12,4($10)
	sw	$19,-64($3)
	mul	$15,$15,$20
	sw	$18,-60($3)
	lw	$20,8($10)
	mul	$12,$fp,$12
	lw	$19,8($11)
	sw	$16,-52($3)
	sw	$4,-48($3)
	mul	$18,$19,$20
	sw	$17,-56($3)
	sw	$25,4($14)
	sw	$24,8($14)
	sw	$15,12($14)
	sw	$13,-32($3)
	sw	$12,4($7)
	sw	$18,8($7)
	lw	$17,12($11)
	lw	$14,12($10)
	lw	$25,4($8)
	lw	$10,8($9)
	lw	$20,12($9)
	mul	$13,$17,$14
	lw	$fp,12($8)
	lw	$16,-16($5)
	lw	$4,-16($2)
	lw	$11,4($9)
	mul	$12,$20,$fp
	lw	$15,8($8)
	mul	$24,$16,$4
	mul	$9,$11,$25
	sw	$13,12($7)
	mul	$8,$10,$15
	sw	$24,-16($3)
	sw	$9,4($6)
	sw	$8,8($6)
	bne	$2,$21,$L104
	sw	$12,12($6)

	addiu	$22,$22,1
	bne	$22,$23,$L105
	nop

$L102:
	lw	$fp,36($sp)
	lw	$23,32($sp)
	lw	$22,28($sp)
	lw	$21,24($sp)
	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,40

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
	.frame	$sp,40,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	lui	$28,%hi(__gnu_local_gp)
	sw	$fp,36($sp)
	sll	$fp,$4,1
	sw	$23,32($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,28($sp)
	sw	$21,24($sp)
	sw	$20,20($sp)
	sw	$19,16($sp)
	sw	$18,12($sp)
	sw	$17,8($sp)
	beq	$fp,$0,$L113
	sw	$16,4($sp)

	lw	$22,%got(i64val1)($28)
	move	$23,$0
	addiu	$22,$22,7168
$L116:
	lw	$2,%got(i64val1)($28)
	lw	$3,%got(i64val2)($28)
	lw	$5,%got(i64result)($28)
$L115:
	lw	$12,0($3)
	addiu	$2,$2,32
	lw	$10,8($3)
	addiu	$3,$3,32
	lw	$8,-16($3)
	addiu	$5,$5,32
	lw	$21,-32($2)
	lw	$17,-28($2)
	lw	$16,-20($2)
	lw	$6,-8($3)
	lw	$4,-12($2)
	mul	$17,$17,$12
	lw	$25,-4($2)
	mul	$16,$16,$10
	lw	$20,-24($2)
	mul	$4,$4,$8
	lw	$19,-16($2)
	mul	$25,$25,$6
	lw	$18,-8($2)
	multu	$12,$21
	lw	$24,-28($3)
	lw	$15,-20($3)
	mflo	$12
	mfhi	$13
	multu	$10,$20
	mflo	$10
	mfhi	$11
	sw	$12,-32($5)
	multu	$8,$19
	mfhi	$9
	mflo	$8
	sw	$10,-24($5)
	multu	$6,$18
	mflo	$6
	mfhi	$7
	mul	$14,$24,$21
	lw	$24,-4($3)
	sw	$8,-16($5)
	mul	$18,$24,$18
	sw	$6,-8($5)
	addu	$21,$14,$17
	mul	$17,$15,$20
	addu	$13,$21,$13
	addu	$25,$18,$25
	sw	$13,-28($5)
	addu	$20,$17,$16
	lw	$16,-12($3)
	addu	$11,$20,$11
	mul	$19,$16,$19
	sw	$11,-20($5)
	addu	$4,$19,$4
	addu	$15,$4,$9
	addu	$9,$25,$7
	sw	$15,-12($5)
	bne	$2,$22,$L115
	sw	$9,-4($5)

	addiu	$23,$23,1
	bne	$23,$fp,$L116
	nop

$L113:
	lw	$fp,36($sp)
	lw	$23,32($sp)
	lw	$22,28($sp)
	lw	$21,24($sp)
	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,40

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
	beq	$4,$0,$L135
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$13,%got(fval1)($28)
	addiu	$25,$13,7168
	lw	$2,%got(fval1)($28)
$L133:
	lw	$5,%got(fval2)($28)
	lw	$3,%got(fresult)($28)
$L123:
	lwc1	$f1,0($5)
	addiu	$24,$2,16
	addiu	$15,$5,16
	lwc1	$f10,0($2)
	addiu	$11,$2,32
	addiu	$10,$5,32
	lwc1	$f0,4($2)
	addiu	$9,$2,48
	addiu	$8,$5,48
	lwc1	$f9,4($5)
	addiu	$2,$2,64
	addiu	$5,$5,64
	lwc1	$f19,-56($5)
	addiu	$12,$3,16
	addiu	$7,$3,32
	div.s	$f10,$f10,$f1
	lwc1	$f8,-56($2)
	addiu	$6,$3,48
	addiu	$3,$3,64
	lwc1	$f5,4($24)
	lwc1	$f4,8($24)
	lwc1	$f18,-52($5)
	lwc1	$f7,-52($2)
	lwc1	$f6,-48($2)
	lwc1	$f17,-48($5)
	lwc1	$f2,-32($2)
	lwc1	$f13,-32($5)
	lwc1	$f15,8($15)
	lwc1	$f3,12($24)
	lwc1	$f14,12($15)
	lwc1	$f1,4($11)
	lwc1	$f12,4($10)
	div.s	$f9,$f0,$f9
	lwc1	$f11,8($10)
	lwc1	$f0,8($11)
	lwc1	$f16,4($15)
	swc1	$f10,-64($3)
	div.s	$f8,$f8,$f19
	swc1	$f9,-60($3)
	div.s	$f19,$f7,$f18
	swc1	$f8,-56($3)
	div.s	$f10,$f6,$f17
	swc1	$f19,-52($3)
	div.s	$f7,$f5,$f16
	swc1	$f10,-48($3)
	div.s	$f18,$f4,$f15
	swc1	$f7,4($12)
	div.s	$f6,$f3,$f14
	swc1	$f18,8($12)
	div.s	$f17,$f2,$f13
	swc1	$f6,12($12)
	div.s	$f2,$f1,$f12
	swc1	$f17,-32($3)
	div.s	$f13,$f0,$f11
	swc1	$f2,4($7)
	swc1	$f13,8($7)
	lwc1	$f16,12($11)
	lwc1	$f5,-16($2)
	lwc1	$f4,-16($5)
	lwc1	$f15,12($10)
	lwc1	$f14,4($9)
	lwc1	$f12,4($8)
	lwc1	$f1,8($9)
	div.s	$f3,$f5,$f4
	lwc1	$f9,8($8)
	lwc1	$f0,12($9)
	lwc1	$f11,12($8)
	div.s	$f8,$f16,$f15
	div.s	$f19,$f14,$f12
	swc1	$f8,12($7)
	swc1	$f3,-16($3)
	div.s	$f10,$f1,$f9
	swc1	$f19,4($6)
	div.s	$f7,$f0,$f11
	swc1	$f10,8($6)
	bne	$2,$25,$L123
	swc1	$f7,12($6)

	addiu	$14,$14,1
	bne	$14,$4,$L133
	lw	$2,%got(fval1)($28)

$L135:
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
	sll	$24,$4,1
	beq	$24,$0,$L149
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	sdc1	$f28,32($sp)
	move	$15,$0
	lw	$14,%got(dval1)($28)
	sdc1	$f26,24($sp)
	sdc1	$f24,16($sp)
	addiu	$25,$14,7168
	sdc1	$f22,8($sp)
	sdc1	$f20,0($sp)
$L139:
	lw	$2,%got(dval1)($28)
	lw	$4,%got(dval2)($28)
	lw	$3,%got(dresult)($28)
$L138:
	ldc1	$f0,0($4)
	addiu	$13,$2,32
	addiu	$12,$4,32
	ldc1	$f22,8($4)
	addiu	$11,$3,32
	addiu	$6,$3,64
	ldc1	$f16,0($2)
	addiu	$5,$3,96
	addiu	$10,$2,64
	ldc1	$f14,8($2)
	addiu	$9,$4,64
	addiu	$8,$2,96
	ldc1	$f12,16($2)
	addiu	$7,$4,96
	addiu	$3,$3,128
	ldc1	$f20,16($4)
	addiu	$2,$2,128
	addiu	$4,$4,128
	div.d	$f16,$f16,$f0
	ldc1	$f18,8($12)
	ldc1	$f4,16($13)
	ldc1	$f24,16($12)
	ldc1	$f26,24($13)
	ldc1	$f28,24($12)
	ldc1	$f10,8($13)
	ldc1	$f8,8($9)
	ldc1	$f0,16($10)
	ldc1	$f6,16($9)
	ldc1	$f2,8($10)
	div.d	$f14,$f14,$f22
	sdc1	$f16,-128($3)
	ldc1	$f16,-96($2)
	div.d	$f22,$f12,$f20
	ldc1	$f12,-104($2)
	ldc1	$f20,-104($4)
	sdc1	$f14,-120($3)
	div.d	$f10,$f10,$f18
	sdc1	$f22,-112($3)
	ldc1	$f22,-96($4)
	div.d	$f18,$f4,$f24
	ldc1	$f4,-64($2)
	div.d	$f24,$f26,$f28
	ldc1	$f26,-64($4)
	div.d	$f14,$f12,$f20
	div.d	$f28,$f4,$f26
	sdc1	$f14,-104($3)
	div.d	$f12,$f16,$f22
	div.d	$f2,$f2,$f8
	sdc1	$f12,-96($3)
	sdc1	$f10,8($11)
	sdc1	$f18,16($11)
	sdc1	$f24,24($11)
	sdc1	$f28,-64($3)
	div.d	$f8,$f0,$f6
	sdc1	$f2,8($6)
	sdc1	$f8,16($6)
	ldc1	$f20,24($10)
	ldc1	$f0,-32($2)
	ldc1	$f6,-32($4)
	ldc1	$f16,24($9)
	ldc1	$f22,8($8)
	ldc1	$f14,8($7)
	ldc1	$f18,16($8)
	div.d	$f24,$f0,$f6
	ldc1	$f12,16($7)
	ldc1	$f26,24($8)
	ldc1	$f10,24($7)
	div.d	$f28,$f20,$f16
	div.d	$f4,$f22,$f14
	sdc1	$f28,24($6)
	sdc1	$f24,-32($3)
	div.d	$f2,$f18,$f12
	sdc1	$f4,8($5)
	div.d	$f8,$f26,$f10
	sdc1	$f2,16($5)
	bne	$2,$25,$L138
	sdc1	$f8,24($5)

	addiu	$15,$15,1
	bne	$15,$24,$L139
	ldc1	$f28,32($sp)

	ldc1	$f26,24($sp)
	ldc1	$f24,16($sp)
	ldc1	$f22,8($sp)
	ldc1	$f20,0($sp)
	j	$31
	addiu	$sp,$sp,40

$L149:
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
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L161
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,40($sp)
	sw	$20,44($sp)
	move	$20,$0
	sw	$21,48($sp)
	move	$21,$4
	sw	$31,52($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.cprestore	16
	lw	$19,%got(xval1)($28)
	addiu	$19,$19,7168
	lw	$16,%got(xval1)($28)
$L160:
	lw	$18,%got(xval2)($28)
	lw	$17,%got(xresult)($28)
$L152:
	lw	$4,0($16)
	addiu	$16,$16,16
	lw	$6,0($18)
	addiu	$18,$18,16
	lw	$25,%call16(__divdi3)($28)
	addiu	$17,$17,16
	sra	$2,$4,31
	srl	$5,$4,16
	sll	$3,$2,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$3

	lw	$7,-12($16)
	lw	$28,16($sp)
	lw	$6,-12($18)
	sra	$8,$7,31
	sw	$2,-16($17)
	srl	$9,$7,16
	lw	$25,%call16(__divdi3)($28)
	sll	$10,$8,16
	sll	$4,$7,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$9,$10

	lw	$11,-8($16)
	lw	$28,16($sp)
	lw	$6,-8($18)
	sra	$12,$11,31
	sw	$2,-12($17)
	srl	$13,$11,16
	lw	$25,%call16(__divdi3)($28)
	sll	$14,$12,16
	sll	$4,$11,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$13,$14

	lw	$15,-4($16)
	lw	$28,16($sp)
	lw	$6,-4($18)
	sra	$24,$15,31
	sw	$2,-8($17)
	srl	$5,$15,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$24,16
	sll	$4,$15,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$28,16($sp)
	bne	$16,$19,$L152
	sw	$2,-4($17)

	addiu	$20,$20,1
	bne	$20,$21,$L160
	lw	$16,%got(xval1)($28)

	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,56

$L161:
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
	beq	$4,$0,$L162
	sw	$4,64($sp)

	sw	$0,16($sp)
$L165:
	lw	$2,%got(i32val1)($28)
	lw	$12,%got(i32val2)($28)
	lw	$19,%got(i32result)($28)
$L164:
	lw	$10,0($2)
	addiu	$3,$2,16
	lw	$4,0($12)
	addiu	$20,$12,16
	lw	$9,4($2)
	addiu	$18,$19,16
	lw	$fp,4($12)
	addiu	$13,$19,32
	teq	$4,$0,7
	divu	$0,$10,$4
	lw	$8,8($2)
	lw	$25,8($12)
	addiu	$11,$19,48
	lw	$7,12($2)
	addiu	$19,$19,64
	lw	$24,12($12)
	addiu	$17,$2,32
	lw	$23,16($2)
	addiu	$16,$12,32
	lw	$6,16($12)
	addiu	$15,$2,48
	lw	$22,4($3)
	addiu	$14,$12,48
	lw	$5,32($2)
	addiu	$12,$12,64
	lw	$21,-32($12)
	addiu	$2,$2,64
	lw	$4,8($3)
	sw	$22,20($sp)
	sw	$5,8($sp)
	lw	$5,4($20)
	sw	$21,12($sp)
	lw	$21,8($20)
	lw	$3,12($3)
	lw	$20,12($20)
	lw	$22,12($sp)
	mflo	$10
	teq	$fp,$0,7
	divu	$0,$9,$fp
	sw	$10,-64($19)
	mflo	$9
	teq	$25,$0,7
	divu	$0,$8,$25
	lw	$25,20($sp)
	sw	$9,-60($19)
	mflo	$fp
	teq	$24,$0,7
	divu	$0,$7,$24
	sw	$fp,-56($19)
	mflo	$8
	teq	$6,$0,7
	divu	$0,$23,$6
	lw	$6,8($sp)
	sw	$8,-52($19)
	mflo	$10
	teq	$5,$0,7
	divu	$0,$25,$5
	sw	$10,-48($19)
	mflo	$7
	teq	$21,$0,7
	divu	$0,$4,$21
	sw	$7,4($18)
	mflo	$24
	teq	$20,$0,7
	divu	$0,$3,$20
	sw	$24,8($18)
	mflo	$23
	teq	$22,$0,7
	divu	$0,$6,$22
	sw	$23,12($18)
	lw	$18,4($17)
	lw	$4,4($16)
	lw	$3,8($17)
	lw	$20,8($16)
	lw	$fp,-16($2)
	lw	$8,-16($12)
	lw	$17,12($17)
	lw	$16,12($16)
	lw	$25,4($15)
	lw	$10,4($14)
	lw	$23,8($15)
	lw	$6,8($14)
	lw	$15,12($15)
	lw	$14,12($14)
	mflo	$5
	teq	$4,$0,7
	divu	$0,$18,$4
	sw	$5,-32($19)
	mflo	$21
	teq	$20,$0,7
	divu	$0,$3,$20
	sw	$21,4($13)
	mflo	$9
	teq	$8,$0,7
	divu	$0,$fp,$8
	sw	$9,8($13)
	mflo	$24
	teq	$16,$0,7
	divu	$0,$17,$16
	mflo	$7
	teq	$10,$0,7
	divu	$0,$25,$10
	sw	$7,12($13)
	sw	$24,-16($19)
	mflo	$22
	teq	$6,$0,7
	divu	$0,$23,$6
	sw	$22,4($11)
	mflo	$13
	teq	$14,$0,7
	divu	$0,$15,$14
	sw	$13,8($11)
	mflo	$5
	sw	$5,12($11)
	lw	$11,%got(i32val1)($28)
	addiu	$18,$11,7168
	bne	$2,$18,$L164
	nop

	lw	$2,16($sp)
	lw	$19,64($sp)
	addiu	$12,$2,1
	bne	$12,$19,$L165
	sw	$12,16($sp)

$L162:
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
	.frame	$sp,64,$31		# vars= 0, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,56($sp)
	sll	$fp,$4,1
	sw	$31,60($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	beq	$fp,$0,$L173
	.cprestore	16

	lw	$22,%got(i64val1)($28)
	move	$23,$0
	addiu	$22,$22,7168
	lw	$16,%got(i64val1)($28)
$L182:
	lw	$18,%got(i64val2)($28)
	lw	$17,%got(i64result)($28)
$L175:
	lw	$4,0($16)
	addiu	$21,$16,32
	lw	$5,4($16)
	addiu	$20,$18,32
	lw	$6,0($18)
	addiu	$16,$16,64
	lw	$7,4($18)
	addiu	$18,$18,64
	lw	$25,%call16(__udivdi3)($28)
	addiu	$19,$17,32
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addiu	$17,$17,64

	lw	$28,16($sp)
	lw	$4,-56($16)
	lw	$5,-52($16)
	lw	$6,-56($18)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-52($18)
	sw	$2,-64($17)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-60($17)

	lw	$28,16($sp)
	lw	$4,-48($16)
	lw	$5,-44($16)
	lw	$6,-48($18)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-44($18)
	sw	$2,-56($17)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-52($17)

	lw	$28,16($sp)
	lw	$4,-40($16)
	lw	$5,-36($16)
	lw	$6,-40($18)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-36($18)
	sw	$2,-48($17)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-44($17)

	lw	$28,16($sp)
	lw	$4,-32($16)
	lw	$5,-28($16)
	lw	$6,-32($18)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-28($18)
	sw	$2,-40($17)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-36($17)

	lw	$28,16($sp)
	lw	$4,8($21)
	lw	$5,12($21)
	lw	$6,8($20)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,12($20)
	sw	$2,-32($17)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-28($17)

	lw	$28,16($sp)
	lw	$4,16($21)
	lw	$5,20($21)
	lw	$6,16($20)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,20($20)
	sw	$2,8($19)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,12($19)

	lw	$28,16($sp)
	lw	$4,24($21)
	lw	$5,28($21)
	lw	$6,24($20)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,28($20)
	sw	$2,16($19)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,20($19)

	lw	$28,16($sp)
	sw	$2,24($19)
	bne	$16,$22,$L175
	sw	$3,28($19)

	addiu	$23,$23,1
	bne	$23,$fp,$L182
	lw	$16,%got(i64val1)($28)

$L173:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L194
	lui	$28,%hi(__gnu_local_gp)

	lui	$2,%hi($LC0)
	lui	$3,%hi($LC1)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lwc1	$f5,%lo($LC0)($2)
	li	$10,1597440000			# 0x5f370000
	lwc1	$f4,%lo($LC1)($3)
	move	$12,$0
	lw	$11,%got(fval1)($28)
	addiu	$15,$10,23007
	addiu	$14,$11,7168
	lw	$7,%got(fval1)($28)
$L192:
	lw	$8,%got(fresult)($28)
$L185:
	lw	$9,0($7)
	addiu	$7,$7,16
	addiu	$8,$8,16
	mtc1	$9,$f0
	lwc1	$f6,-12($7)
	sra	$6,$9,1
	lw	$5,-12($7)
	lwc1	$f1,-8($7)
	subu	$24,$15,$6
	lw	$2,-8($7)
	lwc1	$f8,-4($7)
	sra	$5,$5,1
	mtc1	$24,$f10
	lw	$13,-4($7)
	sra	$3,$2,1
	mtc1	$24,$f18
	subu	$25,$15,$5
	sra	$11,$13,1
	mul.s	$f3,$f0,$f5
	subu	$10,$15,$3
	subu	$6,$15,$11
	mul.s	$f2,$f6,$f5
	mul.s	$f7,$f1,$f5
	mul.s	$f9,$f8,$f5
	mtc1	$25,$f12
	mtc1	$10,$f14
	mtc1	$6,$f16
	mul.s	$f11,$f3,$f10
	mul.s	$f13,$f2,$f12
	mul.s	$f15,$f7,$f14
	mul.s	$f17,$f9,$f16
	mul.s	$f19,$f10,$f11
	mul.s	$f2,$f12,$f13
	mul.s	$f1,$f14,$f15
	mul.s	$f7,$f16,$f17
	sub.s	$f8,$f4,$f19
	sub.s	$f9,$f4,$f2
	lwc1	$f2,-12($7)
	mtc1	$25,$f0
	mtc1	$10,$f3
	mtc1	$6,$f6
	sub.s	$f10,$f4,$f1
	lwc1	$f1,-8($7)
	sub.s	$f11,$f4,$f7
	mul.s	$f15,$f0,$f9
	mul.s	$f13,$f18,$f8
	mul.s	$f17,$f3,$f10
	mul.s	$f19,$f6,$f11
	lwc1	$f6,-4($7)
	mtc1	$9,$f0
	mul.s	$f7,$f2,$f15
	mul.s	$f8,$f1,$f17
	mul.s	$f9,$f6,$f19
	mul.s	$f3,$f0,$f13
	swc1	$f7,-12($8)
	swc1	$f8,-8($8)
	swc1	$f9,-4($8)
	bne	$7,$14,$L185
	swc1	$f3,-16($8)

	addiu	$12,$12,1
	bne	$12,$4,$L192
	lw	$7,%got(fval1)($28)

$L194:
	j	$31
	nop

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
	beq	$4,$0,$L247
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,52($sp)
	sw	$19,40($sp)
	move	$19,$0
	sw	$20,44($sp)
	move	$20,$4
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$21,48($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.cprestore	16
	lw	$22,%got(fval1)($28)
	addiu	$22,$22,7168
	lw	$16,%got(fval1)($28)
$L246:
	lw	$23,%got(fresult)($28)
$L201:
	lwc1	$f12,0($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc0,$f0,$f0
	bc1f	$fcc0,$L228
	lw	$25,%call16(sqrtf)($28)

	lwc1	$f12,4($16)
	swc1	$f0,0($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1f	$fcc1,$L245
	nop

$L198:
	lwc1	$f12,8($16)
	swc1	$f0,4($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1f	$fcc2,$L230
	nop

$L199:
	lwc1	$f12,12($16)
	swc1	$f0,8($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1f	$fcc3,$L231
	nop

$L200:
	lwc1	$f12,16($16)
	addiu	$17,$23,16
	swc1	$f0,12($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1f	$fcc4,$L232
	addiu	$16,$16,16

$L206:
	lwc1	$f12,4($16)
	swc1	$f0,0($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1f	$fcc5,$L233
	nop

$L207:
	lwc1	$f12,8($16)
	swc1	$f0,4($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1f	$fcc6,$L234
	nop

$L208:
	lwc1	$f12,12($16)
	swc1	$f0,8($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1f	$fcc7,$L235
	nop

$L209:
	lwc1	$f12,16($16)
	addiu	$18,$16,16
	swc1	$f0,12($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc0,$f0,$f0
	bc1f	$fcc0,$L236
	addiu	$23,$17,16

$L211:
	lwc1	$f12,4($18)
	swc1	$f0,16($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1f	$fcc1,$L237
	nop

$L212:
	lwc1	$f12,8($18)
	swc1	$f0,4($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1f	$fcc2,$L238
	nop

$L213:
	lwc1	$f12,12($18)
	swc1	$f0,8($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1f	$fcc3,$L239
	nop

$L214:
	lwc1	$f12,32($16)
	addiu	$21,$16,32
	swc1	$f0,12($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1f	$fcc4,$L240
	addiu	$18,$17,32

$L216:
	lwc1	$f12,4($21)
	swc1	$f0,32($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1f	$fcc5,$L241
	nop

$L217:
	lwc1	$f12,8($21)
	swc1	$f0,4($18)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1f	$fcc6,$L242
	nop

$L218:
	lwc1	$f12,12($21)
	swc1	$f0,8($18)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1f	$fcc7,$L243
	nop

	addiu	$16,$16,48
$L244:
	swc1	$f0,12($18)
	bne	$16,$22,$L201
	addiu	$23,$17,48

	addiu	$19,$19,1
	bne	$19,$20,$L246
	lw	$16,%got(fval1)($28)

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

$L247:
	j	$31
	nop

$L228:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,4($16)
	lw	$28,16($sp)
	swc1	$f0,0($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1t	$fcc1,$L198
	nop

	lw	$25,%call16(sqrtf)($28)
$L245:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,8($16)
	lw	$28,16($sp)
	swc1	$f0,4($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1t	$fcc2,$L199
	nop

$L230:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,12($16)
	lw	$28,16($sp)
	swc1	$f0,8($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1t	$fcc3,$L200
	nop

$L231:
	lw	$25,%call16(sqrtf)($28)
	addiu	$16,$16,16
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$17,$23,16

	lwc1	$f12,0($16)
	lw	$28,16($sp)
	swc1	$f0,12($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1t	$fcc4,$L206
	nop

$L232:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,4($16)
	lw	$28,16($sp)
	swc1	$f0,0($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1t	$fcc5,$L207
	nop

$L233:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,8($16)
	lw	$28,16($sp)
	swc1	$f0,4($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1t	$fcc6,$L208
	nop

$L234:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,12($16)
	lw	$28,16($sp)
	swc1	$f0,8($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1t	$fcc7,$L209
	nop

$L235:
	lw	$25,%call16(sqrtf)($28)
	addiu	$18,$16,16
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$23,$17,16

	lwc1	$f12,16($16)
	lw	$28,16($sp)
	swc1	$f0,12($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc0,$f0,$f0
	bc1t	$fcc0,$L211
	nop

$L236:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,4($18)
	lw	$28,16($sp)
	swc1	$f0,16($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1t	$fcc1,$L212
	nop

$L237:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,8($18)
	lw	$28,16($sp)
	swc1	$f0,4($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1t	$fcc2,$L213
	nop

$L238:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,12($18)
	lw	$28,16($sp)
	swc1	$f0,8($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1t	$fcc3,$L214
	nop

$L239:
	lw	$25,%call16(sqrtf)($28)
	addiu	$21,$16,32
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$18,$17,32

	lwc1	$f12,32($16)
	lw	$28,16($sp)
	swc1	$f0,12($23)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1t	$fcc4,$L216
	nop

$L240:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,4($21)
	lw	$28,16($sp)
	swc1	$f0,32($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1t	$fcc5,$L217
	nop

$L241:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,8($21)
	lw	$28,16($sp)
	swc1	$f0,4($18)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1t	$fcc6,$L218
	nop

$L242:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,12($21)
	lw	$28,16($sp)
	swc1	$f0,8($18)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1t	$fcc7,$L244
	addiu	$16,$16,48

	addiu	$16,$16,-48
$L243:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$16,$16,48

	.option	pic0
	j	$L244
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
	beq	$20,$0,$L248
	.cprestore	16

	lw	$23,%got(dval1)($28)
	move	$19,$0
	addiu	$23,$23,7168
	lw	$16,%got(dval1)($28)
$L297:
	lw	$22,%got(dresult)($28)
$L254:
	ldc1	$f12,0($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc0,$f0,$f0
	bc1f	$fcc0,$L279
	lw	$25,%call16(sqrt)($28)

	ldc1	$f12,8($16)
	sdc1	$f0,0($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1f	$fcc1,$L296
	nop

$L251:
	ldc1	$f12,16($16)
	sdc1	$f0,8($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1f	$fcc2,$L281
	nop

$L252:
	ldc1	$f12,24($16)
	sdc1	$f0,16($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1f	$fcc3,$L282
	nop

$L253:
	ldc1	$f12,32($16)
	addiu	$17,$22,32
	sdc1	$f0,24($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1f	$fcc4,$L283
	addiu	$16,$16,32

$L259:
	ldc1	$f12,8($16)
	sdc1	$f0,0($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1f	$fcc5,$L284
	nop

$L260:
	ldc1	$f12,16($16)
	sdc1	$f0,8($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1f	$fcc6,$L285
	nop

$L261:
	ldc1	$f12,24($16)
	sdc1	$f0,16($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1f	$fcc7,$L286
	nop

$L262:
	ldc1	$f12,32($16)
	addiu	$18,$16,32
	sdc1	$f0,24($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc0,$f0,$f0
	bc1f	$fcc0,$L287
	addiu	$22,$17,32

$L264:
	ldc1	$f12,8($18)
	sdc1	$f0,32($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1f	$fcc1,$L288
	nop

$L265:
	ldc1	$f12,16($18)
	sdc1	$f0,8($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1f	$fcc2,$L289
	nop

$L266:
	ldc1	$f12,24($18)
	sdc1	$f0,16($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1f	$fcc3,$L290
	nop

$L267:
	ldc1	$f12,64($16)
	addiu	$21,$16,64
	sdc1	$f0,24($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1f	$fcc4,$L291
	addiu	$18,$17,64

$L269:
	ldc1	$f12,8($21)
	sdc1	$f0,64($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1f	$fcc5,$L292
	nop

$L270:
	ldc1	$f12,16($21)
	sdc1	$f0,8($18)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1f	$fcc6,$L293
	nop

$L271:
	ldc1	$f12,24($21)
	sdc1	$f0,16($18)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1f	$fcc7,$L294
	nop

	addiu	$16,$16,96
$L295:
	sdc1	$f0,24($18)
	bne	$16,$23,$L254
	addiu	$22,$17,96

	addiu	$19,$19,1
	bne	$19,$20,$L297
	lw	$16,%got(dval1)($28)

$L248:
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

$L279:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,8($16)
	lw	$28,16($sp)
	sdc1	$f0,0($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1t	$fcc1,$L251
	nop

	lw	$25,%call16(sqrt)($28)
$L296:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,16($16)
	lw	$28,16($sp)
	sdc1	$f0,8($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1t	$fcc2,$L252
	nop

$L281:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,24($16)
	lw	$28,16($sp)
	sdc1	$f0,16($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1t	$fcc3,$L253
	nop

$L282:
	lw	$25,%call16(sqrt)($28)
	addiu	$16,$16,32
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$17,$22,32

	ldc1	$f12,0($16)
	lw	$28,16($sp)
	sdc1	$f0,24($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1t	$fcc4,$L259
	nop

$L283:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,8($16)
	lw	$28,16($sp)
	sdc1	$f0,0($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1t	$fcc5,$L260
	nop

$L284:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,16($16)
	lw	$28,16($sp)
	sdc1	$f0,8($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1t	$fcc6,$L261
	nop

$L285:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,24($16)
	lw	$28,16($sp)
	sdc1	$f0,16($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1t	$fcc7,$L262
	nop

$L286:
	lw	$25,%call16(sqrt)($28)
	addiu	$18,$16,32
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$22,$17,32

	ldc1	$f12,32($16)
	lw	$28,16($sp)
	sdc1	$f0,24($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc0,$f0,$f0
	bc1t	$fcc0,$L264
	nop

$L287:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,8($18)
	lw	$28,16($sp)
	sdc1	$f0,32($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1t	$fcc1,$L265
	nop

$L288:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,16($18)
	lw	$28,16($sp)
	sdc1	$f0,8($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1t	$fcc2,$L266
	nop

$L289:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,24($18)
	lw	$28,16($sp)
	sdc1	$f0,16($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1t	$fcc3,$L267
	nop

$L290:
	lw	$25,%call16(sqrt)($28)
	addiu	$21,$16,64
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$18,$17,64

	ldc1	$f12,64($16)
	lw	$28,16($sp)
	sdc1	$f0,24($22)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1t	$fcc4,$L269
	nop

$L291:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,8($21)
	lw	$28,16($sp)
	sdc1	$f0,64($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1t	$fcc5,$L270
	nop

$L292:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,16($21)
	lw	$28,16($sp)
	sdc1	$f0,8($18)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1t	$fcc6,$L271
	nop

$L293:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,24($21)
	lw	$28,16($sp)
	sdc1	$f0,16($18)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1t	$fcc7,$L295
	addiu	$16,$16,96

	addiu	$16,$16,-96
$L294:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$16,$16,96

	.option	pic0
	j	$L295
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
	bne	$3,$0,$L315
	li	$6,268435456			# 0x10000000

	subu	$4,$4,$2
	li	$6,1342177280			# 0x50000000
	li	$3,65536			# 0x10000
$L299:
	sltu	$5,$4,$6
	bne	$5,$0,$L316
	addiu	$7,$3,8192

	subu	$4,$4,$6
	ori	$3,$3,0x8000
	addiu	$7,$3,8192
$L316:
	sll	$8,$7,13
	sltu	$9,$4,$8
	bne	$9,$0,$L317
	addiu	$10,$3,4096

	subu	$4,$4,$8
	ori	$3,$3,0x4000
	addiu	$10,$3,4096
$L317:
	sll	$11,$10,12
	sltu	$12,$4,$11
	bne	$12,$0,$L318
	addiu	$13,$3,2048

	subu	$4,$4,$11
	ori	$3,$3,0x2000
	addiu	$13,$3,2048
$L318:
	sll	$14,$13,11
	sltu	$15,$4,$14
	bne	$15,$0,$L319
	addiu	$24,$3,1024

	subu	$4,$4,$14
	ori	$3,$3,0x1000
	addiu	$24,$3,1024
$L319:
	sll	$25,$24,10
	sltu	$2,$4,$25
	bne	$2,$0,$L320
	addiu	$6,$3,512

	subu	$4,$4,$25
	ori	$3,$3,0x800
	addiu	$6,$3,512
$L320:
	sll	$7,$6,9
	sltu	$5,$4,$7
	bne	$5,$0,$L321
	addiu	$8,$3,256

	subu	$4,$4,$7
	ori	$3,$3,0x400
	addiu	$8,$3,256
$L321:
	sll	$9,$8,8
	sltu	$10,$4,$9
	bne	$10,$0,$L322
	addiu	$11,$3,128

	subu	$4,$4,$9
	ori	$3,$3,0x200
	addiu	$11,$3,128
$L322:
	sll	$12,$11,7
	sltu	$13,$4,$12
	bne	$13,$0,$L323
	addiu	$14,$3,64

	subu	$4,$4,$12
	ori	$3,$3,0x100
	addiu	$14,$3,64
$L323:
	sll	$15,$14,6
	sltu	$24,$4,$15
	bne	$24,$0,$L324
	addiu	$25,$3,32

	subu	$4,$4,$15
	ori	$3,$3,0x80
	addiu	$25,$3,32
$L324:
	sll	$2,$25,5
	sltu	$6,$4,$2
	bne	$6,$0,$L325
	addiu	$7,$3,16

	subu	$4,$4,$2
	ori	$3,$3,0x40
	addiu	$7,$3,16
$L325:
	sll	$8,$7,4
	sltu	$5,$4,$8
	bne	$5,$0,$L326
	addiu	$9,$3,8

	subu	$4,$4,$8
	ori	$3,$3,0x20
	addiu	$9,$3,8
$L326:
	sll	$10,$9,3
	sltu	$11,$4,$10
	bne	$11,$0,$L327
	addiu	$12,$3,4

	subu	$4,$4,$10
	ori	$3,$3,0x10
	addiu	$12,$3,4
$L327:
	sll	$13,$12,2
	sltu	$14,$4,$13
	bne	$14,$0,$L328
	addiu	$15,$3,2

	subu	$4,$4,$13
	ori	$3,$3,0x8
	addiu	$15,$3,2
$L328:
	sll	$24,$15,1
	sltu	$25,$4,$24
	bne	$25,$0,$L313
	nop

	subu	$4,$4,$24
	ori	$3,$3,0x4
$L313:
	addiu	$2,$3,1
	ori	$6,$3,0x2
	sltu	$4,$4,$2
	move	$7,$3
	movz	$7,$6,$4
	j	$31
	sll	$2,$7,7

$L315:
	.option	pic0
	j	$L299
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
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L341
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,40($sp)
	sw	$21,44($sp)
	move	$21,$0
	sw	$22,48($sp)
	move	$22,$4
	sw	$31,52($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	.cprestore	16
	lw	$20,%got(xval1)($28)
	addiu	$20,$20,7168
	lw	$16,%got(xval1)($28)
$L340:
	lw	$17,%got(xresult)($28)
$L331:
	addiu	$19,$16,16
	lw	$4,0($16)
	addiu	$16,$16,32
	.option	pic0
	jal	fpsqrt
	.option	pic2
	addiu	$18,$17,16

	addiu	$17,$17,32
	lw	$4,-28($16)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-32($17)

	lw	$4,-24($16)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-28($17)

	lw	$4,-20($16)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-24($17)

	lw	$4,-16($16)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-20($17)

	lw	$4,4($19)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-16($17)

	lw	$4,8($19)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,4($18)

	lw	$4,12($19)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,8($18)

	lw	$28,16($sp)
	bne	$16,$20,$L331
	sw	$2,12($18)

	addiu	$21,$21,1
	bne	$21,$22,$L340
	lw	$16,%got(xval1)($28)

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

$L341:
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
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,48($sp)
	sll	$22,$4,1
	sw	$31,52($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	beq	$22,$0,$L346
	.cprestore	16

	lw	$20,%got(dval1)($28)
	move	$21,$0
	addiu	$20,$20,7168
	lw	$16,%got(dval1)($28)
$L355:
	lw	$17,%got(dresult)($28)
$L348:
	ldc1	$f12,0($16)
	addiu	$19,$16,32
	addiu	$16,$16,64
	addiu	$18,$17,32
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	addiu	$17,$17,64

	ldc1	$f12,-56($16)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-64($17)

	ldc1	$f12,-48($16)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-56($17)

	ldc1	$f12,-40($16)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-48($17)

	ldc1	$f12,-32($16)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-40($17)

	ldc1	$f12,8($19)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-32($17)

	ldc1	$f12,16($19)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,8($18)

	ldc1	$f12,24($19)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,16($18)

	lw	$28,16($sp)
	bne	$16,$20,$L348
	sdc1	$f0,24($18)

	addiu	$21,$21,1
	bne	$21,$22,$L355
	lw	$16,%got(dval1)($28)

$L346:
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
	bne	$4,$0,$L360
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

$L360:
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
$L368:
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
	bc1f	$fcc0,$L365
	lw	$28,16($sp)

$L370:
	lw	$25,%call16(drand48)($28)
	.reloc	1f,R_MIPS_JALR,drand48
1:	jalr	$25
	nop

	mul.d	$f0,$f0,$f20
	c.lt.d	$fcc1,$f0,$f22
	bc1t	$fcc1,$L370
	lw	$28,16($sp)

$L365:
	cvt.s.d	$f0,$f0
	addiu	$16,$16,4
	bne	$16,$17,$L368
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
$L375:
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
	bne	$2,$13,$L375
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
$L396:
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
	bc1f	$fcc0,$L387
	lw	$28,16($sp)

$L392:
	lw	$25,%call16(drand48)($28)
	.reloc	1f,R_MIPS_JALR,drand48
1:	jalr	$25
	nop

	mul.d	$f0,$f0,$f20
	c.lt.d	$fcc1,$f0,$f22
	bc1t	$fcc1,$L392
	lw	$28,16($sp)

$L387:
	sdc1	$f0,0($16)
	addiu	$16,$16,8
	bne	$16,$17,$L396
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
	j	$L402
	.option	pic2
	.cprestore	16

$L451:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L399:
	movz	$2,$18,$2
	addiu	$16,$22,4
	bne	$17,$0,$L405
	sw	$2,0($22)

$L452:
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L425:
	movz	$2,$18,$2
	lw	$25,%call16(lrand48)($28)
	beq	$17,$0,$L426
	sw	$2,0($16)

$L453:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bltz	$2,$L445
	lw	$28,16($sp)

$L428:
	movz	$2,$18,$2
	lw	$25,%call16(lrand48)($28)
	beq	$17,$0,$L429
	sw	$2,4($16)

$L454:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bltz	$2,$L446
	lw	$28,16($sp)

$L431:
	movz	$2,$18,$2
	lw	$25,%call16(lrand48)($28)
	beq	$17,$0,$L432
	sw	$2,8($16)

$L455:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bltz	$2,$L447
	lw	$28,16($sp)

$L434:
	movz	$2,$18,$2
	lw	$25,%call16(lrand48)($28)
	beq	$17,$0,$L435
	sw	$2,12($16)

$L456:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bltz	$2,$L448
	lw	$28,16($sp)

$L437:
	movz	$2,$18,$2
	lw	$25,%call16(lrand48)($28)
	beq	$17,$0,$L438
	sw	$2,16($16)

$L457:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bltz	$2,$L449
	lw	$28,16($sp)

$L440:
	movz	$2,$18,$2
	addiu	$22,$16,24
	beq	$22,$20,$L450
	sw	$2,20($16)

$L402:
	beq	$17,$0,$L451
	lw	$25,%call16(lrand48)($28)

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bgez	$2,$L399
	lw	$28,16($sp)

	addiu	$2,$2,-1
	addiu	$16,$22,4
	or	$3,$2,$21
	addiu	$2,$3,1
	movz	$2,$18,$2
	beq	$17,$0,$L452
	sw	$2,0($22)

$L405:
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$19
	bgez	$2,$L425
	lw	$28,16($sp)

	addiu	$4,$2,-1
	lw	$25,%call16(lrand48)($28)
	or	$5,$4,$21
	addiu	$2,$5,1
	movz	$2,$18,$2
	bne	$17,$0,$L453
	sw	$2,0($16)

$L426:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	movz	$2,$18,$2
	lw	$28,16($sp)
	sw	$2,4($16)
	bne	$17,$0,$L454
	lw	$25,%call16(lrand48)($28)

$L429:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	movz	$2,$18,$2
	lw	$28,16($sp)
	sw	$2,8($16)
	bne	$17,$0,$L455
	lw	$25,%call16(lrand48)($28)

$L432:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	movz	$2,$18,$2
	lw	$28,16($sp)
	sw	$2,12($16)
	bne	$17,$0,$L456
	lw	$25,%call16(lrand48)($28)

$L435:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	movz	$2,$18,$2
	lw	$28,16($sp)
	sw	$2,16($16)
	bne	$17,$0,$L457
	lw	$25,%call16(lrand48)($28)

$L438:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	addiu	$22,$16,24

	movz	$2,$18,$2
	lw	$28,16($sp)
	bne	$22,$20,$L402
	sw	$2,20($16)

$L450:
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

$L446:
	addiu	$8,$2,-1
	or	$9,$8,$21
	.option	pic0
	j	$L431
	.option	pic2
	addiu	$2,$9,1

$L445:
	addiu	$6,$2,-1
	or	$7,$6,$21
	.option	pic0
	j	$L428
	.option	pic2
	addiu	$2,$7,1

$L449:
	addiu	$14,$2,-1
	or	$15,$14,$21
	.option	pic0
	j	$L440
	.option	pic2
	addiu	$2,$15,1

$L448:
	addiu	$12,$2,-1
	or	$13,$12,$21
	.option	pic0
	j	$L437
	.option	pic2
	addiu	$2,$13,1

$L447:
	addiu	$10,$2,-1
	or	$11,$10,$21
	.option	pic0
	j	$L434
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
$L467:
	bne	$16,$0,$L500
	lw	$25,%call16(lrand48)($28)

	bne	$19,$0,$L485
	nop

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sra	$4,$2,31
$L461:
	li	$7,1			# 0x1
	or	$6,$2,$4
	movz	$2,$7,$6
	addiu	$21,$22,8
	movz	$4,$0,$6
	sw	$2,0($22)
	bne	$16,$0,$L501
	sw	$4,4($22)

$L486:
	beq	$19,$0,$L473
	lw	$25,%call16(lrand48)($28)

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$17
	bltz	$2,$L502
	lw	$28,16($sp)

$L495:
	sra	$12,$2,31
	lw	$25,%call16(lrand48)($28)
	li	$14,1			# 0x1
	or	$13,$2,$12
	movz	$2,$14,$13
	addiu	$fp,$21,8
	movz	$12,$0,$13
	sw	$2,0($21)
	bne	$16,$0,$L476
	sw	$12,4($21)

$L506:
	beq	$19,$0,$L477
	nop

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$17
	bltz	$2,$L503
	lw	$28,16($sp)

$L496:
	sra	$4,$2,31
	lw	$25,%call16(lrand48)($28)
	li	$5,1			# 0x1
	or	$31,$2,$4
	movz	$2,$5,$31
	addiu	$23,$21,16
	movz	$4,$0,$31
	sw	$2,8($21)
	bne	$16,$0,$L480
	sw	$4,4($fp)

$L507:
	beq	$19,$0,$L481
	nop

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$17
	bltz	$2,$L504
	lw	$28,16($sp)

$L497:
	sra	$9,$2,31
$L492:
	li	$11,1			# 0x1
	or	$10,$2,$9
	movz	$2,$11,$10
	addiu	$22,$21,24
	movz	$9,$0,$10
	sw	$2,16($21)
	bne	$22,$18,$L467
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

$L504:
	addiu	$2,$2,-1
	or	$7,$2,$20
	.option	pic0
	j	$L497
	.option	pic2
	addiu	$2,$7,1

$L503:
	addiu	$23,$2,-1
	or	$24,$23,$20
	.option	pic0
	j	$L496
	.option	pic2
	addiu	$2,$24,1

$L502:
	addiu	$9,$2,-1
	or	$10,$9,$20
	.option	pic0
	j	$L495
	.option	pic2
	addiu	$2,$10,1

$L485:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$17
	bltz	$2,$L505
	lw	$28,16($sp)

	sra	$4,$2,31
$L508:
	li	$7,1			# 0x1
	or	$6,$2,$4
	movz	$2,$7,$6
	addiu	$21,$22,8
	movz	$4,$0,$6
	sw	$2,0($22)
	beq	$16,$0,$L486
	sw	$4,4($22)

$L501:
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
	beq	$16,$0,$L506
	sw	$12,4($21)

$L476:
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
	beq	$16,$0,$L507
	sw	$4,4($fp)

$L480:
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
	j	$L492
	.option	pic2
	or	$9,$fp,$8

$L505:
	addiu	$2,$2,-1
	or	$3,$2,$20
	addiu	$2,$3,1
	.option	pic0
	j	$L508
	.option	pic2
	sra	$4,$2,31

$L481:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	.option	pic0
	j	$L497
	.option	pic2
	lw	$28,16($sp)

$L473:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	.option	pic0
	j	$L495
	.option	pic2
	lw	$28,16($sp)

$L477:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	.option	pic0
	j	$L496
	.option	pic2
	lw	$28,16($sp)

$L500:
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
	j	$L461
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
	.ascii	"Fixed-point 16.16 (signed 32-bit integer):\012\011\000"
	.align	2
$LC14:
	.ascii	"32-bit (unsigned) integer:\012\011\000"
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
$L510:
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
	bne	$2,$15,$L510
	swc1	$f8,0($10)

	lwc1	$f0,%lo($LC7)($17)
	move	$2,$0
	lw	$6,%got(xval2)($28)
	li	$15,7168			# 0x1c00
	lw	$3,%got(fval2)($28)
$L511:
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
	bne	$2,$15,$L511
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
	.align	2
$LC20:
	.ascii	"32-bit integer:\012\011\000"
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
$L530:
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
	bne	$2,$15,$L530
	swc1	$f8,0($10)

	lwc1	$f0,%lo($LC7)($17)
	move	$2,$0
	lw	$6,%got(xval2)($28)
	li	$15,7168			# 0x1c00
	lw	$3,%got(fval2)($28)
$L531:
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
	bne	$2,$15,$L531
	swc1	$f9,0($11)

	lui	$6,%hi(bench_fixed_mul)
	move	$5,$16
	addiu	$4,$6,%lo(bench_fixed_mul)
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	lui	$18,%hi($LC15)

	lui	$15,%hi($LC20)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$15,%lo($LC20)

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
$LC21:
	.ascii	"\012DIVISION BENCHMARKS:\000"
	.align	2
$LC25:
	.ascii	"Fixed-point 16.16:\012\011\000"
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
	lui	$4,%hi($LC21)
	sdc1	$f26,72($sp)
	sw	$31,44($sp)
	sw	$17,36($sp)
	addiu	$4,$4,%lo($LC21)
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
	lui	$5,%hi($LC22)
	lw	$28,24($sp)
	ldc1	$f26,%lo($LC6)($3)
	ldc1	$f24,%lo($LC22)($5)
	lw	$4,%got(fval1)($28)
	mfc1	$6,$f26
	mfc1	$7,$f27
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f24,16($sp)

	lui	$6,%hi($LC23)
	lui	$7,%hi($LC24)
	lw	$28,24($sp)
	ldc1	$f22,%lo($LC23)($6)
	ldc1	$f20,%lo($LC24)($7)
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

	lui	$11,%hi($LC25)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$11,%lo($LC25)

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
$L550:
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
	bne	$2,$15,$L550
	swc1	$f26,0($10)

	lwc1	$f24,%lo($LC7)($17)
	move	$2,$0
	lw	$6,%got(xval2)($28)
	li	$15,7168			# 0x1c00
	lw	$3,%got(fval2)($28)
$L551:
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
	bne	$2,$15,$L551
	swc1	$f23,0($10)

	lui	$6,%hi(bench_fixed_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$6,%lo(bench_fixed_div)

	lui	$15,%hi($LC20)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$15,%lo($LC20)

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
$LC26:
	.ascii	"\012SQUARE-ROOT BENCHMARKS:\000"
	.align	2
$LC29:
	.ascii	"Float (Quake sqrt):\012\011\000"
	.align	2
$LC30:
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
	lui	$4,%hi($LC26)
	sw	$17,40($sp)
	sw	$31,52($sp)
	lui	$17,%hi($LC28)
	sw	$18,44($sp)
	addiu	$4,$4,%lo($LC26)
	.cprestore	24
	lui	$18,%hi($LC27)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	sw	$19,48($sp)

	ldc1	$f0,%lo($LC28)($17)
	lw	$28,24($sp)
	lw	$7,%lo($LC27+4)($18)
	lw	$6,%lo($LC27)($18)
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

	lui	$5,%hi($LC29)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$5,%lo($LC29)

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
$L570:
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
	bne	$2,$15,$L570
	swc1	$f4,0($10)

	lui	$6,%hi($LC25)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$6,%lo($LC25)

	lui	$15,%hi(bench_fixed_sqrt)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$15,%lo(bench_fixed_sqrt)

	ldc1	$f10,%lo($LC28)($17)
	lui	$17,%hi(bench_double_sqrt)
	lw	$28,24($sp)
	lw	$6,%lo($LC27)($18)
	lw	$7,%lo($LC27+4)($18)
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

	lui	$3,%hi($LC30)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$3,%lo($LC30)

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
$LC31:
	.ascii	"Missing argument: number of iterations\000"
	.align	2
$LC32:
	.ascii	"FPBENCH - Math Speed Comparison\000"
	.align	2
$LC33:
	.ascii	"Written by Dan Silsby  dansilsby <AT> gmail <DOT> com\000"
	.align	2
$LC34:
	.ascii	"NOTE: before each benchmark is timed, sync(), fflush(),\012"
	.ascii	"and .5 second delay are all executed.\000"
	.align	2
$LC35:
	.ascii	"Each time reported is an average of 3 benchmark runs.\012"
	.ascii	"\000"
	.align	2
$LC36:
	.ascii	"COMPILED WITH MANUAL 4-FOLD UNROLLING OF LOOPS\000"
	.align	2
$LC37:
	.ascii	"Reported size of floats on this architecture:\011%d\012\000"
	.align	2
$LC38:
	.ascii	"Reported size of doubles on this architecture:\011%d\012"
	.ascii	"\000"
	.align	2
$LC39:
	.ascii	"Benchmark requested: %u iterations.\012\012\000"
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
	li	$4,-559087616			# 0xffffffffdead0000
	sw	$17,32($sp)
	.cprestore	16
	move	$17,$5
	sw	$31,36($sp)
	lw	$25,%call16(srand48)($28)
	.reloc	1f,R_MIPS_JALR,srand48
1:	jalr	$25
	ori	$4,$4,0xbeef

	slt	$2,$16,2
	bne	$2,$0,$L584
	lw	$28,16($sp)

	lw	$25,%call16(atoi)($28)
	.reloc	1f,R_MIPS_JALR,atoi
1:	jalr	$25
	lw	$4,4($17)

	lui	$3,%hi($LC32)
	lw	$28,16($sp)
	move	$16,$2
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$3,%lo($LC32)

	lui	$5,%hi($LC33)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$5,%lo($LC33)

	lui	$6,%hi($LC34)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$6,%lo($LC34)

	lui	$7,%hi($LC35)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$7,%lo($LC35)

	lui	$8,%hi($LC36)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$8,%lo($LC36)

	lui	$9,%hi($LC37)
	lw	$28,16($sp)
	li	$5,32			# 0x20
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$9,%lo($LC37)

	lui	$10,%hi($LC38)
	lw	$28,16($sp)
	li	$5,64			# 0x40
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$10,%lo($LC38)

	lui	$11,%hi($LC39)
	lw	$28,16($sp)
	move	$5,$16
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$11,%lo($LC39)

	lw	$28,16($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	li	$12,983040			# 0xf0000
	lw	$28,16($sp)
	lw	$25,%call16(usleep)($28)
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	addiu	$4,$12,16960

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
$L582:
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

$L584:
	lui	$13,%hi($LC31)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$13,%lo($LC31)

	.option	pic0
	j	$L582
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
$LC22:
	.word	0
	.word	1084751872
	.align	3
$LC23:
	.word	-1717986918
	.word	1069128089
	.align	3
$LC24:
	.word	0
	.word	1085276160
	.align	3
$LC27:
	.word	-1998362383
	.word	1055193269
	.align	3
$LC28:
	.word	0
	.word	1088421888
	.ident	"GCC: (Buildroot 2014.05-gbb847d4) 4.9.1"
