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
	move	$8,$0
	beq	$4,$0,$L15
	li	$7,1792			# 0x700

	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$5,%got(fval1)($28)
$L13:
	move	$6,$0
	lw	$3,%got(fval2)($28)
	lw	$2,%got(fresult)($28)
$L3:
	lwc1	$f10,0($3)
	addiu	$5,$5,128
	addiu	$3,$3,128
	lwc1	$f1,-128($5)
	addiu	$2,$2,128
	addiu	$6,$6,32
	lwc1	$f9,-124($3)
	lwc1	$f0,-124($5)
	add.s	$f10,$f1,$f10
	lwc1	$f2,-120($5)
	lwc1	$f1,-116($5)
	lwc1	$f8,-120($3)
	add.s	$f9,$f0,$f9
	lwc1	$f7,-116($3)
	lwc1	$f0,-112($5)
	lwc1	$f6,-112($3)
	add.s	$f8,$f2,$f8
	lwc1	$f5,-108($3)
	lwc1	$f2,-108($5)
	add.s	$f7,$f1,$f7
	lwc1	$f4,-104($3)
	lwc1	$f1,-104($5)
	add.s	$f6,$f0,$f6
	lwc1	$f3,-100($3)
	lwc1	$f0,-100($5)
	add.s	$f5,$f2,$f5
	lwc1	$f13,-96($3)
	add.s	$f4,$f1,$f4
	lwc1	$f12,-92($3)
	lwc1	$f11,-88($3)
	add.s	$f3,$f0,$f3
	lwc1	$f2,-96($5)
	lwc1	$f1,-92($5)
	lwc1	$f0,-88($5)
	swc1	$f10,-128($2)
	add.s	$f2,$f2,$f13
	swc1	$f9,-124($2)
	add.s	$f1,$f1,$f12
	swc1	$f8,-120($2)
	add.s	$f0,$f0,$f11
	swc1	$f7,-116($2)
	swc1	$f6,-112($2)
	swc1	$f5,-108($2)
	swc1	$f4,-104($2)
	swc1	$f3,-100($2)
	swc1	$f2,-96($2)
	swc1	$f0,-88($2)
	swc1	$f1,-92($2)
	lwc1	$f1,-84($5)
	lwc1	$f0,-80($5)
	lwc1	$f10,-84($3)
	lwc1	$f9,-80($3)
	lwc1	$f2,-76($5)
	lwc1	$f8,-76($3)
	add.s	$f10,$f1,$f10
	lwc1	$f7,-72($3)
	lwc1	$f1,-72($5)
	add.s	$f9,$f0,$f9
	lwc1	$f6,-68($3)
	lwc1	$f0,-68($5)
	add.s	$f8,$f2,$f8
	lwc1	$f5,-64($3)
	lwc1	$f2,-64($5)
	add.s	$f7,$f1,$f7
	lwc1	$f4,-60($3)
	lwc1	$f1,-60($5)
	add.s	$f6,$f0,$f6
	lwc1	$f3,-56($3)
	lwc1	$f0,-56($5)
	add.s	$f5,$f2,$f5
	lwc1	$f12,-48($3)
	add.s	$f4,$f1,$f4
	lwc1	$f11,-44($3)
	lwc1	$f2,-52($5)
	add.s	$f3,$f0,$f3
	lwc1	$f13,-52($3)
	lwc1	$f1,-48($5)
	lwc1	$f0,-44($5)
	swc1	$f10,-84($2)
	add.s	$f2,$f2,$f13
	swc1	$f9,-80($2)
	add.s	$f1,$f1,$f12
	swc1	$f8,-76($2)
	add.s	$f0,$f0,$f11
	swc1	$f7,-72($2)
	swc1	$f6,-68($2)
	swc1	$f5,-64($2)
	swc1	$f4,-60($2)
	swc1	$f3,-56($2)
	swc1	$f2,-52($2)
	swc1	$f1,-48($2)
	swc1	$f0,-44($2)
	lwc1	$f0,-40($5)
	lwc1	$f9,-40($3)
	lwc1	$f2,-36($5)
	lwc1	$f1,-32($5)
	lwc1	$f8,-36($3)
	add.s	$f9,$f0,$f9
	lwc1	$f7,-32($3)
	lwc1	$f0,-28($5)
	lwc1	$f6,-28($3)
	add.s	$f8,$f2,$f8
	lwc1	$f5,-24($3)
	lwc1	$f2,-24($5)
	add.s	$f7,$f1,$f7
	lwc1	$f4,-20($3)
	lwc1	$f1,-20($5)
	add.s	$f6,$f0,$f6
	lwc1	$f3,-16($3)
	lwc1	$f0,-16($5)
	add.s	$f5,$f2,$f5
	lwc1	$f12,-12($3)
	add.s	$f4,$f1,$f4
	lwc1	$f2,-12($5)
	lwc1	$f1,-8($5)
	add.s	$f3,$f0,$f3
	lwc1	$f11,-8($3)
	lwc1	$f0,-4($5)
	lwc1	$f10,-4($3)
	add.s	$f2,$f2,$f12
	swc1	$f9,-40($2)
	add.s	$f1,$f1,$f11
	swc1	$f8,-36($2)
	swc1	$f7,-32($2)
	add.s	$f0,$f0,$f10
	swc1	$f6,-28($2)
	swc1	$f5,-24($2)
	swc1	$f4,-20($2)
	swc1	$f3,-16($2)
	swc1	$f2,-12($2)
	swc1	$f1,-8($2)
	bne	$6,$7,$L3
	swc1	$f0,-4($2)

	addiu	$8,$8,1
	bne	$8,$4,$L13
	lw	$5,%got(fval1)($28)

$L15:
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
	sll	$4,$4,1
	move	$8,$0
	beq	$4,$0,$L27
	li	$7,896			# 0x380

	addiu	$sp,$sp,-24
	lui	$28,%hi(__gnu_local_gp)
	sdc1	$f24,16($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sdc1	$f22,8($sp)
	sdc1	$f20,0($sp)
$L21:
	lw	$5,%got(dval1)($28)
	move	$6,$0
	lw	$3,%got(dval2)($28)
	lw	$2,%got(dresult)($28)
$L18:
	ldc1	$f0,0($3)
	addiu	$5,$5,256
	addiu	$3,$3,256
	ldc1	$f20,-256($5)
	addiu	$2,$2,256
	addiu	$6,$6,32
	ldc1	$f4,-248($3)
	ldc1	$f8,-248($5)
	add.d	$f20,$f20,$f0
	ldc1	$f6,-240($5)
	ldc1	$f2,-240($3)
	ldc1	$f10,-232($3)
	add.d	$f4,$f8,$f4
	ldc1	$f14,-224($3)
	ldc1	$f18,-216($3)
	add.d	$f2,$f6,$f2
	ldc1	$f8,-208($3)
	ldc1	$f6,-208($5)
	ldc1	$f0,-232($5)
	ldc1	$f12,-224($5)
	ldc1	$f16,-216($5)
	add.d	$f24,$f6,$f8
	ldc1	$f8,-192($3)
	add.d	$f0,$f0,$f10
	ldc1	$f10,-200($5)
	add.d	$f12,$f12,$f14
	ldc1	$f14,-200($3)
	add.d	$f16,$f16,$f18
	ldc1	$f18,-192($5)
	sdc1	$f4,-248($2)
	ldc1	$f4,-176($3)
	add.d	$f22,$f10,$f14
	ldc1	$f10,-184($5)
	add.d	$f6,$f18,$f8
	ldc1	$f14,-184($3)
	ldc1	$f18,-176($5)
	sdc1	$f2,-240($2)
	sdc1	$f20,-256($2)
	add.d	$f8,$f10,$f14
	sdc1	$f0,-232($2)
	add.d	$f2,$f18,$f4
	sdc1	$f12,-224($2)
	sdc1	$f16,-216($2)
	sdc1	$f24,-208($2)
	sdc1	$f22,-200($2)
	sdc1	$f6,-192($2)
	sdc1	$f2,-176($2)
	sdc1	$f8,-184($2)
	ldc1	$f8,-168($5)
	ldc1	$f10,-152($3)
	ldc1	$f14,-144($3)
	ldc1	$f0,-152($5)
	ldc1	$f12,-144($5)
	ldc1	$f6,-160($5)
	ldc1	$f4,-168($3)
	add.d	$f0,$f0,$f10
	ldc1	$f2,-160($3)
	add.d	$f12,$f12,$f14
	ldc1	$f10,-128($5)
	ldc1	$f14,-128($3)
	add.d	$f4,$f8,$f4
	ldc1	$f18,-136($3)
	add.d	$f2,$f6,$f2
	ldc1	$f20,-112($5)
	ldc1	$f24,-120($5)
	add.d	$f6,$f10,$f14
	ldc1	$f16,-136($5)
	ldc1	$f14,-120($3)
	ldc1	$f8,-112($3)
	ldc1	$f22,-104($3)
	add.d	$f16,$f16,$f18
	sdc1	$f4,-168($2)
	add.d	$f10,$f24,$f14
	ldc1	$f4,-96($3)
	add.d	$f8,$f20,$f8
	ldc1	$f14,-88($3)
	ldc1	$f18,-104($5)
	ldc1	$f24,-96($5)
	ldc1	$f20,-88($5)
	sdc1	$f2,-160($2)
	add.d	$f18,$f18,$f22
	sdc1	$f0,-152($2)
	add.d	$f24,$f24,$f4
	sdc1	$f12,-144($2)
	add.d	$f20,$f20,$f14
	sdc1	$f16,-136($2)
	sdc1	$f6,-128($2)
	sdc1	$f10,-120($2)
	sdc1	$f18,-104($2)
	sdc1	$f24,-96($2)
	sdc1	$f20,-88($2)
	sdc1	$f8,-112($2)
	ldc1	$f8,-80($5)
	ldc1	$f10,-64($3)
	ldc1	$f14,-56($3)
	ldc1	$f0,-64($5)
	ldc1	$f12,-56($5)
	ldc1	$f6,-72($5)
	ldc1	$f18,-48($3)
	add.d	$f0,$f0,$f10
	ldc1	$f4,-80($3)
	add.d	$f12,$f12,$f14
	ldc1	$f2,-72($3)
	ldc1	$f14,-32($3)
	ldc1	$f16,-48($5)
	ldc1	$f24,-32($5)
	add.d	$f4,$f8,$f4
	add.d	$f2,$f6,$f2
	ldc1	$f20,-40($5)
	ldc1	$f22,-40($3)
	add.d	$f16,$f16,$f18
	ldc1	$f6,-24($3)
	add.d	$f24,$f24,$f14
	ldc1	$f8,-16($5)
	ldc1	$f10,-16($3)
	ldc1	$f14,-8($3)
	add.d	$f20,$f20,$f22
	ldc1	$f18,-24($5)
	sdc1	$f0,-64($2)
	ldc1	$f0,-8($5)
	add.d	$f8,$f8,$f10
	sdc1	$f4,-80($2)
	add.d	$f6,$f18,$f6
	sdc1	$f2,-72($2)
	sdc1	$f12,-56($2)
	add.d	$f14,$f0,$f14
	sdc1	$f16,-48($2)
	sdc1	$f20,-40($2)
	sdc1	$f24,-32($2)
	sdc1	$f6,-24($2)
	sdc1	$f8,-16($2)
	bne	$6,$7,$L18
	sdc1	$f14,-8($2)

	addiu	$8,$8,1
	bne	$8,$4,$L21
	ldc1	$f24,16($sp)

	ldc1	$f22,8($sp)
	ldc1	$f20,0($sp)
	j	$31
	addiu	$sp,$sp,24

$L27:
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
	.frame	$sp,16,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x00070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	lui	$28,%hi(__gnu_local_gp)
	sw	$16,4($sp)
	move	$16,$4
	sw	$18,12($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,8($sp)
	move	$4,$0
	beq	$16,$0,$L28
	li	$25,1792			# 0x700

$L33:
	lw	$5,%got(xval1)($28)
	move	$24,$0
	lw	$3,%got(xval2)($28)
	lw	$2,%got(xresult)($28)
$L30:
	lw	$6,0($3)
	addiu	$5,$5,128
	lw	$17,-128($5)
	addiu	$3,$3,128
	addiu	$2,$2,128
	addiu	$24,$24,32
	lw	$7,-124($3)
	addu	$17,$17,$6
	lw	$15,-124($5)
	lw	$6,-120($3)
	lw	$14,-120($5)
	addu	$15,$15,$7
	lw	$8,-108($3)
	lw	$7,-116($3)
	addu	$14,$14,$6
	lw	$13,-116($5)
	lw	$6,-112($3)
	lw	$12,-112($5)
	lw	$11,-108($5)
	addu	$13,$13,$7
	lw	$18,-96($3)
	addu	$12,$12,$6
	lw	$7,-104($3)
	lw	$6,-100($5)
	addu	$11,$11,$8
	lw	$10,-104($5)
	lw	$9,-100($3)
	lw	$8,-96($5)
	addu	$10,$10,$7
	lw	$7,-92($5)
	addu	$9,$6,$9
	lw	$6,-88($5)
	addu	$8,$8,$18
	lw	$18,-92($3)
	sw	$15,-124($2)
	lw	$15,-88($3)
	addu	$7,$7,$18
	sw	$14,-120($2)
	sw	$13,-116($2)
	addu	$6,$6,$15
	sw	$12,-112($2)
	sw	$11,-108($2)
	sw	$10,-104($2)
	sw	$9,-100($2)
	sw	$8,-96($2)
	sw	$7,-92($2)
	sw	$6,-88($2)
	sw	$17,-128($2)
	lw	$17,-84($5)
	lw	$6,-84($3)
	lw	$7,-80($3)
	lw	$15,-80($5)
	addu	$17,$17,$6
	lw	$14,-76($5)
	lw	$6,-76($3)
	addu	$15,$15,$7
	lw	$8,-64($3)
	lw	$7,-72($3)
	addu	$14,$14,$6
	lw	$13,-72($5)
	lw	$6,-68($3)
	lw	$12,-68($5)
	lw	$11,-64($5)
	addu	$13,$13,$7
	lw	$18,-52($3)
	addu	$12,$12,$6
	lw	$7,-60($3)
	lw	$6,-56($5)
	addu	$11,$11,$8
	lw	$10,-60($5)
	lw	$9,-56($3)
	lw	$8,-52($5)
	addu	$10,$10,$7
	lw	$7,-48($5)
	addu	$9,$6,$9
	lw	$6,-44($5)
	addu	$8,$8,$18
	lw	$18,-48($3)
	sw	$15,-80($2)
	lw	$15,-44($3)
	addu	$7,$7,$18
	sw	$17,-84($2)
	sw	$14,-76($2)
	addu	$6,$6,$15
	sw	$13,-72($2)
	sw	$12,-68($2)
	sw	$11,-64($2)
	sw	$10,-60($2)
	sw	$9,-56($2)
	sw	$8,-52($2)
	sw	$7,-48($2)
	sw	$6,-44($2)
	lw	$15,-40($5)
	lw	$7,-40($3)
	lw	$6,-36($3)
	lw	$14,-36($5)
	addu	$15,$15,$7
	lw	$8,-24($3)
	lw	$7,-32($3)
	addu	$14,$14,$6
	lw	$13,-32($5)
	lw	$6,-28($3)
	lw	$12,-28($5)
	lw	$11,-24($5)
	addu	$13,$13,$7
	lw	$17,-12($3)
	lw	$7,-20($5)
	addu	$12,$12,$6
	addu	$11,$11,$8
	lw	$6,-16($5)
	lw	$10,-20($3)
	lw	$9,-16($3)
	lw	$8,-12($5)
	addu	$10,$7,$10
	lw	$18,-8($3)
	addu	$9,$6,$9
	lw	$7,-8($5)
	addu	$8,$8,$17
	lw	$6,-4($5)
	lw	$17,-4($3)
	addu	$7,$7,$18
	sw	$15,-40($2)
	sw	$14,-36($2)
	addu	$6,$6,$17
	sw	$13,-32($2)
	sw	$12,-28($2)
	sw	$11,-24($2)
	sw	$10,-20($2)
	sw	$9,-16($2)
	sw	$8,-12($2)
	sw	$7,-8($2)
	bne	$24,$25,$L30
	sw	$6,-4($2)

	addiu	$4,$4,1
	bne	$4,$16,$L33
	nop

$L28:
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,16

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
	.frame	$sp,16,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x00070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	lui	$28,%hi(__gnu_local_gp)
	sw	$16,4($sp)
	move	$16,$4
	sw	$18,12($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,8($sp)
	move	$4,$0
	beq	$16,$0,$L37
	li	$25,1792			# 0x700

$L42:
	lw	$5,%got(i32val1)($28)
	move	$24,$0
	lw	$3,%got(i32val2)($28)
	lw	$2,%got(i32result)($28)
$L39:
	lw	$6,0($5)
	addiu	$3,$3,128
	lw	$17,-128($3)
	addiu	$5,$5,128
	addiu	$2,$2,128
	addiu	$24,$24,32
	lw	$7,-124($5)
	addu	$17,$17,$6
	lw	$15,-124($3)
	lw	$6,-120($5)
	lw	$14,-120($3)
	addu	$15,$15,$7
	lw	$8,-108($5)
	lw	$7,-116($5)
	addu	$14,$14,$6
	lw	$13,-116($3)
	lw	$6,-112($5)
	lw	$12,-112($3)
	lw	$11,-108($3)
	addu	$13,$13,$7
	lw	$18,-96($5)
	addu	$12,$12,$6
	lw	$7,-104($5)
	lw	$6,-100($3)
	addu	$11,$11,$8
	lw	$10,-104($3)
	lw	$9,-100($5)
	lw	$8,-96($3)
	addu	$10,$10,$7
	lw	$7,-92($3)
	addu	$9,$6,$9
	lw	$6,-88($3)
	addu	$8,$8,$18
	lw	$18,-92($5)
	sw	$15,-124($2)
	lw	$15,-88($5)
	addu	$7,$7,$18
	sw	$14,-120($2)
	sw	$13,-116($2)
	addu	$6,$6,$15
	sw	$12,-112($2)
	sw	$11,-108($2)
	sw	$10,-104($2)
	sw	$9,-100($2)
	sw	$8,-96($2)
	sw	$7,-92($2)
	sw	$6,-88($2)
	sw	$17,-128($2)
	lw	$17,-84($3)
	lw	$6,-84($5)
	lw	$7,-80($5)
	lw	$15,-80($3)
	addu	$17,$17,$6
	lw	$14,-76($3)
	lw	$6,-76($5)
	addu	$15,$15,$7
	lw	$8,-64($5)
	lw	$7,-72($5)
	addu	$14,$14,$6
	lw	$13,-72($3)
	lw	$6,-68($5)
	lw	$12,-68($3)
	lw	$11,-64($3)
	addu	$13,$13,$7
	lw	$18,-52($5)
	addu	$12,$12,$6
	lw	$7,-60($5)
	lw	$6,-56($3)
	addu	$11,$11,$8
	lw	$10,-60($3)
	lw	$9,-56($5)
	lw	$8,-52($3)
	addu	$10,$10,$7
	lw	$7,-48($3)
	addu	$9,$6,$9
	lw	$6,-44($3)
	addu	$8,$8,$18
	lw	$18,-48($5)
	sw	$15,-80($2)
	lw	$15,-44($5)
	addu	$7,$7,$18
	sw	$17,-84($2)
	sw	$14,-76($2)
	addu	$6,$6,$15
	sw	$13,-72($2)
	sw	$12,-68($2)
	sw	$11,-64($2)
	sw	$10,-60($2)
	sw	$9,-56($2)
	sw	$8,-52($2)
	sw	$7,-48($2)
	sw	$6,-44($2)
	lw	$15,-40($3)
	lw	$7,-40($5)
	lw	$6,-36($5)
	lw	$14,-36($3)
	addu	$15,$15,$7
	lw	$8,-24($5)
	lw	$7,-32($5)
	addu	$14,$14,$6
	lw	$13,-32($3)
	lw	$6,-28($5)
	lw	$12,-28($3)
	lw	$11,-24($3)
	addu	$13,$13,$7
	lw	$17,-12($5)
	lw	$7,-20($3)
	addu	$12,$12,$6
	addu	$11,$11,$8
	lw	$6,-16($3)
	lw	$10,-20($5)
	lw	$9,-16($5)
	lw	$8,-12($3)
	addu	$10,$7,$10
	lw	$18,-8($5)
	addu	$9,$6,$9
	lw	$7,-8($3)
	addu	$8,$8,$17
	lw	$6,-4($3)
	lw	$17,-4($5)
	addu	$7,$7,$18
	sw	$15,-40($2)
	sw	$14,-36($2)
	addu	$6,$6,$17
	sw	$13,-32($2)
	sw	$12,-28($2)
	sw	$11,-24($2)
	sw	$10,-20($2)
	sw	$9,-16($2)
	sw	$8,-12($2)
	sw	$7,-8($2)
	bne	$24,$25,$L39
	sw	$6,-4($2)

	addiu	$4,$4,1
	bne	$4,$16,$L42
	nop

$L37:
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,16

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
	.frame	$sp,40,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	lui	$28,%hi(__gnu_local_gp)
	sw	$20,20($sp)
	sll	$20,$4,1
	sw	$19,16($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$18,12($sp)
	move	$19,$0
	sw	$fp,36($sp)
	li	$18,896			# 0x380
	sw	$23,32($sp)
	sw	$22,28($sp)
	sw	$21,24($sp)
	sw	$17,8($sp)
	beq	$20,$0,$L46
	sw	$16,4($sp)

$L51:
	lw	$5,%got(i64val1)($28)
	move	$17,$0
	lw	$3,%got(i64val2)($28)
	lw	$2,%got(i64result)($28)
$L48:
	lw	$22,0($3)
	addiu	$5,$5,256
	lw	$14,8($3)
	addiu	$3,$3,256
	lw	$13,-240($3)
	addiu	$2,$2,256
	lw	$12,-232($3)
	addiu	$17,$17,32
	lw	$6,-252($5)
	lw	$4,-244($5)
	lw	$21,-256($5)
	lw	$15,-252($3)
	lw	$9,-244($3)
	lw	$10,-224($3)
	addu	$21,$22,$21
	lw	$16,-248($5)
	addu	$15,$15,$6
	lw	$fp,-240($5)
	addu	$9,$9,$4
	lw	$24,-232($5)
	sltu	$22,$21,$22
	lw	$23,-224($5)
	addu	$16,$14,$16
	lw	$11,-236($3)
	addu	$fp,$13,$fp
	lw	$4,-228($5)
	addu	$24,$12,$24
	lw	$25,-220($5)
	addu	$23,$10,$23
	lw	$8,-236($5)
	sltu	$14,$16,$14
	lw	$7,-228($3)
	sltu	$13,$fp,$13
	lw	$6,-220($3)
	sltu	$12,$24,$12
	addu	$8,$11,$8
	lw	$11,-212($3)
	addu	$7,$7,$4
	lw	$4,-216($3)
	addu	$6,$6,$25
	lw	$25,-216($5)
	sltu	$10,$23,$10
	sw	$21,-256($2)
	addu	$15,$22,$15
	sw	$16,-248($2)
	addu	$9,$14,$9
	sw	$fp,-240($2)
	addu	$8,$13,$8
	sw	$24,-232($2)
	addu	$7,$12,$7
	sw	$15,-252($2)
	addu	$6,$10,$6
	sw	$9,-244($2)
	sw	$8,-236($2)
	addu	$25,$4,$25
	sw	$7,-228($2)
	sw	$23,-224($2)
	sltu	$4,$25,$4
	sw	$6,-220($2)
	lw	$6,-212($5)
	lw	$22,-204($3)
	lw	$16,-204($5)
	addu	$11,$11,$6
	lw	$21,-196($3)
	lw	$23,-188($5)
	addu	$11,$4,$11
	lw	$4,-196($5)
	addu	$16,$22,$16
	lw	$22,-188($3)
	lw	$fp,-180($3)
	addu	$4,$21,$4
	lw	$10,-208($3)
	addu	$21,$22,$23
	lw	$23,-180($5)
	lw	$9,-200($3)
	lw	$8,-192($3)
	lw	$7,-184($3)
	addu	$22,$fp,$23
	lw	$6,-176($3)
	lw	$24,-208($5)
	lw	$15,-200($5)
	lw	$14,-192($5)
	lw	$13,-184($5)
	addu	$24,$10,$24
	lw	$12,-176($5)
	addu	$15,$9,$15
	lw	$fp,-172($5)
	addu	$14,$8,$14
	sw	$25,-216($2)
	addu	$13,$7,$13
	sw	$11,-212($2)
	addu	$12,$6,$12
	lw	$25,-172($3)
	sltu	$10,$24,$10
	sltu	$9,$15,$9
	sw	$24,-208($2)
	sltu	$8,$14,$8
	sw	$15,-200($2)
	addu	$11,$25,$fp
	sw	$14,-192($2)
	sltu	$7,$13,$7
	sw	$13,-184($2)
	sltu	$6,$12,$6
	sw	$12,-176($2)
	addu	$10,$10,$16
	addu	$9,$9,$4
	addu	$8,$8,$21
	addu	$7,$7,$22
	sw	$10,-204($2)
	addu	$6,$6,$11
	sw	$9,-196($2)
	sw	$8,-188($2)
	sw	$7,-180($2)
	sw	$6,-172($2)
	lw	$21,-168($3)
	lw	$6,-164($5)
	lw	$4,-156($5)
	lw	$15,-164($3)
	lw	$8,-156($3)
	lw	$14,-160($3)
	lw	$13,-152($3)
	addu	$15,$15,$6
	lw	$12,-144($3)
	addu	$8,$8,$4
	lw	$9,-136($3)
	lw	$fp,-168($5)
	lw	$25,-160($5)
	lw	$24,-152($5)
	lw	$23,-144($5)
	addu	$fp,$21,$fp
	lw	$22,-136($5)
	addu	$25,$14,$25
	lw	$11,-148($3)
	addu	$24,$13,$24
	lw	$10,-140($3)
	addu	$23,$12,$23
	lw	$16,-132($5)
	addu	$22,$9,$22
	lw	$7,-148($5)
	sltu	$21,$fp,$21
	lw	$6,-140($5)
	sltu	$14,$25,$14
	lw	$4,-132($3)
	sltu	$13,$24,$13
	addu	$7,$11,$7
	lw	$11,-128($3)
	addu	$6,$10,$6
	lw	$10,-124($3)
	addu	$4,$4,$16
	lw	$16,-128($5)
	sltu	$12,$23,$12
	sw	$fp,-168($2)
	sltu	$9,$22,$9
	sw	$25,-160($2)
	addu	$15,$21,$15
	sw	$24,-152($2)
	addu	$8,$14,$8
	sw	$23,-144($2)
	addu	$7,$13,$7
	sw	$22,-136($2)
	addu	$6,$12,$6
	sw	$15,-164($2)
	addu	$4,$9,$4
	sw	$8,-156($2)
	sw	$7,-148($2)
	addu	$16,$11,$16
	sw	$6,-140($2)
	sw	$4,-132($2)
	sltu	$11,$16,$11
	lw	$4,-124($5)
	lw	$23,-116($3)
	lw	$22,-116($5)
	lw	$21,-108($5)
	addu	$10,$10,$4
	lw	$25,-108($3)
	addu	$22,$23,$22
	lw	$24,-100($5)
	lw	$23,-100($3)
	addu	$10,$11,$10
	lw	$9,-120($3)
	addu	$25,$25,$21
	lw	$8,-112($3)
	lw	$7,-104($3)
	addu	$24,$23,$24
	lw	$6,-96($3)
	lw	$4,-88($3)
	lw	$15,-120($5)
	lw	$14,-112($5)
	lw	$13,-104($5)
	lw	$12,-96($5)
	addu	$15,$9,$15
	lw	$11,-88($5)
	addu	$14,$8,$14
	lw	$fp,-92($3)
	addu	$13,$7,$13
	lw	$23,-84($5)
	addu	$12,$6,$12
	lw	$21,-92($5)
	addu	$11,$4,$11
	sw	$16,-128($2)
	sltu	$7,$13,$7
	sw	$10,-124($2)
	sltu	$9,$15,$9
	lw	$16,-84($3)
	addu	$21,$fp,$21
	sltu	$8,$14,$8
	sw	$15,-120($2)
	sltu	$6,$12,$6
	sw	$14,-112($2)
	addu	$10,$16,$23
	sw	$13,-104($2)
	sltu	$4,$11,$4
	sw	$12,-96($2)
	addu	$9,$9,$22
	sw	$11,-88($2)
	addu	$8,$8,$25
	addu	$24,$7,$24
	addu	$6,$6,$21
	sw	$9,-116($2)
	addu	$4,$4,$10
	sw	$8,-108($2)
	sw	$24,-100($2)
	sw	$6,-92($2)
	sw	$4,-84($2)
	lw	$21,-80($3)
	lw	$6,-76($5)
	lw	$4,-68($5)
	lw	$16,-76($3)
	lw	$10,-68($3)
	lw	$14,-72($3)
	lw	$13,-64($3)
	addu	$16,$16,$6
	lw	$12,-56($3)
	addu	$10,$10,$4
	lw	$11,-48($3)
	lw	$fp,-80($5)
	lw	$23,-72($5)
	lw	$25,-64($5)
	lw	$24,-56($5)
	addu	$fp,$21,$fp
	lw	$22,-48($5)
	addu	$23,$14,$23
	lw	$9,-60($3)
	addu	$25,$13,$25
	lw	$7,-52($3)
	addu	$24,$12,$24
	lw	$15,-44($5)
	addu	$22,$11,$22
	lw	$8,-60($5)
	sltu	$14,$23,$14
	lw	$6,-52($5)
	sltu	$12,$24,$12
	lw	$4,-44($3)
	sltu	$11,$22,$11
	addu	$8,$9,$8
	lw	$9,-36($3)
	addu	$6,$7,$6
	lw	$7,-40($3)
	addu	$4,$4,$15
	lw	$15,-40($5)
	sltu	$21,$fp,$21
	sw	$23,-72($2)
	sltu	$13,$25,$13
	sw	$24,-56($2)
	addu	$16,$21,$16
	sw	$22,-48($2)
	addu	$10,$14,$10
	sw	$fp,-80($2)
	addu	$8,$13,$8
	sw	$25,-64($2)
	addu	$6,$12,$6
	sw	$16,-76($2)
	addu	$4,$11,$4
	sw	$10,-68($2)
	sw	$8,-60($2)
	addu	$15,$7,$15
	sw	$6,-52($2)
	sw	$4,-44($2)
	sltu	$7,$15,$7
	lw	$4,-36($5)
	lw	$10,-32($3)
	lw	$22,-32($5)
	addu	$9,$9,$4
	lw	$8,-28($5)
	lw	$11,-20($3)
	addu	$24,$7,$9
	lw	$9,-28($3)
	lw	$7,-20($5)
	addu	$22,$10,$22
	lw	$12,-24($3)
	lw	$6,-16($3)
	sltu	$13,$22,$10
	lw	$4,-8($3)
	addu	$8,$9,$8
	lw	$21,-24($5)
	addu	$11,$11,$7
	lw	$16,-16($5)
	addu	$8,$13,$8
	lw	$14,-8($5)
	lw	$7,-4($5)
	addu	$21,$12,$21
	lw	$23,-12($3)
	addu	$16,$6,$16
	lw	$10,-12($5)
	addu	$14,$4,$14
	lw	$9,-4($3)
	sltu	$12,$21,$12
	sltu	$6,$16,$6
	sw	$15,-40($2)
	addu	$10,$23,$10
	sw	$24,-36($2)
	addu	$9,$9,$7
	sw	$22,-32($2)
	sltu	$4,$14,$4
	sw	$21,-24($2)
	addu	$7,$12,$11
	sw	$16,-16($2)
	addu	$6,$6,$10
	sw	$14,-8($2)
	addu	$4,$4,$9
	sw	$8,-28($2)
	sw	$7,-20($2)
	sw	$6,-12($2)
	bne	$17,$18,$L48
	sw	$4,-4($2)

	addiu	$19,$19,1
	bne	$19,$20,$L51
	nop

$L46:
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
	move	$8,$0
	beq	$4,$0,$L68
	li	$7,1792			# 0x700

	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$5,%got(fval1)($28)
$L66:
	move	$6,$0
	lw	$3,%got(fval2)($28)
	lw	$2,%got(fresult)($28)
$L57:
	lwc1	$f10,0($3)
	addiu	$5,$5,128
	addiu	$3,$3,128
	lwc1	$f1,-128($5)
	addiu	$2,$2,128
	addiu	$6,$6,32
	lwc1	$f9,-124($3)
	lwc1	$f0,-124($5)
	mul.s	$f10,$f1,$f10
	lwc1	$f2,-120($5)
	lwc1	$f1,-116($5)
	lwc1	$f8,-120($3)
	mul.s	$f9,$f0,$f9
	lwc1	$f7,-116($3)
	lwc1	$f0,-112($5)
	lwc1	$f6,-112($3)
	mul.s	$f8,$f2,$f8
	lwc1	$f5,-108($3)
	lwc1	$f2,-108($5)
	mul.s	$f7,$f1,$f7
	lwc1	$f4,-104($3)
	lwc1	$f1,-104($5)
	mul.s	$f6,$f0,$f6
	lwc1	$f3,-100($3)
	lwc1	$f0,-100($5)
	mul.s	$f5,$f2,$f5
	lwc1	$f13,-96($3)
	mul.s	$f4,$f1,$f4
	lwc1	$f12,-92($3)
	lwc1	$f11,-88($3)
	mul.s	$f3,$f0,$f3
	lwc1	$f2,-96($5)
	lwc1	$f1,-92($5)
	lwc1	$f0,-88($5)
	swc1	$f10,-128($2)
	mul.s	$f2,$f2,$f13
	swc1	$f9,-124($2)
	mul.s	$f1,$f1,$f12
	swc1	$f8,-120($2)
	mul.s	$f0,$f0,$f11
	swc1	$f7,-116($2)
	swc1	$f6,-112($2)
	swc1	$f5,-108($2)
	swc1	$f4,-104($2)
	swc1	$f3,-100($2)
	swc1	$f2,-96($2)
	swc1	$f0,-88($2)
	swc1	$f1,-92($2)
	lwc1	$f1,-84($5)
	lwc1	$f0,-80($5)
	lwc1	$f10,-84($3)
	lwc1	$f9,-80($3)
	lwc1	$f2,-76($5)
	lwc1	$f8,-76($3)
	mul.s	$f10,$f1,$f10
	lwc1	$f7,-72($3)
	lwc1	$f1,-72($5)
	mul.s	$f9,$f0,$f9
	lwc1	$f6,-68($3)
	lwc1	$f0,-68($5)
	mul.s	$f8,$f2,$f8
	lwc1	$f5,-64($3)
	lwc1	$f2,-64($5)
	mul.s	$f7,$f1,$f7
	lwc1	$f4,-60($3)
	lwc1	$f1,-60($5)
	mul.s	$f6,$f0,$f6
	lwc1	$f3,-56($3)
	lwc1	$f0,-56($5)
	mul.s	$f5,$f2,$f5
	lwc1	$f12,-48($3)
	mul.s	$f4,$f1,$f4
	lwc1	$f11,-44($3)
	lwc1	$f2,-52($5)
	mul.s	$f3,$f0,$f3
	lwc1	$f13,-52($3)
	lwc1	$f1,-48($5)
	lwc1	$f0,-44($5)
	swc1	$f10,-84($2)
	mul.s	$f2,$f2,$f13
	swc1	$f9,-80($2)
	mul.s	$f1,$f1,$f12
	swc1	$f8,-76($2)
	mul.s	$f0,$f0,$f11
	swc1	$f7,-72($2)
	swc1	$f6,-68($2)
	swc1	$f5,-64($2)
	swc1	$f4,-60($2)
	swc1	$f3,-56($2)
	swc1	$f2,-52($2)
	swc1	$f1,-48($2)
	swc1	$f0,-44($2)
	lwc1	$f0,-40($5)
	lwc1	$f9,-40($3)
	lwc1	$f2,-36($5)
	lwc1	$f1,-32($5)
	lwc1	$f8,-36($3)
	mul.s	$f9,$f0,$f9
	lwc1	$f7,-32($3)
	lwc1	$f0,-28($5)
	lwc1	$f6,-28($3)
	mul.s	$f8,$f2,$f8
	lwc1	$f5,-24($3)
	lwc1	$f2,-24($5)
	mul.s	$f7,$f1,$f7
	lwc1	$f4,-20($3)
	lwc1	$f1,-20($5)
	mul.s	$f6,$f0,$f6
	lwc1	$f3,-16($3)
	lwc1	$f0,-16($5)
	mul.s	$f5,$f2,$f5
	lwc1	$f12,-12($3)
	mul.s	$f4,$f1,$f4
	lwc1	$f2,-12($5)
	lwc1	$f1,-8($5)
	mul.s	$f3,$f0,$f3
	lwc1	$f11,-8($3)
	lwc1	$f0,-4($5)
	lwc1	$f10,-4($3)
	mul.s	$f2,$f2,$f12
	swc1	$f9,-40($2)
	mul.s	$f1,$f1,$f11
	swc1	$f8,-36($2)
	swc1	$f7,-32($2)
	mul.s	$f0,$f0,$f10
	swc1	$f6,-28($2)
	swc1	$f5,-24($2)
	swc1	$f4,-20($2)
	swc1	$f3,-16($2)
	swc1	$f2,-12($2)
	swc1	$f1,-8($2)
	bne	$6,$7,$L57
	swc1	$f0,-4($2)

	addiu	$8,$8,1
	bne	$8,$4,$L66
	lw	$5,%got(fval1)($28)

$L68:
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
	sll	$4,$4,1
	move	$8,$0
	beq	$4,$0,$L80
	li	$7,896			# 0x380

	addiu	$sp,$sp,-24
	lui	$28,%hi(__gnu_local_gp)
	sdc1	$f24,16($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sdc1	$f22,8($sp)
	sdc1	$f20,0($sp)
$L74:
	lw	$5,%got(dval1)($28)
	move	$6,$0
	lw	$3,%got(dval2)($28)
	lw	$2,%got(dresult)($28)
$L71:
	ldc1	$f0,0($3)
	addiu	$5,$5,256
	addiu	$3,$3,256
	ldc1	$f20,-256($5)
	addiu	$2,$2,256
	addiu	$6,$6,32
	ldc1	$f4,-248($3)
	ldc1	$f8,-248($5)
	mul.d	$f20,$f20,$f0
	ldc1	$f6,-240($5)
	ldc1	$f2,-240($3)
	ldc1	$f10,-232($3)
	mul.d	$f4,$f8,$f4
	ldc1	$f14,-224($3)
	ldc1	$f18,-216($3)
	mul.d	$f2,$f6,$f2
	ldc1	$f8,-208($3)
	ldc1	$f6,-208($5)
	ldc1	$f0,-232($5)
	ldc1	$f12,-224($5)
	ldc1	$f16,-216($5)
	mul.d	$f24,$f6,$f8
	ldc1	$f8,-192($3)
	sdc1	$f4,-248($2)
	mul.d	$f0,$f0,$f10
	ldc1	$f10,-200($5)
	ldc1	$f4,-176($3)
	mul.d	$f12,$f12,$f14
	ldc1	$f14,-200($3)
	sdc1	$f2,-240($2)
	mul.d	$f16,$f16,$f18
	ldc1	$f18,-192($5)
	sdc1	$f20,-256($2)
	mul.d	$f22,$f10,$f14
	ldc1	$f10,-184($5)
	ldc1	$f14,-184($3)
	mul.d	$f6,$f18,$f8
	ldc1	$f18,-176($5)
	sdc1	$f0,-232($2)
	sdc1	$f12,-224($2)
	mul.d	$f8,$f10,$f14
	sdc1	$f16,-216($2)
	sdc1	$f24,-208($2)
	mul.d	$f2,$f18,$f4
	sdc1	$f22,-200($2)
	sdc1	$f6,-192($2)
	sdc1	$f8,-184($2)
	sdc1	$f2,-176($2)
	ldc1	$f8,-168($5)
	ldc1	$f10,-152($3)
	ldc1	$f14,-144($3)
	ldc1	$f0,-152($5)
	ldc1	$f12,-144($5)
	ldc1	$f4,-168($3)
	ldc1	$f6,-160($5)
	mul.d	$f0,$f0,$f10
	ldc1	$f2,-160($3)
	ldc1	$f10,-128($5)
	mul.d	$f12,$f12,$f14
	ldc1	$f14,-128($3)
	ldc1	$f18,-136($3)
	mul.d	$f4,$f8,$f4
	ldc1	$f20,-112($5)
	ldc1	$f24,-120($5)
	mul.d	$f2,$f6,$f2
	ldc1	$f16,-136($5)
	ldc1	$f8,-112($3)
	mul.d	$f6,$f10,$f14
	ldc1	$f14,-120($3)
	ldc1	$f22,-104($3)
	mul.d	$f16,$f16,$f18
	sdc1	$f4,-168($2)
	ldc1	$f18,-104($5)
	mul.d	$f10,$f24,$f14
	ldc1	$f4,-96($3)
	ldc1	$f14,-88($3)
	mul.d	$f8,$f20,$f8
	ldc1	$f24,-96($5)
	ldc1	$f20,-88($5)
	mul.d	$f18,$f18,$f22
	sdc1	$f2,-160($2)
	sdc1	$f0,-152($2)
	mul.d	$f24,$f24,$f4
	sdc1	$f12,-144($2)
	sdc1	$f16,-136($2)
	mul.d	$f20,$f20,$f14
	sdc1	$f6,-128($2)
	sdc1	$f10,-120($2)
	sdc1	$f18,-104($2)
	sdc1	$f24,-96($2)
	sdc1	$f8,-112($2)
	sdc1	$f20,-88($2)
	ldc1	$f8,-80($5)
	ldc1	$f10,-64($3)
	ldc1	$f0,-64($5)
	ldc1	$f14,-56($3)
	ldc1	$f12,-56($5)
	ldc1	$f6,-72($5)
	mul.d	$f0,$f0,$f10
	ldc1	$f18,-48($3)
	ldc1	$f4,-80($3)
	mul.d	$f12,$f12,$f14
	ldc1	$f2,-72($3)
	ldc1	$f14,-32($3)
	ldc1	$f16,-48($5)
	ldc1	$f24,-32($5)
	mul.d	$f4,$f8,$f4
	ldc1	$f20,-40($5)
	mul.d	$f2,$f6,$f2
	ldc1	$f22,-40($3)
	ldc1	$f6,-24($3)
	mul.d	$f16,$f16,$f18
	ldc1	$f8,-16($5)
	ldc1	$f10,-16($3)
	mul.d	$f24,$f24,$f14
	ldc1	$f18,-24($5)
	ldc1	$f14,-8($3)
	sdc1	$f0,-64($2)
	mul.d	$f20,$f20,$f22
	ldc1	$f0,-8($5)
	mul.d	$f6,$f18,$f6
	sdc1	$f4,-80($2)
	sdc1	$f2,-72($2)
	mul.d	$f8,$f8,$f10
	sdc1	$f12,-56($2)
	sdc1	$f16,-48($2)
	mul.d	$f14,$f0,$f14
	sdc1	$f20,-40($2)
	sdc1	$f24,-32($2)
	sdc1	$f6,-24($2)
	sdc1	$f8,-16($2)
	bne	$6,$7,$L71
	sdc1	$f14,-8($2)

	addiu	$8,$8,1
	bne	$8,$4,$L74
	ldc1	$f24,16($sp)

	ldc1	$f22,8($sp)
	ldc1	$f20,0($sp)
	j	$31
	addiu	$sp,$sp,24

$L80:
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
	.frame	$sp,80,$31		# vars= 32, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-80
	addiu	$28,$28,%lo(__gnu_local_gp)
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
	sw	$4,80($sp)
	beq	$4,$0,$L81
	sw	$0,32($sp)

$L86:
	lw	$3,%got(xval1)($28)
	lw	$2,%got(xval2)($28)
	lw	$18,%got(xresult)($28)
	sw	$0,28($sp)
	lw	$4,28($sp)
	addiu	$3,$3,128
$L90:
	lw	$13,-128($3)
	addiu	$2,$2,128
	lw	$5,-128($2)
	addiu	$18,$18,128
	addiu	$4,$4,32
	mult	$13,$5
	lw	$12,-124($3)
	lw	$10,-120($3)
	lw	$5,-120($2)
	sw	$4,28($sp)
	lw	$4,-124($2)
	mflo	$16
	mfhi	$17
	lw	$8,-116($3)
	lw	$7,-112($3)
	mult	$12,$4
	lw	$4,-116($2)
	lw	$6,-112($2)
	lw	$22,-104($3)
	lw	$19,-104($2)
	mflo	$14
	lw	$21,-100($3)
	mfhi	$15
	lw	$20,-100($2)
	mult	$10,$5
	lw	$5,-108($3)
	srl	$13,$16,16
	lw	$fp,-88($3)
	sll	$17,$17,16
	mfhi	$11
	mflo	$10
	mult	$8,$4
	lw	$4,-108($2)
	sll	$16,$15,16
	lw	$15,-96($3)
	srl	$12,$14,16
	lw	$14,-96($2)
	or	$13,$17,$13
	mfhi	$9
	mflo	$8
	sw	$13,-128($18)
	mult	$7,$6
	srl	$10,$10,16
	or	$12,$16,$12
	mfhi	$7
	mflo	$6
	mult	$5,$4
	srl	$8,$8,16
	mfhi	$5
	mflo	$4
	mult	$22,$19
	sll	$19,$11,16
	lw	$11,-92($3)
	srl	$6,$6,16
	or	$10,$19,$10
	mflo	$24
	mfhi	$25
	mult	$21,$20
	srl	$4,$4,16
	mflo	$22
	mfhi	$23
	mult	$15,$14
	sll	$14,$9,16
	lw	$9,-88($2)
	sw	$14,16($sp)
	mflo	$20
	lw	$14,-92($2)
	mfhi	$21
	lw	$13,16($sp)
	mult	$11,$14
	or	$8,$13,$8
	srl	$11,$24,16
	sll	$24,$23,16
	mfhi	$15
	mflo	$14
	mult	$fp,$9
	sll	$9,$7,16
	sll	$7,$5,16
	sll	$fp,$25,16
	sw	$9,20($sp)
	srl	$9,$22,16
	sw	$15,12($sp)
	sll	$22,$21,16
	sw	$14,8($sp)
	mfhi	$15
	sw	$7,24($sp)
	srl	$7,$20,16
	lw	$21,12($sp)
	mflo	$14
	or	$11,$fp,$11
	or	$7,$22,$7
	sll	$20,$21,16
	lw	$21,8($sp)
	sw	$12,-124($18)
	or	$9,$24,$9
	sw	$10,-120($18)
	sll	$15,$15,16
	srl	$5,$21,16
	lw	$10,24($sp)
	lw	$13,-84($3)
	srl	$14,$14,16
	or	$5,$20,$5
	lw	$12,-80($3)
	or	$4,$10,$4
	lw	$10,-76($3)
	sw	$5,-92($18)
	or	$14,$15,$14
	sw	$4,-108($18)
	lw	$5,-84($2)
	lw	$4,-80($2)
	lw	$21,20($sp)
	mult	$13,$5
	lw	$5,-76($2)
	sw	$14,-88($18)
	sw	$8,-116($18)
	or	$6,$21,$6
	sw	$11,-104($18)
	mflo	$16
	sw	$6,-112($18)
	mfhi	$17
	sw	$7,-96($18)
	mult	$12,$4
	lw	$8,-72($3)
	lw	$4,-72($2)
	lw	$7,-68($3)
	lw	$6,-68($2)
	mflo	$14
	sw	$9,-100($18)
	mfhi	$15
	lw	$22,-60($3)
	mult	$10,$5
	lw	$5,-64($3)
	lw	$19,-60($2)
	srl	$13,$16,16
	lw	$21,-56($3)
	sll	$17,$17,16
	lw	$20,-56($2)
	mfhi	$11
	lw	$fp,-44($3)
	mflo	$10
	mult	$8,$4
	lw	$4,-64($2)
	sll	$16,$15,16
	lw	$15,-52($3)
	srl	$12,$14,16
	lw	$14,-52($2)
	or	$13,$17,$13
	mfhi	$9
	mflo	$8
	mult	$7,$6
	srl	$10,$10,16
	or	$12,$16,$12
	mfhi	$7
	mflo	$6
	mult	$5,$4
	srl	$8,$8,16
	mfhi	$5
	mflo	$4
	mult	$22,$19
	sll	$19,$11,16
	lw	$11,-48($3)
	srl	$6,$6,16
	or	$10,$19,$10
	mflo	$24
	mfhi	$25
	mult	$21,$20
	srl	$4,$4,16
	mflo	$22
	mfhi	$23
	mult	$15,$14
	sll	$14,$9,16
	sw	$14,16($sp)
	mflo	$20
	lw	$14,-48($2)
	mfhi	$21
	mult	$11,$14
	srl	$11,$24,16
	sll	$24,$23,16
	mflo	$14
	mfhi	$15
	sw	$14,8($sp)
	lw	$9,-44($2)
	sw	$15,12($sp)
	sw	$10,-76($18)
	mult	$fp,$9
	sw	$13,-84($18)
	sll	$9,$7,16
	lw	$19,-40($3)
	sll	$7,$5,16
	lw	$13,16($sp)
	lw	$16,-28($3)
	sll	$fp,$25,16
	sw	$9,20($sp)
	srl	$9,$22,16
	sll	$22,$21,16
	sw	$7,24($sp)
	lw	$21,12($sp)
	srl	$7,$20,16
	lw	$10,24($sp)
	mflo	$14
	mfhi	$15
	sw	$12,-80($18)
	sll	$20,$21,16
	lw	$21,8($sp)
	or	$4,$10,$4
	lw	$12,-20($3)
	or	$7,$22,$7
	lw	$10,-16($3)
	srl	$5,$21,16
	lw	$21,20($sp)
	sw	$4,-64($18)
	or	$8,$13,$8
	or	$5,$20,$5
	sw	$7,-52($18)
	or	$6,$21,$6
	sw	$8,-72($18)
	sw	$5,-48($18)
	or	$9,$24,$9
	sw	$6,-68($18)
	sll	$15,$15,16
	lw	$6,-40($2)
	srl	$14,$14,16
	lw	$5,-36($3)
	or	$11,$fp,$11
	lw	$4,-36($2)
	or	$14,$15,$14
	mult	$19,$6
	lw	$20,-32($3)
	lw	$8,-32($2)
	sw	$9,-56($18)
	sw	$14,-44($18)
	mflo	$6
	lw	$9,-28($2)
	mfhi	$7
	lw	$14,-24($3)
	mult	$5,$4
	sw	$11,-60($18)
	mflo	$4
	mfhi	$5
	mult	$20,$8
	lw	$8,-24($2)
	sll	$22,$7,16
	lw	$7,-20($2)
	srl	$19,$6,16
	mflo	$20
	mfhi	$21
	mult	$16,$9
	lw	$9,-16($2)
	sll	$23,$5,16
	lw	$6,-8($3)
	lw	$5,-8($2)
	srl	$24,$4,16
	lw	$25,-4($2)
	or	$19,$22,$19
	mflo	$16
	lw	$4,-4($3)
	mfhi	$17
	sw	$19,-40($18)
	mult	$14,$8
	lw	$8,-12($3)
	sll	$21,$21,16
	srl	$20,$20,16
	or	$24,$23,$24
	mflo	$14
	mfhi	$15
	sw	$24,-36($18)
	mult	$12,$7
	lw	$7,-12($2)
	sll	$17,$17,16
	srl	$16,$16,16
	or	$20,$21,$20
	mflo	$12
	mfhi	$13
	sw	$20,-32($18)
	mult	$10,$9
	sll	$15,$15,16
	srl	$14,$14,16
	or	$16,$17,$16
	mflo	$10
	mfhi	$11
	sw	$16,-28($18)
	mult	$8,$7
	sll	$13,$13,16
	srl	$12,$12,16
	or	$14,$15,$14
	mflo	$8
	mfhi	$9
	sw	$14,-24($18)
	mult	$6,$5
	sll	$11,$11,16
	srl	$10,$10,16
	or	$12,$13,$12
	mflo	$6
	mfhi	$7
	sw	$12,-20($18)
	mult	$4,$25
	sll	$9,$9,16
	srl	$8,$8,16
	or	$10,$11,$10
	mflo	$4
	mfhi	$5
	sw	$10,-16($18)
	sll	$7,$7,16
	srl	$6,$6,16
	or	$8,$9,$8
	or	$6,$7,$6
	sw	$8,-12($18)
	srl	$4,$4,16
	sw	$6,-8($18)
	sll	$5,$5,16
	or	$4,$5,$4
	li	$5,1792			# 0x700
	sw	$4,-4($18)
	lw	$4,28($sp)
	bne	$4,$5,$L90
	addiu	$3,$3,128

	addiu	$3,$3,-128
	lw	$7,32($sp)
	lw	$9,80($sp)
	addiu	$7,$7,1
	bne	$7,$9,$L86
	sw	$7,32($sp)

$L81:
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
	.end	bench_fixed_mul
	.size	bench_fixed_mul, .-bench_fixed_mul
	.align	2
	.globl	bench_i32_mul
	.set	nomips16
	.set	nomicromips
	.ent	bench_i32_mul
	.type	bench_i32_mul, @function
bench_i32_mul:
	.frame	$sp,16,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x00070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	lui	$28,%hi(__gnu_local_gp)
	sw	$16,4($sp)
	move	$16,$4
	sw	$18,12($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,8($sp)
	move	$4,$0
	beq	$16,$0,$L91
	li	$25,1792			# 0x700

$L96:
	lw	$5,%got(i32val1)($28)
	move	$24,$0
	lw	$3,%got(i32val2)($28)
	lw	$2,%got(i32result)($28)
$L93:
	lw	$6,0($5)
	addiu	$3,$3,128
	lw	$17,-128($3)
	addiu	$5,$5,128
	addiu	$2,$2,128
	addiu	$24,$24,32
	lw	$7,-124($5)
	mul	$17,$17,$6
	lw	$15,-124($3)
	lw	$6,-120($5)
	lw	$14,-120($3)
	mul	$15,$15,$7
	lw	$8,-108($5)
	lw	$7,-116($5)
	mul	$14,$14,$6
	lw	$13,-116($3)
	lw	$6,-112($5)
	lw	$12,-112($3)
	lw	$11,-108($3)
	mul	$13,$13,$7
	lw	$18,-96($5)
	mul	$12,$12,$6
	lw	$7,-104($5)
	lw	$6,-100($3)
	mul	$11,$11,$8
	lw	$10,-104($3)
	lw	$9,-100($5)
	lw	$8,-96($3)
	mul	$10,$10,$7
	lw	$7,-92($3)
	mul	$9,$6,$9
	lw	$6,-88($3)
	mul	$8,$8,$18
	lw	$18,-92($5)
	sw	$15,-124($2)
	lw	$15,-88($5)
	mul	$7,$7,$18
	sw	$14,-120($2)
	sw	$13,-116($2)
	mul	$6,$6,$15
	sw	$12,-112($2)
	sw	$11,-108($2)
	sw	$10,-104($2)
	sw	$9,-100($2)
	sw	$8,-96($2)
	sw	$7,-92($2)
	sw	$17,-128($2)
	sw	$6,-88($2)
	lw	$17,-84($3)
	lw	$6,-84($5)
	lw	$7,-80($5)
	lw	$15,-80($3)
	mul	$17,$17,$6
	lw	$14,-76($3)
	lw	$6,-76($5)
	mul	$15,$15,$7
	lw	$8,-64($5)
	lw	$7,-72($5)
	mul	$14,$14,$6
	lw	$13,-72($3)
	lw	$6,-68($5)
	lw	$12,-68($3)
	lw	$11,-64($3)
	mul	$13,$13,$7
	lw	$18,-52($5)
	mul	$12,$12,$6
	lw	$7,-60($5)
	lw	$6,-56($3)
	mul	$11,$11,$8
	lw	$10,-60($3)
	lw	$9,-56($5)
	lw	$8,-52($3)
	mul	$10,$10,$7
	lw	$7,-48($3)
	mul	$9,$6,$9
	lw	$6,-44($3)
	mul	$8,$8,$18
	lw	$18,-48($5)
	sw	$15,-80($2)
	lw	$15,-44($5)
	mul	$7,$7,$18
	sw	$17,-84($2)
	sw	$14,-76($2)
	mul	$6,$6,$15
	sw	$13,-72($2)
	sw	$12,-68($2)
	sw	$11,-64($2)
	sw	$10,-60($2)
	sw	$9,-56($2)
	sw	$8,-52($2)
	sw	$7,-48($2)
	sw	$6,-44($2)
	lw	$15,-40($3)
	lw	$7,-40($5)
	lw	$6,-36($5)
	lw	$14,-36($3)
	mul	$15,$15,$7
	lw	$8,-24($5)
	lw	$7,-32($5)
	mul	$14,$14,$6
	lw	$13,-32($3)
	lw	$6,-28($5)
	lw	$12,-28($3)
	lw	$11,-24($3)
	mul	$13,$13,$7
	lw	$17,-12($5)
	lw	$7,-20($3)
	mul	$12,$12,$6
	mul	$11,$11,$8
	lw	$6,-16($3)
	lw	$10,-20($5)
	lw	$9,-16($5)
	lw	$8,-12($3)
	mul	$10,$7,$10
	lw	$18,-8($5)
	mul	$9,$6,$9
	lw	$7,-8($3)
	mul	$8,$8,$17
	lw	$6,-4($3)
	lw	$17,-4($5)
	mul	$7,$7,$18
	sw	$15,-40($2)
	sw	$14,-36($2)
	mul	$6,$6,$17
	sw	$13,-32($2)
	sw	$12,-28($2)
	sw	$11,-24($2)
	sw	$10,-20($2)
	sw	$9,-16($2)
	sw	$8,-12($2)
	sw	$7,-8($2)
	bne	$24,$25,$L93
	sw	$6,-4($2)

	addiu	$4,$4,1
	bne	$4,$16,$L96
	nop

$L91:
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	j	$31
	addiu	$sp,$sp,16

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
	sw	$4,16($sp)
	beq	$4,$0,$L100
	sw	$0,12($sp)

$L105:
	lw	$24,%got(i64val1)($28)
	lw	$25,%got(i64val2)($28)
	lw	$fp,%got(i64result)($28)
	sw	$0,8($sp)
$L102:
	lw	$2,8($sp)
	addiu	$24,$24,256
	lw	$10,0($25)
	addiu	$25,$25,256
	lw	$8,-248($25)
	addiu	$fp,$fp,256
	lw	$3,-240($25)
	addiu	$2,$2,32
	lw	$6,-232($25)
	lw	$12,-256($24)
	lw	$18,-252($24)
	lw	$17,-244($24)
	lw	$4,-224($25)
	lw	$16,-236($24)
	mul	$18,$18,$10
	lw	$15,-228($24)
	mul	$17,$17,$8
	lw	$14,-220($24)
	lw	$13,-212($24)
	mul	$16,$16,$3
	lw	$23,-248($24)
	mul	$15,$15,$6
	sw	$2,8($sp)
	mul	$14,$14,$4
	lw	$2,-216($25)
	lw	$5,-240($24)
	lw	$19,-216($24)
	mul	$13,$13,$2
	multu	$10,$12
	mflo	$10
	mfhi	$11
	multu	$8,$23
	mflo	$8
	mfhi	$9
	sw	$10,-256($fp)
	multu	$3,$5
	lw	$3,-232($24)
	mflo	$20
	mfhi	$21
	multu	$6,$3
	lw	$3,-224($24)
	mflo	$6
	mfhi	$7
	multu	$4,$3
	mflo	$4
	mfhi	$5
	multu	$2,$19
	lw	$19,-252($25)
	mflo	$2
	mfhi	$3
	mul	$22,$19,$12
	addu	$12,$22,$18
	lw	$18,-244($25)
	addu	$11,$12,$11
	mul	$19,$18,$23
	lw	$18,-236($25)
	addu	$17,$19,$17
	lw	$19,-240($24)
	addu	$9,$17,$9
	mul	$22,$18,$19
	lw	$18,-228($25)
	lw	$19,-232($24)
	addu	$16,$22,$16
	mul	$22,$18,$19
	lw	$19,-220($25)
	lw	$18,-208($24)
	addu	$21,$16,$21
	addu	$15,$22,$15
	lw	$22,-224($24)
	addu	$7,$15,$7
	mul	$23,$19,$22
	lw	$19,-212($25)
	lw	$22,-216($24)
	addu	$14,$23,$14
	mul	$23,$19,$22
	lw	$19,-204($24)
	sw	$11,-252($fp)
	addu	$5,$14,$5
	sw	$2,-216($fp)
	lw	$10,-208($25)
	lw	$2,-204($25)
	sw	$20,-240($fp)
	mult	$19,$10
	sw	$7,-228($fp)
	madd	$2,$18
	lw	$2,-160($25)
	addu	$13,$23,$13
	lw	$17,-188($24)
	lw	$16,-180($24)
	addu	$3,$13,$3
	lw	$13,-156($24)
	mflo	$20
	lw	$15,-172($24)
	multu	$10,$18
	lw	$14,-164($24)
	lw	$18,-196($24)
	sw	$8,-248($fp)
	sw	$6,-232($fp)
	mflo	$10
	sw	$4,-224($fp)
	mfhi	$11
	sw	$5,-220($fp)
	mul	$7,$13,$2
	sw	$3,-212($fp)
	lw	$5,-200($25)
	lw	$3,-192($25)
	lw	$8,-184($25)
	lw	$6,-176($25)
	mul	$18,$18,$5
	lw	$4,-168($25)
	mul	$17,$17,$3
	mul	$16,$16,$8
	sw	$21,-236($fp)
	sw	$7,24($sp)
	mul	$15,$15,$6
	lw	$7,-200($24)
	mul	$14,$14,$4
	addu	$11,$20,$11
	sw	$9,-244($fp)
	lw	$12,-160($24)
	multu	$5,$7
	lw	$5,-192($24)
	lw	$13,-200($24)
	mflo	$22
	mfhi	$23
	multu	$3,$5
	lw	$3,-184($24)
	mflo	$20
	mfhi	$21
	multu	$8,$3
	lw	$3,-176($24)
	mflo	$8
	mfhi	$9
	multu	$6,$3
	lw	$3,-168($24)
	mflo	$6
	mfhi	$7
	multu	$4,$3
	mflo	$4
	mfhi	$5
	multu	$2,$12
	lw	$12,-196($25)
	mflo	$2
	mfhi	$3
	mul	$19,$12,$13
	addu	$12,$19,$18
	sw	$12,20($sp)
	lw	$12,-188($25)
	lw	$13,-192($24)
	lw	$19,-164($25)
	sw	$10,-208($fp)
	mul	$18,$12,$13
	lw	$12,-180($25)
	lw	$13,-184($24)
	lw	$10,-156($25)
	sw	$11,-204($fp)
	lw	$11,-160($24)
	sw	$22,-200($fp)
	sw	$20,-192($fp)
	addu	$17,$18,$17
	sw	$8,-184($fp)
	mul	$18,$12,$13
	lw	$12,-172($25)
	lw	$13,-176($24)
	addu	$21,$17,$21
	lw	$8,-128($25)
	sw	$6,-176($fp)
	sw	$21,-188($fp)
	sw	$4,-168($fp)
	sw	$2,-160($fp)
	addu	$16,$18,$16
	lw	$2,-144($25)
	mul	$18,$12,$13
	lw	$12,-168($24)
	addu	$9,$16,$9
	lw	$6,-120($25)
	lw	$4,-112($25)
	mul	$13,$19,$12
	lw	$12,24($sp)
	lw	$19,20($sp)
	sw	$9,-180($fp)
	addu	$15,$18,$15
	mul	$18,$10,$11
	lw	$10,-136($25)
	addu	$23,$19,$23
	addu	$14,$13,$14
	addu	$7,$15,$7
	addu	$5,$14,$5
	lw	$14,-152($25)
	sw	$23,-196($fp)
	sw	$7,-172($fp)
	addu	$13,$18,$12
	sw	$5,-164($fp)
	lw	$5,-152($24)
	addu	$3,$13,$3
	multu	$14,$5
	sw	$3,-156($fp)
	lw	$3,-148($24)
	lw	$17,-100($24)
	mflo	$22
	lw	$13,-140($24)
	mfhi	$23
	lw	$12,-132($24)
	mul	$14,$3,$14
	lw	$3,-104($25)
	lw	$16,-124($24)
	mul	$13,$13,$2
	lw	$19,-116($24)
	mul	$12,$12,$10
	mul	$17,$17,$3
	lw	$3,-148($25)
	lw	$18,-108($24)
	mul	$16,$16,$8
	mul	$19,$19,$6
	sw	$22,-152($fp)
	mul	$7,$3,$5
	mul	$18,$18,$4
	addu	$3,$7,$14
	lw	$14,-140($25)
	sw	$3,20($sp)
	lw	$3,-144($24)
	multu	$2,$3
	lw	$2,-136($24)
	mflo	$20
	mfhi	$21
	multu	$10,$2
	lw	$2,-128($24)
	mflo	$10
	mfhi	$11
	sw	$20,-144($fp)
	multu	$8,$2
	lw	$2,-120($24)
	mflo	$8
	mfhi	$9
	sw	$10,-136($fp)
	multu	$6,$2
	lw	$2,-112($24)
	mflo	$6
	mfhi	$7
	multu	$4,$2
	mflo	$4
	mfhi	$5
	mul	$2,$14,$3
	lw	$3,-136($24)
	lw	$14,-108($25)
	addu	$13,$2,$13
	lw	$2,-132($25)
	addu	$21,$13,$21
	mul	$15,$2,$3
	lw	$2,-124($25)
	lw	$3,-128($24)
	sw	$21,-140($fp)
	addu	$12,$15,$12
	mul	$15,$2,$3
	lw	$2,-116($25)
	lw	$3,-120($24)
	addu	$11,$12,$11
	addu	$16,$15,$16
	mul	$15,$2,$3
	lw	$2,-112($24)
	addu	$9,$16,$9
	mul	$3,$14,$2
	lw	$2,-100($25)
	addu	$19,$15,$19
	addu	$7,$19,$7
	addu	$18,$3,$18
	lw	$3,-104($24)
	addu	$5,$18,$5
	mul	$14,$2,$3
	addu	$15,$14,$17
	lw	$14,-104($25)
	lw	$17,20($sp)
	multu	$14,$3
	addu	$23,$17,$23
	mfhi	$3
	sw	$23,-148($fp)
	mflo	$2
	sw	$11,-132($fp)
	sw	$8,-128($fp)
	sw	$6,-120($fp)
	sw	$4,-112($fp)
	lw	$10,-96($25)
	lw	$8,-88($25)
	addu	$3,$15,$3
	lw	$6,-72($25)
	lw	$4,-64($25)
	lw	$12,-96($24)
	lw	$18,-92($24)
	lw	$17,-84($24)
	lw	$16,-76($24)
	lw	$15,-68($24)
	mul	$18,$18,$10
	lw	$14,-60($24)
	mul	$17,$17,$8
	lw	$13,-52($24)
	lw	$23,-88($24)
	mul	$15,$15,$6
	sw	$2,-104($fp)
	mul	$14,$14,$4
	sw	$3,-100($fp)
	lw	$2,-56($25)
	lw	$3,-80($25)
	sw	$5,-108($fp)
	mul	$13,$13,$2
	sw	$9,-124($fp)
	mul	$16,$16,$3
	lw	$5,-80($24)
	multu	$10,$12
	lw	$19,-56($24)
	sw	$7,-116($fp)
	mflo	$10
	mfhi	$11
	multu	$8,$23
	mflo	$8
	mfhi	$9
	multu	$3,$5
	lw	$3,-72($24)
	mflo	$20
	mfhi	$21
	multu	$6,$3
	lw	$3,-64($24)
	mflo	$6
	mfhi	$7
	multu	$4,$3
	mflo	$4
	mfhi	$5
	multu	$2,$19
	lw	$19,-92($25)
	mflo	$2
	mfhi	$3
	mul	$22,$19,$12
	lw	$12,-84($25)
	mul	$19,$12,$23
	lw	$12,-76($25)
	addu	$18,$22,$18
	addu	$11,$18,$11
	addu	$17,$19,$17
	lw	$19,-80($24)
	addu	$9,$17,$9
	mul	$22,$12,$19
	lw	$12,-68($25)
	lw	$19,-72($24)
	addu	$16,$22,$16
	mul	$22,$12,$19
	lw	$12,-48($24)
	lw	$19,-60($25)
	addu	$21,$16,$21
	sw	$2,-56($fp)
	lw	$2,-44($25)
	lw	$16,-40($24)
	lw	$18,-12($24)
	lw	$17,-4($24)
	addu	$15,$22,$15
	lw	$22,-64($24)
	sw	$10,-96($fp)
	sw	$8,-88($fp)
	addu	$7,$15,$7
	mul	$23,$19,$22
	lw	$19,-52($25)
	lw	$22,-56($24)
	lw	$10,-40($25)
	lw	$8,-32($25)
	sw	$20,-80($fp)
	sw	$21,-76($fp)
	sw	$6,-72($fp)
	addu	$14,$23,$14
	sw	$4,-64($fp)
	mul	$23,$19,$22
	lw	$19,-44($24)
	addu	$5,$14,$5
	lw	$6,-24($25)
	lw	$4,-16($25)
	lw	$21,-36($24)
	lw	$20,-28($24)
	sw	$11,-92($fp)
	sw	$9,-84($fp)
	addu	$13,$23,$13
	lw	$23,-32($24)
	sw	$7,-68($fp)
	addu	$3,$13,$3
	sw	$5,-60($fp)
	sw	$3,-52($fp)
	lw	$3,-48($25)
	mult	$19,$3
	lw	$19,-20($24)
	madd	$2,$12
	lw	$2,-8($25)
	mflo	$14
	multu	$3,$12
	lw	$3,-24($24)
	mflo	$12
	mfhi	$13
	mul	$21,$21,$10
	mul	$19,$19,$6
	mul	$20,$20,$8
	mul	$18,$18,$4
	mul	$17,$17,$2
	multu	$10,$16
	addu	$13,$14,$13
	mflo	$10
	mfhi	$11
	multu	$8,$23
	mflo	$8
	mfhi	$9
	multu	$6,$3
	lw	$3,-16($24)
	lw	$15,-8($24)
	sw	$12,-48($fp)
	sw	$13,-44($fp)
	mflo	$6
	sw	$10,-40($fp)
	mfhi	$7
	sw	$8,-32($fp)
	multu	$4,$3
	mflo	$4
	mfhi	$5
	sw	$6,-24($fp)
	multu	$2,$15
	lw	$15,-36($25)
	mflo	$2
	mfhi	$3
	sw	$4,-16($fp)
	mul	$22,$15,$16
	lw	$15,-28($25)
	sw	$2,-8($fp)
	li	$2,896			# 0x380
	addu	$16,$22,$21
	lw	$22,-24($24)
	mul	$21,$15,$23
	addu	$11,$16,$11
	sw	$11,-36($fp)
	addu	$20,$21,$20
	lw	$21,-20($25)
	addu	$9,$20,$9
	mul	$23,$21,$22
	lw	$21,-16($24)
	sw	$9,-28($fp)
	addu	$15,$23,$19
	lw	$19,-12($25)
	lw	$23,8($sp)
	addu	$7,$15,$7
	mul	$22,$19,$21
	lw	$19,-4($25)
	lw	$21,-8($24)
	sw	$7,-20($fp)
	addu	$18,$22,$18
	mul	$22,$19,$21
	addu	$5,$18,$5
	sw	$5,-12($fp)
	addu	$17,$22,$17
	addu	$3,$17,$3
	bne	$23,$2,$L102
	sw	$3,-4($fp)

	lw	$3,12($sp)
	lw	$5,16($sp)
	addiu	$3,$3,1
	bne	$3,$5,$L105
	sw	$3,12($sp)

$L100:
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
	move	$8,$0
	beq	$4,$0,$L122
	li	$7,1792			# 0x700

	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$5,%got(fval1)($28)
$L120:
	move	$6,$0
	lw	$3,%got(fval2)($28)
	lw	$2,%got(fresult)($28)
$L111:
	lwc1	$f10,0($3)
	addiu	$5,$5,128
	addiu	$3,$3,128
	lwc1	$f1,-128($5)
	addiu	$2,$2,128
	addiu	$6,$6,32
	lwc1	$f9,-124($3)
	lwc1	$f0,-124($5)
	div.s	$f10,$f1,$f10
	lwc1	$f19,-120($3)
	lwc1	$f18,-116($3)
	lwc1	$f17,-112($3)
	lwc1	$f16,-108($3)
	lwc1	$f15,-104($3)
	lwc1	$f14,-100($3)
	lwc1	$f13,-96($3)
	lwc1	$f12,-92($3)
	lwc1	$f11,-88($3)
	lwc1	$f8,-120($5)
	lwc1	$f7,-116($5)
	lwc1	$f6,-112($5)
	lwc1	$f5,-108($5)
	div.s	$f9,$f0,$f9
	lwc1	$f4,-104($5)
	lwc1	$f3,-100($5)
	lwc1	$f2,-96($5)
	lwc1	$f1,-92($5)
	lwc1	$f0,-88($5)
	swc1	$f10,-128($2)
	div.s	$f8,$f8,$f19
	swc1	$f9,-124($2)
	div.s	$f7,$f7,$f18
	swc1	$f8,-120($2)
	div.s	$f6,$f6,$f17
	swc1	$f7,-116($2)
	div.s	$f5,$f5,$f16
	swc1	$f6,-112($2)
	div.s	$f4,$f4,$f15
	swc1	$f5,-108($2)
	div.s	$f3,$f3,$f14
	swc1	$f4,-104($2)
	div.s	$f2,$f2,$f13
	swc1	$f3,-100($2)
	div.s	$f1,$f1,$f12
	swc1	$f2,-96($2)
	div.s	$f0,$f0,$f11
	swc1	$f1,-92($2)
	swc1	$f0,-88($2)
	lwc1	$f1,-84($5)
	lwc1	$f0,-80($5)
	lwc1	$f10,-84($3)
	lwc1	$f9,-80($3)
	lwc1	$f18,-72($3)
	lwc1	$f17,-68($3)
	div.s	$f10,$f1,$f10
	lwc1	$f16,-64($3)
	lwc1	$f15,-60($3)
	lwc1	$f14,-56($3)
	lwc1	$f13,-52($3)
	lwc1	$f12,-48($3)
	lwc1	$f11,-44($3)
	lwc1	$f8,-76($5)
	lwc1	$f19,-76($3)
	lwc1	$f7,-72($5)
	lwc1	$f6,-68($5)
	lwc1	$f5,-64($5)
	lwc1	$f4,-60($5)
	lwc1	$f3,-56($5)
	lwc1	$f2,-52($5)
	div.s	$f9,$f0,$f9
	lwc1	$f1,-48($5)
	lwc1	$f0,-44($5)
	swc1	$f10,-84($2)
	div.s	$f7,$f7,$f18
	swc1	$f9,-80($2)
	div.s	$f6,$f6,$f17
	swc1	$f7,-72($2)
	div.s	$f5,$f5,$f16
	swc1	$f6,-68($2)
	div.s	$f4,$f4,$f15
	swc1	$f5,-64($2)
	div.s	$f3,$f3,$f14
	swc1	$f4,-60($2)
	div.s	$f2,$f2,$f13
	swc1	$f3,-56($2)
	div.s	$f1,$f1,$f12
	swc1	$f2,-52($2)
	div.s	$f0,$f0,$f11
	swc1	$f1,-48($2)
	div.s	$f8,$f8,$f19
	swc1	$f0,-44($2)
	swc1	$f8,-76($2)
	lwc1	$f0,-40($5)
	lwc1	$f9,-40($3)
	lwc1	$f8,-36($5)
	lwc1	$f18,-36($3)
	lwc1	$f7,-32($5)
	div.s	$f9,$f0,$f9
	lwc1	$f17,-32($3)
	lwc1	$f6,-28($5)
	lwc1	$f16,-28($3)
	lwc1	$f5,-24($5)
	lwc1	$f15,-24($3)
	lwc1	$f4,-20($5)
	lwc1	$f14,-20($3)
	lwc1	$f3,-16($5)
	lwc1	$f13,-16($3)
	lwc1	$f2,-12($5)
	lwc1	$f12,-12($3)
	lwc1	$f1,-8($5)
	lwc1	$f11,-8($3)
	lwc1	$f0,-4($5)
	lwc1	$f10,-4($3)
	div.s	$f8,$f8,$f18
	swc1	$f9,-40($2)
	div.s	$f7,$f7,$f17
	swc1	$f8,-36($2)
	div.s	$f6,$f6,$f16
	swc1	$f7,-32($2)
	div.s	$f5,$f5,$f15
	swc1	$f6,-28($2)
	div.s	$f4,$f4,$f14
	swc1	$f5,-24($2)
	div.s	$f3,$f3,$f13
	swc1	$f4,-20($2)
	div.s	$f2,$f2,$f12
	swc1	$f3,-16($2)
	div.s	$f1,$f1,$f11
	swc1	$f2,-12($2)
	div.s	$f0,$f0,$f10
	swc1	$f1,-8($2)
	bne	$6,$7,$L111
	swc1	$f0,-4($2)

	addiu	$8,$8,1
	bne	$8,$4,$L120
	lw	$5,%got(fval1)($28)

$L122:
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
	.frame	$sp,48,$31		# vars= 0, regs= 0/12, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0xfff00000,-8
	.set	noreorder
	.set	nomacro
	sll	$4,$4,1
	move	$8,$0
	beq	$4,$0,$L134
	li	$7,896			# 0x380

	addiu	$sp,$sp,-48
	lui	$28,%hi(__gnu_local_gp)
	sdc1	$f30,40($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sdc1	$f28,32($sp)
	sdc1	$f26,24($sp)
	sdc1	$f24,16($sp)
	sdc1	$f22,8($sp)
	sdc1	$f20,0($sp)
$L128:
	lw	$5,%got(dval1)($28)
	move	$6,$0
	lw	$3,%got(dval2)($28)
	lw	$2,%got(dresult)($28)
$L125:
	ldc1	$f28,0($3)
	addiu	$5,$5,256
	addiu	$3,$3,256
	ldc1	$f0,-256($5)
	addiu	$2,$2,256
	addiu	$6,$6,32
	ldc1	$f8,-232($3)
	div.d	$f28,$f0,$f28
	ldc1	$f4,-232($5)
	ldc1	$f0,-248($5)
	ldc1	$f30,-248($3)
	ldc1	$f2,-240($5)
	ldc1	$f6,-224($3)
	ldc1	$f10,-216($3)
	ldc1	$f14,-208($3)
	ldc1	$f18,-200($3)
	ldc1	$f22,-192($3)
	ldc1	$f26,-184($3)
	ldc1	$f12,-208($5)
	ldc1	$f16,-200($5)
	ldc1	$f20,-192($5)
	ldc1	$f24,-184($5)
	div.d	$f4,$f4,$f8
	sdc1	$f28,-256($2)
	div.d	$f30,$f0,$f30
	ldc1	$f0,-240($3)
	sdc1	$f4,-232($2)
	ldc1	$f4,-216($5)
	div.d	$f28,$f2,$f0
	ldc1	$f0,-224($5)
	sdc1	$f30,-248($2)
	div.d	$f2,$f0,$f6
	sdc1	$f28,-240($2)
	div.d	$f0,$f4,$f10
	ldc1	$f4,-176($3)
	sdc1	$f2,-224($2)
	ldc1	$f2,-176($5)
	div.d	$f12,$f12,$f14
	sdc1	$f0,-216($2)
	div.d	$f16,$f16,$f18
	sdc1	$f12,-208($2)
	div.d	$f0,$f2,$f4
	sdc1	$f16,-200($2)
	div.d	$f20,$f20,$f22
	sdc1	$f0,-176($2)
	div.d	$f24,$f24,$f26
	sdc1	$f20,-192($2)
	sdc1	$f24,-184($2)
	ldc1	$f0,-168($5)
	ldc1	$f2,-168($3)
	ldc1	$f8,-144($3)
	ldc1	$f4,-144($5)
	ldc1	$f30,-160($3)
	div.d	$f28,$f0,$f2
	ldc1	$f0,-160($5)
	ldc1	$f2,-152($5)
	ldc1	$f6,-136($3)
	ldc1	$f10,-128($3)
	ldc1	$f14,-120($3)
	ldc1	$f18,-112($3)
	ldc1	$f22,-104($3)
	ldc1	$f26,-96($3)
	ldc1	$f12,-120($5)
	ldc1	$f16,-112($5)
	ldc1	$f20,-104($5)
	ldc1	$f24,-96($5)
	div.d	$f4,$f4,$f8
	sdc1	$f28,-168($2)
	div.d	$f30,$f0,$f30
	ldc1	$f0,-152($3)
	sdc1	$f4,-144($2)
	ldc1	$f4,-128($5)
	div.d	$f28,$f2,$f0
	ldc1	$f0,-136($5)
	sdc1	$f30,-160($2)
	div.d	$f2,$f0,$f6
	sdc1	$f28,-152($2)
	div.d	$f0,$f4,$f10
	ldc1	$f4,-88($3)
	sdc1	$f2,-136($2)
	ldc1	$f2,-88($5)
	div.d	$f12,$f12,$f14
	sdc1	$f0,-128($2)
	div.d	$f16,$f16,$f18
	sdc1	$f12,-120($2)
	div.d	$f0,$f2,$f4
	sdc1	$f16,-112($2)
	div.d	$f20,$f20,$f22
	sdc1	$f0,-88($2)
	div.d	$f24,$f24,$f26
	sdc1	$f20,-104($2)
	sdc1	$f24,-96($2)
	ldc1	$f0,-80($5)
	ldc1	$f2,-80($3)
	ldc1	$f4,-56($5)
	ldc1	$f8,-56($3)
	ldc1	$f30,-72($3)
	div.d	$f28,$f0,$f2
	ldc1	$f0,-72($5)
	ldc1	$f2,-64($5)
	ldc1	$f6,-48($3)
	ldc1	$f10,-40($3)
	ldc1	$f12,-32($5)
	ldc1	$f14,-32($3)
	ldc1	$f16,-24($5)
	ldc1	$f18,-24($3)
	ldc1	$f20,-16($5)
	ldc1	$f22,-16($3)
	ldc1	$f24,-8($5)
	ldc1	$f26,-8($3)
	div.d	$f4,$f4,$f8
	sdc1	$f28,-80($2)
	div.d	$f30,$f0,$f30
	ldc1	$f0,-64($3)
	sdc1	$f4,-56($2)
	ldc1	$f4,-40($5)
	div.d	$f28,$f2,$f0
	ldc1	$f0,-48($5)
	sdc1	$f30,-72($2)
	div.d	$f2,$f0,$f6
	sdc1	$f28,-64($2)
	div.d	$f0,$f4,$f10
	sdc1	$f2,-48($2)
	div.d	$f12,$f12,$f14
	sdc1	$f0,-40($2)
	div.d	$f16,$f16,$f18
	sdc1	$f12,-32($2)
	div.d	$f20,$f20,$f22
	sdc1	$f16,-24($2)
	div.d	$f24,$f24,$f26
	sdc1	$f20,-16($2)
	bne	$6,$7,$L125
	sdc1	$f24,-8($2)

	addiu	$8,$8,1
	bne	$8,$4,$L128
	ldc1	$f30,40($sp)

	ldc1	$f28,32($sp)
	ldc1	$f26,24($sp)
	ldc1	$f24,16($sp)
	ldc1	$f22,8($sp)
	ldc1	$f20,0($sp)
	j	$31
	addiu	$sp,$sp,48

$L134:
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
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$21,44($sp)
	move	$21,$4
	sw	$20,40($sp)
	move	$20,$0
	sw	$19,36($sp)
	li	$19,1792			# 0x700
	sw	$31,52($sp)
	sw	$22,48($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	beq	$4,$0,$L135
	.cprestore	16

	lw	$18,%got(xval1)($28)
$L144:
	move	$22,$0
	lw	$17,%got(xval2)($28)
	lw	$16,%got(xresult)($28)
$L137:
	lw	$4,0($18)
	addiu	$18,$18,128
	lw	$6,0($17)
	addiu	$17,$17,128
	lw	$25,%call16(__divdi3)($28)
	addiu	$16,$16,128
	sra	$2,$4,31
	srl	$5,$4,16
	sll	$2,$2,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	addiu	$22,$22,32
	lw	$4,-124($18)
	lw	$28,16($sp)
	lw	$6,-124($17)
	sra	$3,$4,31
	sw	$2,-128($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-120($18)
	lw	$28,16($sp)
	lw	$6,-120($17)
	sra	$3,$4,31
	sw	$2,-124($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-116($18)
	lw	$28,16($sp)
	lw	$6,-116($17)
	sra	$3,$4,31
	sw	$2,-120($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-112($18)
	lw	$28,16($sp)
	lw	$6,-112($17)
	sra	$3,$4,31
	sw	$2,-116($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-108($18)
	lw	$28,16($sp)
	lw	$6,-108($17)
	sra	$3,$4,31
	sw	$2,-112($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-104($18)
	lw	$28,16($sp)
	lw	$6,-104($17)
	sra	$3,$4,31
	sw	$2,-108($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-100($18)
	lw	$28,16($sp)
	lw	$6,-100($17)
	sra	$3,$4,31
	sw	$2,-104($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-96($18)
	lw	$28,16($sp)
	lw	$6,-96($17)
	sra	$3,$4,31
	sw	$2,-100($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-92($18)
	lw	$28,16($sp)
	lw	$6,-92($17)
	sra	$3,$4,31
	sw	$2,-96($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-88($18)
	lw	$28,16($sp)
	lw	$6,-88($17)
	sra	$3,$4,31
	sw	$2,-92($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-84($18)
	lw	$28,16($sp)
	lw	$6,-84($17)
	sra	$3,$4,31
	sw	$2,-88($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-80($18)
	lw	$28,16($sp)
	lw	$6,-80($17)
	sra	$3,$4,31
	sw	$2,-84($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-76($18)
	lw	$28,16($sp)
	lw	$6,-76($17)
	sra	$3,$4,31
	sw	$2,-80($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-72($18)
	lw	$28,16($sp)
	lw	$6,-72($17)
	sra	$3,$4,31
	sw	$2,-76($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-68($18)
	lw	$28,16($sp)
	lw	$6,-68($17)
	sra	$3,$4,31
	sw	$2,-72($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-64($18)
	lw	$28,16($sp)
	lw	$6,-64($17)
	sra	$3,$4,31
	sw	$2,-68($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-60($18)
	lw	$28,16($sp)
	lw	$6,-60($17)
	sra	$3,$4,31
	sw	$2,-64($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-56($18)
	lw	$28,16($sp)
	lw	$6,-56($17)
	sra	$3,$4,31
	sw	$2,-60($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-52($18)
	lw	$28,16($sp)
	lw	$6,-52($17)
	sra	$3,$4,31
	sw	$2,-56($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-48($18)
	lw	$28,16($sp)
	lw	$6,-48($17)
	sra	$3,$4,31
	sw	$2,-52($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-44($18)
	lw	$28,16($sp)
	lw	$6,-44($17)
	sw	$2,-48($16)
	sra	$2,$4,31
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$2,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-40($18)
	lw	$28,16($sp)
	lw	$6,-40($17)
	sra	$3,$4,31
	sw	$2,-44($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-36($18)
	lw	$28,16($sp)
	lw	$6,-36($17)
	sra	$3,$4,31
	sw	$2,-40($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-32($18)
	lw	$28,16($sp)
	lw	$6,-32($17)
	sra	$3,$4,31
	sw	$2,-36($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-28($18)
	lw	$28,16($sp)
	lw	$6,-28($17)
	sra	$3,$4,31
	sw	$2,-32($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-24($18)
	lw	$28,16($sp)
	lw	$6,-24($17)
	sra	$3,$4,31
	sw	$2,-28($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-20($18)
	lw	$28,16($sp)
	lw	$6,-20($17)
	sra	$3,$4,31
	sw	$2,-24($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-16($18)
	lw	$28,16($sp)
	lw	$6,-16($17)
	sra	$3,$4,31
	sw	$2,-20($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-12($18)
	lw	$28,16($sp)
	lw	$6,-12($17)
	sra	$3,$4,31
	sw	$2,-16($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-8($18)
	lw	$28,16($sp)
	lw	$6,-8($17)
	sra	$3,$4,31
	sw	$2,-12($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$4,-4($18)
	lw	$28,16($sp)
	lw	$6,-4($17)
	sra	$3,$4,31
	sw	$2,-8($16)
	srl	$5,$4,16
	lw	$25,%call16(__divdi3)($28)
	sll	$2,$3,16
	sll	$4,$4,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$28,16($sp)
	bne	$22,$19,$L137
	sw	$2,-4($16)

	addiu	$20,$20,1
	bne	$20,$21,$L144
	lw	$18,%got(xval1)($28)

$L135:
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
	.end	bench_fixed_div
	.size	bench_fixed_div, .-bench_fixed_div
	.align	2
	.globl	bench_i32_div
	.set	nomips16
	.set	nomicromips
	.ent	bench_i32_div
	.type	bench_i32_div, @function
bench_i32_div:
	.frame	$sp,40,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	lui	$28,%hi(__gnu_local_gp)
	sw	$18,12($sp)
	move	$18,$0
	sw	$17,8($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,36($sp)
	li	$17,1792			# 0x700
	sw	$23,32($sp)
	sw	$22,28($sp)
	sw	$21,24($sp)
	sw	$20,20($sp)
	sw	$19,16($sp)
	beq	$4,$0,$L145
	sw	$16,4($sp)

	move	$23,$18
	move	$fp,$4
$L150:
	lw	$4,%got(i32val1)($28)
	move	$19,$0
	lw	$3,%got(i32val2)($28)
	lw	$2,%got(i32result)($28)
$L147:
	lw	$5,0($3)
	addiu	$4,$4,128
	lw	$14,-128($4)
	addiu	$3,$3,128
	addiu	$2,$2,128
	addiu	$19,$19,32
	teq	$5,$0,7
	divu	$0,$14,$5
	lw	$13,-124($3)
	lw	$25,-124($4)
	lw	$12,-120($4)
	lw	$24,-120($3)
	lw	$22,-116($4)
	lw	$11,-116($3)
	lw	$10,-112($4)
	lw	$21,-112($3)
	lw	$9,-108($4)
	lw	$20,-108($3)
	lw	$8,-104($4)
	lw	$18,-104($3)
	lw	$7,-100($4)
	lw	$16,-100($3)
	lw	$6,-96($4)
	lw	$15,-96($3)
	mflo	$14
	teq	$13,$0,7
	divu	$0,$25,$13
	sw	$14,-128($2)
	mflo	$13
	teq	$24,$0,7
	divu	$0,$12,$24
	sw	$13,-124($2)
	mflo	$12
	teq	$11,$0,7
	divu	$0,$22,$11
	sw	$12,-120($2)
	mflo	$11
	teq	$21,$0,7
	divu	$0,$10,$21
	sw	$11,-116($2)
	mflo	$10
	teq	$20,$0,7
	divu	$0,$9,$20
	sw	$10,-112($2)
	mflo	$9
	teq	$18,$0,7
	divu	$0,$8,$18
	sw	$9,-108($2)
	lw	$9,-92($3)
	mflo	$8
	teq	$16,$0,7
	divu	$0,$7,$16
	sw	$8,-104($2)
	lw	$8,-92($4)
	mflo	$7
	teq	$15,$0,7
	divu	$0,$6,$15
	sw	$7,-100($2)
	mflo	$6
	teq	$9,$0,7
	divu	$0,$8,$9
	lw	$8,-88($4)
	lw	$9,-88($3)
	sw	$6,-96($2)
	mflo	$5
	teq	$9,$0,7
	divu	$0,$8,$9
	sw	$5,-92($2)
	mflo	$6
	sw	$6,-88($2)
	lw	$14,-84($4)
	lw	$5,-84($3)
	lw	$25,-80($4)
	lw	$13,-80($3)
	teq	$5,$0,7
	divu	$0,$14,$5
	lw	$12,-76($4)
	lw	$24,-76($3)
	lw	$22,-72($4)
	lw	$11,-72($3)
	lw	$10,-68($4)
	lw	$21,-68($3)
	lw	$9,-64($4)
	lw	$20,-64($3)
	lw	$8,-60($4)
	lw	$18,-60($3)
	lw	$7,-56($4)
	lw	$16,-56($3)
	lw	$6,-52($4)
	lw	$15,-52($3)
	mflo	$14
	teq	$13,$0,7
	divu	$0,$25,$13
	sw	$14,-84($2)
	mflo	$13
	teq	$24,$0,7
	divu	$0,$12,$24
	sw	$13,-80($2)
	mflo	$12
	teq	$11,$0,7
	divu	$0,$22,$11
	sw	$12,-76($2)
	mflo	$11
	teq	$21,$0,7
	divu	$0,$10,$21
	sw	$11,-72($2)
	mflo	$10
	teq	$20,$0,7
	divu	$0,$9,$20
	sw	$10,-68($2)
	mflo	$9
	teq	$18,$0,7
	divu	$0,$8,$18
	sw	$9,-64($2)
	lw	$9,-48($3)
	mflo	$8
	teq	$16,$0,7
	divu	$0,$7,$16
	sw	$8,-60($2)
	lw	$8,-48($4)
	mflo	$7
	teq	$15,$0,7
	divu	$0,$6,$15
	sw	$7,-56($2)
	mflo	$6
	teq	$9,$0,7
	divu	$0,$8,$9
	lw	$8,-44($4)
	lw	$9,-44($3)
	sw	$6,-52($2)
	mflo	$5
	teq	$9,$0,7
	divu	$0,$8,$9
	sw	$5,-48($2)
	mflo	$6
	sw	$6,-44($2)
	lw	$14,-40($4)
	lw	$5,-40($3)
	lw	$13,-36($3)
	lw	$25,-36($4)
	teq	$5,$0,7
	divu	$0,$14,$5
	lw	$12,-32($3)
	lw	$24,-32($4)
	lw	$11,-28($4)
	lw	$22,-28($3)
	lw	$10,-24($4)
	lw	$21,-24($3)
	lw	$9,-20($4)
	lw	$20,-20($3)
	lw	$8,-16($4)
	lw	$18,-16($3)
	lw	$7,-12($4)
	lw	$16,-12($3)
	lw	$6,-8($4)
	lw	$15,-8($3)
	mflo	$14
	teq	$13,$0,7
	divu	$0,$25,$13
	sw	$14,-40($2)
	mflo	$13
	teq	$12,$0,7
	divu	$0,$24,$12
	sw	$13,-36($2)
	mflo	$12
	teq	$22,$0,7
	divu	$0,$11,$22
	sw	$12,-32($2)
	mflo	$11
	teq	$21,$0,7
	divu	$0,$10,$21
	sw	$11,-28($2)
	mflo	$10
	teq	$20,$0,7
	divu	$0,$9,$20
	sw	$10,-24($2)
	mflo	$9
	teq	$18,$0,7
	divu	$0,$8,$18
	sw	$9,-20($2)
	lw	$9,-4($3)
	mflo	$8
	teq	$16,$0,7
	divu	$0,$7,$16
	sw	$8,-16($2)
	lw	$8,-4($4)
	mflo	$7
	teq	$15,$0,7
	divu	$0,$6,$15
	sw	$7,-12($2)
	mflo	$6
	teq	$9,$0,7
	divu	$0,$8,$9
	sw	$6,-8($2)
	mflo	$5
	bne	$19,$17,$L147
	sw	$5,-4($2)

	addiu	$23,$23,1
	bne	$23,$fp,$L150
	nop

$L145:
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
	sw	$21,44($sp)
	move	$21,$0
	sw	$20,40($sp)
	li	$20,896			# 0x380
	sw	$31,52($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	beq	$22,$0,$L155
	.cprestore	16

	lw	$18,%got(i64val1)($28)
$L164:
	move	$19,$0
	lw	$17,%got(i64val2)($28)
	lw	$16,%got(i64result)($28)
$L157:
	lw	$4,0($18)
	addiu	$17,$17,256
	lw	$5,4($18)
	addiu	$18,$18,256
	lw	$6,-256($17)
	addiu	$16,$16,256
	lw	$7,-252($17)
	lw	$25,%call16(__udivdi3)($28)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addiu	$19,$19,32

	lw	$28,16($sp)
	lw	$4,-248($18)
	lw	$5,-244($18)
	lw	$6,-248($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-244($17)
	sw	$2,-256($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-252($16)

	lw	$28,16($sp)
	lw	$4,-240($18)
	lw	$5,-236($18)
	lw	$6,-240($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-236($17)
	sw	$2,-248($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-244($16)

	lw	$28,16($sp)
	lw	$4,-232($18)
	lw	$5,-228($18)
	lw	$6,-232($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-228($17)
	sw	$2,-240($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-236($16)

	lw	$28,16($sp)
	lw	$4,-224($18)
	lw	$5,-220($18)
	lw	$6,-224($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-220($17)
	sw	$2,-232($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-228($16)

	lw	$28,16($sp)
	lw	$4,-216($18)
	lw	$5,-212($18)
	lw	$6,-216($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-212($17)
	sw	$2,-224($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-220($16)

	lw	$28,16($sp)
	lw	$4,-208($18)
	lw	$5,-204($18)
	lw	$6,-208($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-204($17)
	sw	$2,-216($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-212($16)

	lw	$28,16($sp)
	lw	$4,-200($18)
	lw	$5,-196($18)
	lw	$6,-200($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-196($17)
	sw	$2,-208($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-204($16)

	lw	$28,16($sp)
	lw	$4,-192($18)
	lw	$5,-188($18)
	lw	$6,-192($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-188($17)
	sw	$2,-200($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-196($16)

	lw	$28,16($sp)
	lw	$4,-184($18)
	lw	$5,-180($18)
	lw	$6,-184($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-180($17)
	sw	$2,-192($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-188($16)

	lw	$28,16($sp)
	lw	$4,-176($18)
	lw	$5,-172($18)
	lw	$6,-176($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-172($17)
	sw	$2,-184($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-180($16)

	lw	$28,16($sp)
	lw	$4,-168($18)
	lw	$5,-164($18)
	lw	$6,-168($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-164($17)
	sw	$2,-176($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-172($16)

	lw	$28,16($sp)
	lw	$4,-160($18)
	lw	$5,-156($18)
	lw	$6,-160($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-156($17)
	sw	$2,-168($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-164($16)

	lw	$28,16($sp)
	lw	$4,-152($18)
	lw	$5,-148($18)
	lw	$6,-152($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-148($17)
	sw	$2,-160($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-156($16)

	lw	$28,16($sp)
	lw	$4,-144($18)
	lw	$5,-140($18)
	lw	$6,-144($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-140($17)
	sw	$2,-152($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-148($16)

	lw	$28,16($sp)
	lw	$4,-136($18)
	lw	$5,-132($18)
	lw	$6,-136($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-132($17)
	sw	$2,-144($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-140($16)

	lw	$28,16($sp)
	lw	$4,-128($18)
	lw	$5,-124($18)
	lw	$6,-128($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-124($17)
	sw	$2,-136($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-132($16)

	lw	$28,16($sp)
	lw	$4,-120($18)
	lw	$5,-116($18)
	lw	$6,-120($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-116($17)
	sw	$2,-128($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-124($16)

	lw	$28,16($sp)
	lw	$4,-112($18)
	lw	$5,-108($18)
	lw	$6,-112($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-108($17)
	sw	$2,-120($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-116($16)

	lw	$28,16($sp)
	lw	$4,-104($18)
	lw	$5,-100($18)
	lw	$6,-104($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-100($17)
	sw	$2,-112($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-108($16)

	lw	$28,16($sp)
	lw	$4,-96($18)
	lw	$5,-92($18)
	lw	$6,-96($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-92($17)
	sw	$2,-104($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-100($16)

	lw	$28,16($sp)
	lw	$4,-88($18)
	lw	$5,-84($18)
	lw	$6,-88($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-84($17)
	sw	$2,-96($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-92($16)

	lw	$28,16($sp)
	lw	$4,-80($18)
	lw	$5,-76($18)
	lw	$6,-80($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-76($17)
	sw	$2,-88($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-84($16)

	lw	$28,16($sp)
	lw	$4,-72($18)
	lw	$5,-68($18)
	lw	$6,-72($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-68($17)
	sw	$2,-80($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-76($16)

	lw	$28,16($sp)
	lw	$4,-64($18)
	lw	$5,-60($18)
	lw	$6,-64($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-60($17)
	sw	$2,-72($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-68($16)

	lw	$28,16($sp)
	lw	$4,-56($18)
	lw	$5,-52($18)
	lw	$6,-56($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-52($17)
	sw	$2,-64($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-60($16)

	lw	$28,16($sp)
	lw	$4,-48($18)
	lw	$5,-44($18)
	lw	$6,-48($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-44($17)
	sw	$2,-56($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-52($16)

	lw	$28,16($sp)
	lw	$4,-40($18)
	lw	$5,-36($18)
	lw	$6,-40($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-36($17)
	sw	$2,-48($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-44($16)

	lw	$28,16($sp)
	lw	$4,-32($18)
	lw	$5,-28($18)
	lw	$6,-32($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-28($17)
	sw	$2,-40($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-36($16)

	lw	$28,16($sp)
	lw	$4,-24($18)
	lw	$5,-20($18)
	lw	$6,-24($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-20($17)
	sw	$2,-32($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-28($16)

	lw	$28,16($sp)
	lw	$4,-16($18)
	lw	$5,-12($18)
	lw	$6,-16($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-12($17)
	sw	$2,-24($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-20($16)

	lw	$28,16($sp)
	lw	$4,-8($18)
	lw	$5,-4($18)
	lw	$6,-8($17)
	lw	$25,%call16(__udivdi3)($28)
	lw	$7,-4($17)
	sw	$2,-16($16)
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	sw	$3,-12($16)

	lw	$28,16($sp)
	sw	$2,-8($16)
	bne	$19,$20,$L157
	sw	$3,-4($16)

	addiu	$21,$21,1
	bne	$21,$22,$L164
	lw	$18,%got(i64val1)($28)

$L155:
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
	.end	bench_i64_div
	.size	bench_i64_div, .-bench_i64_div
	.align	2
	.globl	bench_quake_sqrt
	.set	nomips16
	.set	nomicromips
	.ent	bench_quake_sqrt
	.type	bench_quake_sqrt, @function
bench_quake_sqrt:
	.frame	$sp,40,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	lui	$28,%hi(__gnu_local_gp)
	sw	$fp,36($sp)
	sw	$23,32($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,28($sp)
	sw	$21,24($sp)
	sw	$20,20($sp)
	sw	$19,16($sp)
	sw	$18,12($sp)
	sw	$17,8($sp)
	sw	$16,4($sp)
	beq	$4,$0,$L165
	sw	$4,40($sp)

	lui	$2,%hi($LC0)
	li	$5,1597440000			# 0x5f370000
	lwc1	$f1,%lo($LC0)($2)
	lui	$2,%hi($LC1)
	move	$23,$0
	lwc1	$f0,%lo($LC1)($2)
	addiu	$5,$5,23007
	li	$22,1792			# 0x700
$L168:
	lw	$3,%got(fval1)($28)
	move	$21,$0
	lw	$2,%got(fresult)($28)
$L167:
	lw	$18,0($3)
	addiu	$3,$3,128
	addiu	$2,$2,128
	addiu	$21,$21,32
	mtc1	$18,$f2
	lwc1	$f3,-124($3)
	sra	$20,$18,1
	lw	$4,-124($3)
	lwc1	$f16,-76($3)
	subu	$20,$5,$20
	lw	$6,-112($3)
	lwc1	$f17,-72($3)
	sra	$19,$4,1
	lw	$4,-120($3)
	lwc1	$f19,-64($3)
	subu	$19,$5,$19
	lw	$fp,-64($3)
	mul.s	$f15,$f2,$f1
	sra	$17,$4,1
	lw	$4,-116($3)
	mul.s	$f2,$f3,$f1
	lwc1	$f3,-120($3)
	subu	$17,$5,$17
	sra	$16,$4,1
	sra	$4,$6,1
	lw	$6,-108($3)
	subu	$16,$5,$16
	subu	$4,$5,$4
	sra	$25,$6,1
	lw	$6,-104($3)
	subu	$25,$5,$25
	mul.s	$f14,$f3,$f1
	lwc1	$f3,-116($3)
	sra	$24,$6,1
	lw	$6,-100($3)
	subu	$24,$5,$24
	sra	$15,$6,1
	lw	$6,-96($3)
	subu	$15,$5,$15
	sra	$14,$6,1
	lw	$6,-92($3)
	mul.s	$f13,$f3,$f1
	lwc1	$f3,-112($3)
	subu	$14,$5,$14
	sra	$13,$6,1
	lw	$6,-88($3)
	subu	$13,$5,$13
	sra	$12,$6,1
	lw	$6,-84($3)
	subu	$12,$5,$12
	mul.s	$f12,$f3,$f1
	lwc1	$f3,-108($3)
	sra	$11,$6,1
	lw	$6,-80($3)
	subu	$11,$5,$11
	sra	$10,$6,1
	lw	$6,-76($3)
	subu	$10,$5,$10
	sra	$9,$6,1
	lw	$6,-72($3)
	mul.s	$f11,$f3,$f1
	lwc1	$f3,-104($3)
	subu	$9,$5,$9
	sra	$8,$6,1
	lw	$6,-68($3)
	subu	$8,$5,$8
	sra	$7,$6,1
	sra	$6,$fp,1
	subu	$7,$5,$7
	mul.s	$f10,$f3,$f1
	lwc1	$f3,-100($3)
	subu	$6,$5,$6
	mul.s	$f9,$f3,$f1
	lwc1	$f3,-96($3)
	mul.s	$f8,$f3,$f1
	lwc1	$f3,-92($3)
	mul.s	$f7,$f3,$f1
	lwc1	$f3,-88($3)
	mul.s	$f6,$f3,$f1
	lwc1	$f3,-84($3)
	mul.s	$f5,$f3,$f1
	lwc1	$f3,-80($3)
	mul.s	$f4,$f3,$f1
	mul.s	$f3,$f16,$f1
	mul.s	$f16,$f17,$f1
	lwc1	$f17,-68($3)
	mul.s	$f18,$f17,$f1
	mul.s	$f17,$f19,$f1
	mtc1	$20,$f19
	mul.s	$f15,$f15,$f19
	mtc1	$19,$f19
	mul.s	$f2,$f2,$f19
	mtc1	$17,$f19
	mul.s	$f14,$f14,$f19
	mtc1	$16,$f19
	mul.s	$f13,$f13,$f19
	mtc1	$4,$f19
	mul.s	$f12,$f12,$f19
	mtc1	$25,$f19
	mul.s	$f11,$f11,$f19
	mtc1	$24,$f19
	mul.s	$f10,$f10,$f19
	mtc1	$15,$f19
	mul.s	$f9,$f9,$f19
	mtc1	$14,$f19
	mul.s	$f8,$f8,$f19
	mtc1	$13,$f19
	mul.s	$f7,$f7,$f19
	mtc1	$12,$f19
	mul.s	$f6,$f6,$f19
	mtc1	$11,$f19
	mul.s	$f5,$f5,$f19
	mtc1	$10,$f19
	mul.s	$f4,$f4,$f19
	mtc1	$9,$f19
	mul.s	$f3,$f3,$f19
	mtc1	$8,$f19
	mul.s	$f16,$f16,$f19
	mtc1	$7,$f19
	mul.s	$f18,$f18,$f19
	mtc1	$6,$f19
	mul.s	$f17,$f17,$f19
	mtc1	$20,$f19
	mul.s	$f15,$f19,$f15
	mtc1	$19,$f19
	sub.s	$f15,$f0,$f15
	mul.s	$f2,$f19,$f2
	mtc1	$17,$f19
	sub.s	$f2,$f0,$f2
	mul.s	$f14,$f19,$f14
	mtc1	$16,$f19
	sub.s	$f14,$f0,$f14
	mul.s	$f13,$f19,$f13
	mtc1	$4,$f19
	sub.s	$f13,$f0,$f13
	mul.s	$f12,$f19,$f12
	mtc1	$25,$f19
	sub.s	$f12,$f0,$f12
	mul.s	$f11,$f19,$f11
	mtc1	$24,$f19
	sub.s	$f11,$f0,$f11
	mul.s	$f10,$f19,$f10
	mtc1	$15,$f19
	sub.s	$f10,$f0,$f10
	mul.s	$f9,$f19,$f9
	mtc1	$14,$f19
	sub.s	$f9,$f0,$f9
	mul.s	$f8,$f19,$f8
	mtc1	$13,$f19
	sub.s	$f8,$f0,$f8
	mul.s	$f7,$f19,$f7
	mtc1	$12,$f19
	sub.s	$f7,$f0,$f7
	mul.s	$f6,$f19,$f6
	mtc1	$11,$f19
	sub.s	$f6,$f0,$f6
	mul.s	$f5,$f19,$f5
	mtc1	$10,$f19
	sub.s	$f5,$f0,$f5
	mul.s	$f4,$f19,$f4
	mtc1	$9,$f19
	sub.s	$f4,$f0,$f4
	mul.s	$f3,$f19,$f3
	mtc1	$8,$f19
	sub.s	$f3,$f0,$f3
	mul.s	$f16,$f19,$f16
	mtc1	$7,$f19
	sub.s	$f16,$f0,$f16
	mul.s	$f18,$f19,$f18
	mtc1	$6,$f19
	sub.s	$f18,$f0,$f18
	mul.s	$f17,$f19,$f17
	mtc1	$20,$f19
	sub.s	$f17,$f0,$f17
	mul.s	$f15,$f19,$f15
	mtc1	$19,$f19
	mul.s	$f2,$f19,$f2
	mtc1	$17,$f19
	mul.s	$f14,$f19,$f14
	mtc1	$16,$f19
	mul.s	$f13,$f19,$f13
	mtc1	$4,$f19
	mul.s	$f12,$f19,$f12
	mtc1	$25,$f19
	mul.s	$f11,$f19,$f11
	mtc1	$24,$f19
	mul.s	$f10,$f19,$f10
	mtc1	$15,$f19
	mul.s	$f9,$f19,$f9
	mtc1	$14,$f19
	mul.s	$f8,$f19,$f8
	mtc1	$13,$f19
	mul.s	$f7,$f19,$f7
	mtc1	$12,$f19
	mul.s	$f6,$f19,$f6
	mtc1	$11,$f19
	mul.s	$f5,$f19,$f5
	mtc1	$10,$f19
	mul.s	$f4,$f19,$f4
	mtc1	$9,$f19
	mul.s	$f3,$f19,$f3
	mtc1	$8,$f19
	mul.s	$f16,$f19,$f16
	mtc1	$7,$f19
	mul.s	$f18,$f19,$f18
	mtc1	$6,$f19
	mul.s	$f17,$f19,$f17
	mtc1	$18,$f19
	mul.s	$f15,$f19,$f15
	lwc1	$f19,-124($3)
	mul.s	$f2,$f19,$f2
	lwc1	$f19,-120($3)
	swc1	$f15,-128($2)
	lwc1	$f15,-108($3)
	mul.s	$f14,$f19,$f14
	lwc1	$f19,-116($3)
	swc1	$f2,-124($2)
	lwc1	$f2,-100($3)
	mul.s	$f11,$f15,$f11
	lwc1	$f15,-88($3)
	mul.s	$f13,$f19,$f13
	lwc1	$f19,-112($3)
	swc1	$f14,-120($2)
	mul.s	$f9,$f2,$f9
	lwc1	$f14,-92($3)
	lwc1	$f2,-80($3)
	mul.s	$f6,$f15,$f6
	mul.s	$f12,$f19,$f12
	swc1	$f13,-116($2)
	lwc1	$f19,-104($3)
	lwc1	$f13,-96($3)
	mul.s	$f7,$f14,$f7
	swc1	$f11,-108($2)
	mul.s	$f4,$f2,$f4
	lwc1	$f11,-64($3)
	mul.s	$f10,$f19,$f10
	swc1	$f9,-100($2)
	mul.s	$f8,$f13,$f8
	lwc1	$f19,-84($3)
	lwc1	$f9,-72($3)
	mul.s	$f17,$f11,$f17
	swc1	$f7,-92($2)
	swc1	$f10,-104($2)
	swc1	$f8,-96($2)
	mul.s	$f5,$f19,$f5
	lwc1	$f8,-76($3)
	mul.s	$f16,$f9,$f16
	lwc1	$f10,-68($3)
	swc1	$f6,-88($2)
	swc1	$f5,-84($2)
	mul.s	$f3,$f8,$f3
	swc1	$f4,-80($2)
	mul.s	$f18,$f10,$f18
	swc1	$f16,-72($2)
	swc1	$f17,-64($2)
	swc1	$f12,-112($2)
	swc1	$f3,-76($2)
	swc1	$f18,-68($2)
	lwc1	$f12,-60($3)
	lw	$4,-60($3)
	lwc1	$f2,-56($3)
	lw	$20,-4($3)
	sra	$19,$4,1
	lw	$4,-56($3)
	lwc1	$f17,-4($3)
	subu	$19,$5,$19
	sra	$18,$4,1
	lw	$4,-52($3)
	mul.s	$f16,$f12,$f1
	subu	$18,$5,$18
	mul.s	$f15,$f2,$f1
	lwc1	$f2,-52($3)
	sra	$17,$4,1
	lw	$4,-48($3)
	mtc1	$18,$f19
	subu	$17,$5,$17
	sra	$16,$4,1
	lw	$4,-44($3)
	subu	$16,$5,$16
	sra	$15,$4,1
	lw	$4,-40($3)
	mul.s	$f14,$f2,$f1
	lwc1	$f2,-48($3)
	subu	$15,$5,$15
	mul.s	$f15,$f15,$f19
	sra	$14,$4,1
	lw	$4,-36($3)
	mtc1	$16,$f19
	subu	$14,$5,$14
	sra	$13,$4,1
	lw	$4,-32($3)
	subu	$13,$5,$13
	mul.s	$f13,$f2,$f1
	lwc1	$f2,-44($3)
	sra	$12,$4,1
	lw	$4,-28($3)
	subu	$12,$5,$12
	sra	$11,$4,1
	lw	$4,-24($3)
	subu	$11,$5,$11
	sra	$10,$4,1
	lw	$4,-20($3)
	mul.s	$f12,$f2,$f1
	lwc1	$f2,-40($3)
	subu	$10,$5,$10
	mul.s	$f13,$f13,$f19
	sra	$9,$4,1
	lw	$4,-16($3)
	mtc1	$14,$f19
	subu	$9,$5,$9
	sra	$8,$4,1
	lw	$4,-12($3)
	subu	$8,$5,$8
	mul.s	$f11,$f2,$f1
	lwc1	$f2,-36($3)
	sra	$7,$4,1
	lw	$4,-8($3)
	subu	$7,$5,$7
	sra	$6,$4,1
	sra	$4,$20,1
	subu	$6,$5,$6
	subu	$4,$5,$4
	mul.s	$f10,$f2,$f1
	lwc1	$f2,-32($3)
	mul.s	$f11,$f11,$f19
	mtc1	$12,$f19
	mul.s	$f9,$f2,$f1
	lwc1	$f2,-28($3)
	mul.s	$f8,$f2,$f1
	lwc1	$f2,-24($3)
	mul.s	$f9,$f9,$f19
	mtc1	$10,$f19
	mul.s	$f7,$f2,$f1
	lwc1	$f2,-20($3)
	mul.s	$f6,$f2,$f1
	lwc1	$f2,-16($3)
	mul.s	$f7,$f7,$f19
	mtc1	$8,$f19
	mul.s	$f5,$f2,$f1
	lwc1	$f2,-12($3)
	mul.s	$f4,$f2,$f1
	lwc1	$f2,-8($3)
	mul.s	$f5,$f5,$f19
	mtc1	$6,$f19
	mul.s	$f3,$f2,$f1
	mul.s	$f2,$f17,$f1
	mtc1	$19,$f17
	mul.s	$f3,$f3,$f19
	mtc1	$19,$f19
	mul.s	$f16,$f16,$f17
	mtc1	$17,$f17
	mul.s	$f16,$f19,$f16
	mul.s	$f14,$f14,$f17
	mtc1	$15,$f17
	mtc1	$17,$f19
	sub.s	$f16,$f0,$f16
	mul.s	$f12,$f12,$f17
	mtc1	$13,$f17
	mul.s	$f14,$f19,$f14
	mtc1	$15,$f19
	mul.s	$f10,$f10,$f17
	mtc1	$11,$f17
	mul.s	$f12,$f19,$f12
	mtc1	$13,$f19
	sub.s	$f14,$f0,$f14
	mul.s	$f8,$f8,$f17
	mtc1	$9,$f17
	mul.s	$f10,$f19,$f10
	mtc1	$11,$f19
	sub.s	$f12,$f0,$f12
	mul.s	$f6,$f6,$f17
	mtc1	$7,$f17
	mul.s	$f8,$f19,$f8
	mtc1	$9,$f19
	sub.s	$f10,$f0,$f10
	mul.s	$f4,$f4,$f17
	mtc1	$4,$f17
	mul.s	$f6,$f19,$f6
	mtc1	$7,$f19
	sub.s	$f8,$f0,$f8
	mul.s	$f2,$f2,$f17
	mtc1	$18,$f17
	mul.s	$f4,$f19,$f4
	mtc1	$4,$f19
	sub.s	$f6,$f0,$f6
	mul.s	$f15,$f17,$f15
	mtc1	$16,$f17
	mul.s	$f2,$f19,$f2
	mtc1	$18,$f19
	sub.s	$f15,$f0,$f15
	mul.s	$f13,$f17,$f13
	mtc1	$14,$f17
	sub.s	$f4,$f0,$f4
	mul.s	$f15,$f19,$f15
	sub.s	$f13,$f0,$f13
	mul.s	$f11,$f17,$f11
	mtc1	$12,$f17
	mtc1	$16,$f19
	sub.s	$f2,$f0,$f2
	sub.s	$f11,$f0,$f11
	mul.s	$f9,$f17,$f9
	mtc1	$10,$f17
	mul.s	$f13,$f19,$f13
	mtc1	$14,$f19
	sub.s	$f9,$f0,$f9
	mul.s	$f7,$f17,$f7
	mtc1	$8,$f17
	mul.s	$f11,$f19,$f11
	mtc1	$12,$f19
	sub.s	$f7,$f0,$f7
	mul.s	$f5,$f17,$f5
	mtc1	$6,$f17
	mul.s	$f9,$f19,$f9
	mtc1	$10,$f19
	sub.s	$f5,$f0,$f5
	mul.s	$f3,$f17,$f3
	mtc1	$19,$f17
	mul.s	$f7,$f19,$f7
	mtc1	$8,$f19
	sub.s	$f3,$f0,$f3
	mul.s	$f16,$f17,$f16
	mtc1	$17,$f17
	mul.s	$f5,$f19,$f5
	mtc1	$6,$f19
	mul.s	$f14,$f17,$f14
	mtc1	$15,$f17
	mul.s	$f3,$f19,$f3
	lwc1	$f19,-60($3)
	mul.s	$f12,$f17,$f12
	mtc1	$13,$f17
	mul.s	$f16,$f19,$f16
	lwc1	$f19,-52($3)
	mul.s	$f10,$f17,$f10
	mtc1	$11,$f17
	mul.s	$f14,$f19,$f14
	mul.s	$f8,$f17,$f8
	mtc1	$9,$f17
	mul.s	$f6,$f17,$f6
	mtc1	$7,$f17
	mul.s	$f4,$f17,$f4
	mtc1	$4,$f17
	mul.s	$f2,$f17,$f2
	lwc1	$f17,-56($3)
	mul.s	$f15,$f17,$f15
	lwc1	$f17,-48($3)
	lwc1	$f19,-44($3)
	swc1	$f14,-52($2)
	lwc1	$f14,-24($3)
	mul.s	$f13,$f17,$f13
	swc1	$f16,-60($2)
	mul.s	$f12,$f19,$f12
	lwc1	$f16,-40($3)
	lwc1	$f17,-36($3)
	lwc1	$f19,-32($3)
	mul.s	$f7,$f14,$f7
	swc1	$f15,-56($2)
	mul.s	$f11,$f16,$f11
	swc1	$f13,-48($2)
	mul.s	$f10,$f17,$f10
	lwc1	$f13,-28($3)
	mul.s	$f9,$f19,$f9
	lwc1	$f15,-20($3)
	lwc1	$f16,-16($3)
	lwc1	$f17,-12($3)
	lwc1	$f19,-8($3)
	mul.s	$f8,$f13,$f8
	swc1	$f7,-24($2)
	mul.s	$f6,$f15,$f6
	lwc1	$f7,-4($3)
	mul.s	$f5,$f16,$f5
	mul.s	$f4,$f17,$f4
	swc1	$f12,-44($2)
	mul.s	$f3,$f19,$f3
	swc1	$f11,-40($2)
	swc1	$f10,-36($2)
	mul.s	$f2,$f7,$f2
	swc1	$f9,-32($2)
	swc1	$f8,-28($2)
	swc1	$f6,-20($2)
	swc1	$f5,-16($2)
	swc1	$f4,-12($2)
	swc1	$f3,-8($2)
	bne	$21,$22,$L167
	swc1	$f2,-4($2)

	lw	$2,40($sp)
	addiu	$23,$23,1
	bne	$23,$2,$L168
	nop

$L165:
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
	.end	bench_quake_sqrt
	.size	bench_quake_sqrt, .-bench_quake_sqrt
	.align	2
	.globl	bench_float_sqrt
	.set	nomips16
	.set	nomicromips
	.ent	bench_float_sqrt
	.type	bench_float_sqrt, @function
bench_float_sqrt:
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$21,48($sp)
	li	$21,1792			# 0x700
	sw	$19,40($sp)
	move	$19,$4
	sw	$18,36($sp)
	move	$18,$0
	sw	$31,52($sp)
	sw	$20,44($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	beq	$4,$0,$L173
	.cprestore	16

	lw	$17,%got(fval1)($28)
$L248:
	move	$20,$0
	lw	$16,%got(fresult)($28)
$L207:
	lwc1	$f12,0($17)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc0,$f0,$f0
	bc1f	$fcc0,$L214
	lw	$25,%call16(sqrtf)($28)

	lwc1	$f12,4($17)
	swc1	$f0,0($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1f	$fcc1,$L247
	nop

$L176:
	lwc1	$f12,8($17)
	swc1	$f0,4($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1f	$fcc2,$L216
	nop

$L177:
	lwc1	$f12,12($17)
	swc1	$f0,8($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1f	$fcc3,$L217
	nop

$L178:
	lwc1	$f12,16($17)
	swc1	$f0,12($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1f	$fcc4,$L218
	nop

$L179:
	lwc1	$f12,20($17)
	swc1	$f0,16($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1f	$fcc5,$L219
	nop

$L180:
	lwc1	$f12,24($17)
	swc1	$f0,20($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1f	$fcc6,$L220
	nop

$L181:
	lwc1	$f12,28($17)
	swc1	$f0,24($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1f	$fcc7,$L221
	nop

$L182:
	lwc1	$f12,32($17)
	swc1	$f0,28($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc0,$f0,$f0
	bc1f	$fcc0,$L222
	nop

$L183:
	lwc1	$f12,36($17)
	swc1	$f0,32($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1f	$fcc1,$L223
	nop

$L184:
	lwc1	$f12,40($17)
	swc1	$f0,36($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1f	$fcc2,$L224
	nop

$L185:
	lwc1	$f12,44($17)
	swc1	$f0,40($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1f	$fcc3,$L225
	nop

$L186:
	lwc1	$f12,48($17)
	swc1	$f0,44($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1f	$fcc4,$L226
	nop

$L187:
	lwc1	$f12,52($17)
	swc1	$f0,48($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1f	$fcc5,$L227
	nop

$L188:
	lwc1	$f12,56($17)
	swc1	$f0,52($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1f	$fcc6,$L228
	nop

$L189:
	lwc1	$f12,60($17)
	swc1	$f0,56($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1f	$fcc7,$L229
	nop

$L190:
	lwc1	$f12,64($17)
	swc1	$f0,60($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc0,$f0,$f0
	bc1f	$fcc0,$L230
	nop

$L191:
	lwc1	$f12,68($17)
	swc1	$f0,64($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1f	$fcc1,$L231
	nop

$L192:
	lwc1	$f12,72($17)
	swc1	$f0,68($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1f	$fcc2,$L232
	nop

$L193:
	lwc1	$f12,76($17)
	swc1	$f0,72($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1f	$fcc3,$L233
	nop

$L194:
	lwc1	$f12,80($17)
	swc1	$f0,76($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1f	$fcc4,$L234
	nop

$L195:
	lwc1	$f12,84($17)
	swc1	$f0,80($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1f	$fcc5,$L235
	nop

$L196:
	lwc1	$f12,88($17)
	swc1	$f0,84($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1f	$fcc6,$L236
	nop

$L197:
	lwc1	$f12,92($17)
	swc1	$f0,88($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1f	$fcc7,$L237
	nop

$L198:
	lwc1	$f12,96($17)
	swc1	$f0,92($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc0,$f0,$f0
	bc1f	$fcc0,$L238
	nop

$L199:
	lwc1	$f12,100($17)
	swc1	$f0,96($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1f	$fcc1,$L239
	nop

$L200:
	lwc1	$f12,104($17)
	swc1	$f0,100($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1f	$fcc2,$L240
	nop

$L201:
	lwc1	$f12,108($17)
	swc1	$f0,104($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1f	$fcc3,$L241
	nop

$L202:
	lwc1	$f12,112($17)
	swc1	$f0,108($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1f	$fcc4,$L242
	nop

$L203:
	lwc1	$f12,116($17)
	swc1	$f0,112($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1f	$fcc5,$L243
	nop

$L204:
	lwc1	$f12,120($17)
	swc1	$f0,116($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1f	$fcc6,$L244
	nop

$L205:
	lwc1	$f12,124($17)
	swc1	$f0,120($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1f	$fcc7,$L245
	nop

	addiu	$20,$20,32
$L246:
	swc1	$f0,124($16)
	addiu	$17,$17,128
	bne	$20,$21,$L207
	addiu	$16,$16,128

	addiu	$18,$18,1
	bne	$18,$19,$L248
	lw	$17,%got(fval1)($28)

$L173:
	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,56

$L214:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,4($17)
	lw	$28,16($sp)
	swc1	$f0,0($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1t	$fcc1,$L176
	nop

	lw	$25,%call16(sqrtf)($28)
$L247:
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,8($17)
	lw	$28,16($sp)
	swc1	$f0,4($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1t	$fcc2,$L177
	nop

$L216:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,12($17)
	lw	$28,16($sp)
	swc1	$f0,8($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1t	$fcc3,$L178
	nop

$L217:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,16($17)
	lw	$28,16($sp)
	swc1	$f0,12($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1t	$fcc4,$L179
	nop

$L218:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,20($17)
	lw	$28,16($sp)
	swc1	$f0,16($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1t	$fcc5,$L180
	nop

$L219:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,24($17)
	lw	$28,16($sp)
	swc1	$f0,20($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1t	$fcc6,$L181
	nop

$L220:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,28($17)
	lw	$28,16($sp)
	swc1	$f0,24($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1t	$fcc7,$L182
	nop

$L221:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,32($17)
	lw	$28,16($sp)
	swc1	$f0,28($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc0,$f0,$f0
	bc1t	$fcc0,$L183
	nop

$L222:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,36($17)
	lw	$28,16($sp)
	swc1	$f0,32($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1t	$fcc1,$L184
	nop

$L223:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,40($17)
	lw	$28,16($sp)
	swc1	$f0,36($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1t	$fcc2,$L185
	nop

$L224:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,44($17)
	lw	$28,16($sp)
	swc1	$f0,40($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1t	$fcc3,$L186
	nop

$L225:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,48($17)
	lw	$28,16($sp)
	swc1	$f0,44($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1t	$fcc4,$L187
	nop

$L226:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,52($17)
	lw	$28,16($sp)
	swc1	$f0,48($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1t	$fcc5,$L188
	nop

$L227:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,56($17)
	lw	$28,16($sp)
	swc1	$f0,52($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1t	$fcc6,$L189
	nop

$L228:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,60($17)
	lw	$28,16($sp)
	swc1	$f0,56($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1t	$fcc7,$L190
	nop

$L229:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,64($17)
	lw	$28,16($sp)
	swc1	$f0,60($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc0,$f0,$f0
	bc1t	$fcc0,$L191
	nop

$L230:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,68($17)
	lw	$28,16($sp)
	swc1	$f0,64($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1t	$fcc1,$L192
	nop

$L231:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,72($17)
	lw	$28,16($sp)
	swc1	$f0,68($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1t	$fcc2,$L193
	nop

$L232:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,76($17)
	lw	$28,16($sp)
	swc1	$f0,72($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1t	$fcc3,$L194
	nop

$L233:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,80($17)
	lw	$28,16($sp)
	swc1	$f0,76($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1t	$fcc4,$L195
	nop

$L234:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,84($17)
	lw	$28,16($sp)
	swc1	$f0,80($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1t	$fcc5,$L196
	nop

$L235:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,88($17)
	lw	$28,16($sp)
	swc1	$f0,84($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1t	$fcc6,$L197
	nop

$L236:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,92($17)
	lw	$28,16($sp)
	swc1	$f0,88($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1t	$fcc7,$L198
	nop

$L237:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,96($17)
	lw	$28,16($sp)
	swc1	$f0,92($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc0,$f0,$f0
	bc1t	$fcc0,$L199
	nop

$L238:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,100($17)
	lw	$28,16($sp)
	swc1	$f0,96($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc1,$f0,$f0
	bc1t	$fcc1,$L200
	nop

$L239:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,104($17)
	lw	$28,16($sp)
	swc1	$f0,100($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc2,$f0,$f0
	bc1t	$fcc2,$L201
	nop

$L240:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,108($17)
	lw	$28,16($sp)
	swc1	$f0,104($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc3,$f0,$f0
	bc1t	$fcc3,$L202
	nop

$L241:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,112($17)
	lw	$28,16($sp)
	swc1	$f0,108($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc4,$f0,$f0
	bc1t	$fcc4,$L203
	nop

$L242:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,116($17)
	lw	$28,16($sp)
	swc1	$f0,112($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc5,$f0,$f0
	bc1t	$fcc5,$L204
	nop

$L243:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,120($17)
	lw	$28,16($sp)
	swc1	$f0,116($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc6,$f0,$f0
	bc1t	$fcc6,$L205
	nop

$L244:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	nop

	lwc1	$f12,124($17)
	lw	$28,16($sp)
	swc1	$f0,120($16)
	sqrt.s	$f0,$f12
	c.eq.s	$fcc7,$f0,$f0
	bc1t	$fcc7,$L246
	addiu	$20,$20,32

	addiu	$20,$20,-32
$L245:
	lw	$25,%call16(sqrtf)($28)
	.reloc	1f,R_MIPS_JALR,sqrtf
1:	jalr	$25
	addiu	$20,$20,32

	.option	pic0
	j	$L246
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
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,40($sp)
	sll	$19,$4,1
	sw	$21,48($sp)
	move	$21,$0
	sw	$20,44($sp)
	li	$20,896			# 0x380
	sw	$31,52($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	beq	$19,$0,$L249
	.cprestore	16

	lw	$17,%got(dval1)($28)
$L324:
	move	$18,$0
	lw	$16,%got(dresult)($28)
$L283:
	ldc1	$f12,0($17)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc0,$f0,$f0
	bc1f	$fcc0,$L290
	lw	$25,%call16(sqrt)($28)

	ldc1	$f12,8($17)
	sdc1	$f0,0($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1f	$fcc1,$L323
	nop

$L252:
	ldc1	$f12,16($17)
	sdc1	$f0,8($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1f	$fcc2,$L292
	nop

$L253:
	ldc1	$f12,24($17)
	sdc1	$f0,16($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1f	$fcc3,$L293
	nop

$L254:
	ldc1	$f12,32($17)
	sdc1	$f0,24($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1f	$fcc4,$L294
	nop

$L255:
	ldc1	$f12,40($17)
	sdc1	$f0,32($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1f	$fcc5,$L295
	nop

$L256:
	ldc1	$f12,48($17)
	sdc1	$f0,40($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1f	$fcc6,$L296
	nop

$L257:
	ldc1	$f12,56($17)
	sdc1	$f0,48($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1f	$fcc7,$L297
	nop

$L258:
	ldc1	$f12,64($17)
	sdc1	$f0,56($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc0,$f0,$f0
	bc1f	$fcc0,$L298
	nop

$L259:
	ldc1	$f12,72($17)
	sdc1	$f0,64($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1f	$fcc1,$L299
	nop

$L260:
	ldc1	$f12,80($17)
	sdc1	$f0,72($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1f	$fcc2,$L300
	nop

$L261:
	ldc1	$f12,88($17)
	sdc1	$f0,80($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1f	$fcc3,$L301
	nop

$L262:
	ldc1	$f12,96($17)
	sdc1	$f0,88($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1f	$fcc4,$L302
	nop

$L263:
	ldc1	$f12,104($17)
	sdc1	$f0,96($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1f	$fcc5,$L303
	nop

$L264:
	ldc1	$f12,112($17)
	sdc1	$f0,104($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1f	$fcc6,$L304
	nop

$L265:
	ldc1	$f12,120($17)
	sdc1	$f0,112($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1f	$fcc7,$L305
	nop

$L266:
	ldc1	$f12,128($17)
	sdc1	$f0,120($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc0,$f0,$f0
	bc1f	$fcc0,$L306
	nop

$L267:
	ldc1	$f12,136($17)
	sdc1	$f0,128($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1f	$fcc1,$L307
	nop

$L268:
	ldc1	$f12,144($17)
	sdc1	$f0,136($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1f	$fcc2,$L308
	nop

$L269:
	ldc1	$f12,152($17)
	sdc1	$f0,144($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1f	$fcc3,$L309
	nop

$L270:
	ldc1	$f12,160($17)
	sdc1	$f0,152($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1f	$fcc4,$L310
	nop

$L271:
	ldc1	$f12,168($17)
	sdc1	$f0,160($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1f	$fcc5,$L311
	nop

$L272:
	ldc1	$f12,176($17)
	sdc1	$f0,168($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1f	$fcc6,$L312
	nop

$L273:
	ldc1	$f12,184($17)
	sdc1	$f0,176($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1f	$fcc7,$L313
	nop

$L274:
	ldc1	$f12,192($17)
	sdc1	$f0,184($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc0,$f0,$f0
	bc1f	$fcc0,$L314
	nop

$L275:
	ldc1	$f12,200($17)
	sdc1	$f0,192($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1f	$fcc1,$L315
	nop

$L276:
	ldc1	$f12,208($17)
	sdc1	$f0,200($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1f	$fcc2,$L316
	nop

$L277:
	ldc1	$f12,216($17)
	sdc1	$f0,208($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1f	$fcc3,$L317
	nop

$L278:
	ldc1	$f12,224($17)
	sdc1	$f0,216($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1f	$fcc4,$L318
	nop

$L279:
	ldc1	$f12,232($17)
	sdc1	$f0,224($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1f	$fcc5,$L319
	nop

$L280:
	ldc1	$f12,240($17)
	sdc1	$f0,232($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1f	$fcc6,$L320
	nop

$L281:
	ldc1	$f12,248($17)
	sdc1	$f0,240($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1f	$fcc7,$L321
	nop

	addiu	$18,$18,32
$L322:
	sdc1	$f0,248($16)
	addiu	$17,$17,256
	bne	$18,$20,$L283
	addiu	$16,$16,256

	addiu	$21,$21,1
	bne	$21,$19,$L324
	lw	$17,%got(dval1)($28)

$L249:
	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,56

$L290:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,8($17)
	lw	$28,16($sp)
	sdc1	$f0,0($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1t	$fcc1,$L252
	nop

	lw	$25,%call16(sqrt)($28)
$L323:
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,16($17)
	lw	$28,16($sp)
	sdc1	$f0,8($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1t	$fcc2,$L253
	nop

$L292:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,24($17)
	lw	$28,16($sp)
	sdc1	$f0,16($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1t	$fcc3,$L254
	nop

$L293:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,32($17)
	lw	$28,16($sp)
	sdc1	$f0,24($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1t	$fcc4,$L255
	nop

$L294:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,40($17)
	lw	$28,16($sp)
	sdc1	$f0,32($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1t	$fcc5,$L256
	nop

$L295:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,48($17)
	lw	$28,16($sp)
	sdc1	$f0,40($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1t	$fcc6,$L257
	nop

$L296:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,56($17)
	lw	$28,16($sp)
	sdc1	$f0,48($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1t	$fcc7,$L258
	nop

$L297:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,64($17)
	lw	$28,16($sp)
	sdc1	$f0,56($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc0,$f0,$f0
	bc1t	$fcc0,$L259
	nop

$L298:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,72($17)
	lw	$28,16($sp)
	sdc1	$f0,64($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1t	$fcc1,$L260
	nop

$L299:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,80($17)
	lw	$28,16($sp)
	sdc1	$f0,72($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1t	$fcc2,$L261
	nop

$L300:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,88($17)
	lw	$28,16($sp)
	sdc1	$f0,80($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1t	$fcc3,$L262
	nop

$L301:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,96($17)
	lw	$28,16($sp)
	sdc1	$f0,88($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1t	$fcc4,$L263
	nop

$L302:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,104($17)
	lw	$28,16($sp)
	sdc1	$f0,96($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1t	$fcc5,$L264
	nop

$L303:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,112($17)
	lw	$28,16($sp)
	sdc1	$f0,104($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1t	$fcc6,$L265
	nop

$L304:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,120($17)
	lw	$28,16($sp)
	sdc1	$f0,112($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1t	$fcc7,$L266
	nop

$L305:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,128($17)
	lw	$28,16($sp)
	sdc1	$f0,120($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc0,$f0,$f0
	bc1t	$fcc0,$L267
	nop

$L306:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,136($17)
	lw	$28,16($sp)
	sdc1	$f0,128($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1t	$fcc1,$L268
	nop

$L307:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,144($17)
	lw	$28,16($sp)
	sdc1	$f0,136($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1t	$fcc2,$L269
	nop

$L308:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,152($17)
	lw	$28,16($sp)
	sdc1	$f0,144($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1t	$fcc3,$L270
	nop

$L309:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,160($17)
	lw	$28,16($sp)
	sdc1	$f0,152($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1t	$fcc4,$L271
	nop

$L310:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,168($17)
	lw	$28,16($sp)
	sdc1	$f0,160($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1t	$fcc5,$L272
	nop

$L311:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,176($17)
	lw	$28,16($sp)
	sdc1	$f0,168($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1t	$fcc6,$L273
	nop

$L312:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,184($17)
	lw	$28,16($sp)
	sdc1	$f0,176($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1t	$fcc7,$L274
	nop

$L313:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,192($17)
	lw	$28,16($sp)
	sdc1	$f0,184($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc0,$f0,$f0
	bc1t	$fcc0,$L275
	nop

$L314:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,200($17)
	lw	$28,16($sp)
	sdc1	$f0,192($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc1,$f0,$f0
	bc1t	$fcc1,$L276
	nop

$L315:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,208($17)
	lw	$28,16($sp)
	sdc1	$f0,200($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc2,$f0,$f0
	bc1t	$fcc2,$L277
	nop

$L316:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,216($17)
	lw	$28,16($sp)
	sdc1	$f0,208($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc3,$f0,$f0
	bc1t	$fcc3,$L278
	nop

$L317:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,224($17)
	lw	$28,16($sp)
	sdc1	$f0,216($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc4,$f0,$f0
	bc1t	$fcc4,$L279
	nop

$L318:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,232($17)
	lw	$28,16($sp)
	sdc1	$f0,224($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc5,$f0,$f0
	bc1t	$fcc5,$L280
	nop

$L319:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,240($17)
	lw	$28,16($sp)
	sdc1	$f0,232($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc6,$f0,$f0
	bc1t	$fcc6,$L281
	nop

$L320:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	nop

	ldc1	$f12,248($17)
	lw	$28,16($sp)
	sdc1	$f0,240($16)
	sqrt.d	$f0,$f12
	c.eq.d	$fcc7,$f0,$f0
	bc1t	$fcc7,$L322
	addiu	$18,$18,32

	addiu	$18,$18,-32
$L321:
	lw	$25,%call16(sqrt)($28)
	.reloc	1f,R_MIPS_JALR,sqrt
1:	jalr	$25
	addiu	$18,$18,32

	.option	pic0
	j	$L322
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
	bne	$3,$0,$L342
	li	$3,268435456			# 0x10000000

	subu	$4,$4,$2
	li	$3,1342177280			# 0x50000000
	li	$2,65536			# 0x10000
$L326:
	sltu	$5,$4,$3
	bne	$5,$0,$L327
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x8000
$L327:
	addiu	$3,$2,8192
	sll	$3,$3,13
	sltu	$5,$4,$3
	bne	$5,$0,$L328
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x4000
$L328:
	addiu	$3,$2,4096
	sll	$3,$3,12
	sltu	$5,$4,$3
	bne	$5,$0,$L329
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x2000
$L329:
	addiu	$3,$2,2048
	sll	$3,$3,11
	sltu	$5,$4,$3
	bne	$5,$0,$L330
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x1000
$L330:
	addiu	$3,$2,1024
	sll	$3,$3,10
	sltu	$5,$4,$3
	bne	$5,$0,$L331
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x800
$L331:
	addiu	$3,$2,512
	sll	$3,$3,9
	sltu	$5,$4,$3
	bne	$5,$0,$L332
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x400
$L332:
	addiu	$3,$2,256
	sll	$3,$3,8
	sltu	$5,$4,$3
	bne	$5,$0,$L333
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x200
$L333:
	addiu	$3,$2,128
	sll	$3,$3,7
	sltu	$5,$4,$3
	bne	$5,$0,$L334
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x100
$L334:
	addiu	$3,$2,64
	sll	$3,$3,6
	sltu	$5,$4,$3
	bne	$5,$0,$L335
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x80
$L335:
	addiu	$3,$2,32
	sll	$3,$3,5
	sltu	$5,$4,$3
	bne	$5,$0,$L336
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x40
$L336:
	addiu	$3,$2,16
	sll	$3,$3,4
	sltu	$5,$4,$3
	bne	$5,$0,$L337
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x20
$L337:
	addiu	$3,$2,8
	sll	$3,$3,3
	sltu	$5,$4,$3
	bne	$5,$0,$L338
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x10
$L338:
	addiu	$3,$2,4
	sll	$3,$3,2
	sltu	$5,$4,$3
	bne	$5,$0,$L339
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x8
$L339:
	addiu	$3,$2,2
	sll	$3,$3,1
	sltu	$5,$4,$3
	bne	$5,$0,$L343
	addiu	$5,$2,1

	subu	$4,$4,$3
	ori	$2,$2,0x4
	addiu	$5,$2,1
$L343:
	ori	$3,$2,0x2
	sltu	$4,$4,$5
	movz	$2,$3,$4
	j	$31
	sll	$2,$2,7

$L342:
	.option	pic0
	j	$L326
	.option	pic2
	move	$2,$0

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
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$21,48($sp)
	move	$21,$4
	sw	$20,44($sp)
	move	$20,$0
	sw	$19,40($sp)
	li	$19,1792			# 0x700
	sw	$31,52($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	beq	$4,$0,$L344
	.cprestore	16

	lw	$17,%got(xval1)($28)
$L353:
	move	$18,$0
	lw	$16,%got(xresult)($28)
$L346:
	lw	$4,0($17)
	addiu	$17,$17,128
	addiu	$16,$16,128
	.option	pic0
	jal	fpsqrt
	.option	pic2
	addiu	$18,$18,32

	lw	$4,-124($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-128($16)

	lw	$4,-120($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-124($16)

	lw	$4,-116($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-120($16)

	lw	$4,-112($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-116($16)

	lw	$4,-108($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-112($16)

	lw	$4,-104($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-108($16)

	lw	$4,-100($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-104($16)

	lw	$4,-96($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-100($16)

	lw	$4,-92($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-96($16)

	lw	$4,-88($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-92($16)

	lw	$4,-84($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-88($16)

	lw	$4,-80($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-84($16)

	lw	$4,-76($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-80($16)

	lw	$4,-72($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-76($16)

	lw	$4,-68($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-72($16)

	lw	$4,-64($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-68($16)

	lw	$4,-60($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-64($16)

	lw	$4,-56($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-60($16)

	lw	$4,-52($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-56($16)

	lw	$4,-48($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-52($16)

	lw	$4,-44($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-48($16)

	lw	$4,-40($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-44($16)

	lw	$4,-36($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-40($16)

	lw	$4,-32($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-36($16)

	lw	$4,-28($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-32($16)

	lw	$4,-24($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-28($16)

	lw	$4,-20($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-24($16)

	lw	$4,-16($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-20($16)

	lw	$4,-12($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-16($16)

	lw	$4,-8($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-12($16)

	lw	$4,-4($17)
	.option	pic0
	jal	fpsqrt
	.option	pic2
	sw	$2,-8($16)

	lw	$28,16($sp)
	bne	$18,$19,$L346
	sw	$2,-4($16)

	addiu	$20,$20,1
	bne	$20,$21,$L353
	lw	$17,%got(xval1)($28)

$L344:
	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,56

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
	lwc1	$f0,%lo($LC0)($3)
	li	$3,1597440000			# 0x5f370000
	sra	$2,$4,1
	addiu	$3,$3,23007
	subu	$2,$3,$2
	lui	$3,%hi($LC1)
	mtc1	$2,$f1
	mul.s	$f0,$f12,$f0
	mul.s	$f0,$f0,$f1
	mul.s	$f0,$f1,$f0
	lwc1	$f1,%lo($LC1)($3)
	sub.s	$f0,$f1,$f0
	mtc1	$2,$f1
	mul.s	$f0,$f1,$f0
	j	$31
	mul.s	$f0,$f12,$f0

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
	lui	$2,%hi($LC3)
	addiu	$sp,$sp,-16
	ldc1	$f10,%lo($LC3)($2)
	lui	$2,%hi($LC2)
	sdc1	$f12,8($sp)
	ldc1	$f8,%lo($LC2)($2)
	li	$2,-1077084160			# 0xffffffffbfcd0000
	lw	$3,12($sp)
	ori	$2,$2,0xd90a
	subu	$2,$2,$3
	srl	$2,$2,1
	mul.d	$f8,$f12,$f8
	sw	$2,12($sp)
	ldc1	$f2,8($sp)
	addiu	$sp,$sp,16
	mul.d	$f0,$f2,$f2
	mul.d	$f6,$f2,$f8
	mul.d	$f6,$f0,$f6
	msub.d	$f2,$f6,$f2,$f10
	mul.d	$f0,$f2,$f2
	mul.d	$f4,$f2,$f8
	mul.d	$f4,$f0,$f4
	msub.d	$f6,$f4,$f2,$f10
	mul.d	$f0,$f6,$f6
	mul.d	$f2,$f6,$f8
	mul.d	$f2,$f0,$f2
	msub.d	$f4,$f2,$f6,$f10
	mul.d	$f0,$f4,$f4
	mul.d	$f2,$f4,$f8
	mul.d	$f2,$f0,$f2
	msub.d	$f2,$f2,$f4,$f10
	mul.d	$f0,$f2,$f2
	mul.d	$f8,$f2,$f8
	mul.d	$f8,$f0,$f8
	msub.d	$f0,$f8,$f2,$f10
	j	$31
	mul.d	$f0,$f0,$f12

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
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$21,48($sp)
	sll	$21,$4,1
	sw	$20,44($sp)
	move	$20,$0
	sw	$19,40($sp)
	li	$19,896			# 0x380
	sw	$31,52($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	beq	$21,$0,$L358
	.cprestore	16

	lw	$17,%got(dval1)($28)
$L367:
	move	$18,$0
	lw	$16,%got(dresult)($28)
$L360:
	ldc1	$f12,0($17)
	addiu	$17,$17,256
	addiu	$16,$16,256
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	addiu	$18,$18,32

	ldc1	$f12,-248($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-256($16)

	ldc1	$f12,-240($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-248($16)

	ldc1	$f12,-232($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-240($16)

	ldc1	$f12,-224($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-232($16)

	ldc1	$f12,-216($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-224($16)

	ldc1	$f12,-208($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-216($16)

	ldc1	$f12,-200($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-208($16)

	ldc1	$f12,-192($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-200($16)

	ldc1	$f12,-184($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-192($16)

	ldc1	$f12,-176($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-184($16)

	ldc1	$f12,-168($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-176($16)

	ldc1	$f12,-160($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-168($16)

	ldc1	$f12,-152($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-160($16)

	ldc1	$f12,-144($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-152($16)

	ldc1	$f12,-136($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-144($16)

	ldc1	$f12,-128($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-136($16)

	ldc1	$f12,-120($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-128($16)

	ldc1	$f12,-112($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-120($16)

	ldc1	$f12,-104($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-112($16)

	ldc1	$f12,-96($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-104($16)

	ldc1	$f12,-88($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-96($16)

	ldc1	$f12,-80($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-88($16)

	ldc1	$f12,-72($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-80($16)

	ldc1	$f12,-64($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-72($16)

	ldc1	$f12,-56($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-64($16)

	ldc1	$f12,-48($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-56($16)

	ldc1	$f12,-40($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-48($16)

	ldc1	$f12,-32($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-40($16)

	ldc1	$f12,-24($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-32($16)

	ldc1	$f12,-16($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-24($16)

	ldc1	$f12,-8($17)
	.option	pic0
	jal	approximate_double_sqrt
	.option	pic2
	sdc1	$f0,-16($16)

	lw	$28,16($sp)
	bne	$18,$19,$L360
	sdc1	$f0,-8($16)

	addiu	$20,$20,1
	bne	$20,$21,$L367
	lw	$17,%got(dval1)($28)

$L358:
	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
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
	bne	$4,$0,$L372
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
	addiu	$4,$2,%lo(begin_time.3629)
	lw	$3,%lo(begin_time.3629)($2)
	addiu	$2,$6,16960
	mtlo	$7
	lw	$31,36($sp)
	madd	$5,$2
	li	$2,-1048576			# 0xfffffffffff00000
	ori	$2,$2,0xbdc0
	madd	$3,$2
	lw	$3,4($4)
	addiu	$sp,$sp,40
	mflo	$2
	subu	$2,$2,$3
	j	$31
	sra	$3,$2,31

$L372:
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	li	$4,458752			# 0x70000
	lw	$28,16($sp)
	lw	$25,%call16(usleep)($28)
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$4,0xa120

	lui	$4,%hi(begin_time.3629)
	lw	$28,16($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$4,%lo(begin_time.3629)

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

	move	$4,$0
	.option	pic0
	jal	timer
	.option	pic2
	addu	$18,$18,$21

	addu	$8,$16,$17
	lw	$28,24($sp)
	li	$6,3			# 0x3
	sltu	$16,$8,$16
	addu	$16,$16,$18
	addu	$4,$8,$2
	addu	$16,$16,$3
	lw	$25,%call16(__udivdi3)($28)
	sltu	$5,$4,$8
	move	$7,$0
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$5,$16

	lw	$28,24($sp)
	move	$5,$3
	move	$4,$2
	move	$16,$2
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	move	$17,$3

	lui	$2,%hi($LC5)
	lw	$28,24($sp)
	lui	$4,%hi($LC4)
	ldc1	$f2,%lo($LC5)($2)
	move	$6,$16
	addiu	$4,$4,%lo($LC4)
	move	$7,$17
	lw	$25,%call16(printf)($28)
	div.d	$f0,$f0,$f2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f0,16($sp)

	move	$2,$16
	lw	$31,60($sp)
	move	$3,$17
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
$L380:
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
	andi	$2,$2,0x1
	lwc1	$f1,28($sp)
	movn.d	$f2,$f24,$2
	mul.d	$f0,$f2,$f0
	c.lt.d	$fcc0,$f0,$f22
	bc1f	$fcc0,$L377
	lw	$28,16($sp)

$L382:
	lw	$25,%call16(drand48)($28)
	.reloc	1f,R_MIPS_JALR,drand48
1:	jalr	$25
	nop

	mul.d	$f0,$f0,$f20
	c.lt.d	$fcc1,$f0,$f22
	bc1t	$fcc1,$L382
	lw	$28,16($sp)

$L377:
	cvt.s.d	$f0,$f0
	addiu	$16,$16,4
	bne	$16,$17,$L380
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi($LC7)
	move	$3,$0
	lwc1	$f1,%lo($LC7)($2)
	li	$7,7168			# 0x1c00
$L387:
	lwxc1	$f0,$5($3)
	addu	$6,$4,$3
	addiu	$3,$3,4
	mul.s	$f0,$f0,$f1
	trunc.w.s $f0,$f0
	bne	$3,$7,$L387
	swc1	$f0,0($6)

	j	$31
	nop

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
$L401:
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
	andi	$2,$2,0x1
	lwc1	$f1,28($sp)
	movn.d	$f2,$f24,$2
	mul.d	$f0,$f2,$f0
	c.lt.d	$fcc0,$f0,$f22
	bc1f	$fcc0,$L392
	lw	$28,16($sp)

$L397:
	lw	$25,%call16(drand48)($28)
	.reloc	1f,R_MIPS_JALR,drand48
1:	jalr	$25
	nop

	mul.d	$f0,$f0,$f20
	c.lt.d	$fcc1,$f0,$f22
	bc1t	$fcc1,$L397
	lw	$28,16($sp)

$L392:
	sdc1	$f0,0($16)
	addiu	$16,$16,8
	bne	$16,$17,$L401
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
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,44($sp)
	li	$20,-2147483648			# 0xffffffff80000000
	sw	$17,32($sp)
	li	$17,65536			# 0x10000
	sw	$21,48($sp)
	ori	$20,$20,0xffff
	sw	$19,40($sp)
	li	$21,-65536			# 0xffffffffffff0000
	sw	$18,36($sp)
	addiu	$19,$4,7168
	sw	$16,28($sp)
	li	$18,1			# 0x1
	sw	$31,52($sp)
	move	$16,$4
	.cprestore	16
	.option	pic0
	j	$L407
	.option	pic2
	sltu	$17,$5,$17

$L412:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
$L404:
	movz	$2,$18,$2
	addiu	$16,$16,4
	beq	$16,$19,$L411
	sw	$2,-4($16)

$L407:
	beq	$17,$0,$L412
	lw	$25,%call16(lrand48)($28)

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$20
	bgez	$2,$L404
	lw	$28,16($sp)

	addiu	$2,$2,-1
	addiu	$16,$16,4
	or	$2,$2,$21
	addiu	$2,$2,1
	movz	$2,$18,$2
	bne	$16,$19,$L407
	sw	$2,-4($16)

$L411:
	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,56

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
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,36($sp)
	li	$19,65536			# 0x10000
	sw	$18,32($sp)
	li	$18,-2147483648			# 0xffffffff80000000
	sw	$20,40($sp)
	li	$20,-65536			# 0xffffffffffff0000
	sw	$17,28($sp)
	addiu	$17,$4,7168
	sw	$22,48($sp)
	sltu	$19,$6,$19
	sw	$16,24($sp)
	move	$22,$4
	sw	$31,52($sp)
	move	$16,$7
	sw	$21,44($sp)
	ori	$18,$18,0xffff
	.cprestore	16
$L422:
	bne	$16,$0,$L430
	nop

	lw	$2,%call16(lrand48)($28)
	bne	$19,$0,$L428
	move	$25,$2

	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sra	$3,$2,31
$L416:
	li	$5,1			# 0x1
	or	$4,$2,$3
	movz	$2,$5,$4
	addiu	$22,$22,8
	movz	$3,$0,$4
	sw	$2,-8($22)
	bne	$22,$17,$L422
	sw	$3,-4($22)

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

$L428:
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	and	$2,$2,$18
	bltz	$2,$L431
	lw	$28,16($sp)

	.option	pic0
	j	$L416
	.option	pic2
	sra	$3,$2,31

$L431:
	addiu	$2,$2,-1
	or	$2,$2,$20
	addiu	$2,$2,1
	.option	pic0
	j	$L416
	.option	pic2
	sra	$3,$2,31

$L430:
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$25,%call16(lrand48)($28)
	.reloc	1f,R_MIPS_JALR,lrand48
1:	jalr	$25
	move	$21,$2

	sra	$3,$2,31
	lw	$28,16($sp)
	.option	pic0
	j	$L416
	.option	pic2
	or	$3,$21,$3

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
	.frame	$sp,56,$31		# vars= 0, regs= 2/4, args= 24, gp= 8
	.mask	0x80010000,-20
	.fmask	0x00f00000,-8
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,32($sp)
	move	$16,$4
	lui	$4,%hi($LC8)
	sdc1	$f22,48($sp)
	sw	$31,36($sp)
	.cprestore	24
	addiu	$4,$4,%lo($LC8)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	sdc1	$f20,40($sp)

	lui	$4,%hi($LC9)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC9)

	lui	$2,%hi($LC10)
	lw	$28,24($sp)
	ldc1	$f22,%lo($LC10)($2)
	lui	$2,%hi($LC11)
	ldc1	$f20,%lo($LC11)($2)
	lw	$4,%got(fval1)($28)
	mfc1	$6,$f22
	mfc1	$7,$f23
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

	lui	$4,%hi(bench_float_add)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_float_add)

	lui	$4,%hi($LC12)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC12)

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

	lui	$4,%hi(bench_double_add)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_double_add)

	lui	$4,%hi($LC13)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC13)

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

	lui	$8,%hi($LC7)
	lw	$28,24($sp)
	move	$3,$0
	lwc1	$f1,%lo($LC7)($8)
	li	$6,7168			# 0x1c00
	lw	$7,%got(xval1)($28)
	lw	$5,%got(fval1)($28)
$L433:
	lwxc1	$f0,$5($3)
	addu	$4,$7,$3
	addiu	$3,$3,4
	mul.s	$f0,$f0,$f1
	trunc.w.s $f0,$f0
	bne	$3,$6,$L433
	swc1	$f0,0($4)

	lwc1	$f1,%lo($LC7)($8)
	move	$3,$0
	lw	$7,%got(xval2)($28)
	li	$6,7168			# 0x1c00
	lw	$5,%got(fval2)($28)
$L434:
	lwxc1	$f0,$5($3)
	addu	$4,$7,$3
	addiu	$3,$3,4
	mul.s	$f0,$f0,$f1
	trunc.w.s $f0,$f0
	bne	$3,$6,$L434
	swc1	$f0,0($4)

	lui	$4,%hi(bench_fixed_add)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_fixed_add)

	lui	$4,%hi($LC14)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC14)

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

	lui	$4,%hi(bench_i32_add)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_i32_add)

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
	li	$7,-1			# 0xffffffffffffffff

	lui	$4,%hi(bench_i64_add)
	ldc1	$f22,48($sp)
	move	$5,$16
	lw	$28,24($sp)
	addiu	$4,$4,%lo(bench_i64_add)
	ldc1	$f20,40($sp)
	lw	$31,36($sp)
	lw	$16,32($sp)
	.option	pic0
	j	avg_of_3_runs
	.option	pic2
	addiu	$sp,$sp,56

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
	.frame	$sp,56,$31		# vars= 0, regs= 2/4, args= 24, gp= 8
	.mask	0x80010000,-20
	.fmask	0x00f00000,-8
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,32($sp)
	move	$16,$4
	lui	$4,%hi($LC16)
	sdc1	$f22,48($sp)
	sw	$31,36($sp)
	.cprestore	24
	addiu	$4,$4,%lo($LC16)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	sdc1	$f20,40($sp)

	lui	$4,%hi($LC9)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC9)

	lui	$2,%hi($LC17)
	lw	$28,24($sp)
	ldc1	$f22,%lo($LC17)($2)
	lui	$2,%hi($LC18)
	ldc1	$f20,%lo($LC18)($2)
	lw	$4,%got(fval1)($28)
	mfc1	$6,$f22
	mfc1	$7,$f23
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

	lui	$4,%hi(bench_float_mul)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_float_mul)

	lui	$4,%hi($LC12)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC12)

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

	lui	$4,%hi(bench_double_mul)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_double_mul)

	lui	$4,%hi($LC19)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC19)

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

	lui	$8,%hi($LC7)
	lw	$28,24($sp)
	move	$3,$0
	lwc1	$f1,%lo($LC7)($8)
	li	$6,7168			# 0x1c00
	lw	$7,%got(xval1)($28)
	lw	$5,%got(fval1)($28)
$L439:
	lwxc1	$f0,$5($3)
	addu	$4,$7,$3
	addiu	$3,$3,4
	mul.s	$f0,$f0,$f1
	trunc.w.s $f0,$f0
	bne	$3,$6,$L439
	swc1	$f0,0($4)

	lwc1	$f1,%lo($LC7)($8)
	move	$3,$0
	lw	$7,%got(xval2)($28)
	li	$6,7168			# 0x1c00
	lw	$5,%got(fval2)($28)
$L440:
	lwxc1	$f0,$5($3)
	addu	$4,$7,$3
	addiu	$3,$3,4
	mul.s	$f0,$f0,$f1
	trunc.w.s $f0,$f0
	bne	$3,$6,$L440
	swc1	$f0,0($4)

	lui	$4,%hi(bench_fixed_mul)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_fixed_mul)

	lui	$4,%hi($LC20)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC20)

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

	lui	$4,%hi(bench_i32_mul)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_i32_mul)

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
	move	$7,$0

	li	$6,-1			# 0xffffffffffffffff
	lw	$28,24($sp)
	lw	$4,%got(i64val2)($28)
	.option	pic0
	jal	fill_i64_array
	.option	pic2
	move	$7,$0

	lui	$4,%hi(bench_i64_mul)
	ldc1	$f22,48($sp)
	move	$5,$16
	lw	$28,24($sp)
	addiu	$4,$4,%lo(bench_i64_mul)
	ldc1	$f20,40($sp)
	lw	$31,36($sp)
	lw	$16,32($sp)
	.option	pic0
	j	avg_of_3_runs
	.option	pic2
	addiu	$sp,$sp,56

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
	.frame	$sp,72,$31		# vars= 0, regs= 2/8, args= 24, gp= 8
	.mask	0x80010000,-36
	.fmask	0x0ff00000,-8
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-72
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,32($sp)
	move	$16,$4
	lui	$4,%hi($LC21)
	sdc1	$f26,64($sp)
	sw	$31,36($sp)
	.cprestore	24
	addiu	$4,$4,%lo($LC21)
	lw	$25,%call16(puts)($28)
	sdc1	$f24,56($sp)
	sdc1	$f22,48($sp)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	sdc1	$f20,40($sp)

	lui	$4,%hi($LC9)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC9)

	lui	$2,%hi($LC6)
	lw	$28,24($sp)
	ldc1	$f26,%lo($LC6)($2)
	lui	$2,%hi($LC22)
	ldc1	$f24,%lo($LC22)($2)
	lw	$4,%got(fval1)($28)
	mfc1	$6,$f26
	mfc1	$7,$f27
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f24,16($sp)

	lui	$2,%hi($LC23)
	lw	$28,24($sp)
	ldc1	$f22,%lo($LC23)($2)
	lui	$2,%hi($LC24)
	ldc1	$f20,%lo($LC24)($2)
	lw	$4,%got(fval2)($28)
	mfc1	$6,$f22
	mfc1	$7,$f23
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f20,16($sp)

	lui	$4,%hi(bench_float_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_float_div)

	lui	$4,%hi($LC12)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC12)

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

	lui	$4,%hi(bench_double_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_double_div)

	lui	$4,%hi($LC25)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC25)

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

	lui	$8,%hi($LC7)
	lw	$28,24($sp)
	move	$3,$0
	lwc1	$f1,%lo($LC7)($8)
	li	$6,7168			# 0x1c00
	lw	$7,%got(xval1)($28)
	lw	$5,%got(fval1)($28)
$L445:
	lwxc1	$f0,$5($3)
	addu	$4,$7,$3
	addiu	$3,$3,4
	mul.s	$f0,$f0,$f1
	trunc.w.s $f0,$f0
	bne	$3,$6,$L445
	swc1	$f0,0($4)

	lwc1	$f1,%lo($LC7)($8)
	move	$3,$0
	lw	$7,%got(xval2)($28)
	li	$6,7168			# 0x1c00
	lw	$5,%got(fval2)($28)
$L446:
	lwxc1	$f0,$5($3)
	addu	$4,$7,$3
	addiu	$3,$3,4
	mul.s	$f0,$f0,$f1
	trunc.w.s $f0,$f0
	bne	$3,$6,$L446
	swc1	$f0,0($4)

	lui	$4,%hi(bench_fixed_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_fixed_div)

	lui	$4,%hi($LC20)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC20)

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

	lui	$4,%hi(bench_i32_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_i32_div)

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

	lui	$4,%hi(bench_i64_div)
	ldc1	$f26,64($sp)
	move	$5,$16
	lw	$28,24($sp)
	addiu	$4,$4,%lo(bench_i64_div)
	ldc1	$f24,56($sp)
	lw	$31,36($sp)
	ldc1	$f22,48($sp)
	lw	$16,32($sp)
	ldc1	$f20,40($sp)
	.option	pic0
	j	avg_of_3_runs
	.option	pic2
	addiu	$sp,$sp,72

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
	.frame	$sp,48,$31		# vars= 0, regs= 4/0, args= 24, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-48
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,32($sp)
	move	$16,$4
	lui	$4,%hi($LC26)
	sw	$17,36($sp)
	sw	$31,44($sp)
	lui	$17,%hi($LC28)
	sw	$18,40($sp)
	addiu	$4,$4,%lo($LC26)
	.cprestore	24
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	lui	$18,%hi($LC27)

	ldc1	$f0,%lo($LC28)($17)
	lw	$28,24($sp)
	lw	$7,%lo($LC27+4)($18)
	lw	$6,%lo($LC27)($18)
	lw	$4,%got(fval1)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	sdc1	$f0,16($sp)

	lui	$4,%hi($LC9)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC9)

	lui	$4,%hi(bench_float_sqrt)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_float_sqrt)

	lui	$4,%hi($LC29)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC29)

	lui	$4,%hi(bench_quake_sqrt)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_quake_sqrt)

	lui	$2,%hi($LC7)
	lw	$28,24($sp)
	move	$3,$0
	lwc1	$f1,%lo($LC7)($2)
	li	$4,7168			# 0x1c00
	lw	$5,%got(xval1)($28)
	lw	$7,%got(fval1)($28)
$L451:
	lwxc1	$f0,$7($3)
	addu	$6,$5,$3
	addiu	$3,$3,4
	mul.s	$f0,$f0,$f1
	trunc.w.s $f0,$f0
	bne	$3,$4,$L451
	swc1	$f0,0($6)

	lui	$4,%hi($LC25)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC25)

	lui	$4,%hi(bench_fixed_sqrt)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_fixed_sqrt)

	ldc1	$f0,%lo($LC28)($17)
	lw	$28,24($sp)
	lw	$6,%lo($LC27)($18)
	lw	$7,%lo($LC27+4)($18)
	lw	$4,%got(dval1)($28)
	.option	pic0
	jal	fill_double_array
	.option	pic2
	sdc1	$f0,16($sp)

	lui	$4,%hi($LC12)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC12)

	lui	$4,%hi(bench_double_sqrt)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_double_sqrt)

	lui	$4,%hi($LC30)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC30)

	lui	$4,%hi(bench_approximate_double_sqrt)
	lw	$28,24($sp)
	move	$5,$16
	lw	$31,44($sp)
	addiu	$4,$4,%lo(bench_approximate_double_sqrt)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	.option	pic0
	j	avg_of_3_runs
	.option	pic2
	addiu	$sp,$sp,48

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
	.ascii	"COMPILED WITH MANUAL 32-FOLD UNROLLING OF LOOPS\000"
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
	slt	$16,$16,2
	sw	$31,36($sp)
	ori	$4,$4,0xbeef
	lw	$25,%call16(srand48)($28)
	.reloc	1f,R_MIPS_JALR,srand48
1:	jalr	$25
	move	$17,$5

	bne	$16,$0,$L458
	lw	$28,16($sp)

	lw	$25,%call16(atoi)($28)
	.reloc	1f,R_MIPS_JALR,atoi
1:	jalr	$25
	lw	$4,4($17)

	lui	$4,%hi($LC32)
	lw	$28,16($sp)
	move	$16,$2
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC32)

	lui	$4,%hi($LC33)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC33)

	lui	$4,%hi($LC34)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC34)

	lui	$4,%hi($LC35)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC35)

	lui	$4,%hi($LC36)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC36)

	lui	$4,%hi($LC37)
	lw	$28,16($sp)
	li	$5,32			# 0x20
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC37)

	lui	$4,%hi($LC38)
	lw	$28,16($sp)
	li	$5,64			# 0x40
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC38)

	lui	$4,%hi($LC39)
	lw	$28,16($sp)
	move	$5,$16
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC39)

	lw	$28,16($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	li	$4,983040			# 0xf0000
	lw	$28,16($sp)
	lw	$25,%call16(usleep)($28)
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	addiu	$4,$4,16960

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
$L456:
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

$L458:
	lui	$4,%hi($LC31)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC31)

	.option	pic0
	j	$L456
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
