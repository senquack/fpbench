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
	beq	$4,$0,$L12
	lui	$28,%hi(__gnu_local_gp)

	move	$8,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$5,7168			# 0x1c00
	lw	$7,%got(fresult)($28)
	lw	$6,%got(fval1)($28)
	lw	$3,%got(fval2)($28)
	move	$2,$0
$L3:
	lwxc1	$f0,$6($2)
	lwxc1	$f1,$3($2)
	sub.s	$f0,$f0,$f1
	swxc1	$f0,$7($2)
	addiu	$2,$2,4
	bne	$2,$5,$L3
	nop

	addiu	$8,$8,1
	bne	$8,$4,$L3
	move	$2,$0

$L12:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L23
	lui	$28,%hi(__gnu_local_gp)

	move	$11,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$8,7168			# 0x1c00
	lw	$10,%got(xresult)($28)
	lw	$9,%got(xval1)($28)
	lw	$7,%got(xval2)($28)
	move	$2,$0
$L15:
	addu	$3,$9,$2
	addu	$6,$7,$2
	addu	$5,$10,$2
	lw	$3,0($3)
	addiu	$2,$2,4
	lw	$6,0($6)
	subu	$3,$3,$6
	bne	$2,$8,$L15
	sw	$3,0($5)

	addiu	$11,$11,1
	bne	$11,$4,$L15
	move	$2,$0

$L23:
	j	$31
	nop

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
	beq	$4,$0,$L34
	lui	$28,%hi(__gnu_local_gp)

	move	$8,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$5,7168			# 0x1c00
	lw	$7,%got(fresult)($28)
	lw	$6,%got(fval2)($28)
	lw	$3,%got(fval1)($28)
	move	$2,$0
$L26:
	lwxc1	$f0,$6($2)
	lwxc1	$f1,$3($2)
	add.s	$f0,$f0,$f1
	swxc1	$f0,$7($2)
	addiu	$2,$2,4
	bne	$2,$5,$L26
	nop

	addiu	$8,$8,1
	bne	$8,$4,$L26
	move	$2,$0

$L34:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L45
	lui	$28,%hi(__gnu_local_gp)

	move	$11,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$8,7168			# 0x1c00
	lw	$10,%got(xresult)($28)
	lw	$9,%got(xval1)($28)
	lw	$7,%got(xval2)($28)
	move	$2,$0
$L37:
	addu	$3,$9,$2
	addu	$6,$7,$2
	addu	$5,$10,$2
	lw	$3,0($3)
	addiu	$2,$2,4
	lw	$6,0($6)
	addu	$3,$3,$6
	bne	$2,$8,$L37
	sw	$3,0($5)

	addiu	$11,$11,1
	bne	$11,$4,$L37
	move	$2,$0

$L45:
	j	$31
	nop

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
	beq	$4,$0,$L56
	lui	$28,%hi(__gnu_local_gp)

	move	$8,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$5,7168			# 0x1c00
	lw	$7,%got(fresult)($28)
	lw	$6,%got(fval2)($28)
	lw	$3,%got(fval1)($28)
	move	$2,$0
$L48:
	lwxc1	$f0,$6($2)
	lwxc1	$f1,$3($2)
	mul.s	$f0,$f0,$f1
	swxc1	$f0,$7($2)
	addiu	$2,$2,4
	bne	$2,$5,$L48
	nop

	addiu	$8,$8,1
	bne	$8,$4,$L48
	move	$2,$0

$L56:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L67
	lui	$28,%hi(__gnu_local_gp)

	move	$11,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$8,7168			# 0x1c00
	lw	$10,%got(xval1)($28)
	lw	$9,%got(xval2)($28)
	lw	$7,%got(xresult)($28)
	move	$5,$0
$L59:
	addu	$2,$10,$5
	addu	$3,$9,$5
	addu	$6,$7,$5
	lw	$2,0($2)
	addiu	$5,$5,4
	lw	$3,0($3)
	mult	$2,$3
	mflo	$2
	mfhi	$3
	srl	$2,$2,16
	sll	$3,$3,16
	or	$2,$3,$2
	bne	$5,$8,$L59
	sw	$2,0($6)

	addiu	$11,$11,1
	bne	$11,$4,$L59
	move	$5,$0

$L67:
	j	$31
	nop

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L78
	lui	$28,%hi(__gnu_local_gp)

	move	$11,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$8,7168			# 0x1c00
	lw	$10,%got(xresult)($28)
	lw	$9,%got(xval1)($28)
	lw	$7,%got(xval2)($28)
	move	$2,$0
$L70:
	addu	$3,$9,$2
	addu	$6,$7,$2
	addu	$5,$10,$2
	lw	$3,0($3)
	addiu	$2,$2,4
	lw	$6,0($6)
	mul	$3,$3,$6
	bne	$2,$8,$L70
	sw	$3,0($5)

	addiu	$11,$11,1
	bne	$11,$4,$L70
	move	$2,$0

$L78:
	j	$31
	nop

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
	beq	$4,$0,$L89
	lui	$28,%hi(__gnu_local_gp)

	move	$8,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$5,7168			# 0x1c00
	lw	$7,%got(fresult)($28)
	lw	$6,%got(fval1)($28)
	lw	$3,%got(fval2)($28)
	move	$2,$0
$L81:
	lwxc1	$f0,$6($2)
	lwxc1	$f1,$3($2)
	div.s	$f0,$f0,$f1
	swxc1	$f0,$7($2)
	addiu	$2,$2,4
	bne	$2,$5,$L81
	nop

	addiu	$8,$8,1
	bne	$8,$4,$L81
	move	$2,$0

$L89:
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
	beq	$4,$0,$L100
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$17,32($sp)
	sw	$21,48($sp)
	move	$21,$0
	sw	$18,36($sp)
	li	$18,7168			# 0x1c00
	sw	$22,52($sp)
	move	$22,$4
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$16,28($sp)
	.cprestore	16
	lw	$20,%got(xresult)($28)
	lw	$19,%got(xval1)($28)
	lw	$17,%got(xval2)($28)
	move	$16,$0
$L92:
	addu	$3,$19,$16
	lw	$25,%call16(__divdi3)($28)
	addu	$2,$17,$16
	addu	$23,$20,$16
	lw	$4,0($3)
	addiu	$16,$16,4
	lw	$6,0($2)
	sra	$2,$4,31
	srl	$5,$4,16
	sll	$2,$2,16
	sll	$4,$4,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$5,$2

	lw	$28,16($sp)
	bne	$16,$18,$L92
	sw	$2,0($23)

	addiu	$21,$21,1
	bne	$21,$22,$L92
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

$L100:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L111
	lui	$28,%hi(__gnu_local_gp)

	move	$11,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$8,7168			# 0x1c00
	lw	$10,%got(xresult)($28)
	lw	$9,%got(xval1)($28)
	lw	$7,%got(xval2)($28)
	move	$2,$0
$L103:
	addu	$3,$9,$2
	addu	$5,$7,$2
	addu	$6,$10,$2
	lw	$3,0($3)
	addiu	$2,$2,4
	lw	$5,0($5)
	teq	$5,$0,7
	div	$0,$3,$5
	mflo	$3
	bne	$2,$8,$L103
	sw	$3,0($6)

	addiu	$11,$11,1
	bne	$11,$4,$L103
	move	$2,$0

$L111:
	j	$31
	nop

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
	beq	$4,$0,$L122
	lui	$28,%hi(__gnu_local_gp)

	move	$7,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$3,7168			# 0x1c00
	lw	$6,%got(fval1)($28)
	lw	$5,%got(fresult)($28)
	move	$2,$0
$L114:
	lwxc1	$f0,$6($2)
	sqrt.s	$f0,$f0
	swxc1	$f0,$5($2)
	addiu	$2,$2,4
	bne	$2,$3,$L114
	nop

	addiu	$7,$7,1
	bne	$7,$4,$L114
	move	$2,$0

$L122:
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
	bne	$3,$0,$L140
	li	$3,268435456			# 0x10000000

	subu	$4,$4,$2
	li	$3,1342177280			# 0x50000000
	li	$2,65536			# 0x10000
$L124:
	sltu	$5,$4,$3
	bne	$5,$0,$L125
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x8000
$L125:
	addiu	$3,$2,8192
	sll	$3,$3,13
	sltu	$5,$4,$3
	bne	$5,$0,$L126
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x4000
$L126:
	addiu	$3,$2,4096
	sll	$3,$3,12
	sltu	$5,$4,$3
	bne	$5,$0,$L127
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x2000
$L127:
	addiu	$3,$2,2048
	sll	$3,$3,11
	sltu	$5,$4,$3
	bne	$5,$0,$L128
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x1000
$L128:
	addiu	$3,$2,1024
	sll	$3,$3,10
	sltu	$5,$4,$3
	bne	$5,$0,$L129
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x800
$L129:
	addiu	$3,$2,512
	sll	$3,$3,9
	sltu	$5,$4,$3
	bne	$5,$0,$L130
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x400
$L130:
	addiu	$3,$2,256
	sll	$3,$3,8
	sltu	$5,$4,$3
	bne	$5,$0,$L131
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x200
$L131:
	addiu	$3,$2,128
	sll	$3,$3,7
	sltu	$5,$4,$3
	bne	$5,$0,$L132
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x100
$L132:
	addiu	$3,$2,64
	sll	$3,$3,6
	sltu	$5,$4,$3
	bne	$5,$0,$L133
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x80
$L133:
	addiu	$3,$2,32
	sll	$3,$3,5
	sltu	$5,$4,$3
	bne	$5,$0,$L134
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x40
$L134:
	addiu	$3,$2,16
	sll	$3,$3,4
	sltu	$5,$4,$3
	bne	$5,$0,$L135
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x20
$L135:
	addiu	$3,$2,8
	sll	$3,$3,3
	sltu	$5,$4,$3
	bne	$5,$0,$L136
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x10
$L136:
	addiu	$3,$2,4
	sll	$3,$3,2
	sltu	$5,$4,$3
	bne	$5,$0,$L137
	nop

	subu	$4,$4,$3
	ori	$2,$2,0x8
$L137:
	addiu	$3,$2,2
	sll	$3,$3,1
	sltu	$5,$4,$3
	bne	$5,$0,$L141
	addiu	$5,$2,1

	subu	$4,$4,$3
	ori	$2,$2,0x4
	addiu	$5,$2,1
$L141:
	ori	$3,$2,0x2
	sltu	$4,$4,$5
	movz	$2,$3,$4
	j	$31
	sll	$2,$2,7

$L140:
	.option	pic0
	j	$L124
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
	beq	$4,$0,$L152
	lui	$28,%hi(__gnu_local_gp)

	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$20,44($sp)
	move	$20,$0
	sw	$17,32($sp)
	li	$17,7168			# 0x1c00
	sw	$21,48($sp)
	move	$21,$4
	sw	$31,52($sp)
	sw	$16,28($sp)
	.cprestore	16
	lw	$19,%got(xval1)($28)
	lw	$18,%got(xresult)($28)
	move	$16,$0
$L144:
	addu	$2,$19,$16
	.option	pic0
	jal	fpsqrt
	.option	pic2
	lw	$4,0($2)

	addu	$3,$18,$16
	addiu	$16,$16,4
	bne	$16,$17,$L144
	sw	$2,0($3)

	addiu	$20,$20,1
	bne	$20,$21,$L144
	move	$16,$0

	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,56

$L152:
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
$L154:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,4

	lw	$28,16($sp)
	bne	$16,$17,$L154
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
	beq	$4,$0,$L158
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
$L159:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,4

	lw	$28,16($sp)
	bne	$16,$17,$L159
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$4,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$4,0xa120

	lui	$4,%hi(begin_time.3613)
	lw	$28,16($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$4,%lo(begin_time.3613)

	move	$2,$0
	lw	$31,44($sp)
	move	$3,$0
	lw	$17,40($sp)
	lw	$16,36($sp)
	j	$31
	addiu	$sp,$sp,48

$L158:
	lw	$25,%call16(gettimeofday)($28)
	addiu	$4,$sp,24
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lui	$2,%hi(begin_time.3613)
	lw	$6,28($sp)
	li	$5,983040			# 0xf0000
	addiu	$4,$2,%lo(begin_time.3613)
	lw	$31,44($sp)
	lw	$3,%lo(begin_time.3613)($2)
	addiu	$5,$5,16960
	mtlo	$6
	lw	$2,24($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	madd	$2,$5
	li	$2,-1048576			# 0xfffffffffff00000
	ori	$2,$2,0xbdc0
	madd	$3,$2
	lw	$3,4($4)
	addiu	$sp,$sp,48
	mflo	$2
	subu	$2,$2,$3
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

	lui	$2,%hi($LC1)
	lw	$28,24($sp)
	lui	$4,%hi($LC0)
	ldc1	$f2,%lo($LC1)($2)
	move	$6,$16
	addiu	$4,$4,%lo($LC0)
	move	$7,$17
	lw	$25,%call16(printf)($28)
	mul.d	$f0,$f0,$f2
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
	.frame	$sp,80,$31		# vars= 0, regs= 10/4, args= 16, gp= 8
	.mask	0xc0ff0000,-20
	.fmask	0x00f00000,-8
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	lui	$2,%hi($LC6)
	lui	$28,%hi(__gnu_local_gp)
	sdc1	$f20,64($sp)
	sw	$21,44($sp)
	move	$21,$4
	lwc1	$f20,%lo($LC6)($2)
	lui	$2,%hi($LC2)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,36($sp)
	lwc1	$f21,%lo($LC2)($2)
	lui	$2,%hi($LC5)
	sw	$18,32($sp)
	lui	$19,%hi($LC4)
	sw	$17,28($sp)
	lui	$18,%hi($LC3)
	sw	$16,24($sp)
	addiu	$17,$4,7168
	sdc1	$f22,72($sp)
	move	$16,$5
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$20,40($sp)
	.cprestore	16
	.option	pic0
	j	$L178
	.option	pic2
	lwc1	$f22,%lo($LC5)($2)

$L188:
	li	$3,2			# 0x2
	beq	$2,$3,$L171
	lw	$25,%call16(rand)($28)

	lwc1	$f0,0($21)
$L172:
	mtc1	$0,$f1
	c.eq.s	$fcc2,$f0,$f1
	bc1f	$fcc2,$L177
	nop

	swc1	$f20,0($21)
$L177:
	addiu	$21,$21,4
	beq	$21,$17,$L189
	lw	$31,60($sp)

$L178:
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
	beq	$16,$0,$L187
	addiu	$22,$2,1

$L166:
	mtc1	$20,$f0
	lw	$25,%call16(rand)($28)
	mtc1	$22,$f2
	cvt.s.w	$f1,$f0
	cvt.s.w	$f0,$f2
	div.s	$f0,$f1,$f0
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	swc1	$f0,0($21)

	li	$6,1431633920			# 0x55550000
	sra	$3,$2,31
	addiu	$6,$6,21846
	mult	$2,$6
	mfhi	$6
	subu	$3,$6,$3
	sll	$4,$3,1
	addu	$3,$4,$3
	subu	$2,$2,$3
	bne	$2,$0,$L188
	lw	$28,16($sp)

	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	li	$3,1759182848			# 0x68db0000
	sra	$4,$2,31
	lwc1	$f1,0($21)
	ori	$3,$3,0x8bad
	mult	$2,$3
	mfhi	$3
	sra	$3,$3,11
	subu	$3,$3,$4
	li	$4,5000			# 0x1388
	mul	$5,$3,$4
	subu	$2,$2,$5
	addiu	$2,$2,1
	mtc1	$2,$f2
	cvt.s.w	$f0,$f2
	mul.s	$f0,$f0,$f1
	c.le.s	$fcc0,$f21,$f0
	bc1f	$fcc0,$L183
	lw	$28,16($sp)

	lwc1	$f0,%lo($LC3)($18)
	addiu	$21,$21,4
	bne	$21,$17,$L178
	swc1	$f0,-4($21)

	lw	$31,60($sp)
$L189:
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

$L171:
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	li	$4,1717960704			# 0x66660000
	sra	$3,$2,31
	lwc1	$f1,0($21)
	addiu	$4,$4,26215
	lw	$28,16($sp)
	mult	$2,$4
	mfhi	$4
	sra	$4,$4,2
	subu	$3,$4,$3
	sll	$4,$3,1
	sll	$3,$3,3
	addu	$3,$4,$3
	subu	$2,$2,$3
	addiu	$2,$2,1
	mtc1	$2,$f2
	cvt.s.w	$f0,$f2
	div.s	$f0,$f1,$f0
$L185:
	.option	pic0
	j	$L172
	.option	pic2
	swc1	$f0,0($21)

$L187:
	lw	$25,%call16(rand)($28)
	li	$23,1			# 0x1
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	li	$fp,-1			# 0xffffffffffffffff

	move	$3,$23
	lw	$28,16($sp)
	andi	$2,$2,0x1
	movn	$3,$fp,$2
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	mul	$20,$20,$3

	andi	$2,$2,0x1
	lw	$28,16($sp)
	movn	$23,$fp,$2
	.option	pic0
	j	$L166
	.option	pic2
	mul	$22,$22,$23

$L183:
	lwc1	$f1,%lo($LC4)($19)
	c.le.s	$fcc1,$f0,$f1
	bc1f	$fcc1,$L185
	nop

	.option	pic0
	j	$L177
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi($LC7)
	move	$3,$0
	lwc1	$f1,%lo($LC7)($2)
	li	$7,7168			# 0x1c00
$L191:
	lwxc1	$f0,$5($3)
	addu	$6,$4,$3
	addiu	$3,$3,4
	mul.s	$f0,$f0,$f1
	trunc.w.s $f0,$f0
	bne	$3,$7,$L191
	swc1	$f0,0($6)

	j	$31
	nop

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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,28($sp)
	.cprestore	16
	lw	$4,%got(fval1)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	li	$5,1			# 0x1

	lw	$28,16($sp)
	lw	$4,%got(fval2)($28)
	.option	pic0
	jal	fill_float_array
	.option	pic2
	move	$5,$0

	lui	$8,%hi($LC7)
	lw	$28,16($sp)
	move	$3,$0
	lwc1	$f1,%lo($LC7)($8)
	li	$6,7168			# 0x1c00
	lw	$7,%got(xval1)($28)
	lw	$5,%got(fval1)($28)
$L195:
	lwxc1	$f0,$5($3)
	addu	$4,$7,$3
	addiu	$3,$3,4
	mul.s	$f0,$f0,$f1
	trunc.w.s $f0,$f0
	bne	$3,$6,$L195
	swc1	$f0,0($4)

	lwc1	$f1,%lo($LC7)($8)
	move	$3,$0
	lw	$7,%got(xval2)($28)
	li	$6,7168			# 0x1c00
	lw	$5,%got(fval2)($28)
$L196:
	lwxc1	$f0,$5($3)
	addu	$4,$7,$3
	addiu	$3,$3,4
	mul.s	$f0,$f0,$f1
	trunc.w.s $f0,$f0
	bne	$3,$6,$L196
	swc1	$f0,0($4)

	lw	$31,28($sp)
	j	$31
	addiu	$sp,$sp,32

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

	lui	$4,%hi($LC9)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC9)

	lui	$4,%hi(bench_float_sub)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_float_sub)

	lui	$4,%hi($LC10)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC10)

	lui	$4,%hi(bench_fixed_sub)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_fixed_sub)

	lui	$4,%hi($LC11)
	lw	$28,16($sp)
	lw	$31,28($sp)
	addiu	$4,$4,%lo($LC11)
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

	lui	$4,%hi($LC13)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC13)

	lui	$4,%hi(bench_float_add)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_float_add)

	lui	$4,%hi($LC14)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC14)

	lui	$4,%hi(bench_fixed_add)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_fixed_add)

	lui	$4,%hi($LC11)
	lw	$28,16($sp)
	lw	$31,28($sp)
	addiu	$4,$4,%lo($LC11)
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

	lui	$4,%hi($LC16)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC16)

	lui	$4,%hi(bench_float_mul)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_float_mul)

	beq	$16,$0,$L207
	lw	$28,16($sp)

	lw	$8,%got(fresult)($28)
	move	$9,$0
	lw	$7,%got(fval2)($28)
	li	$6,7168			# 0x1c00
	lw	$3,%got(fval1)($28)
	move	$2,$0
$L206:
	lwxc1	$f0,$7($2)
	lwxc1	$f1,$3($2)
	mul.s	$f0,$f0,$f1
	swxc1	$f0,$8($2)
	addiu	$2,$2,4
	bne	$2,$6,$L206
	nop

	addiu	$9,$9,1
	bne	$16,$9,$L206
	move	$2,$0

$L207:
	lui	$4,%hi($LC17)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC17)

	lui	$4,%hi(bench_fixed_mul)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_fixed_mul)

	lui	$4,%hi($LC18)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC18)

	lui	$4,%hi(bench_integer_mul)
	lw	$28,16($sp)
	move	$5,$16
	lw	$31,28($sp)
	addiu	$4,$4,%lo(bench_integer_mul)
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

	lui	$4,%hi($LC20)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC20)

	lui	$4,%hi(bench_float_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_float_div)

	lui	$4,%hi($LC21)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC21)

	lui	$4,%hi(bench_fixed_div)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_fixed_div)

	lui	$4,%hi($LC22)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC22)

	lui	$4,%hi(bench_integer_div)
	lw	$28,16($sp)
	move	$5,$16
	lw	$31,28($sp)
	addiu	$4,$4,%lo(bench_integer_div)
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

	lui	$4,%hi($LC24)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC24)

	lui	$4,%hi(bench_float_sqrt)
	move	$5,$16
	.option	pic0
	jal	avg_of_3_runs
	.option	pic2
	addiu	$4,$4,%lo(bench_float_sqrt)

	lui	$4,%hi($LC25)
	lw	$28,16($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC25)

	lui	$4,%hi(bench_fixed_sqrt)
	lw	$28,16($sp)
	move	$5,$16
	lw	$31,28($sp)
	addiu	$4,$4,%lo(bench_fixed_sqrt)
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
	move	$17,$5
	.cprestore	16
	lw	$25,%call16(time)($28)
	.reloc	1f,R_MIPS_JALR,time
1:	jalr	$25
	slt	$16,$16,2

	lw	$28,16($sp)
	lw	$25,%call16(srand)($28)
	.reloc	1f,R_MIPS_JALR,srand
1:	jalr	$25
	move	$4,$2

	bne	$16,$0,$L219
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

	lui	$4,%hi($LC28)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC28)

	lui	$4,%hi($LC29)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC29)

	lui	$4,%hi($LC30)
	lw	$28,16($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC30)

	lui	$4,%hi($LC31)
	lw	$28,16($sp)
	li	$6,1792			# 0x700
	addiu	$4,$4,%lo($LC31)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	move	$5,$16

	lui	$4,%hi($LC32)
	lw	$28,16($sp)
	li	$5,4			# 0x4
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC32)

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

	lui	$2,%hi(dummy_array)
	li	$3,262144			# 0x40000
	addiu	$4,$2,%lo(dummy_array)
	lw	$2,%lo(dummy_array)($2)
	addu	$3,$3,$4
	lw	$3,-4($3)
	xor	$2,$2,$3
	sltu	$2,$2,1
$L217:
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

$L219:
	lui	$4,%hi($LC26)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC26)

	.option	pic0
	j	$L217
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
