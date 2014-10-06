	.file	1 "fpbench.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.text
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
	bne	$3,$0,$L18
	li	$10,67108864			# 0x4000000

	li	$7,65536			# 0x10000
	subu	$4,$4,$2
	li	$10,603979776			# 0x24000000
	li	$8,872415232			# 0x34000000
	li	$6,1342177280			# 0x50000000
	li	$3,65536			# 0x10000
	ori	$5,$7,0x8000
$L2:
	sltu	$9,$4,$6
	bne	$9,$0,$L20
	sltu	$11,$4,$10

	subu	$4,$4,$6
	move	$10,$8
	move	$3,$5
	sltu	$11,$4,$10
$L20:
	bne	$11,$0,$L21
	addiu	$12,$3,4096

	subu	$4,$4,$10
	ori	$3,$3,0x4000
	addiu	$12,$3,4096
$L21:
	sll	$13,$12,12
	sltu	$14,$4,$13
	bne	$14,$0,$L22
	addiu	$15,$3,2048

	subu	$4,$4,$13
	ori	$3,$3,0x2000
	addiu	$15,$3,2048
$L22:
	sll	$24,$15,11
	sltu	$25,$4,$24
	bne	$25,$0,$L23
	addiu	$2,$3,1024

	subu	$4,$4,$24
	ori	$3,$3,0x1000
	addiu	$2,$3,1024
$L23:
	sll	$8,$2,10
	sltu	$5,$4,$8
	bne	$5,$0,$L24
	addiu	$6,$3,512

	subu	$4,$4,$8
	ori	$3,$3,0x800
	addiu	$6,$3,512
$L24:
	sll	$7,$6,9
	sltu	$9,$4,$7
	bne	$9,$0,$L25
	addiu	$10,$3,256

	subu	$4,$4,$7
	ori	$3,$3,0x400
	addiu	$10,$3,256
$L25:
	sll	$11,$10,8
	sltu	$12,$4,$11
	bne	$12,$0,$L26
	addiu	$13,$3,128

	subu	$4,$4,$11
	ori	$3,$3,0x200
	addiu	$13,$3,128
$L26:
	sll	$14,$13,7
	sltu	$15,$4,$14
	bne	$15,$0,$L27
	addiu	$24,$3,64

	subu	$4,$4,$14
	ori	$3,$3,0x100
	addiu	$24,$3,64
$L27:
	sll	$25,$24,6
	sltu	$2,$4,$25
	bne	$2,$0,$L28
	addiu	$8,$3,32

	subu	$4,$4,$25
	ori	$3,$3,0x80
	addiu	$8,$3,32
$L28:
	sll	$6,$8,5
	sltu	$5,$4,$6
	bne	$5,$0,$L29
	addiu	$7,$3,16

	subu	$4,$4,$6
	ori	$3,$3,0x40
	addiu	$7,$3,16
$L29:
	sll	$9,$7,4
	sltu	$10,$4,$9
	bne	$10,$0,$L30
	addiu	$11,$3,8

	subu	$4,$4,$9
	ori	$3,$3,0x20
	addiu	$11,$3,8
$L30:
	sll	$12,$11,3
	sltu	$13,$4,$12
	bne	$13,$0,$L31
	addiu	$14,$3,4

	subu	$4,$4,$12
	ori	$3,$3,0x10
	addiu	$14,$3,4
$L31:
	sll	$15,$14,2
	sltu	$24,$4,$15
	bne	$24,$0,$L32
	addiu	$25,$3,2

	subu	$4,$4,$15
	ori	$3,$3,0x8
	addiu	$25,$3,2
$L32:
	sll	$2,$25,1
	sltu	$8,$4,$2
	bne	$8,$0,$L33
	addiu	$6,$3,1

	subu	$4,$4,$2
	ori	$3,$3,0x4
	addiu	$6,$3,1
$L33:
	ori	$5,$3,0x2
	sltu	$4,$4,$6
	move	$7,$3
	movz	$7,$5,$4
	j	$31
	sll	$2,$7,7

$L18:
	li	$8,335544320			# 0x14000000
	li	$5,32768			# 0x8000
	li	$6,268435456			# 0x10000000
	.option	pic0
	j	$L2
	.option	pic2
	move	$3,$0

	.set	macro
	.set	reorder
	.end	fpsqrt
	.size	fpsqrt, .-fpsqrt
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
$L35:
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
	bne	$16,$17,$L35
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
	beq	$4,$0,$L46
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
$L47:
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
	bne	$16,$17,$L47
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

$L46:
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
	.frame	$sp,88,$31		# vars= 16, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-88
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,84($sp)
	sw	$fp,80($sp)
	move	$fp,$5
	sw	$20,64($sp)
	lui	$20,%hi(dummy_array)
	sw	$17,52($sp)
	lui	$17,%hi(dummy_array+262144)
	sw	$16,48($sp)
	addiu	$20,$20,%lo(dummy_array)
	.cprestore	24
	addiu	$17,$17,%lo(dummy_array+262144)
	sw	$4,88($sp)
	move	$16,$20
	sw	$23,76($sp)
	sw	$22,72($sp)
	sw	$21,68($sp)
	sw	$19,60($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$18,56($sp)

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
$L59:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lw	$28,24($sp)
	bne	$16,$17,$L59
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$4,458752			# 0x70000
	lui	$19,%hi(begin_time.3613)
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$4,0xa120

	move	$5,$0
	lw	$28,24($sp)
	addiu	$4,$19,%lo(begin_time.3613)
	addiu	$22,$sp,32
	move	$21,$4
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$18,$20

	lw	$25,88($sp)
	jalr	$25
	move	$4,$fp

	move	$5,$0
	lw	$28,24($sp)
	move	$4,$22
	sw	$0,32($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	sw	$0,36($sp)

	li	$3,983040			# 0xf0000
	lw	$6,36($sp)
	li	$9,-1048576			# 0xfffffffffff00000
	lw	$8,32($sp)
	addiu	$7,$3,16960
	lw	$2,%lo(begin_time.3613)($19)
	ori	$10,$9,0xbdc0
	mtlo	$6
	lw	$28,24($sp)
	lw	$5,4($21)
	lw	$25,%call16(sync)($28)
	madd	$8,$7
	madd	$2,$10
	mflo	$11
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$23,$11,$5

	lw	$28,24($sp)
	move	$4,$0
	sra	$12,$23,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$12,40($sp)

	lw	$28,24($sp)
$L60:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$18,$18,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($18)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($18)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($18)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($18)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($18)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($18)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($18)

	lw	$28,24($sp)
	bne	$18,$17,$L60
	sw	$2,-4($18)

	li	$13,458752			# 0x70000
	lw	$25,%call16(usleep)($28)
	li	$16,983040			# 0xf0000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$13,0xa120

	move	$5,$0
	lw	$28,24($sp)
	addiu	$4,$19,%lo(begin_time.3613)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$20,$20,32

	lw	$25,88($sp)
	jalr	$25
	move	$4,$fp

	move	$5,$0
	lw	$28,24($sp)
	move	$4,$22
	sw	$0,32($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	sw	$0,36($sp)

	li	$5,-1048576			# 0xfffffffffff00000
	lw	$24,36($sp)
	addiu	$4,$16,16960
	lw	$2,32($sp)
	ori	$6,$5,0xbdc0
	lw	$14,%lo(begin_time.3613)($19)
	mtlo	$24
	lw	$28,24($sp)
	lw	$15,4($21)
	lw	$25,%call16(sync)($28)
	madd	$2,$4
	madd	$14,$6
	mflo	$3
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$18,$3,$15

	lw	$28,24($sp)
	move	$4,$0
	sra	$7,$18,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$7,44($sp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($20)

	lw	$28,24($sp)
	beq	$20,$17,$L109
	sw	$2,-4($20)

$L61:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$20,$20,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($20)

	lw	$28,24($sp)
	bne	$20,$17,$L61
	sw	$2,-4($20)

$L109:
	li	$31,458752			# 0x70000
	lw	$25,%call16(usleep)($28)
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	move	$5,$0
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$19,%lo(begin_time.3613)

	lw	$25,88($sp)
	jalr	$25
	move	$4,$fp

	move	$5,$0
	lw	$28,24($sp)
	move	$4,$22
	sw	$0,32($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	sw	$0,36($sp)

	li	$10,-1048576			# 0xfffffffffff00000
	lw	$22,36($sp)
	li	$6,3			# 0x3
	lw	$17,4($21)
	li	$21,983040			# 0xf0000
	lw	$9,32($sp)
	ori	$11,$10,0xbdc0
	mtlo	$22
	lw	$fp,%lo(begin_time.3613)($19)
	addiu	$8,$21,16960
	lw	$13,44($sp)
	addu	$19,$18,$23
	lw	$14,40($sp)
	lw	$28,24($sp)
	move	$7,$0
	sltu	$24,$19,$18
	addu	$15,$13,$14
	madd	$9,$8
	lw	$25,%call16(__udivdi3)($28)
	madd	$fp,$11
	addu	$2,$24,$15
	lui	$fp,%hi($LC1)
	mflo	$23
	subu	$12,$23,$17
	sra	$16,$12,31
	addu	$4,$19,$12
	addu	$5,$2,$16
	sltu	$3,$4,$19
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$3,$5

	lw	$28,24($sp)
	move	$5,$3
	move	$4,$2
	move	$18,$2
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	move	$20,$3

	lui	$4,%hi($LC0)
	ldc1	$f2,%lo($LC1)($fp)
	move	$6,$18
	lw	$28,24($sp)
	addiu	$4,$4,%lo($LC0)
	move	$7,$20
	lw	$25,%call16(printf)($28)
	mul.d	$f0,$f0,$f2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f0,16($sp)

	move	$2,$18
	lw	$31,84($sp)
	move	$3,$20
	lw	$fp,80($sp)
	lw	$23,76($sp)
	lw	$22,72($sp)
	lw	$21,68($sp)
	lw	$20,64($sp)
	lw	$19,60($sp)
	lw	$18,56($sp)
	lw	$17,52($sp)
	lw	$16,48($sp)
	j	$31
	addiu	$sp,$sp,88

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
	j	$L124
	.option	pic2
	lwc1	$f22,%lo($LC5)($4)

$L134:
	li	$31,2			# 0x2
	beq	$2,$31,$L117
	lw	$25,%call16(rand)($28)

	lwc1	$f8,0($21)
$L118:
	mtc1	$0,$f13
	c.eq.s	$fcc2,$f8,$f13
	bc1f	$fcc2,$L123
	nop

	swc1	$f20,0($21)
$L123:
	addiu	$21,$21,4
	beq	$21,$17,$L135
	lw	$31,60($sp)

$L124:
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
	beq	$16,$0,$L133
	addiu	$22,$2,1

$L112:
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
	bne	$2,$0,$L134
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
	bc1f	$fcc0,$L129
	lw	$28,16($sp)

	lwc1	$f14,%lo($LC3)($18)
	addiu	$21,$21,4
	bne	$21,$17,$L124
	swc1	$f14,-4($21)

	lw	$31,60($sp)
$L135:
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

$L117:
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
$L131:
	.option	pic0
	j	$L118
	.option	pic2
	swc1	$f8,0($21)

$L133:
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
	j	$L112
	.option	pic2
	mul	$22,$22,$23

$L129:
	lwc1	$f12,%lo($LC4)($19)
	c.le.s	$fcc1,$f8,$f12
	bc1f	$fcc1,$L131
	nop

	.option	pic0
	j	$L123
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
$L137:
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
	bne	$2,$13,$L137
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
	.frame	$sp,80,$31		# vars= 0, regs= 10/4, args= 16, gp= 8
	.mask	0xc0ff0000,-20
	.fmask	0x00f00000,-8
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-80
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,24($sp)
	lui	$2,%hi($LC6)
	lui	$3,%hi($LC2)
	sdc1	$f20,64($sp)
	sw	$21,44($sp)
	lui	$4,%hi($LC5)
	sw	$20,40($sp)
	lui	$20,%hi($LC4)
	sw	$19,36($sp)
	lui	$19,%hi($LC3)
	sw	$18,32($sp)
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$17,28($sp)
	.cprestore	16
	lw	$16,%got(fval1)($28)
	sdc1	$f22,72($sp)
	lwc1	$f20,%lo($LC6)($2)
	addiu	$18,$16,7168
	move	$21,$16
	lwc1	$f21,%lo($LC2)($3)
	.option	pic0
	j	$L157
	.option	pic2
	lwc1	$f22,%lo($LC5)($4)

$L200:
	li	$15,2			# 0x2
	beq	$14,$15,$L150
	lw	$25,%call16(rand)($28)

	lwc1	$f8,0($21)
$L151:
	mtc1	$0,$f13
	c.eq.s	$fcc2,$f8,$f13
	bc1f	$fcc2,$L156
	nop

	swc1	$f20,0($21)
$L156:
	addiu	$21,$21,4
	beq	$21,$18,$L199
	nop

$L157:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	move	$17,$2

	addiu	$5,$17,1
	addiu	$6,$2,1
	lw	$28,16($sp)
	mtc1	$5,$f0
	mtc1	$6,$f2
	lw	$25,%call16(rand)($28)
	cvt.s.w	$f1,$f0
	cvt.s.w	$f3,$f2
	div.s	$f4,$f1,$f3
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	swc1	$f4,0($21)

	li	$8,1431633920			# 0x55550000
	sra	$7,$2,31
	addiu	$9,$8,21846
	mult	$2,$9
	mfhi	$10
	subu	$11,$10,$7
	sll	$12,$11,1
	addu	$13,$12,$11
	subu	$14,$2,$13
	bne	$14,$0,$L200
	lw	$28,16($sp)

	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	li	$8,1759182848			# 0x68db0000
	sra	$11,$2,31
	lwc1	$f9,0($21)
	ori	$9,$8,0x8bad
	mult	$2,$9
	li	$14,5000			# 0x1388
	mfhi	$10
	sra	$12,$10,11
	subu	$13,$12,$11
	mul	$15,$13,$14
	subu	$22,$2,$15
	addiu	$23,$22,1
	mtc1	$23,$f10
	cvt.s.w	$f11,$f10
	mul.s	$f8,$f11,$f9
	c.le.s	$fcc0,$f21,$f8
	bc1f	$fcc0,$L194
	lw	$28,16($sp)

	lwc1	$f14,%lo($LC3)($19)
	addiu	$21,$21,4
	bne	$21,$18,$L157
	swc1	$f14,-4($21)

$L199:
	lw	$17,%got(fval2)($28)
	lui	$20,%hi($LC2)
	lui	$31,%hi($LC6)
	lui	$19,%hi($LC5)
	lwc1	$f20,%lo($LC2)($20)
	addiu	$18,$17,7168
	lwc1	$f23,%lo($LC6)($31)
	lui	$20,%hi($LC4)
	move	$22,$17
	.option	pic0
	j	$L169
	.option	pic2
	lwc1	$f21,%lo($LC5)($19)

$L202:
	lwc1	$f2,0($22)
$L163:
	mtc1	$0,$f7
	c.eq.s	$fcc5,$f2,$f7
	bc1f	$fcc5,$L168
	nop

	swc1	$f23,0($22)
$L168:
	addiu	$22,$22,4
	beq	$22,$18,$L201
	nop

$L169:
	lw	$25,%call16(rand)($28)
	li	$23,1			# 0x1
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	li	$fp,-1			# 0xffffffffffffffff

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$21,$2,1

	lw	$28,16($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$19,$2,1

	move	$3,$23
	lw	$28,16($sp)
	andi	$24,$2,0x1
	movn	$3,$fp,$24
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	mul	$21,$21,$3

	andi	$4,$2,0x1
	lw	$28,16($sp)
	movn	$23,$fp,$4
	mtc1	$21,$f15
	lw	$25,%call16(rand)($28)
	mul	$5,$19,$23
	mtc1	$5,$f17
	cvt.s.w	$f16,$f15
	cvt.s.w	$f18,$f17
	div.s	$f19,$f16,$f18
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	swc1	$f19,0($22)

	li	$7,1431633920			# 0x55550000
	sra	$6,$2,31
	addiu	$8,$7,21846
	mult	$2,$8
	mfhi	$9
	subu	$10,$9,$6
	sll	$11,$10,1
	addu	$12,$11,$10
	subu	$2,$2,$12
	beq	$2,$0,$L161
	lw	$28,16($sp)

	li	$13,2			# 0x2
	bne	$2,$13,$L202
	lw	$25,%call16(rand)($28)

	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	li	$15,1717960704			# 0x66660000
	sra	$14,$2,31
	lwc1	$f22,0($22)
	addiu	$fp,$15,26215
	lw	$28,16($sp)
	mult	$2,$fp
	mfhi	$3
	sra	$4,$3,2
	subu	$23,$4,$14
	sll	$19,$23,1
	sll	$24,$23,3
	addu	$21,$19,$24
	subu	$5,$2,$21
	addiu	$6,$5,1
	mtc1	$6,$f0
	cvt.s.w	$f1,$f0
	div.s	$f2,$f22,$f1
$L198:
	.option	pic0
	j	$L163
	.option	pic2
	swc1	$f2,0($22)

$L150:
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	li	$23,1717960704			# 0x66660000

	addiu	$24,$23,26215
	sra	$22,$2,31
	lwc1	$f5,0($21)
	mult	$2,$24
	lw	$28,16($sp)
	mfhi	$3
	sra	$4,$3,2
	subu	$fp,$4,$22
	sll	$17,$fp,1
	sll	$5,$fp,3
	addu	$6,$17,$5
	subu	$2,$2,$6
	addiu	$7,$2,1
	mtc1	$7,$f6
	cvt.s.w	$f7,$f6
	div.s	$f8,$f5,$f7
$L197:
	.option	pic0
	j	$L151
	.option	pic2
	swc1	$f8,0($21)

$L194:
	lwc1	$f12,%lo($LC4)($20)
	c.le.s	$fcc1,$f8,$f12
	bc1f	$fcc1,$L197
	nop

	.option	pic0
	j	$L156
	.option	pic2
	swc1	$f22,0($21)

$L161:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	li	$7,1759182848			# 0x68db0000
	sra	$10,$2,31
	lwc1	$f3,0($22)
	ori	$8,$7,0x8bad
	mult	$2,$8
	li	$13,5000			# 0x1388
	mfhi	$9
	sra	$11,$9,11
	subu	$12,$11,$10
	mul	$14,$12,$13
	subu	$2,$2,$14
	addiu	$15,$2,1
	mtc1	$15,$f4
	cvt.s.w	$f5,$f4
	mul.s	$f2,$f5,$f3
	c.le.s	$fcc3,$f20,$f2
	bc1f	$fcc3,$L195
	lw	$28,16($sp)

	lui	$31,%hi($LC3)
	addiu	$22,$22,4
	lwc1	$f8,%lo($LC3)($31)
	bne	$22,$18,$L169
	swc1	$f8,-4($22)

$L201:
	lui	$fp,%hi($LC7)
	lw	$3,%got(xval1)($28)
	move	$2,$0
	lwc1	$f9,%lo($LC7)($fp)
	li	$23,7168			# 0x1c00
$L170:
	addiu	$20,$2,4
	lwxc1	$f10,$16($2)
	addiu	$18,$2,8
	addiu	$4,$2,12
	lwxc1	$f11,$16($20)
	addiu	$24,$2,16
	addiu	$21,$2,20
	lwxc1	$f12,$16($18)
	addiu	$5,$2,24
	addiu	$25,$2,28
	lwxc1	$f13,$16($4)
	addu	$6,$3,$2
	lwxc1	$f14,$16($24)
	mul.s	$f23,$f10,$f9
	addu	$19,$3,$20
	addu	$14,$3,$18
	lwxc1	$f20,$16($21)
	mul.s	$f21,$f11,$f9
	addu	$13,$3,$4
	addu	$12,$3,$24
	lwxc1	$f15,$16($5)
	mul.s	$f16,$f12,$f9
	addu	$11,$3,$21
	addu	$10,$3,$5
	lwxc1	$f17,$16($25)
	mul.s	$f18,$f13,$f9
	addu	$9,$3,$25
	addiu	$2,$2,32
	mul.s	$f19,$f14,$f9
	mul.s	$f22,$f20,$f9
	mul.s	$f0,$f15,$f9
	mul.s	$f1,$f17,$f9
	trunc.w.s $f2,$f23
	trunc.w.s $f3,$f21
	trunc.w.s $f4,$f16
	trunc.w.s $f5,$f18
	trunc.w.s $f6,$f19
	swc1	$f2,0($6)
	trunc.w.s $f7,$f22
	swc1	$f3,0($19)
	trunc.w.s $f8,$f0
	swc1	$f4,0($14)
	trunc.w.s $f10,$f1
	swc1	$f5,0($13)
	swc1	$f6,0($12)
	swc1	$f7,0($11)
	swc1	$f8,0($10)
	bne	$2,$23,$L170
	swc1	$f10,0($9)

	lwc1	$f9,%lo($LC7)($fp)
	move	$2,$0
	lw	$fp,%got(xval2)($28)
	li	$3,7168			# 0x1c00
$L171:
	addiu	$16,$2,4
	lwxc1	$f11,$17($2)
	addiu	$23,$2,8
	addiu	$24,$2,12
	lwxc1	$f12,$17($16)
	addiu	$21,$2,16
	addiu	$25,$2,20
	lwxc1	$f13,$17($23)
	addiu	$19,$2,24
	addiu	$14,$2,28
	lwxc1	$f14,$17($24)
	addu	$6,$fp,$2
	lwxc1	$f23,$17($21)
	mul.s	$f20,$f11,$f9
	addu	$5,$fp,$16
	addu	$31,$fp,$23
	lwxc1	$f21,$17($25)
	mul.s	$f15,$f12,$f9
	addu	$13,$fp,$24
	addu	$12,$fp,$21
	lwxc1	$f16,$17($19)
	mul.s	$f17,$f13,$f9
	addu	$11,$fp,$25
	addu	$10,$fp,$19
	lwxc1	$f18,$17($14)
	mul.s	$f19,$f14,$f9
	addu	$9,$fp,$14
	addiu	$2,$2,32
	mul.s	$f22,$f23,$f9
	mul.s	$f0,$f21,$f9
	mul.s	$f2,$f16,$f9
	mul.s	$f1,$f18,$f9
	trunc.w.s $f3,$f20
	trunc.w.s $f4,$f15
	trunc.w.s $f5,$f17
	trunc.w.s $f6,$f19
	trunc.w.s $f7,$f22
	swc1	$f3,0($6)
	trunc.w.s $f8,$f0
	swc1	$f4,0($5)
	trunc.w.s $f10,$f2
	swc1	$f5,0($31)
	trunc.w.s $f11,$f1
	swc1	$f6,0($13)
	swc1	$f7,0($12)
	swc1	$f8,0($11)
	swc1	$f10,0($10)
	bne	$2,$3,$L171
	swc1	$f11,0($9)

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
	ldc1	$f22,72($sp)
	ldc1	$f20,64($sp)
	j	$31
	addiu	$sp,$sp,80

$L195:
	lwc1	$f6,%lo($LC4)($20)
	c.le.s	$fcc4,$f2,$f6
	bc1f	$fcc4,$L198
	nop

	.option	pic0
	j	$L168
	.option	pic2
	swc1	$f21,0($22)

	.set	macro
	.set	reorder
	.end	fill_arrays
	.size	fill_arrays, .-fill_arrays
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
	beq	$4,$0,$L220
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$13,7168			# 0x1c00
	lw	$6,%got(fresult)($28)
	lw	$5,%got(fval1)($28)
	lw	$3,%got(fval2)($28)
	move	$2,$0
$L205:
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
	bne	$2,$13,$L205
	swxc1	$f0,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L205
	move	$2,$0

$L220:
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
	beq	$4,$0,$L221
	sw	$4,64($sp)

	lw	$3,%got(xresult)($28)
	lw	$18,%got(xval1)($28)
	lw	$16,%got(xval2)($28)
	sw	$0,16($sp)
$L224:
	move	$14,$0
$L223:
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
	bne	$14,$10,$L223
	sw	$23,0($2)

	lw	$14,16($sp)
	lw	$17,64($sp)
	addiu	$fp,$14,1
	bne	$fp,$17,$L224
	sw	$fp,16($sp)

$L221:
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
	.frame	$sp,120,$31		# vars= 48, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,116($sp)
	sw	$17,84($sp)
	sw	$16,80($sp)
	lui	$16,%hi(dummy_array)
	.cprestore	24
	sw	$4,120($sp)
	addiu	$17,$16,%lo(dummy_array)
	sw	$fp,112($sp)
	sw	$23,108($sp)
	sw	$22,104($sp)
	sw	$21,100($sp)
	sw	$20,96($sp)
	sw	$19,92($sp)
	.option	pic0
	jal	fill_arrays
	.option	pic2
	sw	$18,88($sp)

	lui	$4,%hi($LC8)
	lw	$28,24($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC8)

	lui	$2,%hi($LC9)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC9)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
$L237:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$17,$17,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($17)

	lui	$3,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$5,$3,%lo(dummy_array+262144)
	bne	$17,$5,$L237
	sw	$2,-4($17)

	lw	$25,%call16(usleep)($28)
	li	$6,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$6,0xa120

	lui	$7,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$7,%lo(begin_time.3613)

	lw	$8,120($sp)
	beq	$8,$0,$L242
	lw	$28,24($sp)

	lw	$18,%got(fresult)($28)
	move	$13,$0
	lw	$19,%got(fval1)($28)
	li	$12,7168			# 0x1c00
	lw	$20,%got(fval2)($28)
	move	$15,$8
	move	$21,$0
$L240:
	lwxc1	$f10,$19($21)
	addiu	$14,$21,4
	addiu	$11,$21,8
	lwxc1	$f1,$20($21)
	addiu	$10,$21,12
	addiu	$9,$21,16
	addiu	$22,$21,20
	lwxc1	$f9,$19($14)
	addiu	$23,$21,24
	addiu	$24,$21,28
	lwxc1	$f0,$20($14)
	lwxc1	$f8,$19($11)
	sub.s	$f11,$f10,$f1
	lwxc1	$f2,$20($11)
	lwxc1	$f7,$19($10)
	lwxc1	$f3,$20($10)
	sub.s	$f12,$f9,$f0
	lwxc1	$f6,$19($9)
	lwxc1	$f13,$20($9)
	sub.s	$f14,$f8,$f2
	lwxc1	$f5,$19($22)
	lwxc1	$f4,$20($22)
	sub.s	$f15,$f7,$f3
	lwxc1	$f16,$19($23)
	lwxc1	$f17,$20($23)
	sub.s	$f18,$f6,$f13
	lwxc1	$f19,$19($24)
	lwxc1	$f10,$20($24)
	sub.s	$f1,$f5,$f4
	swxc1	$f11,$18($21)
	addiu	$21,$21,32
	sub.s	$f9,$f16,$f17
	swxc1	$f12,$18($14)
	swxc1	$f14,$18($11)
	sub.s	$f0,$f19,$f10
	swxc1	$f15,$18($10)
	swxc1	$f18,$18($9)
	swxc1	$f1,$18($22)
	swxc1	$f9,$18($23)
	bne	$21,$12,$L240
	swxc1	$f0,$18($24)

	addiu	$13,$13,1
	bne	$13,$15,$L240
	move	$21,$0

$L242:
	addiu	$fp,$sp,32
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	sw	$0,32($sp)
	move	$4,$fp
	sw	$0,36($sp)
	sw	$fp,48($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	li	$17,983040			# 0xf0000

	lui	$4,%hi(begin_time.3613)
	lw	$16,36($sp)
	addiu	$5,$17,16960
	lw	$3,32($sp)
	li	$6,-1048576			# 0xfffffffffff00000
	lw	$2,%lo(begin_time.3613)($4)
	lui	$15,%hi(begin_time.3613)
	mtlo	$16
	lw	$28,24($sp)
	ori	$7,$6,0xbdc0
	addiu	$18,$15,%lo(begin_time.3613)
	lui	$19,%hi(dummy_array)
	lw	$25,%call16(sync)($28)
	lw	$13,4($18)
	addiu	$20,$19,%lo(dummy_array)
	madd	$3,$5
	madd	$2,$7
	mflo	$8
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$18,$8,$13

	lw	$28,24($sp)
	move	$4,$0
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sra	$19,$18,31

	lw	$28,24($sp)
$L239:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$20,$20,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($20)

	lui	$12,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$21,$12,%lo(dummy_array+262144)
	bne	$21,$20,$L239
	sw	$2,-4($20)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	lui	$14,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$14,%lo(begin_time.3613)

	lw	$11,120($sp)
	beq	$11,$0,$L247
	lw	$28,24($sp)

	lw	$23,%got(fresult)($28)
	move	$24,$0
	lw	$fp,%got(fval1)($28)
	li	$4,7168			# 0x1c00
	lw	$16,%got(fval2)($28)
	move	$22,$11
	move	$2,$0
$L245:
	addiu	$17,$2,4
	lwxc1	$f11,$fp($2)
	addiu	$5,$2,8
	addiu	$10,$2,12
	lwxc1	$f7,$16($2)
	addiu	$9,$2,16
	addiu	$3,$2,20
	lwxc1	$f3,$fp($17)
	addiu	$7,$2,24
	addiu	$6,$2,28
	lwxc1	$f12,$16($17)
	lwxc1	$f8,$fp($5)
	lwxc1	$f2,$16($5)
	sub.s	$f13,$f11,$f7
	lwxc1	$f14,$fp($10)
	lwxc1	$f15,$16($10)
	sub.s	$f16,$f3,$f12
	lwxc1	$f6,$fp($9)
	lwxc1	$f17,$16($9)
	sub.s	$f18,$f8,$f2
	lwxc1	$f5,$fp($3)
	lwxc1	$f4,$16($3)
	sub.s	$f19,$f14,$f15
	lwxc1	$f10,$fp($7)
	lwxc1	$f9,$16($7)
	sub.s	$f11,$f6,$f17
	lwxc1	$f1,$fp($6)
	lwxc1	$f0,$16($6)
	sub.s	$f7,$f5,$f4
	swxc1	$f13,$23($2)
	addiu	$2,$2,32
	sub.s	$f3,$f10,$f9
	swxc1	$f16,$23($17)
	swxc1	$f18,$23($5)
	sub.s	$f12,$f1,$f0
	swxc1	$f19,$23($10)
	swxc1	$f11,$23($9)
	swxc1	$f7,$23($3)
	swxc1	$f3,$23($7)
	bne	$2,$4,$L245
	swxc1	$f12,$23($6)

	addiu	$24,$24,1
	bne	$24,$22,$L245
	move	$2,$0

$L247:
	lw	$25,%call16(gettimeofday)($28)
	lui	$8,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$16,$8,%lo(dummy_array)

	lui	$15,%hi(begin_time.3613)
	lw	$31,36($sp)
	li	$14,983040			# 0xf0000
	lw	$22,32($sp)
	li	$23,-1048576			# 0xfffffffffff00000
	lw	$13,%lo(begin_time.3613)($15)
	addiu	$11,$14,16960
	mtlo	$31
	lw	$28,24($sp)
	ori	$24,$23,0xbdc0
	addiu	$12,$15,%lo(begin_time.3613)
	lw	$25,%call16(sync)($28)
	lw	$21,4($12)
	madd	$22,$11
	madd	$13,$24
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	mflo	$fp

	lw	$28,24($sp)
	move	$4,$0
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	subu	$17,$fp,$21

	lw	$28,24($sp)
	sra	$20,$17,31
	lw	$25,%call16(rand)($28)
$L396:
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$4,%hi(dummy_array+262144)
	lw	$28,24($sp)
	sw	$2,-4($16)
	addiu	$2,$4,%lo(dummy_array+262144)
	bne	$2,$16,$L396
	lw	$25,%call16(rand)($28)

	lw	$25,%call16(usleep)($28)
	li	$5,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$5,0xa120

	lui	$10,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$10,%lo(begin_time.3613)

	lw	$9,120($sp)
	beq	$9,$0,$L252
	lw	$28,24($sp)

	lw	$21,%got(fresult)($28)
	move	$13,$0
	lw	$31,%got(fval1)($28)
	li	$12,7168			# 0x1c00
	lw	$3,%got(fval2)($28)
	move	$15,$9
	move	$22,$0
$L250:
	addiu	$14,$22,4
	lwxc1	$f13,$31($22)
	addiu	$11,$22,8
	addiu	$23,$22,12
	lwxc1	$f14,$3($22)
	addiu	$24,$22,16
	addiu	$8,$22,20
	lwxc1	$f15,$31($14)
	addiu	$7,$22,24
	addiu	$6,$22,28
	lwxc1	$f16,$3($14)
	lwxc1	$f8,$31($11)
	lwxc1	$f2,$3($11)
	sub.s	$f17,$f13,$f14
	lwxc1	$f18,$31($23)
	lwxc1	$f19,$3($23)
	sub.s	$f10,$f15,$f16
	lwxc1	$f6,$31($24)
	lwxc1	$f9,$3($24)
	sub.s	$f11,$f8,$f2
	lwxc1	$f5,$31($8)
	lwxc1	$f4,$3($8)
	sub.s	$f7,$f18,$f19
	lwxc1	$f3,$31($7)
	lwxc1	$f12,$3($7)
	sub.s	$f13,$f6,$f9
	lwxc1	$f1,$31($6)
	lwxc1	$f0,$3($6)
	sub.s	$f14,$f5,$f4
	swxc1	$f17,$21($22)
	addiu	$22,$22,32
	sub.s	$f15,$f3,$f12
	swxc1	$f10,$21($14)
	swxc1	$f11,$21($11)
	sub.s	$f16,$f1,$f0
	swxc1	$f7,$21($23)
	swxc1	$f13,$21($24)
	swxc1	$f14,$21($8)
	swxc1	$f15,$21($7)
	bne	$22,$12,$L250
	swxc1	$f16,$21($6)

	addiu	$13,$13,1
	bne	$13,$15,$L250
	move	$22,$0

$L252:
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	addiu	$4,$sp,32
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	lui	$fp,%hi(begin_time.3613)

	li	$5,983040			# 0xf0000
	lw	$15,36($sp)
	li	$31,-1048576			# 0xfffffffffff00000
	lw	$13,32($sp)
	addiu	$21,$5,16960
	lw	$16,%lo(begin_time.3613)($fp)
	ori	$12,$31,0xbdc0
	mtlo	$15
	lw	$28,24($sp)
	addiu	$2,$fp,%lo(begin_time.3613)
	addu	$9,$17,$18
	addu	$18,$20,$19
	lw	$10,4($2)
	sltu	$17,$9,$17
	addu	$20,$17,$18
	lw	$25,%call16(__udivdi3)($28)
	li	$6,3			# 0x3
	madd	$13,$21
	madd	$16,$12
	move	$7,$0
	lui	$23,%hi(dummy_array)
	mflo	$3
	addiu	$16,$23,%lo(dummy_array)
	subu	$22,$3,$10
	sra	$19,$22,31
	addu	$4,$9,$22
	addu	$14,$20,$19
	sltu	$11,$4,$9
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$11,$14

	lw	$28,24($sp)
	move	$5,$3
	sw	$3,72($sp)
	move	$4,$2
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	sw	$2,68($sp)

	lui	$8,%hi($LC1)
	lw	$28,24($sp)
	lui	$24,%hi($LC0)
	ldc1	$f8,%lo($LC1)($8)
	lw	$7,68($sp)
	addiu	$4,$24,%lo($LC0)
	lw	$fp,72($sp)
	lw	$25,%call16(printf)($28)
	move	$6,$7
	move	$7,$fp
	mul.d	$f2,$f0,$f8
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f2,16($sp)

	lui	$6,%hi($LC10)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$6,%lo($LC10)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
$L397:
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$4,%hi(dummy_array+262144)
	lw	$28,24($sp)
	sw	$2,-4($16)
	addiu	$2,$4,%lo(dummy_array+262144)
	bne	$2,$16,$L397
	lw	$25,%call16(rand)($28)

	lw	$25,%call16(usleep)($28)
	li	$10,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$10,0xa120

	lui	$9,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$9,%lo(begin_time.3613)

	lw	$15,120($sp)
	beq	$15,$0,$L257
	lw	$28,24($sp)

	lw	$4,%got(xresult)($28)
	lw	$3,%got(xval1)($28)
	lw	$17,%got(xval2)($28)
	sw	$0,44($sp)
$L256:
	move	$16,$0
$L255:
	addiu	$9,$16,8
	addiu	$10,$16,4
	addu	$13,$3,$9
	addiu	$8,$16,12
	addiu	$7,$16,16
	lw	$11,0($13)
	addu	$21,$3,$16
	addu	$22,$17,$16
	addu	$18,$3,$10
	addu	$12,$17,$10
	lw	$31,0($21)
	addu	$20,$17,$9
	lw	$19,0($22)
	addu	$14,$3,$8
	lw	$25,0($18)
	addu	$24,$17,$8
	lw	$18,0($12)
	addu	$fp,$3,$7
	lw	$15,0($20)
	addiu	$6,$16,20
	lw	$23,0($14)
	addiu	$5,$16,24
	lw	$14,0($24)
	addiu	$2,$16,28
	lw	$22,0($fp)
	sw	$11,40($sp)
	addu	$13,$17,$7
	addu	$fp,$3,$2
	addu	$24,$17,$2
	addu	$21,$3,$6
	lw	$13,0($13)
	addu	$12,$17,$6
	addu	$20,$3,$5
	addu	$11,$17,$5
	lw	$21,0($21)
	lw	$12,0($12)
	subu	$31,$31,$19
	subu	$18,$25,$18
	lw	$19,0($fp)
	lw	$20,0($20)
	subu	$23,$23,$14
	lw	$fp,0($24)
	subu	$14,$22,$13
	lw	$11,0($11)
	subu	$22,$21,$12
	lw	$25,40($sp)
	addu	$12,$4,$16
	subu	$21,$19,$fp
	subu	$13,$20,$11
	sw	$31,0($12)
	subu	$15,$25,$15
	addu	$10,$4,$10
	addu	$9,$4,$9
	addu	$8,$4,$8
	sw	$18,0($10)
	addu	$7,$4,$7
	sw	$15,0($9)
	addu	$6,$4,$6
	sw	$23,0($8)
	addu	$5,$4,$5
	sw	$14,0($7)
	addu	$2,$4,$2
	sw	$22,0($6)
	addiu	$16,$16,32
	sw	$13,0($5)
	li	$24,7168			# 0x1c00
	bne	$16,$24,$L255
	sw	$21,0($2)

	lw	$16,44($sp)
	lw	$11,120($sp)
	addiu	$20,$16,1
	bne	$20,$11,$L256
	sw	$20,44($sp)

$L257:
	lw	$25,%call16(gettimeofday)($28)
	lui	$3,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$16,$3,%lo(dummy_array)

	lui	$4,%hi(begin_time.3613)
	lw	$fp,36($sp)
	li	$15,983040			# 0xf0000
	lw	$14,32($sp)
	li	$22,-1048576			# 0xfffffffffff00000
	lw	$17,%lo(begin_time.3613)($4)
	addiu	$23,$15,16960
	mtlo	$fp
	lw	$28,24($sp)
	ori	$13,$22,0xbdc0
	addiu	$19,$4,%lo(begin_time.3613)
	lw	$25,%call16(sync)($28)
	lw	$18,4($19)
	madd	$14,$23
	madd	$17,$13
	mflo	$21
	subu	$12,$21,$18
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$12,56($sp)

	move	$4,$0
	lw	$28,24($sp)
	lw	$10,56($sp)
	sra	$9,$10,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$9,60($sp)

	lw	$28,24($sp)
$L254:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$8,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$7,$8,%lo(dummy_array+262144)
	bne	$7,$16,$L254
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$6,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$6,0xa120

	lui	$5,%hi(begin_time.3613)
	lw	$28,24($sp)
	addiu	$4,$5,%lo(begin_time.3613)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lw	$2,120($sp)
	beq	$2,$0,$L262
	lw	$28,24($sp)

	lw	$4,%got(xresult)($28)
	lw	$3,%got(xval1)($28)
	lw	$17,%got(xval2)($28)
	sw	$0,44($sp)
$L261:
	move	$16,$0
$L260:
	addiu	$10,$16,4
	addiu	$9,$16,8
	addu	$18,$3,$10
	addiu	$8,$16,12
	addiu	$7,$16,16
	lw	$23,0($18)
	addu	$24,$3,$16
	addu	$20,$17,$16
	addu	$fp,$17,$10
	addu	$15,$3,$9
	lw	$31,0($24)
	addu	$11,$17,$9
	lw	$19,0($20)
	addu	$14,$3,$8
	lw	$18,0($fp)
	addu	$22,$17,$8
	lw	$24,0($15)
	addu	$13,$3,$7
	lw	$15,0($11)
	addu	$25,$17,$7
	sw	$23,40($sp)
	addiu	$6,$16,20
	lw	$23,0($14)
	addiu	$5,$16,24
	lw	$14,0($22)
	addiu	$2,$16,28
	lw	$22,0($13)
	addu	$21,$3,$6
	lw	$13,0($25)
	addu	$12,$17,$6
	addu	$20,$3,$5
	addu	$11,$17,$5
	lw	$21,0($21)
	addu	$fp,$3,$2
	lw	$12,0($12)
	addu	$25,$17,$2
	lw	$20,0($20)
	subu	$19,$31,$19
	lw	$11,0($11)
	lw	$fp,0($fp)
	subu	$24,$24,$15
	lw	$31,40($sp)
	subu	$15,$23,$14
	lw	$25,0($25)
	subu	$23,$22,$13
	subu	$14,$21,$12
	subu	$18,$31,$18
	subu	$22,$20,$11
	subu	$13,$fp,$25
	addu	$21,$4,$16
	addu	$10,$4,$10
	addu	$9,$4,$9
	sw	$19,0($21)
	addu	$8,$4,$8
	sw	$18,0($10)
	addu	$7,$4,$7
	sw	$24,0($9)
	addu	$6,$4,$6
	sw	$15,0($8)
	addu	$5,$4,$5
	sw	$23,0($7)
	addu	$2,$4,$2
	sw	$14,0($6)
	addiu	$16,$16,32
	sw	$22,0($5)
	li	$12,7168			# 0x1c00
	bne	$16,$12,$L260
	sw	$13,0($2)

	lw	$16,44($sp)
	lw	$11,120($sp)
	addiu	$20,$16,1
	bne	$20,$11,$L261
	sw	$20,44($sp)

$L262:
	lw	$25,%call16(gettimeofday)($28)
	lui	$3,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$17,$3,%lo(dummy_array)

	lui	$4,%hi(begin_time.3613)
	lw	$23,36($sp)
	li	$14,983040			# 0xf0000
	lw	$13,32($sp)
	li	$21,-1048576			# 0xfffffffffff00000
	addiu	$22,$14,16960
	lw	$fp,%lo(begin_time.3613)($4)
	mtlo	$23
	lw	$28,24($sp)
	ori	$10,$21,0xbdc0
	addiu	$24,$4,%lo(begin_time.3613)
	addiu	$19,$17,4
	lw	$25,%call16(sync)($28)
	lw	$15,4($24)
	madd	$13,$22
	madd	$fp,$10
	mflo	$9
	subu	$8,$9,$15
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$8,52($sp)

	move	$4,$0
	lw	$7,52($sp)
	lw	$28,24($sp)
	sra	$6,$7,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$6,64($sp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	lui	$5,%hi(dummy_array)
	lw	$28,24($sp)
	addiu	$12,$5,%lo(dummy_array)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,0($12)

	lw	$28,24($sp)
	sw	$2,0($19)
	lui	$2,%hi(dummy_array)
	addiu	$16,$2,%lo(dummy_array)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$20,$16,8

	addiu	$17,$20,24
	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,0($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,4($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,8($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,12($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,16($20)

	lui	$11,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$3,$11,%lo(dummy_array+262144)
	beq	$3,$17,$L392
	sw	$2,20($20)

$L259:
	lw	$25,%call16(rand)($28)
	addiu	$17,$17,32
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	lui	$19,%hi(dummy_array+262144)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($17)

	addiu	$4,$19,%lo(dummy_array+262144)
	lw	$28,24($sp)
	bne	$4,$17,$L259
	sw	$2,-4($17)

$L392:
	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	lui	$fp,%hi(begin_time.3613)

	addiu	$4,$fp,%lo(begin_time.3613)
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lw	$18,120($sp)
	beq	$18,$0,$L266
	lw	$28,24($sp)

	lw	$4,%got(xresult)($28)
	lw	$3,%got(xval1)($28)
	lw	$17,%got(xval2)($28)
	sw	$0,44($sp)
$L265:
	move	$16,$0
$L264:
	addiu	$10,$16,4
	addiu	$9,$16,8
	addu	$23,$3,$10
	addiu	$8,$16,12
	addiu	$7,$16,16
	addiu	$6,$16,20
	lw	$14,0($23)
	addu	$24,$3,$16
	addu	$15,$17,$16
	addu	$22,$17,$10
	addu	$13,$3,$9
	lw	$31,0($24)
	addu	$21,$17,$9
	lw	$19,0($15)
	addu	$20,$3,$8
	lw	$18,0($22)
	addu	$12,$17,$8
	lw	$24,0($13)
	addu	$fp,$3,$7
	lw	$15,0($21)
	addu	$11,$17,$7
	lw	$23,0($20)
	addu	$25,$3,$6
	sw	$14,40($sp)
	addiu	$5,$16,24
	lw	$14,0($12)
	addiu	$2,$16,28
	lw	$22,0($fp)
	lw	$13,0($11)
	addu	$12,$17,$6
	lw	$21,0($25)
	addu	$20,$3,$5
	addu	$11,$17,$5
	addu	$fp,$3,$2
	lw	$12,0($12)
	addu	$25,$17,$2
	lw	$20,0($20)
	subu	$19,$31,$19
	lw	$11,0($11)
	lw	$fp,0($fp)
	subu	$24,$24,$15
	lw	$31,40($sp)
	subu	$15,$23,$14
	lw	$25,0($25)
	subu	$23,$22,$13
	subu	$14,$21,$12
	subu	$18,$31,$18
	subu	$22,$20,$11
	subu	$13,$fp,$25
	addu	$21,$4,$16
	addu	$10,$4,$10
	addu	$9,$4,$9
	sw	$19,0($21)
	addu	$8,$4,$8
	sw	$18,0($10)
	addu	$7,$4,$7
	sw	$24,0($9)
	addu	$6,$4,$6
	sw	$15,0($8)
	addu	$5,$4,$5
	sw	$23,0($7)
	addu	$2,$4,$2
	sw	$14,0($6)
	addiu	$16,$16,32
	sw	$22,0($5)
	li	$12,7168			# 0x1c00
	bne	$16,$12,$L264
	sw	$13,0($2)

	lw	$16,44($sp)
	lw	$11,120($sp)
	addiu	$20,$16,1
	bne	$20,$11,$L265
	sw	$20,44($sp)

$L266:
	lw	$25,%call16(gettimeofday)($28)
	addiu	$4,$sp,32
	move	$5,$0
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	li	$23,983040			# 0xf0000

	lui	$4,%hi(begin_time.3613)
	lw	$15,36($sp)
	addiu	$14,$23,16960
	lw	$22,32($sp)
	li	$13,-1048576			# 0xfffffffffff00000
	lw	$17,%lo(begin_time.3613)($4)
	addiu	$19,$4,%lo(begin_time.3613)
	mtlo	$15
	lw	$31,52($sp)
	ori	$21,$13,0xbdc0
	lw	$18,56($sp)
	lw	$8,60($sp)
	li	$6,3			# 0x3
	lw	$fp,4($19)
	move	$7,$0
	lw	$5,64($sp)
	addu	$24,$31,$18
	lw	$12,52($sp)
	lw	$28,24($sp)
	madd	$22,$14
	madd	$17,$21
	addu	$2,$5,$8
	sltu	$16,$24,$12
	lw	$25,%call16(__udivdi3)($28)
	addu	$11,$16,$2
	mflo	$10
	subu	$9,$10,$fp
	sra	$20,$9,31
	addu	$4,$24,$9
	addu	$17,$11,$20
	sltu	$3,$4,$24
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$3,$17

	lw	$28,24($sp)
	move	$5,$3
	sw	$3,72($sp)
	move	$4,$2
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	sw	$2,68($sp)

	lui	$6,%hi($LC1)
	lw	$28,24($sp)
	lui	$7,%hi($LC0)
	ldc1	$f18,%lo($LC1)($6)
	lw	$19,68($sp)
	addiu	$4,$7,%lo($LC0)
	lw	$fp,72($sp)
	lw	$25,%call16(printf)($28)
	move	$6,$19
	move	$7,$fp
	mul.d	$f10,$f0,$f18
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f10,16($sp)

	lui	$4,%hi($LC11)
	lw	$28,24($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC11)

	lw	$31,116($sp)
	lw	$fp,112($sp)
	lw	$23,108($sp)
	lw	$22,104($sp)
	lw	$21,100($sp)
	lw	$20,96($sp)
	lw	$19,92($sp)
	lw	$18,88($sp)
	lw	$17,84($sp)
	lw	$16,80($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	bench_subtraction
	.size	bench_subtraction, .-bench_subtraction
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
	beq	$4,$0,$L415
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$13,7168			# 0x1c00
	lw	$6,%got(fresult)($28)
	lw	$5,%got(fval2)($28)
	lw	$3,%got(fval1)($28)
	move	$2,$0
$L400:
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
	bne	$2,$13,$L400
	swxc1	$f0,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L400
	move	$2,$0

$L415:
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
	beq	$4,$0,$L416
	sw	$4,64($sp)

	lw	$3,%got(xresult)($28)
	lw	$18,%got(xval1)($28)
	lw	$16,%got(xval2)($28)
	sw	$0,16($sp)
$L419:
	move	$14,$0
$L418:
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
	bne	$14,$10,$L418
	sw	$23,0($2)

	lw	$14,16($sp)
	lw	$17,64($sp)
	addiu	$fp,$14,1
	bne	$fp,$17,$L419
	sw	$fp,16($sp)

$L416:
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
	.frame	$sp,120,$31		# vars= 48, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,116($sp)
	sw	$17,84($sp)
	sw	$16,80($sp)
	lui	$16,%hi(dummy_array)
	.cprestore	24
	sw	$4,120($sp)
	addiu	$17,$16,%lo(dummy_array)
	sw	$fp,112($sp)
	sw	$23,108($sp)
	sw	$22,104($sp)
	sw	$21,100($sp)
	sw	$20,96($sp)
	sw	$19,92($sp)
	.option	pic0
	jal	fill_arrays
	.option	pic2
	sw	$18,88($sp)

	lui	$4,%hi($LC12)
	lw	$28,24($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC12)

	lui	$2,%hi($LC13)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC13)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
$L432:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$17,$17,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($17)

	lui	$3,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$5,$3,%lo(dummy_array+262144)
	bne	$17,$5,$L432
	sw	$2,-4($17)

	lw	$25,%call16(usleep)($28)
	li	$6,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$6,0xa120

	lui	$7,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$7,%lo(begin_time.3613)

	lw	$8,120($sp)
	beq	$8,$0,$L437
	lw	$28,24($sp)

	lw	$18,%got(fresult)($28)
	move	$13,$0
	lw	$19,%got(fval2)($28)
	li	$12,7168			# 0x1c00
	lw	$20,%got(fval1)($28)
	move	$15,$8
	move	$21,$0
$L435:
	lwxc1	$f10,$19($21)
	addiu	$14,$21,4
	addiu	$11,$21,8
	lwxc1	$f1,$20($21)
	addiu	$10,$21,12
	addiu	$9,$21,16
	addiu	$22,$21,20
	lwxc1	$f9,$19($14)
	addiu	$23,$21,24
	addiu	$24,$21,28
	lwxc1	$f0,$20($14)
	lwxc1	$f8,$19($11)
	add.s	$f11,$f10,$f1
	lwxc1	$f2,$20($11)
	lwxc1	$f7,$19($10)
	lwxc1	$f3,$20($10)
	add.s	$f12,$f9,$f0
	lwxc1	$f6,$19($9)
	lwxc1	$f13,$20($9)
	add.s	$f14,$f8,$f2
	lwxc1	$f5,$19($22)
	lwxc1	$f4,$20($22)
	add.s	$f15,$f7,$f3
	lwxc1	$f16,$19($23)
	lwxc1	$f17,$20($23)
	add.s	$f18,$f6,$f13
	lwxc1	$f19,$19($24)
	lwxc1	$f10,$20($24)
	add.s	$f1,$f5,$f4
	swxc1	$f11,$18($21)
	addiu	$21,$21,32
	add.s	$f9,$f16,$f17
	swxc1	$f12,$18($14)
	swxc1	$f14,$18($11)
	add.s	$f0,$f19,$f10
	swxc1	$f15,$18($10)
	swxc1	$f18,$18($9)
	swxc1	$f1,$18($22)
	swxc1	$f9,$18($23)
	bne	$21,$12,$L435
	swxc1	$f0,$18($24)

	addiu	$13,$13,1
	bne	$13,$15,$L435
	move	$21,$0

$L437:
	addiu	$fp,$sp,32
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	sw	$0,32($sp)
	move	$4,$fp
	sw	$0,36($sp)
	sw	$fp,48($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	li	$17,983040			# 0xf0000

	lui	$4,%hi(begin_time.3613)
	lw	$16,36($sp)
	addiu	$5,$17,16960
	lw	$3,32($sp)
	li	$6,-1048576			# 0xfffffffffff00000
	lw	$2,%lo(begin_time.3613)($4)
	lui	$15,%hi(begin_time.3613)
	mtlo	$16
	lw	$28,24($sp)
	ori	$7,$6,0xbdc0
	addiu	$18,$15,%lo(begin_time.3613)
	lui	$19,%hi(dummy_array)
	lw	$25,%call16(sync)($28)
	lw	$13,4($18)
	addiu	$20,$19,%lo(dummy_array)
	madd	$3,$5
	madd	$2,$7
	mflo	$8
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$18,$8,$13

	lw	$28,24($sp)
	move	$4,$0
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sra	$19,$18,31

	lw	$28,24($sp)
$L434:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$20,$20,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($20)

	lui	$12,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$21,$12,%lo(dummy_array+262144)
	bne	$21,$20,$L434
	sw	$2,-4($20)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	lui	$14,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$14,%lo(begin_time.3613)

	lw	$11,120($sp)
	beq	$11,$0,$L442
	lw	$28,24($sp)

	lw	$23,%got(fresult)($28)
	move	$24,$0
	lw	$fp,%got(fval2)($28)
	li	$4,7168			# 0x1c00
	lw	$16,%got(fval1)($28)
	move	$22,$11
	move	$2,$0
$L440:
	addiu	$17,$2,4
	lwxc1	$f11,$fp($2)
	addiu	$5,$2,8
	addiu	$10,$2,12
	lwxc1	$f7,$16($2)
	addiu	$9,$2,16
	addiu	$3,$2,20
	lwxc1	$f3,$fp($17)
	addiu	$7,$2,24
	addiu	$6,$2,28
	lwxc1	$f12,$16($17)
	lwxc1	$f8,$fp($5)
	lwxc1	$f2,$16($5)
	add.s	$f13,$f11,$f7
	lwxc1	$f14,$fp($10)
	lwxc1	$f15,$16($10)
	add.s	$f16,$f3,$f12
	lwxc1	$f6,$fp($9)
	lwxc1	$f17,$16($9)
	add.s	$f18,$f8,$f2
	lwxc1	$f5,$fp($3)
	lwxc1	$f4,$16($3)
	add.s	$f19,$f14,$f15
	lwxc1	$f10,$fp($7)
	lwxc1	$f9,$16($7)
	add.s	$f11,$f6,$f17
	lwxc1	$f1,$fp($6)
	lwxc1	$f0,$16($6)
	add.s	$f7,$f5,$f4
	swxc1	$f13,$23($2)
	addiu	$2,$2,32
	add.s	$f3,$f10,$f9
	swxc1	$f16,$23($17)
	swxc1	$f18,$23($5)
	add.s	$f12,$f1,$f0
	swxc1	$f19,$23($10)
	swxc1	$f11,$23($9)
	swxc1	$f7,$23($3)
	swxc1	$f3,$23($7)
	bne	$2,$4,$L440
	swxc1	$f12,$23($6)

	addiu	$24,$24,1
	bne	$24,$22,$L440
	move	$2,$0

$L442:
	lw	$25,%call16(gettimeofday)($28)
	lui	$8,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$16,$8,%lo(dummy_array)

	lui	$15,%hi(begin_time.3613)
	lw	$31,36($sp)
	li	$14,983040			# 0xf0000
	lw	$22,32($sp)
	li	$23,-1048576			# 0xfffffffffff00000
	lw	$13,%lo(begin_time.3613)($15)
	addiu	$11,$14,16960
	mtlo	$31
	lw	$28,24($sp)
	ori	$24,$23,0xbdc0
	addiu	$12,$15,%lo(begin_time.3613)
	lw	$25,%call16(sync)($28)
	lw	$21,4($12)
	madd	$22,$11
	madd	$13,$24
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	mflo	$fp

	lw	$28,24($sp)
	move	$4,$0
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	subu	$17,$fp,$21

	lw	$28,24($sp)
	sra	$20,$17,31
	lw	$25,%call16(rand)($28)
$L591:
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$4,%hi(dummy_array+262144)
	lw	$28,24($sp)
	sw	$2,-4($16)
	addiu	$2,$4,%lo(dummy_array+262144)
	bne	$2,$16,$L591
	lw	$25,%call16(rand)($28)

	lw	$25,%call16(usleep)($28)
	li	$5,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$5,0xa120

	lui	$10,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$10,%lo(begin_time.3613)

	lw	$9,120($sp)
	beq	$9,$0,$L447
	lw	$28,24($sp)

	lw	$21,%got(fresult)($28)
	move	$13,$0
	lw	$31,%got(fval2)($28)
	li	$12,7168			# 0x1c00
	lw	$3,%got(fval1)($28)
	move	$15,$9
	move	$22,$0
$L445:
	addiu	$14,$22,4
	lwxc1	$f13,$31($22)
	addiu	$11,$22,8
	addiu	$23,$22,12
	lwxc1	$f14,$3($22)
	addiu	$24,$22,16
	addiu	$8,$22,20
	lwxc1	$f15,$31($14)
	addiu	$7,$22,24
	addiu	$6,$22,28
	lwxc1	$f16,$3($14)
	lwxc1	$f8,$31($11)
	lwxc1	$f2,$3($11)
	add.s	$f17,$f13,$f14
	lwxc1	$f18,$31($23)
	lwxc1	$f19,$3($23)
	add.s	$f10,$f15,$f16
	lwxc1	$f6,$31($24)
	lwxc1	$f9,$3($24)
	add.s	$f11,$f8,$f2
	lwxc1	$f5,$31($8)
	lwxc1	$f4,$3($8)
	add.s	$f7,$f18,$f19
	lwxc1	$f3,$31($7)
	lwxc1	$f12,$3($7)
	add.s	$f13,$f6,$f9
	lwxc1	$f1,$31($6)
	lwxc1	$f0,$3($6)
	add.s	$f14,$f5,$f4
	swxc1	$f17,$21($22)
	addiu	$22,$22,32
	add.s	$f15,$f3,$f12
	swxc1	$f10,$21($14)
	swxc1	$f11,$21($11)
	add.s	$f16,$f1,$f0
	swxc1	$f7,$21($23)
	swxc1	$f13,$21($24)
	swxc1	$f14,$21($8)
	swxc1	$f15,$21($7)
	bne	$22,$12,$L445
	swxc1	$f16,$21($6)

	addiu	$13,$13,1
	bne	$13,$15,$L445
	move	$22,$0

$L447:
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	addiu	$4,$sp,32
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	lui	$fp,%hi(begin_time.3613)

	li	$5,983040			# 0xf0000
	lw	$15,36($sp)
	li	$31,-1048576			# 0xfffffffffff00000
	lw	$13,32($sp)
	addiu	$21,$5,16960
	lw	$16,%lo(begin_time.3613)($fp)
	ori	$12,$31,0xbdc0
	mtlo	$15
	lw	$28,24($sp)
	addiu	$2,$fp,%lo(begin_time.3613)
	addu	$9,$17,$18
	addu	$18,$20,$19
	lw	$10,4($2)
	sltu	$17,$9,$17
	addu	$20,$17,$18
	lw	$25,%call16(__udivdi3)($28)
	li	$6,3			# 0x3
	madd	$13,$21
	madd	$16,$12
	move	$7,$0
	lui	$23,%hi(dummy_array)
	mflo	$3
	addiu	$16,$23,%lo(dummy_array)
	subu	$22,$3,$10
	sra	$19,$22,31
	addu	$4,$9,$22
	addu	$14,$20,$19
	sltu	$11,$4,$9
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$11,$14

	lw	$28,24($sp)
	move	$5,$3
	sw	$3,72($sp)
	move	$4,$2
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	sw	$2,68($sp)

	lui	$8,%hi($LC1)
	lw	$28,24($sp)
	lui	$24,%hi($LC0)
	ldc1	$f8,%lo($LC1)($8)
	lw	$7,68($sp)
	addiu	$4,$24,%lo($LC0)
	lw	$fp,72($sp)
	lw	$25,%call16(printf)($28)
	move	$6,$7
	move	$7,$fp
	mul.d	$f2,$f0,$f8
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f2,16($sp)

	lui	$6,%hi($LC14)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$6,%lo($LC14)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
$L592:
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$4,%hi(dummy_array+262144)
	lw	$28,24($sp)
	sw	$2,-4($16)
	addiu	$2,$4,%lo(dummy_array+262144)
	bne	$2,$16,$L592
	lw	$25,%call16(rand)($28)

	lw	$25,%call16(usleep)($28)
	li	$10,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$10,0xa120

	lui	$9,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$9,%lo(begin_time.3613)

	lw	$15,120($sp)
	beq	$15,$0,$L452
	lw	$28,24($sp)

	lw	$4,%got(xresult)($28)
	lw	$3,%got(xval1)($28)
	lw	$17,%got(xval2)($28)
	sw	$0,44($sp)
$L451:
	move	$16,$0
$L450:
	addiu	$9,$16,8
	addiu	$10,$16,4
	addu	$13,$3,$9
	addiu	$8,$16,12
	addiu	$7,$16,16
	lw	$11,0($13)
	addu	$21,$3,$16
	addu	$22,$17,$16
	addu	$18,$3,$10
	addu	$12,$17,$10
	lw	$31,0($21)
	addu	$20,$17,$9
	lw	$19,0($22)
	addu	$14,$3,$8
	lw	$25,0($18)
	addu	$24,$17,$8
	lw	$18,0($12)
	addu	$fp,$3,$7
	lw	$15,0($20)
	addiu	$6,$16,20
	lw	$23,0($14)
	addiu	$5,$16,24
	lw	$14,0($24)
	addiu	$2,$16,28
	lw	$22,0($fp)
	sw	$11,40($sp)
	addu	$13,$17,$7
	addu	$fp,$3,$2
	addu	$24,$17,$2
	addu	$21,$3,$6
	lw	$13,0($13)
	addu	$12,$17,$6
	addu	$20,$3,$5
	addu	$11,$17,$5
	lw	$21,0($21)
	lw	$12,0($12)
	addu	$31,$31,$19
	addu	$18,$25,$18
	lw	$19,0($fp)
	lw	$20,0($20)
	addu	$23,$23,$14
	lw	$fp,0($24)
	addu	$14,$22,$13
	lw	$11,0($11)
	addu	$22,$21,$12
	lw	$25,40($sp)
	addu	$12,$4,$16
	addu	$21,$19,$fp
	addu	$13,$20,$11
	sw	$31,0($12)
	addu	$15,$25,$15
	addu	$10,$4,$10
	addu	$9,$4,$9
	addu	$8,$4,$8
	sw	$18,0($10)
	addu	$7,$4,$7
	sw	$15,0($9)
	addu	$6,$4,$6
	sw	$23,0($8)
	addu	$5,$4,$5
	sw	$14,0($7)
	addu	$2,$4,$2
	sw	$22,0($6)
	addiu	$16,$16,32
	sw	$13,0($5)
	li	$24,7168			# 0x1c00
	bne	$16,$24,$L450
	sw	$21,0($2)

	lw	$16,44($sp)
	lw	$11,120($sp)
	addiu	$20,$16,1
	bne	$20,$11,$L451
	sw	$20,44($sp)

$L452:
	lw	$25,%call16(gettimeofday)($28)
	lui	$3,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$16,$3,%lo(dummy_array)

	lui	$4,%hi(begin_time.3613)
	lw	$fp,36($sp)
	li	$15,983040			# 0xf0000
	lw	$14,32($sp)
	li	$22,-1048576			# 0xfffffffffff00000
	lw	$17,%lo(begin_time.3613)($4)
	addiu	$23,$15,16960
	mtlo	$fp
	lw	$28,24($sp)
	ori	$13,$22,0xbdc0
	addiu	$19,$4,%lo(begin_time.3613)
	lw	$25,%call16(sync)($28)
	lw	$18,4($19)
	madd	$14,$23
	madd	$17,$13
	mflo	$21
	subu	$12,$21,$18
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$12,56($sp)

	move	$4,$0
	lw	$28,24($sp)
	lw	$10,56($sp)
	sra	$9,$10,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$9,60($sp)

	lw	$28,24($sp)
$L449:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$8,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$7,$8,%lo(dummy_array+262144)
	bne	$7,$16,$L449
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$6,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$6,0xa120

	lui	$5,%hi(begin_time.3613)
	lw	$28,24($sp)
	addiu	$4,$5,%lo(begin_time.3613)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lw	$2,120($sp)
	beq	$2,$0,$L457
	lw	$28,24($sp)

	lw	$4,%got(xresult)($28)
	lw	$3,%got(xval1)($28)
	lw	$17,%got(xval2)($28)
	sw	$0,44($sp)
$L456:
	move	$16,$0
$L455:
	addiu	$10,$16,4
	addiu	$9,$16,8
	addu	$18,$3,$10
	addiu	$8,$16,12
	addiu	$7,$16,16
	lw	$23,0($18)
	addu	$24,$3,$16
	addu	$20,$17,$16
	addu	$fp,$17,$10
	addu	$15,$3,$9
	lw	$31,0($24)
	addu	$11,$17,$9
	lw	$19,0($20)
	addu	$14,$3,$8
	lw	$18,0($fp)
	addu	$22,$17,$8
	lw	$24,0($15)
	addu	$13,$3,$7
	lw	$15,0($11)
	addu	$25,$17,$7
	sw	$23,40($sp)
	addiu	$6,$16,20
	lw	$23,0($14)
	addiu	$5,$16,24
	lw	$14,0($22)
	addiu	$2,$16,28
	lw	$22,0($13)
	addu	$21,$3,$6
	lw	$13,0($25)
	addu	$12,$17,$6
	addu	$20,$3,$5
	addu	$11,$17,$5
	lw	$21,0($21)
	addu	$fp,$3,$2
	lw	$12,0($12)
	addu	$25,$17,$2
	lw	$20,0($20)
	addu	$19,$31,$19
	lw	$11,0($11)
	lw	$fp,0($fp)
	addu	$24,$24,$15
	lw	$31,40($sp)
	addu	$15,$23,$14
	lw	$25,0($25)
	addu	$23,$22,$13
	addu	$14,$21,$12
	addu	$18,$31,$18
	addu	$22,$20,$11
	addu	$13,$fp,$25
	addu	$21,$4,$16
	addu	$10,$4,$10
	addu	$9,$4,$9
	sw	$19,0($21)
	addu	$8,$4,$8
	sw	$18,0($10)
	addu	$7,$4,$7
	sw	$24,0($9)
	addu	$6,$4,$6
	sw	$15,0($8)
	addu	$5,$4,$5
	sw	$23,0($7)
	addu	$2,$4,$2
	sw	$14,0($6)
	addiu	$16,$16,32
	sw	$22,0($5)
	li	$12,7168			# 0x1c00
	bne	$16,$12,$L455
	sw	$13,0($2)

	lw	$16,44($sp)
	lw	$11,120($sp)
	addiu	$20,$16,1
	bne	$20,$11,$L456
	sw	$20,44($sp)

$L457:
	lw	$25,%call16(gettimeofday)($28)
	lui	$3,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$17,$3,%lo(dummy_array)

	lui	$4,%hi(begin_time.3613)
	lw	$23,36($sp)
	li	$14,983040			# 0xf0000
	lw	$13,32($sp)
	li	$21,-1048576			# 0xfffffffffff00000
	addiu	$22,$14,16960
	lw	$fp,%lo(begin_time.3613)($4)
	mtlo	$23
	lw	$28,24($sp)
	ori	$10,$21,0xbdc0
	addiu	$24,$4,%lo(begin_time.3613)
	addiu	$19,$17,4
	lw	$25,%call16(sync)($28)
	lw	$15,4($24)
	madd	$13,$22
	madd	$fp,$10
	mflo	$9
	subu	$8,$9,$15
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$8,52($sp)

	move	$4,$0
	lw	$7,52($sp)
	lw	$28,24($sp)
	sra	$6,$7,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$6,64($sp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	lui	$5,%hi(dummy_array)
	lw	$28,24($sp)
	addiu	$12,$5,%lo(dummy_array)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,0($12)

	lw	$28,24($sp)
	sw	$2,0($19)
	lui	$2,%hi(dummy_array)
	addiu	$16,$2,%lo(dummy_array)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$20,$16,8

	addiu	$17,$20,24
	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,0($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,4($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,8($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,12($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,16($20)

	lui	$11,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$3,$11,%lo(dummy_array+262144)
	beq	$3,$17,$L587
	sw	$2,20($20)

$L454:
	lw	$25,%call16(rand)($28)
	addiu	$17,$17,32
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	lui	$19,%hi(dummy_array+262144)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($17)

	addiu	$4,$19,%lo(dummy_array+262144)
	lw	$28,24($sp)
	bne	$4,$17,$L454
	sw	$2,-4($17)

$L587:
	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	lui	$fp,%hi(begin_time.3613)

	addiu	$4,$fp,%lo(begin_time.3613)
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lw	$18,120($sp)
	beq	$18,$0,$L461
	lw	$28,24($sp)

	lw	$4,%got(xresult)($28)
	lw	$3,%got(xval1)($28)
	lw	$17,%got(xval2)($28)
	sw	$0,44($sp)
$L460:
	move	$16,$0
$L459:
	addiu	$10,$16,4
	addiu	$9,$16,8
	addu	$23,$3,$10
	addiu	$8,$16,12
	addiu	$7,$16,16
	addiu	$6,$16,20
	lw	$14,0($23)
	addu	$24,$3,$16
	addu	$15,$17,$16
	addu	$22,$17,$10
	addu	$13,$3,$9
	lw	$31,0($24)
	addu	$21,$17,$9
	lw	$19,0($15)
	addu	$20,$3,$8
	lw	$18,0($22)
	addu	$12,$17,$8
	lw	$24,0($13)
	addu	$fp,$3,$7
	lw	$15,0($21)
	addu	$11,$17,$7
	lw	$23,0($20)
	addu	$25,$3,$6
	sw	$14,40($sp)
	addiu	$5,$16,24
	lw	$14,0($12)
	addiu	$2,$16,28
	lw	$22,0($fp)
	lw	$13,0($11)
	addu	$12,$17,$6
	lw	$21,0($25)
	addu	$20,$3,$5
	addu	$11,$17,$5
	addu	$fp,$3,$2
	lw	$12,0($12)
	addu	$25,$17,$2
	lw	$20,0($20)
	addu	$19,$31,$19
	lw	$11,0($11)
	lw	$fp,0($fp)
	addu	$24,$24,$15
	lw	$31,40($sp)
	addu	$15,$23,$14
	lw	$25,0($25)
	addu	$23,$22,$13
	addu	$14,$21,$12
	addu	$18,$31,$18
	addu	$22,$20,$11
	addu	$13,$fp,$25
	addu	$21,$4,$16
	addu	$10,$4,$10
	addu	$9,$4,$9
	sw	$19,0($21)
	addu	$8,$4,$8
	sw	$18,0($10)
	addu	$7,$4,$7
	sw	$24,0($9)
	addu	$6,$4,$6
	sw	$15,0($8)
	addu	$5,$4,$5
	sw	$23,0($7)
	addu	$2,$4,$2
	sw	$14,0($6)
	addiu	$16,$16,32
	sw	$22,0($5)
	li	$12,7168			# 0x1c00
	bne	$16,$12,$L459
	sw	$13,0($2)

	lw	$16,44($sp)
	lw	$11,120($sp)
	addiu	$20,$16,1
	bne	$20,$11,$L460
	sw	$20,44($sp)

$L461:
	lw	$25,%call16(gettimeofday)($28)
	addiu	$4,$sp,32
	move	$5,$0
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	li	$23,983040			# 0xf0000

	lui	$4,%hi(begin_time.3613)
	lw	$15,36($sp)
	addiu	$14,$23,16960
	lw	$22,32($sp)
	li	$13,-1048576			# 0xfffffffffff00000
	lw	$17,%lo(begin_time.3613)($4)
	addiu	$19,$4,%lo(begin_time.3613)
	mtlo	$15
	lw	$31,52($sp)
	ori	$21,$13,0xbdc0
	lw	$18,56($sp)
	lw	$8,60($sp)
	li	$6,3			# 0x3
	lw	$fp,4($19)
	move	$7,$0
	lw	$5,64($sp)
	addu	$24,$31,$18
	lw	$12,52($sp)
	lw	$28,24($sp)
	madd	$22,$14
	madd	$17,$21
	addu	$2,$5,$8
	sltu	$16,$24,$12
	lw	$25,%call16(__udivdi3)($28)
	addu	$11,$16,$2
	mflo	$10
	subu	$9,$10,$fp
	sra	$20,$9,31
	addu	$4,$24,$9
	addu	$17,$11,$20
	sltu	$3,$4,$24
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$3,$17

	lw	$28,24($sp)
	move	$5,$3
	sw	$3,72($sp)
	move	$4,$2
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	sw	$2,68($sp)

	lui	$6,%hi($LC1)
	lw	$28,24($sp)
	lui	$7,%hi($LC0)
	ldc1	$f18,%lo($LC1)($6)
	lw	$19,68($sp)
	addiu	$4,$7,%lo($LC0)
	lw	$fp,72($sp)
	lw	$25,%call16(printf)($28)
	move	$6,$19
	move	$7,$fp
	mul.d	$f10,$f0,$f18
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f10,16($sp)

	lui	$4,%hi($LC11)
	lw	$28,24($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC11)

	lw	$31,116($sp)
	lw	$fp,112($sp)
	lw	$23,108($sp)
	lw	$22,104($sp)
	lw	$21,100($sp)
	lw	$20,96($sp)
	lw	$19,92($sp)
	lw	$18,88($sp)
	lw	$17,84($sp)
	lw	$16,80($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	bench_addition
	.size	bench_addition, .-bench_addition
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
	beq	$4,$0,$L610
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$13,7168			# 0x1c00
	lw	$6,%got(fresult)($28)
	lw	$5,%got(fval2)($28)
	lw	$3,%got(fval1)($28)
	move	$2,$0
$L595:
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
	bne	$2,$13,$L595
	swxc1	$f0,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L595
	move	$2,$0

$L610:
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
	beq	$4,$0,$L611
	sw	$4,56($sp)

	lw	$17,%got(xval1)($28)
	lw	$16,%got(xval2)($28)
	lw	$5,%got(xresult)($28)
	sw	$0,8($sp)
$L614:
	move	$4,$0
$L613:
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
	bne	$4,$12,$L613
	sw	$13,0($20)

	lw	$4,8($sp)
	lw	$10,56($sp)
	addiu	$11,$4,1
	bne	$11,$10,$L614
	sw	$11,8($sp)

$L611:
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
	beq	$4,$0,$L625
	sw	$4,64($sp)

	lw	$3,%got(xresult)($28)
	lw	$18,%got(xval1)($28)
	lw	$16,%got(xval2)($28)
	sw	$0,16($sp)
$L628:
	move	$14,$0
$L627:
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
	bne	$14,$10,$L627
	sw	$23,0($2)

	lw	$14,16($sp)
	lw	$17,64($sp)
	addiu	$fp,$14,1
	bne	$fp,$17,$L628
	sw	$fp,16($sp)

$L625:
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
	.frame	$sp,120,$31		# vars= 48, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,116($sp)
	sw	$17,84($sp)
	sw	$16,80($sp)
	lui	$16,%hi(dummy_array)
	.cprestore	24
	sw	$4,120($sp)
	addiu	$17,$16,%lo(dummy_array)
	sw	$fp,112($sp)
	sw	$23,108($sp)
	sw	$22,104($sp)
	sw	$21,100($sp)
	sw	$20,96($sp)
	sw	$19,92($sp)
	.option	pic0
	jal	fill_arrays
	.option	pic2
	sw	$18,88($sp)

	lui	$4,%hi($LC15)
	lw	$28,24($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC15)

	lui	$2,%hi($LC16)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC16)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
$L641:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$17,$17,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($17)

	lui	$3,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$5,$3,%lo(dummy_array+262144)
	bne	$17,$5,$L641
	sw	$2,-4($17)

	lw	$25,%call16(usleep)($28)
	li	$6,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$6,0xa120

	lui	$7,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$7,%lo(begin_time.3613)

	lw	$8,120($sp)
	beq	$8,$0,$L646
	lw	$28,24($sp)

	lw	$18,%got(fresult)($28)
	move	$13,$0
	lw	$19,%got(fval2)($28)
	li	$12,7168			# 0x1c00
	lw	$20,%got(fval1)($28)
	move	$15,$8
	move	$21,$0
$L644:
	lwxc1	$f10,$19($21)
	addiu	$14,$21,4
	addiu	$11,$21,8
	lwxc1	$f1,$20($21)
	addiu	$10,$21,12
	addiu	$9,$21,16
	addiu	$22,$21,20
	lwxc1	$f9,$19($14)
	addiu	$23,$21,24
	addiu	$24,$21,28
	lwxc1	$f0,$20($14)
	lwxc1	$f8,$19($11)
	mul.s	$f11,$f10,$f1
	lwxc1	$f2,$20($11)
	lwxc1	$f7,$19($10)
	lwxc1	$f3,$20($10)
	mul.s	$f12,$f9,$f0
	lwxc1	$f6,$19($9)
	lwxc1	$f13,$20($9)
	mul.s	$f14,$f8,$f2
	lwxc1	$f5,$19($22)
	lwxc1	$f4,$20($22)
	mul.s	$f15,$f7,$f3
	lwxc1	$f16,$19($23)
	lwxc1	$f17,$20($23)
	mul.s	$f18,$f6,$f13
	lwxc1	$f19,$19($24)
	lwxc1	$f10,$20($24)
	mul.s	$f1,$f5,$f4
	swxc1	$f11,$18($21)
	addiu	$21,$21,32
	mul.s	$f9,$f16,$f17
	swxc1	$f12,$18($14)
	swxc1	$f14,$18($11)
	mul.s	$f0,$f19,$f10
	swxc1	$f15,$18($10)
	swxc1	$f18,$18($9)
	swxc1	$f1,$18($22)
	swxc1	$f9,$18($23)
	bne	$21,$12,$L644
	swxc1	$f0,$18($24)

	addiu	$13,$13,1
	bne	$13,$15,$L644
	move	$21,$0

$L646:
	addiu	$fp,$sp,32
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	sw	$0,32($sp)
	move	$4,$fp
	sw	$0,36($sp)
	sw	$fp,48($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	li	$17,983040			# 0xf0000

	lui	$4,%hi(begin_time.3613)
	lw	$16,36($sp)
	addiu	$5,$17,16960
	lw	$3,32($sp)
	li	$6,-1048576			# 0xfffffffffff00000
	lw	$2,%lo(begin_time.3613)($4)
	lui	$15,%hi(begin_time.3613)
	mtlo	$16
	lw	$28,24($sp)
	ori	$7,$6,0xbdc0
	addiu	$18,$15,%lo(begin_time.3613)
	lui	$19,%hi(dummy_array)
	lw	$25,%call16(sync)($28)
	lw	$13,4($18)
	addiu	$20,$19,%lo(dummy_array)
	madd	$3,$5
	madd	$2,$7
	mflo	$8
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$18,$8,$13

	lw	$28,24($sp)
	move	$4,$0
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sra	$19,$18,31

	lw	$28,24($sp)
$L643:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$20,$20,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($20)

	lui	$12,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$21,$12,%lo(dummy_array+262144)
	bne	$21,$20,$L643
	sw	$2,-4($20)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	lui	$14,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$14,%lo(begin_time.3613)

	lw	$11,120($sp)
	beq	$11,$0,$L651
	lw	$28,24($sp)

	lw	$23,%got(fresult)($28)
	move	$24,$0
	lw	$fp,%got(fval2)($28)
	li	$4,7168			# 0x1c00
	lw	$16,%got(fval1)($28)
	move	$22,$11
	move	$2,$0
$L649:
	addiu	$17,$2,4
	lwxc1	$f11,$fp($2)
	addiu	$5,$2,8
	addiu	$10,$2,12
	lwxc1	$f7,$16($2)
	addiu	$9,$2,16
	addiu	$3,$2,20
	lwxc1	$f3,$fp($17)
	addiu	$7,$2,24
	addiu	$6,$2,28
	lwxc1	$f12,$16($17)
	lwxc1	$f8,$fp($5)
	lwxc1	$f2,$16($5)
	mul.s	$f13,$f11,$f7
	lwxc1	$f14,$fp($10)
	lwxc1	$f15,$16($10)
	mul.s	$f16,$f3,$f12
	lwxc1	$f6,$fp($9)
	lwxc1	$f17,$16($9)
	mul.s	$f18,$f8,$f2
	lwxc1	$f5,$fp($3)
	lwxc1	$f4,$16($3)
	mul.s	$f19,$f14,$f15
	lwxc1	$f10,$fp($7)
	lwxc1	$f9,$16($7)
	mul.s	$f11,$f6,$f17
	lwxc1	$f1,$fp($6)
	lwxc1	$f0,$16($6)
	mul.s	$f7,$f5,$f4
	swxc1	$f13,$23($2)
	addiu	$2,$2,32
	mul.s	$f3,$f10,$f9
	swxc1	$f16,$23($17)
	swxc1	$f18,$23($5)
	mul.s	$f12,$f1,$f0
	swxc1	$f19,$23($10)
	swxc1	$f11,$23($9)
	swxc1	$f7,$23($3)
	swxc1	$f3,$23($7)
	bne	$2,$4,$L649
	swxc1	$f12,$23($6)

	addiu	$24,$24,1
	bne	$24,$22,$L649
	move	$2,$0

$L651:
	lw	$25,%call16(gettimeofday)($28)
	lui	$8,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$16,$8,%lo(dummy_array)

	lui	$15,%hi(begin_time.3613)
	lw	$31,36($sp)
	li	$14,983040			# 0xf0000
	lw	$22,32($sp)
	li	$23,-1048576			# 0xfffffffffff00000
	lw	$13,%lo(begin_time.3613)($15)
	addiu	$11,$14,16960
	mtlo	$31
	lw	$28,24($sp)
	ori	$24,$23,0xbdc0
	addiu	$12,$15,%lo(begin_time.3613)
	lw	$25,%call16(sync)($28)
	lw	$21,4($12)
	madd	$22,$11
	madd	$13,$24
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	mflo	$fp

	lw	$28,24($sp)
	move	$4,$0
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	subu	$17,$fp,$21

	lw	$28,24($sp)
	sra	$20,$17,31
	lw	$25,%call16(rand)($28)
$L876:
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$4,%hi(dummy_array+262144)
	lw	$28,24($sp)
	sw	$2,-4($16)
	addiu	$2,$4,%lo(dummy_array+262144)
	bne	$2,$16,$L876
	lw	$25,%call16(rand)($28)

	lw	$25,%call16(usleep)($28)
	li	$5,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$5,0xa120

	lui	$10,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$10,%lo(begin_time.3613)

	lw	$9,120($sp)
	beq	$9,$0,$L657
	lw	$28,24($sp)

	lw	$21,%got(fresult)($28)
	move	$13,$0
	lw	$31,%got(fval2)($28)
	li	$12,7168			# 0x1c00
	lw	$3,%got(fval1)($28)
	move	$15,$9
	move	$22,$0
$L655:
	addiu	$14,$22,4
	lwxc1	$f13,$31($22)
	addiu	$11,$22,8
	addiu	$23,$22,12
	lwxc1	$f14,$3($22)
	addiu	$24,$22,16
	addiu	$8,$22,20
	lwxc1	$f15,$31($14)
	addiu	$7,$22,24
	addiu	$6,$22,28
	lwxc1	$f16,$3($14)
	lwxc1	$f8,$31($11)
	lwxc1	$f2,$3($11)
	mul.s	$f17,$f13,$f14
	lwxc1	$f18,$31($23)
	lwxc1	$f19,$3($23)
	mul.s	$f10,$f15,$f16
	lwxc1	$f6,$31($24)
	lwxc1	$f9,$3($24)
	mul.s	$f11,$f8,$f2
	lwxc1	$f5,$31($8)
	lwxc1	$f4,$3($8)
	mul.s	$f7,$f18,$f19
	lwxc1	$f3,$31($7)
	lwxc1	$f12,$3($7)
	mul.s	$f13,$f6,$f9
	lwxc1	$f1,$31($6)
	lwxc1	$f0,$3($6)
	mul.s	$f14,$f5,$f4
	swxc1	$f17,$21($22)
	addiu	$22,$22,32
	mul.s	$f15,$f3,$f12
	swxc1	$f10,$21($14)
	swxc1	$f11,$21($11)
	mul.s	$f16,$f1,$f0
	swxc1	$f7,$21($23)
	swxc1	$f13,$21($24)
	swxc1	$f14,$21($8)
	swxc1	$f15,$21($7)
	bne	$22,$12,$L655
	swxc1	$f16,$21($6)

	addiu	$13,$13,1
	bne	$13,$15,$L655
	move	$22,$0

$L657:
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	addiu	$4,$sp,32
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	lui	$fp,%hi(begin_time.3613)

	li	$5,983040			# 0xf0000
	lw	$15,36($sp)
	li	$31,-1048576			# 0xfffffffffff00000
	lw	$13,32($sp)
	addiu	$21,$5,16960
	lw	$16,%lo(begin_time.3613)($fp)
	ori	$12,$31,0xbdc0
	mtlo	$15
	lw	$28,24($sp)
	addiu	$2,$fp,%lo(begin_time.3613)
	addu	$9,$17,$18
	addu	$18,$20,$19
	lw	$10,4($2)
	sltu	$17,$9,$17
	addu	$20,$17,$18
	lw	$25,%call16(__udivdi3)($28)
	li	$6,3			# 0x3
	madd	$13,$21
	madd	$16,$12
	move	$7,$0
	lui	$23,%hi($LC0)
	mflo	$3
	subu	$22,$3,$10
	sra	$19,$22,31
	addu	$4,$9,$22
	addu	$14,$20,$19
	sltu	$11,$4,$9
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$11,$14

	lw	$28,24($sp)
	move	$4,$2
	move	$5,$3
	sw	$2,68($sp)
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	sw	$3,72($sp)

	lui	$24,%hi($LC1)
	lw	$28,24($sp)
	addiu	$4,$23,%lo($LC0)
	ldc1	$f8,%lo($LC1)($24)
	lw	$8,68($sp)
	lw	$7,72($sp)
	lw	$25,%call16(printf)($28)
	move	$6,$8
	mul.d	$f2,$f0,$f8
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f2,16($sp)

	lw	$6,120($sp)
	beq	$6,$0,$L654
	lw	$28,24($sp)

	lw	$16,%got(fresult)($28)
	move	$15,$0
	lw	$4,%got(fval2)($28)
	li	$5,7168			# 0x1c00
	lw	$21,%got(fval1)($28)
	move	$fp,$6
	move	$2,$0
$L659:
	addiu	$13,$2,4
	lwxc1	$f17,$4($2)
	addiu	$31,$2,8
	addiu	$10,$2,12
	lwxc1	$f18,$21($2)
	addiu	$9,$2,16
	addiu	$12,$2,20
	lwxc1	$f19,$4($13)
	addiu	$3,$2,24
	addiu	$22,$2,28
	lwxc1	$f6,$21($13)
	lwxc1	$f11,$4($31)
	lwxc1	$f5,$21($31)
	mul.s	$f10,$f17,$f18
	lwxc1	$f7,$4($10)
	lwxc1	$f3,$21($10)
	mul.s	$f9,$f19,$f6
	lwxc1	$f12,$4($9)
	lwxc1	$f13,$21($9)
	mul.s	$f14,$f11,$f5
	lwxc1	$f15,$4($12)
	lwxc1	$f4,$21($12)
	mul.s	$f16,$f7,$f3
	lwxc1	$f8,$4($3)
	lwxc1	$f2,$21($3)
	mul.s	$f17,$f12,$f13
	lwxc1	$f1,$4($22)
	lwxc1	$f0,$21($22)
	mul.s	$f18,$f15,$f4
	swxc1	$f10,$16($2)
	addiu	$2,$2,32
	mul.s	$f19,$f8,$f2
	swxc1	$f9,$16($13)
	swxc1	$f14,$16($31)
	mul.s	$f6,$f1,$f0
	swxc1	$f16,$16($10)
	swxc1	$f17,$16($9)
	swxc1	$f18,$16($12)
	swxc1	$f19,$16($3)
	bne	$2,$5,$L659
	swxc1	$f6,$16($22)

	addiu	$15,$15,1
	bne	$15,$fp,$L659
	move	$2,$0

$L654:
	lui	$17,%hi($LC17)
	lw	$25,%call16(printf)($28)
	lui	$18,%hi(dummy_array)
	addiu	$4,$17,%lo($LC17)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$19,$18,%lo(dummy_array)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
$L658:
	lw	$25,%call16(rand)($28)
	addiu	$19,$19,32
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	lui	$20,%hi(dummy_array+262144)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($19)

	addiu	$14,$20,%lo(dummy_array+262144)
	lw	$28,24($sp)
	bne	$14,$19,$L658
	sw	$2,-4($19)

	lw	$25,%call16(usleep)($28)
	li	$11,458752			# 0x70000
	lui	$23,%hi(begin_time.3613)
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$11,0xa120

	addiu	$4,$23,%lo(begin_time.3613)
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lw	$24,120($sp)
	beq	$24,$0,$L665
	lw	$28,24($sp)

	lw	$19,%got(xval1)($28)
	li	$fp,7168			# 0x1c00
	lw	$18,%got(xval2)($28)
	lw	$5,%got(xresult)($28)
	sw	$0,40($sp)
$L664:
	move	$4,$0
$L663:
	addu	$7,$19,$4
	addu	$6,$18,$4
	addiu	$25,$4,4
	lw	$31,0($7)
	addiu	$24,$4,8
	lw	$2,0($6)
	addu	$16,$19,$25
	addu	$8,$18,$25
	addu	$13,$18,$24
	mult	$31,$2
	lw	$17,0($16)
	lw	$16,0($8)
	addu	$15,$19,$24
	addiu	$23,$4,12
	lw	$14,0($13)
	addiu	$22,$4,16
	mflo	$2
	lw	$15,0($15)
	mfhi	$31
	mult	$17,$16
	addu	$10,$19,$23
	addu	$12,$18,$23
	addu	$3,$19,$22
	mflo	$16
	lw	$13,0($10)
	mfhi	$17
	lw	$12,0($12)
	mult	$15,$14
	lw	$11,0($3)
	addu	$6,$18,$22
	addiu	$21,$4,20
	addiu	$20,$4,24
	mflo	$14
	lw	$10,0($6)
	mfhi	$15
	mult	$13,$12
	addu	$9,$19,$21
	addu	$8,$18,$21
	addu	$7,$19,$20
	mflo	$12
	lw	$9,0($9)
	mfhi	$13
	lw	$8,0($8)
	mult	$11,$10
	lw	$3,0($7)
	addu	$6,$18,$20
	srl	$2,$2,16
	sll	$17,$17,16
	mflo	$10
	lw	$7,0($6)
	mfhi	$11
	mult	$9,$8
	srl	$16,$16,16
	sll	$15,$15,16
	srl	$14,$14,16
	mflo	$8
	mfhi	$9
	mult	$3,$7
	sll	$13,$13,16
	sll	$31,$31,16
	srl	$12,$12,16
	mflo	$6
	mfhi	$3
	sll	$11,$11,16
	srl	$10,$10,16
	sll	$9,$9,16
	srl	$8,$8,16
	addu	$7,$5,$4
	srl	$6,$6,16
	sll	$3,$3,16
	or	$31,$31,$2
	addu	$25,$5,$25
	or	$2,$17,$16
	sw	$31,0($7)
	or	$17,$15,$14
	or	$16,$13,$12
	sw	$2,0($25)
	addu	$24,$5,$24
	addu	$23,$5,$23
	addu	$22,$5,$22
	sw	$17,0($24)
	or	$15,$11,$10
	sw	$16,0($23)
	addu	$21,$5,$21
	or	$14,$9,$8
	sw	$15,0($22)
	addu	$20,$5,$20
	or	$13,$3,$6
	sw	$14,0($21)
	addiu	$4,$4,28
	bne	$4,$fp,$L663
	sw	$13,0($20)

	lw	$4,40($sp)
	lw	$11,120($sp)
	addiu	$12,$4,1
	bne	$12,$11,$L664
	sw	$12,40($sp)

$L665:
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	addiu	$4,$sp,32
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	lui	$18,%hi(begin_time.3613)

	li	$3,983040			# 0xf0000
	lw	$8,36($sp)
	li	$31,-1048576			# 0xfffffffffff00000
	lw	$7,32($sp)
	addiu	$6,$3,16960
	lw	$fp,%lo(begin_time.3613)($18)
	ori	$2,$31,0xbdc0
	mtlo	$8
	lw	$28,24($sp)
	addiu	$10,$18,%lo(begin_time.3613)
	lui	$19,%hi(dummy_array)
	lw	$9,4($10)
	addiu	$16,$19,%lo(dummy_array)
	lw	$25,%call16(sync)($28)
	madd	$7,$6
	madd	$fp,$2
	mflo	$24
	subu	$17,$24,$9
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$17,52($sp)

	move	$4,$0
	lw	$28,24($sp)
	lw	$23,52($sp)
	sra	$22,$23,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$22,56($sp)

	lw	$28,24($sp)
$L662:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$15,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$21,$15,%lo(dummy_array+262144)
	bne	$21,$16,$L662
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$14,458752			# 0x70000
	lui	$20,%hi(begin_time.3613)
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$14,0xa120

	addiu	$4,$20,%lo(begin_time.3613)
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lw	$13,120($sp)
	beq	$13,$0,$L670
	lw	$28,24($sp)

	lw	$19,%got(xval1)($28)
	li	$fp,7168			# 0x1c00
	lw	$18,%got(xval2)($28)
	lw	$5,%got(xresult)($28)
	sw	$0,40($sp)
$L669:
	move	$4,$0
$L668:
	addu	$12,$19,$4
	addu	$11,$18,$4
	addiu	$25,$4,4
	lw	$3,0($12)
	addiu	$23,$4,12
	lw	$31,0($11)
	addu	$10,$19,$25
	addu	$8,$18,$25
	addiu	$24,$4,8
	mult	$3,$31
	lw	$17,0($10)
	lw	$16,0($8)
	addu	$2,$18,$23
	addu	$7,$19,$24
	addu	$6,$18,$24
	lw	$12,0($2)
	mfhi	$3
	mflo	$2
	lw	$15,0($7)
	mult	$17,$16
	lw	$14,0($6)
	addu	$9,$19,$23
	addiu	$22,$4,16
	addiu	$21,$4,20
	mflo	$16
	lw	$13,0($9)
	mfhi	$17
	mult	$15,$14
	addu	$11,$19,$22
	addu	$10,$18,$22
	addu	$9,$19,$21
	mflo	$14
	lw	$11,0($11)
	mfhi	$15
	lw	$10,0($10)
	mult	$13,$12
	lw	$9,0($9)
	addu	$8,$18,$21
	addiu	$20,$4,24
	srl	$2,$2,16
	mflo	$12
	lw	$8,0($8)
	mfhi	$13
	mult	$11,$10
	addu	$7,$19,$20
	addu	$6,$18,$20
	sll	$17,$17,16
	mflo	$10
	lw	$31,0($7)
	mfhi	$11
	lw	$7,0($6)
	mult	$9,$8
	srl	$16,$16,16
	sll	$15,$15,16
	srl	$14,$14,16
	mflo	$8
	mfhi	$9
	mult	$31,$7
	sll	$13,$13,16
	sll	$31,$3,16
	srl	$12,$12,16
	mfhi	$7
	mflo	$6
	sll	$11,$11,16
	srl	$10,$10,16
	sll	$9,$9,16
	srl	$8,$8,16
	or	$31,$31,$2
	sll	$3,$7,16
	srl	$6,$6,16
	or	$2,$17,$16
	addu	$7,$5,$4
	or	$17,$15,$14
	or	$16,$13,$12
	sw	$31,0($7)
	addu	$25,$5,$25
	addu	$24,$5,$24
	addu	$23,$5,$23
	sw	$2,0($25)
	addu	$22,$5,$22
	sw	$17,0($24)
	or	$15,$11,$10
	sw	$16,0($23)
	addu	$21,$5,$21
	or	$14,$9,$8
	sw	$15,0($22)
	addu	$20,$5,$20
	or	$13,$3,$6
	sw	$14,0($21)
	addiu	$4,$4,28
	bne	$4,$fp,$L668
	sw	$13,0($20)

	lw	$4,40($sp)
	lw	$11,120($sp)
	addiu	$12,$4,1
	bne	$12,$11,$L669
	sw	$12,40($sp)

$L670:
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	addiu	$4,$sp,32
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	lui	$18,%hi(begin_time.3613)

	li	$3,983040			# 0xf0000
	lw	$8,36($sp)
	li	$31,-1048576			# 0xfffffffffff00000
	lw	$7,32($sp)
	addiu	$6,$3,16960
	lw	$fp,%lo(begin_time.3613)($18)
	ori	$2,$31,0xbdc0
	mtlo	$8
	lw	$28,24($sp)
	addiu	$10,$18,%lo(begin_time.3613)
	lui	$19,%hi(dummy_array)
	lw	$9,4($10)
	addiu	$16,$19,%lo(dummy_array)
	lw	$25,%call16(sync)($28)
	madd	$7,$6
	madd	$fp,$2
	mflo	$24
	subu	$17,$24,$9
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$17,44($sp)

	move	$4,$0
	lw	$28,24($sp)
	lw	$23,44($sp)
	sra	$22,$23,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$22,60($sp)

	lw	$28,24($sp)
$L667:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$15,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$21,$15,%lo(dummy_array+262144)
	bne	$21,$16,$L667
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$14,458752			# 0x70000
	lui	$20,%hi(begin_time.3613)
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$14,0xa120

	addiu	$4,$20,%lo(begin_time.3613)
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lw	$13,120($sp)
	beq	$13,$0,$L675
	lw	$28,24($sp)

	lw	$19,%got(xval1)($28)
	li	$fp,7168			# 0x1c00
	lw	$18,%got(xval2)($28)
	lw	$5,%got(xresult)($28)
	sw	$0,40($sp)
$L674:
	move	$4,$0
$L673:
	addu	$12,$19,$4
	addu	$11,$18,$4
	addiu	$25,$4,4
	lw	$3,0($12)
	addiu	$23,$4,12
	lw	$31,0($11)
	addu	$10,$19,$25
	addu	$8,$18,$25
	addiu	$24,$4,8
	mult	$3,$31
	lw	$17,0($10)
	lw	$16,0($8)
	addu	$2,$18,$23
	addu	$7,$19,$24
	addu	$6,$18,$24
	lw	$12,0($2)
	mfhi	$3
	mflo	$2
	lw	$15,0($7)
	mult	$17,$16
	lw	$14,0($6)
	addu	$9,$19,$23
	addiu	$22,$4,16
	addiu	$21,$4,20
	mflo	$16
	lw	$13,0($9)
	mfhi	$17
	mult	$15,$14
	addu	$11,$19,$22
	addu	$10,$18,$22
	addu	$9,$19,$21
	mflo	$14
	lw	$11,0($11)
	mfhi	$15
	lw	$10,0($10)
	mult	$13,$12
	lw	$9,0($9)
	addu	$8,$18,$21
	addiu	$20,$4,24
	srl	$2,$2,16
	mflo	$12
	lw	$8,0($8)
	mfhi	$13
	mult	$11,$10
	addu	$7,$19,$20
	addu	$6,$18,$20
	sll	$17,$17,16
	mflo	$10
	lw	$31,0($7)
	mfhi	$11
	lw	$7,0($6)
	mult	$9,$8
	srl	$16,$16,16
	sll	$15,$15,16
	srl	$14,$14,16
	mflo	$8
	mfhi	$9
	mult	$31,$7
	sll	$13,$13,16
	sll	$31,$3,16
	srl	$12,$12,16
	mfhi	$7
	mflo	$6
	sll	$11,$11,16
	srl	$10,$10,16
	sll	$9,$9,16
	srl	$8,$8,16
	or	$31,$31,$2
	sll	$3,$7,16
	srl	$6,$6,16
	or	$2,$17,$16
	addu	$7,$5,$4
	or	$17,$15,$14
	or	$16,$13,$12
	sw	$31,0($7)
	addu	$25,$5,$25
	addu	$24,$5,$24
	addu	$23,$5,$23
	sw	$2,0($25)
	addu	$22,$5,$22
	sw	$17,0($24)
	or	$15,$11,$10
	sw	$16,0($23)
	addu	$21,$5,$21
	or	$14,$9,$8
	sw	$15,0($22)
	addu	$20,$5,$20
	or	$13,$3,$6
	sw	$14,0($21)
	addiu	$4,$4,28
	bne	$4,$fp,$L673
	sw	$13,0($20)

	lw	$4,40($sp)
	lw	$11,120($sp)
	addiu	$12,$4,1
	bne	$12,$11,$L674
	sw	$12,40($sp)

$L675:
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	addiu	$4,$sp,32
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	lui	$18,%hi(begin_time.3613)

	li	$6,983040			# 0xf0000
	lw	$7,36($sp)
	li	$17,-1048576			# 0xfffffffffff00000
	lw	$24,32($sp)
	addiu	$2,$6,16960
	lw	$fp,%lo(begin_time.3613)($18)
	ori	$23,$17,0xbdc0
	mtlo	$7
	lw	$8,44($sp)
	addiu	$10,$18,%lo(begin_time.3613)
	lw	$3,52($sp)
	lw	$14,56($sp)
	lui	$19,%hi(dummy_array)
	lw	$21,60($sp)
	li	$6,3			# 0x3
	lw	$9,4($10)
	addu	$31,$8,$3
	lw	$13,44($sp)
	addiu	$16,$19,%lo(dummy_array)
	addu	$20,$21,$14
	lw	$28,24($sp)
	madd	$24,$2
	madd	$fp,$23
	sltu	$4,$31,$13
	addu	$11,$4,$20
	lw	$25,%call16(__udivdi3)($28)
	move	$7,$0
	mflo	$22
	lui	$fp,%hi($LC0)
	subu	$15,$22,$9
	sra	$12,$15,31
	addu	$4,$31,$15
	addu	$19,$11,$12
	sltu	$18,$4,$31
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$18,$19

	lw	$28,24($sp)
	move	$5,$3
	sw	$3,72($sp)
	move	$4,$2
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	sw	$2,68($sp)

	lui	$5,%hi($LC1)
	lw	$28,24($sp)
	addiu	$4,$fp,%lo($LC0)
	ldc1	$f10,%lo($LC1)($5)
	lw	$10,68($sp)
	lw	$9,72($sp)
	lw	$25,%call16(printf)($28)
	move	$6,$10
	move	$7,$9
	mul.d	$f12,$f0,$f10
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f12,16($sp)

	lui	$8,%hi($LC18)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$8,%lo($LC18)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
$L672:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$3,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$7,$3,%lo(dummy_array+262144)
	bne	$7,$16,$L672
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	lui	$6,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$6,%lo(begin_time.3613)

	lw	$2,120($sp)
	beq	$2,$0,$L680
	lw	$28,24($sp)

	lw	$4,%got(xval1)($28)
	lw	$3,%got(xval2)($28)
	lw	$17,%got(xresult)($28)
	sw	$0,44($sp)
$L679:
	move	$16,$0
$L678:
	addiu	$9,$16,8
	addu	$24,$4,$16
	addu	$21,$4,$9
	addiu	$10,$16,4
	addiu	$8,$16,12
	lw	$31,0($24)
	addiu	$7,$16,16
	lw	$13,0($21)
	addiu	$6,$16,20
	addu	$23,$3,$16
	addu	$22,$4,$10
	addu	$15,$3,$10
	sw	$13,40($sp)
	addu	$20,$3,$9
	lw	$19,0($23)
	addu	$14,$4,$8
	lw	$25,0($22)
	addu	$12,$3,$8
	lw	$18,0($15)
	addu	$fp,$4,$7
	lw	$15,0($20)
	addu	$11,$3,$7
	lw	$23,0($14)
	addu	$24,$4,$6
	lw	$14,0($12)
	addiu	$5,$16,24
	lw	$22,0($fp)
	addiu	$2,$16,28
	lw	$13,0($11)
	lw	$21,0($24)
	addu	$12,$3,$6
	addu	$fp,$4,$2
	addu	$24,$3,$2
	addu	$20,$4,$5
	lw	$12,0($12)
	addu	$11,$3,$5
	mul	$31,$31,$19
	lw	$19,0($fp)
	mul	$18,$25,$18
	lw	$fp,0($24)
	lw	$20,0($20)
	mul	$23,$23,$14
	lw	$11,0($11)
	mul	$14,$22,$13
	lw	$25,40($sp)
	mul	$22,$21,$12
	mul	$21,$19,$fp
	mul	$13,$20,$11
	mul	$15,$25,$15
	addu	$12,$17,$16
	addu	$10,$17,$10
	addu	$9,$17,$9
	sw	$31,0($12)
	addu	$8,$17,$8
	sw	$18,0($10)
	addu	$7,$17,$7
	addu	$6,$17,$6
	addu	$5,$17,$5
	sw	$15,0($9)
	addu	$2,$17,$2
	sw	$23,0($8)
	addiu	$16,$16,32
	sw	$14,0($7)
	li	$24,7168			# 0x1c00
	sw	$22,0($6)
	sw	$13,0($5)
	bne	$16,$24,$L678
	sw	$21,0($2)

	lw	$16,44($sp)
	lw	$11,120($sp)
	addiu	$20,$16,1
	bne	$20,$11,$L679
	sw	$20,44($sp)

$L680:
	lw	$25,%call16(gettimeofday)($28)
	lui	$3,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$16,$3,%lo(dummy_array)

	lui	$4,%hi(begin_time.3613)
	lw	$fp,36($sp)
	li	$15,983040			# 0xf0000
	lw	$14,32($sp)
	li	$22,-1048576			# 0xfffffffffff00000
	lw	$17,%lo(begin_time.3613)($4)
	addiu	$23,$15,16960
	mtlo	$fp
	lw	$28,24($sp)
	ori	$13,$22,0xbdc0
	addiu	$19,$4,%lo(begin_time.3613)
	lw	$25,%call16(sync)($28)
	lw	$18,4($19)
	madd	$14,$23
	madd	$17,$13
	mflo	$21
	subu	$12,$21,$18
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$12,56($sp)

	move	$4,$0
	lw	$28,24($sp)
	lw	$10,56($sp)
	sra	$9,$10,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$9,60($sp)

	lw	$28,24($sp)
$L677:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$8,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$7,$8,%lo(dummy_array+262144)
	bne	$7,$16,$L677
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$6,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$6,0xa120

	lui	$5,%hi(begin_time.3613)
	lw	$28,24($sp)
	addiu	$4,$5,%lo(begin_time.3613)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lw	$2,120($sp)
	beq	$2,$0,$L685
	lw	$28,24($sp)

	lw	$4,%got(xval1)($28)
	lw	$3,%got(xval2)($28)
	lw	$17,%got(xresult)($28)
	sw	$0,44($sp)
$L684:
	move	$16,$0
$L683:
	addiu	$10,$16,4
	addiu	$9,$16,8
	addu	$18,$4,$10
	addiu	$8,$16,12
	addiu	$7,$16,16
	lw	$23,0($18)
	addu	$24,$4,$16
	addu	$20,$3,$16
	addu	$fp,$3,$10
	addu	$15,$4,$9
	lw	$31,0($24)
	addu	$11,$3,$9
	lw	$19,0($20)
	addu	$14,$4,$8
	lw	$18,0($fp)
	addu	$22,$3,$8
	lw	$24,0($15)
	addu	$13,$4,$7
	lw	$15,0($11)
	addu	$25,$3,$7
	sw	$23,40($sp)
	addiu	$6,$16,20
	lw	$23,0($14)
	addiu	$5,$16,24
	lw	$14,0($22)
	addiu	$2,$16,28
	lw	$22,0($13)
	addu	$21,$4,$6
	lw	$13,0($25)
	addu	$12,$3,$6
	addu	$20,$4,$5
	addu	$11,$3,$5
	lw	$21,0($21)
	addu	$fp,$4,$2
	lw	$12,0($12)
	addu	$25,$3,$2
	lw	$20,0($20)
	mul	$19,$31,$19
	lw	$11,0($11)
	lw	$fp,0($fp)
	mul	$24,$24,$15
	lw	$31,40($sp)
	mul	$15,$23,$14
	lw	$25,0($25)
	mul	$23,$22,$13
	mul	$14,$21,$12
	mul	$18,$31,$18
	mul	$22,$20,$11
	mul	$13,$fp,$25
	addu	$21,$17,$16
	addu	$10,$17,$10
	addu	$9,$17,$9
	sw	$19,0($21)
	addu	$8,$17,$8
	addu	$7,$17,$7
	sw	$18,0($10)
	addu	$6,$17,$6
	sw	$24,0($9)
	addu	$5,$17,$5
	sw	$15,0($8)
	addu	$2,$17,$2
	sw	$23,0($7)
	addiu	$16,$16,32
	sw	$14,0($6)
	li	$12,7168			# 0x1c00
	sw	$22,0($5)
	bne	$16,$12,$L683
	sw	$13,0($2)

	lw	$16,44($sp)
	lw	$11,120($sp)
	addiu	$20,$16,1
	bne	$20,$11,$L684
	sw	$20,44($sp)

$L685:
	lw	$25,%call16(gettimeofday)($28)
	lui	$3,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$17,$3,%lo(dummy_array)

	lui	$4,%hi(begin_time.3613)
	lw	$23,36($sp)
	li	$14,983040			# 0xf0000
	lw	$13,32($sp)
	li	$21,-1048576			# 0xfffffffffff00000
	addiu	$22,$14,16960
	lw	$fp,%lo(begin_time.3613)($4)
	mtlo	$23
	lw	$28,24($sp)
	ori	$10,$21,0xbdc0
	addiu	$24,$4,%lo(begin_time.3613)
	addiu	$19,$17,4
	lw	$25,%call16(sync)($28)
	lw	$15,4($24)
	madd	$13,$22
	madd	$fp,$10
	mflo	$9
	subu	$8,$9,$15
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$8,52($sp)

	move	$4,$0
	lw	$7,52($sp)
	lw	$28,24($sp)
	sra	$6,$7,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$6,64($sp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	lui	$5,%hi(dummy_array)
	lw	$28,24($sp)
	addiu	$12,$5,%lo(dummy_array)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,0($12)

	lw	$28,24($sp)
	sw	$2,0($19)
	lui	$2,%hi(dummy_array)
	addiu	$16,$2,%lo(dummy_array)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$20,$16,8

	addiu	$17,$20,24
	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,0($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,4($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,8($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,12($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,16($20)

	lui	$11,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$3,$11,%lo(dummy_array+262144)
	beq	$3,$17,$L872
	sw	$2,20($20)

$L682:
	lw	$25,%call16(rand)($28)
	addiu	$17,$17,32
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	lui	$19,%hi(dummy_array+262144)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($17)

	addiu	$4,$19,%lo(dummy_array+262144)
	lw	$28,24($sp)
	bne	$4,$17,$L682
	sw	$2,-4($17)

$L872:
	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	lui	$fp,%hi(begin_time.3613)

	addiu	$4,$fp,%lo(begin_time.3613)
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lw	$18,120($sp)
	beq	$18,$0,$L689
	lw	$28,24($sp)

	lw	$4,%got(xval1)($28)
	lw	$3,%got(xval2)($28)
	lw	$17,%got(xresult)($28)
	sw	$0,44($sp)
$L688:
	move	$16,$0
$L687:
	addiu	$10,$16,4
	addiu	$9,$16,8
	addu	$23,$4,$10
	addiu	$8,$16,12
	addiu	$7,$16,16
	addiu	$6,$16,20
	lw	$14,0($23)
	addu	$24,$4,$16
	addu	$15,$3,$16
	addu	$22,$3,$10
	addu	$13,$4,$9
	lw	$31,0($24)
	addu	$21,$3,$9
	lw	$19,0($15)
	addu	$20,$4,$8
	lw	$18,0($22)
	addu	$12,$3,$8
	lw	$24,0($13)
	addu	$fp,$4,$7
	lw	$15,0($21)
	addu	$11,$3,$7
	lw	$23,0($20)
	addu	$25,$4,$6
	sw	$14,40($sp)
	addiu	$5,$16,24
	lw	$14,0($12)
	addiu	$2,$16,28
	lw	$22,0($fp)
	lw	$13,0($11)
	addu	$12,$3,$6
	lw	$21,0($25)
	addu	$20,$4,$5
	addu	$11,$3,$5
	addu	$fp,$4,$2
	lw	$12,0($12)
	addu	$25,$3,$2
	lw	$20,0($20)
	mul	$19,$31,$19
	lw	$11,0($11)
	lw	$fp,0($fp)
	mul	$24,$24,$15
	lw	$31,40($sp)
	mul	$15,$23,$14
	lw	$25,0($25)
	mul	$23,$22,$13
	mul	$14,$21,$12
	mul	$18,$31,$18
	mul	$22,$20,$11
	mul	$13,$fp,$25
	addu	$21,$17,$16
	addu	$10,$17,$10
	addu	$9,$17,$9
	sw	$19,0($21)
	addu	$8,$17,$8
	addu	$7,$17,$7
	sw	$18,0($10)
	addu	$6,$17,$6
	sw	$24,0($9)
	addu	$5,$17,$5
	sw	$15,0($8)
	addu	$2,$17,$2
	sw	$23,0($7)
	addiu	$16,$16,32
	sw	$14,0($6)
	li	$12,7168			# 0x1c00
	sw	$22,0($5)
	bne	$16,$12,$L687
	sw	$13,0($2)

	lw	$16,44($sp)
	lw	$11,120($sp)
	addiu	$20,$16,1
	bne	$20,$11,$L688
	sw	$20,44($sp)

$L689:
	lw	$25,%call16(gettimeofday)($28)
	addiu	$4,$sp,32
	move	$5,$0
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	li	$23,983040			# 0xf0000

	lui	$4,%hi(begin_time.3613)
	lw	$15,36($sp)
	addiu	$14,$23,16960
	lw	$22,32($sp)
	li	$13,-1048576			# 0xfffffffffff00000
	lw	$17,%lo(begin_time.3613)($4)
	addiu	$19,$4,%lo(begin_time.3613)
	mtlo	$15
	lw	$31,52($sp)
	ori	$21,$13,0xbdc0
	lw	$18,56($sp)
	lw	$8,60($sp)
	li	$6,3			# 0x3
	lw	$fp,4($19)
	move	$7,$0
	lw	$5,64($sp)
	addu	$24,$31,$18
	lw	$12,52($sp)
	lw	$28,24($sp)
	madd	$22,$14
	madd	$17,$21
	addu	$2,$5,$8
	sltu	$16,$24,$12
	lw	$25,%call16(__udivdi3)($28)
	addu	$11,$16,$2
	mflo	$10
	subu	$9,$10,$fp
	sra	$20,$9,31
	addu	$4,$24,$9
	addu	$17,$11,$20
	sltu	$3,$4,$24
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$3,$17

	lw	$28,24($sp)
	move	$4,$2
	sw	$3,72($sp)
	move	$5,$3
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	sw	$2,68($sp)

	lui	$6,%hi($LC1)
	lw	$28,24($sp)
	lui	$7,%hi($LC0)
	ldc1	$f14,%lo($LC1)($6)
	lw	$19,68($sp)
	addiu	$4,$7,%lo($LC0)
	lw	$fp,72($sp)
	lw	$25,%call16(printf)($28)
	move	$6,$19
	move	$7,$fp
	mul.d	$f4,$f0,$f14
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f4,16($sp)

	lw	$31,116($sp)
	lw	$fp,112($sp)
	lw	$23,108($sp)
	lw	$22,104($sp)
	lw	$21,100($sp)
	lw	$20,96($sp)
	lw	$19,92($sp)
	lw	$18,88($sp)
	lw	$17,84($sp)
	lw	$16,80($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	bench_multiplication
	.size	bench_multiplication, .-bench_multiplication
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
	beq	$4,$0,$L894
	lui	$28,%hi(__gnu_local_gp)

	move	$14,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$13,7168			# 0x1c00
	lw	$6,%got(fresult)($28)
	lw	$5,%got(fval1)($28)
	lw	$3,%got(fval2)($28)
	move	$2,$0
$L879:
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
	bne	$2,$13,$L879
	swxc1	$f14,$6($7)

	addiu	$14,$14,1
	bne	$14,$4,$L879
	move	$2,$0

$L894:
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
	beq	$4,$0,$L908
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
$L897:
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
	bne	$16,$21,$L897
	sw	$2,0($17)

	addiu	$22,$22,1
	bne	$22,$23,$L897
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

$L908:
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
	beq	$4,$0,$L909
	sw	$4,64($sp)

	lw	$13,%got(xresult)($28)
	lw	$10,%got(xval1)($28)
	lw	$8,%got(xval2)($28)
	sw	$0,16($sp)
$L912:
	move	$6,$0
$L911:
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
	bne	$6,$21,$L911
	sw	$14,0($2)

	lw	$6,16($sp)
	lw	$12,64($sp)
	addiu	$19,$6,1
	bne	$19,$12,$L912
	sw	$19,16($sp)

$L909:
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
	.frame	$sp,120,$31		# vars= 48, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,116($sp)
	sw	$17,84($sp)
	sw	$16,80($sp)
	lui	$16,%hi(dummy_array)
	.cprestore	24
	sw	$4,120($sp)
	addiu	$17,$16,%lo(dummy_array)
	sw	$fp,112($sp)
	sw	$23,108($sp)
	sw	$22,104($sp)
	sw	$21,100($sp)
	sw	$20,96($sp)
	sw	$19,92($sp)
	.option	pic0
	jal	fill_arrays
	.option	pic2
	sw	$18,88($sp)

	lui	$4,%hi($LC19)
	lw	$28,24($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC19)

	lui	$2,%hi($LC20)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC20)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
$L925:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$17,$17,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($17)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($17)

	lui	$3,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$5,$3,%lo(dummy_array+262144)
	bne	$17,$5,$L925
	sw	$2,-4($17)

	lw	$25,%call16(usleep)($28)
	li	$6,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$6,0xa120

	lui	$7,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$7,%lo(begin_time.3613)

	lw	$8,120($sp)
	beq	$8,$0,$L930
	lw	$28,24($sp)

	lw	$18,%got(fresult)($28)
	move	$9,$0
	lw	$19,%got(fval1)($28)
	li	$20,7168			# 0x1c00
	lw	$21,%got(fval2)($28)
	move	$15,$8
	move	$22,$0
$L928:
	addiu	$14,$22,4
	lwxc1	$f14,$19($22)
	addiu	$13,$22,8
	addiu	$12,$22,12
	lwxc1	$f0,$21($22)
	addiu	$11,$22,16
	addiu	$10,$22,20
	lwxc1	$f13,$19($14)
	addiu	$23,$22,24
	addiu	$24,$22,28
	lwxc1	$f12,$21($14)
	lwxc1	$f11,$19($13)
	lwxc1	$f10,$21($13)
	div.s	$f15,$f14,$f0
	lwxc1	$f9,$19($12)
	lwxc1	$f8,$21($12)
	lwxc1	$f7,$19($11)
	lwxc1	$f6,$21($11)
	lwxc1	$f5,$19($10)
	lwxc1	$f4,$21($10)
	lwxc1	$f3,$19($23)
	lwxc1	$f2,$21($23)
	lwxc1	$f1,$19($24)
	lwxc1	$f16,$21($24)
	div.s	$f17,$f13,$f12
	swxc1	$f15,$18($22)
	addiu	$22,$22,32
	div.s	$f18,$f11,$f10
	swxc1	$f17,$18($14)
	div.s	$f19,$f9,$f8
	swxc1	$f18,$18($13)
	div.s	$f14,$f7,$f6
	swxc1	$f19,$18($12)
	div.s	$f0,$f5,$f4
	swxc1	$f14,$18($11)
	div.s	$f13,$f3,$f2
	swxc1	$f0,$18($10)
	div.s	$f12,$f1,$f16
	swxc1	$f13,$18($23)
	bne	$22,$20,$L928
	swxc1	$f12,$18($24)

	addiu	$9,$9,1
	bne	$9,$15,$L928
	move	$22,$0

$L930:
	addiu	$fp,$sp,32
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	sw	$0,32($sp)
	move	$4,$fp
	sw	$0,36($sp)
	sw	$fp,48($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	li	$17,983040			# 0xf0000

	lui	$4,%hi(begin_time.3613)
	lw	$16,36($sp)
	addiu	$5,$17,16960
	lw	$3,32($sp)
	li	$6,-1048576			# 0xfffffffffff00000
	lw	$2,%lo(begin_time.3613)($4)
	lui	$8,%hi(begin_time.3613)
	mtlo	$16
	lw	$28,24($sp)
	ori	$7,$6,0xbdc0
	addiu	$18,$8,%lo(begin_time.3613)
	lui	$19,%hi(dummy_array)
	lw	$25,%call16(sync)($28)
	lw	$9,4($18)
	addiu	$20,$19,%lo(dummy_array)
	madd	$3,$5
	madd	$2,$7
	mflo	$15
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$18,$15,$9

	lw	$28,24($sp)
	move	$4,$0
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sra	$19,$18,31

	lw	$28,24($sp)
$L927:
	lw	$25,%call16(rand)($28)
	addiu	$20,$20,32
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	lui	$21,%hi(dummy_array+262144)

	addiu	$22,$21,%lo(dummy_array+262144)
	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($20)

	lw	$28,24($sp)
	bne	$22,$20,$L927
	sw	$2,-4($20)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	lui	$14,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$14,%lo(begin_time.3613)

	lw	$13,120($sp)
	beq	$13,$0,$L935
	lw	$28,24($sp)

	lw	$24,%got(fresult)($28)
	move	$11,$0
	lw	$fp,%got(fval1)($28)
	li	$10,7168			# 0x1c00
	lw	$4,%got(fval2)($28)
	move	$23,$13
	move	$2,$0
$L933:
	addiu	$16,$2,4
	lwxc1	$f15,$fp($2)
	addiu	$17,$2,8
	addiu	$12,$2,12
	lwxc1	$f9,$4($2)
	addiu	$5,$2,16
	addiu	$3,$2,20
	lwxc1	$f16,$fp($16)
	addiu	$7,$2,24
	addiu	$6,$2,28
	lwxc1	$f17,$4($16)
	lwxc1	$f11,$fp($17)
	lwxc1	$f10,$4($17)
	div.s	$f18,$f15,$f9
	lwxc1	$f19,$fp($12)
	lwxc1	$f8,$4($12)
	lwxc1	$f7,$fp($5)
	lwxc1	$f6,$4($5)
	lwxc1	$f5,$fp($3)
	lwxc1	$f4,$4($3)
	lwxc1	$f3,$fp($7)
	lwxc1	$f2,$4($7)
	lwxc1	$f1,$fp($6)
	lwxc1	$f14,$4($6)
	div.s	$f0,$f16,$f17
	swxc1	$f18,$24($2)
	addiu	$2,$2,32
	div.s	$f13,$f11,$f10
	swxc1	$f0,$24($16)
	div.s	$f12,$f19,$f8
	swxc1	$f13,$24($17)
	div.s	$f15,$f7,$f6
	swxc1	$f12,$24($12)
	div.s	$f9,$f5,$f4
	swxc1	$f15,$24($5)
	div.s	$f16,$f3,$f2
	swxc1	$f9,$24($3)
	div.s	$f17,$f1,$f14
	swxc1	$f16,$24($7)
	bne	$2,$10,$L933
	swxc1	$f17,$24($6)

	addiu	$11,$11,1
	bne	$11,$23,$L933
	move	$2,$0

$L935:
	lw	$25,%call16(gettimeofday)($28)
	lui	$15,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$16,$15,%lo(dummy_array)

	lui	$8,%hi(begin_time.3613)
	lw	$14,36($sp)
	li	$13,983040			# 0xf0000
	lw	$24,32($sp)
	li	$11,-1048576			# 0xfffffffffff00000
	lw	$9,%lo(begin_time.3613)($8)
	addiu	$23,$13,16960
	mtlo	$14
	lw	$28,24($sp)
	ori	$fp,$11,0xbdc0
	addiu	$21,$8,%lo(begin_time.3613)
	lw	$25,%call16(sync)($28)
	lw	$22,4($21)
	madd	$24,$23
	madd	$9,$fp
	mflo	$10
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$17,$10,$22

	lw	$28,24($sp)
	move	$4,$0
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sra	$20,$17,31

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
$L1138:
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$4,%hi(dummy_array+262144)
	lw	$28,24($sp)
	sw	$2,-4($16)
	addiu	$2,$4,%lo(dummy_array+262144)
	bne	$2,$16,$L1138
	lw	$25,%call16(rand)($28)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	lui	$12,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$12,%lo(begin_time.3613)

	lw	$5,120($sp)
	beq	$5,$0,$L940
	lw	$28,24($sp)

	lw	$21,%got(fresult)($28)
	move	$22,$0
	lw	$23,%got(fval1)($28)
	li	$24,7168			# 0x1c00
	lw	$3,%got(fval2)($28)
	move	$15,$5
	move	$11,$0
$L938:
	addiu	$14,$11,4
	lwxc1	$f18,$23($11)
	addiu	$13,$11,8
	addiu	$fp,$11,12
	lwxc1	$f19,$3($11)
	addiu	$9,$11,16
	addiu	$8,$11,20
	lwxc1	$f13,$23($14)
	addiu	$7,$11,24
	addiu	$6,$11,28
	lwxc1	$f12,$3($14)
	lwxc1	$f11,$23($13)
	lwxc1	$f10,$3($13)
	div.s	$f14,$f18,$f19
	lwxc1	$f15,$23($fp)
	lwxc1	$f8,$3($fp)
	lwxc1	$f7,$23($9)
	lwxc1	$f6,$3($9)
	lwxc1	$f5,$23($8)
	lwxc1	$f4,$3($8)
	lwxc1	$f3,$23($7)
	lwxc1	$f2,$3($7)
	lwxc1	$f1,$23($6)
	lwxc1	$f0,$3($6)
	div.s	$f9,$f13,$f12
	swxc1	$f14,$21($11)
	addiu	$11,$11,32
	div.s	$f16,$f11,$f10
	swxc1	$f9,$21($14)
	div.s	$f17,$f15,$f8
	swxc1	$f16,$21($13)
	div.s	$f18,$f7,$f6
	swxc1	$f17,$21($fp)
	div.s	$f19,$f5,$f4
	swxc1	$f18,$21($9)
	div.s	$f13,$f3,$f2
	swxc1	$f19,$21($8)
	div.s	$f12,$f1,$f0
	swxc1	$f13,$21($7)
	bne	$11,$24,$L938
	swxc1	$f12,$21($6)

	addiu	$22,$22,1
	bne	$22,$15,$L938
	move	$11,$0

$L940:
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	addiu	$4,$sp,32
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addu	$19,$20,$19

	lui	$10,%hi(begin_time.3613)
	lw	$21,36($sp)
	li	$5,983040			# 0xf0000
	lw	$23,32($sp)
	li	$24,-1048576			# 0xfffffffffff00000
	lw	$16,%lo(begin_time.3613)($10)
	addiu	$22,$5,16960
	mtlo	$21
	lw	$28,24($sp)
	ori	$3,$24,0xbdc0
	addiu	$2,$10,%lo(begin_time.3613)
	addu	$15,$17,$18
	lw	$25,%call16(__udivdi3)($28)
	li	$6,3			# 0x3
	lw	$12,4($2)
	sltu	$17,$15,$17
	addu	$14,$17,$19
	madd	$23,$22
	madd	$16,$3
	move	$7,$0
	mflo	$11
	subu	$18,$11,$12
	sra	$20,$18,31
	addu	$4,$15,$18
	addu	$13,$14,$20
	sltu	$fp,$4,$15
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$fp,$13

	lui	$9,%hi(dummy_array)
	lw	$28,24($sp)
	move	$5,$3
	sw	$3,72($sp)
	move	$4,$2
	sw	$2,68($sp)
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	addiu	$16,$9,%lo(dummy_array)

	lui	$7,%hi($LC1)
	lw	$28,24($sp)
	lui	$8,%hi($LC0)
	ldc1	$f10,%lo($LC1)($7)
	lw	$10,72($sp)
	addiu	$4,$8,%lo($LC0)
	lw	$6,68($sp)
	lw	$25,%call16(printf)($28)
	move	$7,$10
	mul.d	$f14,$f0,$f10
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f14,16($sp)

	lui	$4,%hi($LC21)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$4,%lo($LC21)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
$L1139:
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lw	$28,24($sp)
	sw	$2,-4($16)
	lui	$2,%hi(dummy_array+262144)
	addiu	$12,$2,%lo(dummy_array+262144)
	bne	$16,$12,$L1139
	lw	$25,%call16(rand)($28)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	lui	$15,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$15,%lo(begin_time.3613)

	lw	$21,120($sp)
	beq	$21,$0,$L945
	lw	$28,24($sp)

	lw	$18,%got(xresult)($28)
	move	$20,$0
	lw	$17,%got(xval1)($28)
	li	$19,7168			# 0x1c00
	lw	$fp,%got(xval2)($28)
	move	$23,$21
$L944:
	move	$16,$0
$L943:
	addu	$5,$17,$16
	lw	$25,%call16(__divdi3)($28)
	addu	$24,$fp,$16
	addu	$22,$18,$16
	lw	$3,0($5)
	lw	$6,0($24)
	sra	$11,$3,31
	srl	$14,$3,16
	sll	$13,$11,16
	sra	$7,$6,31
	sll	$4,$3,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$14,$13

	addiu	$9,$16,4
	lw	$28,24($sp)
	addu	$8,$17,$9
	sw	$2,0($22)
	addu	$7,$fp,$9
	addu	$21,$18,$9
	lw	$10,0($8)
	lw	$6,0($7)
	lw	$25,%call16(__divdi3)($28)
	sra	$4,$10,31
	srl	$12,$10,16
	sll	$2,$4,16
	sra	$7,$6,31
	sll	$4,$10,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$12,$2

	addiu	$6,$16,8
	lw	$28,24($sp)
	addu	$15,$17,$6
	sw	$2,0($21)
	addu	$5,$fp,$6
	addu	$22,$18,$6
	lw	$24,0($15)
	lw	$6,0($5)
	lw	$25,%call16(__divdi3)($28)
	sra	$3,$24,31
	srl	$11,$24,16
	sll	$14,$3,16
	sll	$4,$24,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$11,$14

	addiu	$13,$16,12
	lw	$28,24($sp)
	addiu	$16,$16,16
	addu	$9,$17,$13
	sw	$2,0($22)
	addu	$8,$fp,$13
	addu	$21,$18,$13
	lw	$7,0($9)
	lw	$6,0($8)
	lw	$25,%call16(__divdi3)($28)
	sra	$10,$7,31
	srl	$12,$7,16
	sll	$2,$10,16
	sll	$4,$7,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$12,$2

	lw	$28,24($sp)
	bne	$16,$19,$L943
	sw	$2,0($21)

	addiu	$20,$20,1
	bne	$20,$23,$L944
	nop

$L945:
	lw	$25,%call16(gettimeofday)($28)
	lui	$31,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	addiu	$16,$31,%lo(dummy_array)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	sw	$0,36($sp)

	lui	$23,%hi(begin_time.3613)
	lw	$fp,36($sp)
	li	$4,983040			# 0xf0000
	lw	$15,32($sp)
	li	$5,-1048576			# 0xfffffffffff00000
	addiu	$6,$4,16960
	lw	$18,%lo(begin_time.3613)($23)
	mtlo	$fp
	lw	$28,24($sp)
	ori	$22,$5,0xbdc0
	addiu	$17,$23,%lo(begin_time.3613)
	lw	$25,%call16(sync)($28)
	lw	$19,4($17)
	madd	$15,$6
	madd	$18,$22
	mflo	$24
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$22,$24,$19

	lw	$28,24($sp)
	move	$4,$0
	sra	$3,$22,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$3,40($sp)

	lw	$28,24($sp)
$L942:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$11,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$14,$11,%lo(dummy_array+262144)
	bne	$14,$16,$L942
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$13,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$13,0xa120

	lui	$9,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$9,%lo(begin_time.3613)

	lw	$8,120($sp)
	beq	$8,$0,$L950
	lw	$28,24($sp)

	lw	$18,%got(xresult)($28)
	move	$20,$0
	lw	$17,%got(xval1)($28)
	li	$19,7168			# 0x1c00
	lw	$16,%got(xval2)($28)
	move	$23,$8
	move	$21,$0
$L948:
	addu	$7,$17,$21
	lw	$25,%call16(__divdi3)($28)
	addu	$10,$16,$21
	addu	$fp,$18,$21
	lw	$12,0($7)
	lw	$6,0($10)
	sra	$2,$12,31
	srl	$31,$12,16
	sll	$15,$2,16
	sll	$4,$12,16
	or	$5,$31,$15
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	sra	$7,$6,31

	addiu	$6,$21,4
	lw	$28,24($sp)
	addu	$4,$17,$6
	sw	$2,0($fp)
	addu	$5,$16,$6
	addu	$fp,$18,$6
	lw	$24,0($4)
	lw	$6,0($5)
	lw	$25,%call16(__divdi3)($28)
	sra	$3,$24,31
	srl	$11,$24,16
	sll	$14,$3,16
	sll	$4,$24,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$11,$14

	addiu	$13,$21,8
	lw	$28,24($sp)
	addu	$9,$17,$13
	sw	$2,0($fp)
	addu	$8,$16,$13
	addu	$fp,$18,$13
	lw	$7,0($9)
	lw	$6,0($8)
	lw	$25,%call16(__divdi3)($28)
	sra	$10,$7,31
	srl	$12,$7,16
	sll	$2,$10,16
	sll	$4,$7,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$12,$2

	addiu	$15,$21,12
	lw	$28,24($sp)
	addiu	$21,$21,16
	addu	$6,$17,$15
	sw	$2,0($fp)
	addu	$5,$16,$15
	addu	$fp,$18,$15
	lw	$4,0($6)
	lw	$6,0($5)
	lw	$25,%call16(__divdi3)($28)
	sra	$24,$4,31
	srl	$3,$4,16
	sll	$11,$24,16
	sll	$4,$4,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$3,$11

	lw	$28,24($sp)
	bne	$21,$19,$L948
	sw	$2,0($fp)

	addiu	$20,$20,1
	bne	$20,$23,$L948
	move	$21,$0

$L950:
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	addiu	$4,$sp,32
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	lui	$18,%hi(begin_time.3613)

	li	$13,983040			# 0xf0000
	lw	$14,36($sp)
	li	$7,-1048576			# 0xfffffffffff00000
	lw	$8,32($sp)
	addiu	$9,$13,16960
	lw	$20,%lo(begin_time.3613)($18)
	ori	$10,$7,0xbdc0
	mtlo	$14
	lw	$28,24($sp)
	addiu	$19,$18,%lo(begin_time.3613)
	lui	$23,%hi(dummy_array)
	lw	$25,%call16(sync)($28)
	addiu	$16,$23,%lo(dummy_array)
	lw	$21,4($19)
	madd	$8,$9
	madd	$20,$10
	mflo	$12
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$23,$12,$21

	lw	$28,24($sp)
	move	$4,$0
	sra	$2,$23,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$2,44($sp)

	lw	$28,24($sp)
$L947:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$15,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$6,$15,%lo(dummy_array+262144)
	bne	$6,$16,$L947
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	lui	$5,%hi(begin_time.3613)
	lw	$28,24($sp)
	addiu	$4,$5,%lo(begin_time.3613)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	lw	$fp,120($sp)
	beq	$fp,$0,$L955
	lw	$28,24($sp)

	lw	$18,%got(xresult)($28)
	move	$20,$0
	lw	$17,%got(xval1)($28)
	li	$19,7168			# 0x1c00
	lw	$16,%got(xval2)($28)
	sw	$23,52($sp)
	move	$23,$0
$L953:
	addu	$4,$17,$23
	lw	$25,%call16(__divdi3)($28)
	addu	$24,$16,$23
	addu	$21,$18,$23
	lw	$3,0($4)
	lw	$6,0($24)
	sra	$11,$3,31
	srl	$14,$3,16
	sll	$13,$11,16
	sra	$7,$6,31
	sll	$4,$3,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$14,$13

	addiu	$9,$23,4
	lw	$28,24($sp)
	addu	$8,$17,$9
	sw	$2,0($21)
	addu	$7,$16,$9
	addu	$21,$18,$9
	lw	$10,0($8)
	lw	$6,0($7)
	lw	$25,%call16(__divdi3)($28)
	sra	$12,$10,31
	srl	$15,$10,16
	sll	$2,$12,16
	sll	$4,$10,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$15,$2

	addiu	$6,$23,8
	lw	$28,24($sp)
	addu	$5,$17,$6
	sw	$2,0($21)
	addu	$24,$16,$6
	addu	$21,$18,$6
	lw	$4,0($5)
	lw	$6,0($24)
	lw	$25,%call16(__divdi3)($28)
	sra	$3,$4,31
	srl	$11,$4,16
	sll	$14,$3,16
	sra	$7,$6,31
	sll	$4,$4,16
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$11,$14

	addiu	$13,$23,12
	lw	$28,24($sp)
	addiu	$23,$23,16
	addu	$9,$17,$13
	sw	$2,0($21)
	addu	$8,$16,$13
	addu	$21,$18,$13
	lw	$7,0($9)
	lw	$6,0($8)
	lw	$25,%call16(__divdi3)($28)
	sra	$10,$7,31
	srl	$12,$7,16
	sll	$15,$10,16
	sll	$4,$7,16
	sra	$7,$6,31
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	or	$5,$12,$15

	lw	$28,24($sp)
	bne	$23,$19,$L953
	sw	$2,0($21)

	addiu	$20,$20,1
	bne	$20,$fp,$L953
	move	$23,$0

	lw	$23,52($sp)
$L955:
	lw	$25,%call16(gettimeofday)($28)
	lui	$31,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	addiu	$16,$31,%lo(dummy_array)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	sw	$0,36($sp)

	lui	$fp,%hi(begin_time.3613)
	lw	$2,36($sp)
	li	$6,983040			# 0xf0000
	lw	$24,32($sp)
	li	$4,-1048576			# 0xfffffffffff00000
	lw	$18,%lo(begin_time.3613)($fp)
	addiu	$5,$6,16960
	mtlo	$2
	lw	$13,44($sp)
	ori	$3,$4,0xbdc0
	lw	$9,40($sp)
	addiu	$17,$fp,%lo(begin_time.3613)
	lw	$28,24($sp)
	addu	$22,$23,$22
	addu	$8,$13,$9
	lw	$19,4($17)
	sltu	$21,$22,$23
	addu	$12,$21,$8
	lw	$25,%call16(__udivdi3)($28)
	madd	$24,$5
	madd	$18,$3
	li	$6,3			# 0x3
	move	$7,$0
	lui	$fp,%hi($LC1)
	mflo	$11
	lui	$17,%hi($LC22)
	subu	$14,$11,$19
	sra	$10,$14,31
	addu	$4,$22,$14
	addu	$15,$12,$10
	sltu	$23,$4,$22
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$23,$15

	lw	$28,24($sp)
	move	$5,$3
	sw	$3,72($sp)
	move	$4,$2
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	sw	$2,68($sp)

	lui	$7,%hi($LC0)
	ldc1	$f8,%lo($LC1)($fp)
	lw	$28,24($sp)
	addiu	$4,$7,%lo($LC0)
	lw	$18,68($sp)
	lw	$20,72($sp)
	lw	$25,%call16(printf)($28)
	move	$6,$18
	move	$7,$20
	mul.d	$f6,$f0,$f8
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f6,16($sp)

	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$17,%lo($LC22)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
$L952:
	lw	$25,%call16(rand)($28)
	addiu	$16,$16,32
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	lui	$19,%hi(dummy_array+262144)

	addiu	$22,$19,%lo(dummy_array+262144)
	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lw	$28,24($sp)
	bne	$22,$16,$L952
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	lui	$2,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$2,%lo(begin_time.3613)

	lw	$6,120($sp)
	beq	$6,$0,$L960
	lw	$28,24($sp)

	lw	$10,%got(xresult)($28)
	lw	$9,%got(xval1)($28)
	lw	$8,%got(xval2)($28)
	sw	$0,44($sp)
$L959:
	move	$7,$0
$L958:
	addu	$24,$9,$7
	addu	$13,$8,$7
	addiu	$12,$7,4
	lw	$19,0($24)
	addiu	$11,$7,8
	lw	$13,0($13)
	addu	$21,$9,$12
	addu	$23,$8,$12
	addu	$14,$9,$11
	teq	$13,$0,7
	div	$0,$19,$13
	lw	$18,0($21)
	lw	$31,0($23)
	addu	$fp,$8,$11
	lw	$17,0($14)
	addiu	$6,$7,12
	addiu	$5,$7,16
	lw	$25,0($fp)
	addu	$15,$9,$6
	addu	$20,$8,$6
	sw	$17,40($sp)
	addu	$22,$8,$5
	lw	$17,0($15)
	addu	$16,$9,$5
	lw	$24,0($20)
	addiu	$4,$7,20
	lw	$23,0($22)
	addiu	$3,$7,24
	lw	$16,0($16)
	addu	$fp,$9,$4
	addu	$20,$8,$4
	addu	$14,$9,$3
	lw	$15,0($fp)
	addu	$21,$8,$3
	lw	$22,0($20)
	addiu	$2,$7,28
	lw	$14,0($14)
	addu	$12,$10,$12
	lw	$21,0($21)
	addu	$fp,$9,$2
	addu	$20,$8,$2
	addu	$11,$10,$11
	lw	$13,0($fp)
	addu	$6,$10,$6
	lw	$20,0($20)
	addu	$fp,$10,$7
	addu	$5,$10,$5
	addu	$4,$10,$4
	addu	$3,$10,$3
	addu	$2,$10,$2
	addiu	$7,$7,32
	mflo	$19
	teq	$31,$0,7
	div	$0,$18,$31
	lw	$31,40($sp)
	sw	$19,0($fp)
	mflo	$18
	teq	$25,$0,7
	div	$0,$31,$25
	sw	$18,0($12)
	mflo	$25
	teq	$24,$0,7
	div	$0,$17,$24
	sw	$25,0($11)
	mflo	$17
	teq	$23,$0,7
	div	$0,$16,$23
	sw	$17,0($6)
	mflo	$24
	teq	$22,$0,7
	div	$0,$15,$22
	li	$22,7168			# 0x1c00
	sw	$24,0($5)
	mflo	$16
	teq	$21,$0,7
	div	$0,$14,$21
	sw	$16,0($4)
	mflo	$23
	teq	$20,$0,7
	div	$0,$13,$20
	sw	$23,0($3)
	mflo	$15
	bne	$7,$22,$L958
	sw	$15,0($2)

	lw	$7,44($sp)
	lw	$21,120($sp)
	addiu	$14,$7,1
	bne	$14,$21,$L959
	sw	$14,44($sp)

$L960:
	lw	$25,%call16(gettimeofday)($28)
	lui	$10,%hi(dummy_array)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$4,$sp,32
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$16,$10,%lo(dummy_array)

	lui	$9,%hi(begin_time.3613)
	lw	$20,36($sp)
	li	$12,983040			# 0xf0000
	lw	$6,32($sp)
	li	$5,-1048576			# 0xfffffffffff00000
	lw	$8,%lo(begin_time.3613)($9)
	addiu	$11,$12,16960
	mtlo	$20
	lw	$28,24($sp)
	ori	$4,$5,0xbdc0
	addiu	$13,$9,%lo(begin_time.3613)
	lw	$25,%call16(sync)($28)
	lw	$fp,4($13)
	madd	$6,$11
	madd	$8,$4
	mflo	$3
	subu	$2,$3,$fp
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$2,56($sp)

	move	$4,$0
	lw	$28,24($sp)
	lw	$18,56($sp)
	sra	$17,$18,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$17,60($sp)

	lw	$28,24($sp)
$L957:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lui	$24,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$23,$24,%lo(dummy_array+262144)
	bne	$23,$16,$L957
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	lui	$15,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$15,%lo(begin_time.3613)

	lw	$22,120($sp)
	beq	$22,$0,$L965
	lw	$28,24($sp)

	lw	$10,%got(xresult)($28)
	lw	$9,%got(xval1)($28)
	lw	$8,%got(xval2)($28)
	sw	$0,44($sp)
$L964:
	move	$7,$0
$L963:
	addu	$14,$9,$7
	addu	$21,$8,$7
	addiu	$12,$7,4
	lw	$19,0($14)
	addiu	$11,$7,8
	lw	$13,0($21)
	addu	$fp,$9,$12
	addu	$20,$8,$12
	addu	$24,$9,$11
	teq	$13,$0,7
	div	$0,$19,$13
	lw	$31,0($fp)
	lw	$18,0($20)
	addu	$17,$8,$11
	lw	$15,0($24)
	addiu	$6,$7,12
	addiu	$5,$7,16
	lw	$25,0($17)
	addu	$23,$9,$6
	addu	$16,$8,$6
	sw	$15,40($sp)
	addu	$22,$9,$5
	lw	$17,0($23)
	addu	$21,$8,$5
	lw	$24,0($16)
	addiu	$4,$7,20
	lw	$16,0($22)
	addiu	$3,$7,24
	lw	$23,0($21)
	addu	$fp,$9,$4
	addu	$20,$8,$4
	addu	$14,$9,$3
	lw	$15,0($fp)
	addu	$21,$8,$3
	lw	$22,0($20)
	addiu	$2,$7,28
	lw	$14,0($14)
	addu	$12,$10,$12
	lw	$21,0($21)
	addu	$fp,$9,$2
	addu	$20,$8,$2
	addu	$11,$10,$11
	lw	$13,0($fp)
	addu	$6,$10,$6
	lw	$20,0($20)
	addu	$fp,$10,$7
	addu	$5,$10,$5
	addu	$4,$10,$4
	addu	$3,$10,$3
	addu	$2,$10,$2
	addiu	$7,$7,32
	mflo	$19
	teq	$18,$0,7
	div	$0,$31,$18
	lw	$18,40($sp)
	sw	$19,0($fp)
	mflo	$31
	teq	$25,$0,7
	div	$0,$18,$25
	sw	$31,0($12)
	mflo	$25
	teq	$24,$0,7
	div	$0,$17,$24
	sw	$25,0($11)
	mflo	$17
	teq	$23,$0,7
	div	$0,$16,$23
	sw	$17,0($6)
	mflo	$24
	teq	$22,$0,7
	div	$0,$15,$22
	li	$22,7168			# 0x1c00
	sw	$24,0($5)
	mflo	$16
	teq	$21,$0,7
	div	$0,$14,$21
	sw	$16,0($4)
	mflo	$23
	teq	$20,$0,7
	div	$0,$13,$20
	sw	$23,0($3)
	mflo	$15
	bne	$7,$22,$L963
	sw	$15,0($2)

	lw	$7,44($sp)
	lw	$21,120($sp)
	addiu	$14,$7,1
	bne	$14,$21,$L964
	sw	$14,44($sp)

$L965:
	lui	$10,%hi(dummy_array)
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	sw	$0,32($sp)
	addiu	$9,$10,%lo(dummy_array)
	sw	$0,36($sp)
	addiu	$4,$sp,32
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$19,$9,4

	lui	$8,%hi(begin_time.3613)
	lw	$11,36($sp)
	li	$6,983040			# 0xf0000
	lw	$4,32($sp)
	li	$3,-1048576			# 0xfffffffffff00000
	lw	$13,%lo(begin_time.3613)($8)
	addiu	$5,$6,16960
	mtlo	$11
	lw	$28,24($sp)
	ori	$2,$3,0xbdc0
	addiu	$20,$8,%lo(begin_time.3613)
	lui	$23,%hi(dummy_array)
	lw	$25,%call16(sync)($28)
	lui	$22,%hi(dummy_array)
	lw	$12,4($20)
	madd	$4,$5
	madd	$13,$2
	mflo	$18
	subu	$17,$18,$12
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$17,52($sp)

	move	$4,$0
	lw	$24,52($sp)
	lw	$28,24($sp)
	sra	$16,$24,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$16,64($sp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	addiu	$15,$23,%lo(dummy_array)
	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,0($15)

	addiu	$7,$22,%lo(dummy_array)
	lw	$28,24($sp)
	sw	$2,0($19)
	addiu	$21,$7,8
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$19,$21,24

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,0($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,4($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,8($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,12($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,16($21)

	lui	$14,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$10,$14,%lo(dummy_array+262144)
	beq	$10,$19,$L1134
	sw	$2,20($21)

$L962:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$19,$19,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($19)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($19)

	lui	$9,%hi(dummy_array+262144)
	lw	$28,24($sp)
	addiu	$8,$9,%lo(dummy_array+262144)
	bne	$8,$19,$L962
	sw	$2,-4($19)

$L1134:
	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	lui	$13,%hi(begin_time.3613)
	lw	$28,24($sp)
	move	$5,$0
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$13,%lo(begin_time.3613)

	lw	$fp,120($sp)
	beq	$fp,$0,$L969
	lw	$28,24($sp)

	lw	$10,%got(xresult)($28)
	lw	$9,%got(xval1)($28)
	lw	$8,%got(xval2)($28)
	sw	$0,44($sp)
$L968:
	move	$7,$0
$L967:
	addu	$20,$9,$7
	addu	$18,$8,$7
	addiu	$12,$7,4
	lw	$19,0($20)
	addiu	$11,$7,8
	lw	$13,0($18)
	addu	$24,$9,$12
	addu	$16,$8,$12
	addu	$23,$9,$11
	teq	$13,$0,7
	div	$0,$19,$13
	lw	$31,0($24)
	lw	$18,0($16)
	addu	$17,$8,$11
	lw	$21,0($23)
	addiu	$6,$7,12
	addiu	$5,$7,16
	lw	$25,0($17)
	addu	$15,$9,$6
	addu	$22,$8,$6
	sw	$21,40($sp)
	addu	$14,$9,$5
	lw	$17,0($15)
	addu	$fp,$8,$5
	lw	$24,0($22)
	addiu	$4,$7,20
	lw	$16,0($14)
	addiu	$3,$7,24
	lw	$23,0($fp)
	addu	$20,$8,$4
	addu	$15,$9,$4
	addu	$14,$9,$3
	lw	$22,0($20)
	addu	$21,$8,$3
	lw	$15,0($15)
	addiu	$2,$7,28
	lw	$14,0($14)
	addu	$12,$10,$12
	lw	$21,0($21)
	addu	$fp,$9,$2
	addu	$20,$8,$2
	addu	$11,$10,$11
	lw	$13,0($fp)
	addu	$6,$10,$6
	lw	$20,0($20)
	addu	$fp,$10,$7
	addu	$5,$10,$5
	addu	$4,$10,$4
	addu	$3,$10,$3
	addu	$2,$10,$2
	addiu	$7,$7,32
	mflo	$19
	teq	$18,$0,7
	div	$0,$31,$18
	lw	$18,40($sp)
	sw	$19,0($fp)
	mflo	$31
	teq	$25,$0,7
	div	$0,$18,$25
	sw	$31,0($12)
	mflo	$25
	teq	$24,$0,7
	div	$0,$17,$24
	sw	$25,0($11)
	mflo	$17
	teq	$23,$0,7
	div	$0,$16,$23
	sw	$17,0($6)
	mflo	$24
	teq	$22,$0,7
	div	$0,$15,$22
	li	$22,7168			# 0x1c00
	sw	$24,0($5)
	mflo	$16
	teq	$21,$0,7
	div	$0,$14,$21
	sw	$16,0($4)
	mflo	$23
	teq	$20,$0,7
	div	$0,$13,$20
	sw	$23,0($3)
	mflo	$15
	bne	$7,$22,$L967
	sw	$15,0($2)

	lw	$7,44($sp)
	lw	$21,120($sp)
	addiu	$14,$7,1
	bne	$14,$21,$L968
	sw	$14,44($sp)

$L969:
	lw	$25,%call16(gettimeofday)($28)
	addiu	$4,$sp,32
	move	$5,$0
	sw	$0,32($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	sw	$0,36($sp)

	lui	$10,%hi(begin_time.3613)
	lw	$11,36($sp)
	li	$6,983040			# 0xf0000
	lw	$4,32($sp)
	li	$3,-1048576			# 0xfffffffffff00000
	lw	$9,%lo(begin_time.3613)($10)
	addiu	$5,$6,16960
	mtlo	$11
	lw	$fp,52($sp)
	ori	$2,$3,0xbdc0
	lw	$20,56($sp)
	addiu	$19,$10,%lo(begin_time.3613)
	lw	$24,64($sp)
	lw	$16,60($sp)
	li	$6,3			# 0x3
	addu	$12,$fp,$20
	lw	$28,24($sp)
	lw	$13,4($19)
	move	$7,$0
	addu	$23,$24,$16
	madd	$4,$5
	madd	$9,$2
	lw	$25,%call16(__udivdi3)($28)
	sltu	$15,$12,$fp
	addu	$14,$15,$23
	mflo	$18
	subu	$17,$18,$13
	sra	$22,$17,31
	addu	$4,$12,$17
	addu	$21,$14,$22
	sltu	$10,$4,$12
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$10,$21

	lw	$28,24($sp)
	move	$4,$2
	sw	$3,72($sp)
	move	$5,$3
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	sw	$2,68($sp)

	lui	$9,%hi($LC1)
	lw	$28,24($sp)
	lui	$7,%hi($LC0)
	ldc1	$f4,%lo($LC1)($9)
	lw	$8,68($sp)
	addiu	$4,$7,%lo($LC0)
	lw	$19,72($sp)
	lw	$25,%call16(printf)($28)
	move	$6,$8
	move	$7,$19
	mul.d	$f2,$f0,$f4
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f2,16($sp)

	lw	$31,116($sp)
	lw	$fp,112($sp)
	lw	$23,108($sp)
	lw	$22,104($sp)
	lw	$21,100($sp)
	lw	$20,96($sp)
	lw	$19,92($sp)
	lw	$18,88($sp)
	lw	$17,84($sp)
	lw	$16,80($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	bench_division
	.size	bench_division, .-bench_division
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
	beq	$4,$0,$L1157
	lui	$28,%hi(__gnu_local_gp)

	move	$10,$0
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$9,7168			# 0x1c00
	lw	$5,%got(fval1)($28)
	lw	$3,%got(fresult)($28)
	move	$2,$0
$L1142:
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
	bne	$2,$9,$L1142
	swxc1	$f15,$3($6)

	addiu	$10,$10,1
	bne	$10,$4,$L1142
	move	$2,$0

$L1157:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bench_float_sqrt
	.size	bench_float_sqrt, .-bench_float_sqrt
	.align	2
	.globl	bench_fixed_sqrt
	.set	nomips16
	.set	nomicromips
	.ent	bench_fixed_sqrt
	.type	bench_fixed_sqrt, @function
bench_fixed_sqrt:
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
	beq	$4,$0,$L1158
	sw	$4,40($sp)

	li	$7,65536			# 0x10000
	lw	$17,%got(xval1)($28)
	lw	$16,%got(xresult)($28)
	move	$18,$0
	li	$4,-1073741824			# 0xffffffffc0000000
	li	$25,1073741824			# 0x40000000
	li	$24,1342177280			# 0x50000000
	li	$15,268435456			# 0x10000000
	li	$14,32768			# 0x8000
	li	$13,872415232			# 0x34000000
	li	$12,335544320			# 0x14000000
	li	$11,603979776			# 0x24000000
	li	$10,67108864			# 0x4000000
	li	$9,7168			# 0x1c00
	ori	$8,$7,0x8000
	move	$5,$0
$L1160:
	addu	$2,$17,$5
	move	$21,$15
	move	$20,$0
	lw	$19,0($2)
	move	$22,$14
	addu	$6,$16,$5
	addiu	$5,$5,4
	addu	$23,$19,$4
	sltu	$3,$19,$25
	movn	$23,$19,$3
	move	$19,$10
	movz	$21,$24,$3
	movz	$19,$11,$3
	sltu	$2,$23,$21
	movz	$22,$8,$3
	subu	$fp,$23,$21
	move	$21,$12
	movz	$20,$7,$3
	movz	$21,$13,$3
	move	$3,$19
	movz	$23,$fp,$2
	movz	$20,$22,$2
	movz	$3,$21,$2
	ori	$fp,$20,0x4000
	sltu	$21,$23,$3
	movz	$20,$fp,$21
	subu	$2,$23,$3
	movn	$2,$23,$21
	addiu	$23,$20,4096
	ori	$19,$20,0x2000
	sll	$3,$23,12
	sltu	$22,$2,$3
	movn	$19,$20,$22
	subu	$20,$2,$3
	movz	$2,$20,$22
	addiu	$21,$19,2048
	ori	$23,$19,0x1000
	sll	$3,$21,11
	sltu	$22,$2,$3
	movz	$19,$23,$22
	subu	$20,$2,$3
	movz	$2,$20,$22
	addiu	$fp,$19,1024
	ori	$3,$19,0x800
	sll	$23,$fp,10
	move	$22,$2
	sltu	$21,$2,$23
	movz	$19,$3,$21
	subu	$20,$2,$23
	movz	$22,$20,$21
	addiu	$fp,$19,512
	ori	$2,$19,0x400
	sll	$3,$fp,9
	move	$21,$22
	sltu	$20,$22,$3
	movz	$19,$2,$20
	subu	$23,$22,$3
	movz	$21,$23,$20
	addiu	$22,$19,256
	ori	$fp,$19,0x200
	sll	$2,$22,8
	move	$20,$21
	sltu	$3,$21,$2
	movz	$19,$fp,$3
	subu	$23,$21,$2
	movz	$20,$23,$3
	addiu	$21,$19,128
	ori	$22,$19,0x100
	sll	$fp,$21,7
	move	$3,$20
	sltu	$2,$20,$fp
	movz	$19,$22,$2
	subu	$23,$20,$fp
	movz	$3,$23,$2
	addiu	$20,$19,64
	ori	$21,$19,0x80
	sll	$22,$20,6
	move	$2,$3
	sltu	$fp,$3,$22
	movz	$19,$21,$fp
	subu	$23,$3,$22
	movz	$2,$23,$fp
	addiu	$3,$19,32
	ori	$20,$19,0x40
	sll	$21,$3,5
	move	$23,$2
	sltu	$22,$2,$21
	movz	$19,$20,$22
	subu	$fp,$2,$21
	movz	$23,$fp,$22
	addiu	$2,$19,16
	ori	$3,$19,0x20
	sll	$20,$2,4
	move	$22,$23
	sltu	$21,$23,$20
	movz	$19,$3,$21
	subu	$fp,$23,$20
	movz	$22,$fp,$21
	addiu	$23,$19,8
	ori	$2,$19,0x10
	sll	$3,$23,3
	move	$21,$22
	sltu	$20,$22,$3
	movz	$19,$2,$20
	subu	$fp,$22,$3
	movz	$21,$fp,$20
	addiu	$22,$19,4
	ori	$23,$19,0x8
	sll	$2,$22,2
	sltu	$3,$21,$2
	movn	$23,$19,$3
	subu	$19,$21,$2
	movz	$21,$19,$3
	addiu	$fp,$23,2
	ori	$2,$23,0x4
	move	$20,$21
	sll	$21,$fp,1
	move	$22,$23
	sltu	$3,$20,$21
	movz	$22,$2,$3
	subu	$23,$20,$21
	movn	$23,$20,$3
	addiu	$19,$22,1
	ori	$20,$22,0x2
	sltu	$fp,$23,$19
	movn	$20,$22,$fp
	sll	$2,$20,7
	bne	$5,$9,$L1160
	sw	$2,0($6)

	lw	$5,40($sp)
	addiu	$18,$18,1
	bne	$18,$5,$L1160
	move	$5,$0

$L1158:
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
	.end	bench_fixed_sqrt
	.size	bench_fixed_sqrt, .-bench_fixed_sqrt
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
	.frame	$sp,104,$31		# vars= 32, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-104
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,100($sp)
	sw	$21,84($sp)
	lui	$21,%hi(dummy_array)
	sw	$18,72($sp)
	move	$18,$4
	sw	$17,68($sp)
	lui	$17,%hi(dummy_array+262144)
	sw	$16,64($sp)
	addiu	$21,$21,%lo(dummy_array)
	.cprestore	24
	addiu	$17,$17,%lo(dummy_array+262144)
	sw	$fp,96($sp)
	move	$16,$21
	sw	$23,92($sp)
	sw	$22,88($sp)
	sw	$20,80($sp)
	.option	pic0
	jal	fill_arrays
	.option	pic2
	sw	$19,76($sp)

	lui	$4,%hi($LC23)
	lw	$28,24($sp)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$4,%lo($LC23)

	lui	$2,%hi($LC24)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$2,%lo($LC24)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
$L1167:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lw	$28,24($sp)
	bne	$16,$17,$L1167
	sw	$2,-4($16)

	lw	$25,%call16(usleep)($28)
	li	$3,458752			# 0x70000
	lui	$19,%hi(begin_time.3613)
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$3,0xa120

	addiu	$4,$19,%lo(begin_time.3613)
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	beq	$18,$0,$L1172
	lw	$28,24($sp)

	lw	$14,%got(fval1)($28)
	move	$8,$0
	lw	$15,%got(fresult)($28)
	li	$7,7168			# 0x1c00
$L1171:
	move	$20,$0
$L1170:
	addiu	$13,$20,4
	lwxc1	$f7,$14($20)
	addiu	$12,$20,8
	addiu	$11,$20,12
	lwxc1	$f6,$14($13)
	addiu	$10,$20,16
	addiu	$9,$20,20
	lwxc1	$f5,$14($12)
	addiu	$6,$20,24
	addiu	$5,$20,28
	lwxc1	$f4,$14($11)
	lwxc1	$f3,$14($10)
	sqrt.s	$f8,$f7
	lwxc1	$f2,$14($9)
	lwxc1	$f1,$14($6)
	lwxc1	$f0,$14($5)
	sqrt.s	$f9,$f6
	swxc1	$f8,$15($20)
	addiu	$20,$20,32
	sqrt.s	$f10,$f5
	swxc1	$f9,$15($13)
	sqrt.s	$f11,$f4
	swxc1	$f10,$15($12)
	sqrt.s	$f12,$f3
	swxc1	$f11,$15($11)
	sqrt.s	$f13,$f2
	swxc1	$f12,$15($10)
	sqrt.s	$f14,$f1
	swxc1	$f13,$15($9)
	sqrt.s	$f15,$f0
	swxc1	$f14,$15($6)
	bne	$20,$7,$L1170
	swxc1	$f15,$15($5)

	addiu	$8,$8,1
	bne	$8,$18,$L1171
	nop

$L1172:
	lw	$25,%call16(gettimeofday)($28)
	addiu	$23,$sp,32
	move	$5,$0
	sw	$0,32($sp)
	move	$4,$23
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	sw	$0,36($sp)

	li	$4,983040			# 0xf0000
	lw	$fp,36($sp)
	li	$3,-1048576			# 0xfffffffffff00000
	lw	$16,32($sp)
	addiu	$2,$4,16960
	lw	$24,%lo(begin_time.3613)($19)
	ori	$14,$3,0xbdc0
	mtlo	$fp
	lw	$28,24($sp)
	addiu	$22,$19,%lo(begin_time.3613)
	move	$fp,$21
	lw	$25,%call16(sync)($28)
	lw	$15,4($22)
	madd	$16,$2
	madd	$24,$14
	mflo	$8
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$20,$8,$15

	lw	$28,24($sp)
	move	$4,$0
	sra	$7,$20,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$7,40($sp)

	lw	$28,24($sp)
$L1169:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$fp,$fp,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($fp)

	lw	$28,24($sp)
	bne	$fp,$17,$L1169
	sw	$2,-4($fp)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	addiu	$4,$19,%lo(begin_time.3613)
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	beq	$18,$0,$L1177
	lw	$28,24($sp)

	lw	$24,%got(fval1)($28)
	move	$4,$0
	lw	$16,%got(fresult)($28)
	li	$3,7168			# 0x1c00
	move	$2,$0
$L1175:
	addiu	$13,$2,4
	lwxc1	$f16,$24($2)
	addiu	$12,$2,8
	addiu	$11,$2,12
	lwxc1	$f17,$24($13)
	addiu	$10,$2,16
	addiu	$9,$2,20
	lwxc1	$f18,$24($12)
	addiu	$6,$2,24
	addiu	$5,$2,28
	lwxc1	$f19,$24($11)
	lwxc1	$f3,$24($10)
	sqrt.s	$f7,$f16
	lwxc1	$f8,$24($9)
	lwxc1	$f1,$24($6)
	lwxc1	$f0,$24($5)
	sqrt.s	$f6,$f17
	swxc1	$f7,$16($2)
	addiu	$2,$2,32
	sqrt.s	$f5,$f18
	swxc1	$f6,$16($13)
	sqrt.s	$f4,$f19
	swxc1	$f5,$16($12)
	sqrt.s	$f9,$f3
	swxc1	$f4,$16($11)
	sqrt.s	$f2,$f8
	swxc1	$f9,$16($10)
	sqrt.s	$f10,$f1
	swxc1	$f2,$16($9)
	sqrt.s	$f11,$f0
	swxc1	$f10,$16($6)
	bne	$2,$3,$L1175
	swxc1	$f11,$16($5)

	addiu	$4,$4,1
	bne	$4,$18,$L1175
	move	$2,$0

$L1177:
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	move	$4,$23
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	li	$16,-1048576			# 0xfffffffffff00000

	li	$7,983040			# 0xf0000
	lw	$15,36($sp)
	ori	$3,$16,0xbdc0
	lw	$4,32($sp)
	addiu	$24,$7,16960
	lw	$14,%lo(begin_time.3613)($19)
	move	$fp,$21
	mtlo	$15
	lw	$28,24($sp)
	lw	$8,4($22)
	lw	$25,%call16(sync)($28)
	madd	$4,$24
	madd	$14,$3
	mflo	$2
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$16,$2,$8

	lw	$28,24($sp)
	move	$4,$0
	sra	$13,$16,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$13,44($sp)

	lw	$28,24($sp)
$L1174:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$fp,$fp,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($fp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($fp)

	lw	$28,24($sp)
	bne	$fp,$17,$L1174
	sw	$2,-4($fp)

	lw	$25,%call16(usleep)($28)
	li	$31,458752			# 0x70000
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	nop

	addiu	$4,$19,%lo(begin_time.3613)
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$5,$0

	beq	$18,$0,$L1182
	lw	$28,24($sp)

	lw	$14,%got(fval1)($28)
	move	$8,$0
	lw	$15,%got(fresult)($28)
	li	$7,7168			# 0x1c00
	move	$24,$0
$L1180:
	addiu	$4,$24,4
	lwxc1	$f12,$14($24)
	addiu	$12,$24,8
	addiu	$11,$24,12
	lwxc1	$f13,$14($4)
	addiu	$10,$24,16
	addiu	$9,$24,20
	lwxc1	$f14,$14($12)
	addiu	$6,$24,24
	addiu	$5,$24,28
	lwxc1	$f15,$14($11)
	lwxc1	$f16,$14($10)
	sqrt.s	$f17,$f12
	lwxc1	$f18,$14($9)
	lwxc1	$f19,$14($6)
	lwxc1	$f7,$14($5)
	sqrt.s	$f3,$f13
	swxc1	$f17,$15($24)
	addiu	$24,$24,32
	sqrt.s	$f8,$f14
	swxc1	$f3,$15($4)
	sqrt.s	$f1,$f15
	swxc1	$f8,$15($12)
	sqrt.s	$f0,$f16
	swxc1	$f1,$15($11)
	sqrt.s	$f6,$f18
	swxc1	$f0,$15($10)
	sqrt.s	$f5,$f19
	swxc1	$f6,$15($9)
	sqrt.s	$f4,$f7
	swxc1	$f5,$15($6)
	bne	$24,$7,$L1180
	swxc1	$f4,$15($5)

	addiu	$8,$8,1
	bne	$8,$18,$L1180
	move	$24,$0

$L1182:
	lw	$25,%call16(gettimeofday)($28)
	move	$5,$0
	move	$4,$23
	sw	$0,32($sp)
	sw	$0,36($sp)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addu	$fp,$16,$20

	li	$3,983040			# 0xf0000
	lw	$14,36($sp)
	li	$7,-1048576			# 0xfffffffffff00000
	lw	$15,32($sp)
	addiu	$8,$3,16960
	lw	$2,%lo(begin_time.3613)($19)
	ori	$24,$7,0xbdc0
	mtlo	$14
	lw	$12,44($sp)
	lw	$11,40($sp)
	sltu	$16,$fp,$16
	lw	$13,4($22)
	li	$6,3			# 0x3
	lw	$28,24($sp)
	move	$7,$0
	addu	$10,$12,$11
	addu	$5,$16,$10
	madd	$15,$8
	lw	$25,%call16(__udivdi3)($28)
	madd	$2,$24
	mflo	$20
	subu	$4,$20,$13
	move	$20,$21
	sra	$9,$4,31
	addu	$4,$fp,$4
	addu	$2,$5,$9
	sltu	$13,$4,$fp
	addu	$5,$13,$2
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	lui	$fp,%hi($LC0)

	lw	$28,24($sp)
	move	$5,$3
	move	$4,$2
	sw	$2,52($sp)
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	sw	$3,56($sp)

	lui	$6,%hi($LC1)
	lw	$28,24($sp)
	addiu	$4,$fp,%lo($LC0)
	ldc1	$f2,%lo($LC1)($6)
	lw	$14,52($sp)
	lw	$3,56($sp)
	lw	$25,%call16(printf)($28)
	move	$6,$14
	move	$7,$3
	mul.d	$f10,$f0,$f2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f10,16($sp)

	lui	$8,%hi($LC25)
	lw	$28,24($sp)
	lw	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	addiu	$4,$8,%lo($LC25)

	lw	$28,24($sp)
	lw	$25,%call16(sync)($28)
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	move	$4,$0

	lw	$28,24($sp)
$L1179:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$20,$20,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($20)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($20)

	lw	$28,24($sp)
	bne	$20,$17,$L1179
	sw	$2,-4($20)

	li	$31,458752			# 0x70000
	lw	$25,%call16(usleep)($28)
	ori	$4,$31,0xa120
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	move	$16,$21

	move	$5,$0
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$19,%lo(begin_time.3613)

	.option	pic0
	jal	bench_fixed_sqrt
	.option	pic2
	move	$4,$18

	move	$5,$0
	lw	$28,24($sp)
	move	$4,$23
	sw	$0,32($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	sw	$0,36($sp)

	li	$4,983040			# 0xf0000
	lw	$24,36($sp)
	li	$10,-1048576			# 0xfffffffffff00000
	lw	$11,32($sp)
	addiu	$12,$4,16960
	lw	$15,%lo(begin_time.3613)($19)
	ori	$9,$10,0xbdc0
	mtlo	$24
	lw	$28,24($sp)
	lw	$7,4($22)
	lw	$25,%call16(sync)($28)
	madd	$11,$12
	madd	$15,$9
	mflo	$5
	subu	$2,$5,$7
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	sw	$2,40($sp)

	move	$4,$0
	lw	$28,24($sp)
	lw	$13,40($sp)
	sra	$6,$13,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$6,44($sp)

	lw	$28,24($sp)
$L1183:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$16,$16,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($16)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($16)

	lw	$28,24($sp)
	bne	$16,$17,$L1183
	sw	$2,-4($16)

	li	$14,458752			# 0x70000
	lw	$25,%call16(usleep)($28)
	addiu	$21,$21,32
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$14,0xa120

	move	$5,$0
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$19,%lo(begin_time.3613)

	.option	pic0
	jal	bench_fixed_sqrt
	.option	pic2
	move	$4,$18

	move	$5,$0
	lw	$28,24($sp)
	move	$4,$23
	sw	$0,32($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	sw	$0,36($sp)

	li	$3,983040			# 0xf0000
	lw	$15,36($sp)
	li	$4,-1048576			# 0xfffffffffff00000
	lw	$24,32($sp)
	addiu	$7,$3,16960
	lw	$8,%lo(begin_time.3613)($19)
	ori	$12,$4,0xbdc0
	mtlo	$15
	lw	$28,24($sp)
	lw	$20,4($22)
	lw	$25,%call16(sync)($28)
	madd	$24,$7
	madd	$8,$12
	mflo	$11
	.reloc	1f,R_MIPS_JALR,sync
1:	jalr	$25
	subu	$20,$11,$20

	lw	$28,24($sp)
	move	$4,$0
	sra	$10,$20,31
	lw	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	sw	$10,48($sp)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($21)

	lw	$28,24($sp)
	beq	$21,$17,$L1283
	sw	$2,-4($21)

$L1184:
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	addiu	$21,$21,32

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-32($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-28($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-24($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-20($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-16($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-12($21)

	lw	$28,24($sp)
	lw	$25,%call16(rand)($28)
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	sw	$2,-8($21)

	lw	$28,24($sp)
	bne	$21,$17,$L1184
	sw	$2,-4($21)

$L1283:
	lw	$25,%call16(usleep)($28)
	li	$17,458752			# 0x70000
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	ori	$4,$17,0xa120

	move	$5,$0
	lw	$28,24($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	addiu	$4,$19,%lo(begin_time.3613)

	.option	pic0
	jal	bench_fixed_sqrt
	.option	pic2
	move	$4,$18

	move	$5,$0
	lw	$28,24($sp)
	move	$4,$23
	sw	$0,32($sp)
	lw	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	sw	$0,36($sp)

	li	$5,983040			# 0xf0000
	lw	$9,36($sp)
	li	$6,-1048576			# 0xfffffffffff00000
	lw	$13,32($sp)
	addiu	$2,$5,16960
	lw	$18,%lo(begin_time.3613)($19)
	ori	$16,$6,0xbdc0
	mtlo	$9
	lw	$19,4($22)
	lw	$22,40($sp)
	li	$6,3			# 0x3
	lw	$8,48($sp)
	move	$7,$0
	lw	$3,44($sp)
	addu	$23,$20,$22
	lw	$28,24($sp)
	addu	$24,$8,$3
	madd	$13,$2
	madd	$18,$16
	lw	$25,%call16(__udivdi3)($28)
	sltu	$4,$23,$20
	addu	$11,$4,$24
	mflo	$14
	subu	$15,$14,$19
	sra	$12,$15,31
	addu	$4,$23,$15
	addu	$20,$11,$12
	sltu	$10,$4,$23
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	addu	$5,$10,$20

	lw	$28,24($sp)
	move	$4,$2
	sw	$3,56($sp)
	move	$5,$3
	lw	$25,%call16(__floatundidf)($28)
	.reloc	1f,R_MIPS_JALR,__floatundidf
1:	jalr	$25
	sw	$2,52($sp)

	addiu	$4,$fp,%lo($LC0)
	lui	$fp,%hi($LC1)
	lw	$28,24($sp)
	lw	$7,52($sp)
	ldc1	$f12,%lo($LC1)($fp)
	lw	$21,56($sp)
	lw	$25,%call16(printf)($28)
	move	$6,$7
	move	$7,$21
	mul.d	$f14,$f0,$f12
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	sdc1	$f14,16($sp)

	lw	$31,100($sp)
	lw	$fp,96($sp)
	lw	$23,92($sp)
	lw	$22,88($sp)
	lw	$21,84($sp)
	lw	$20,80($sp)
	lw	$19,76($sp)
	lw	$18,72($sp)
	lw	$17,68($sp)
	lw	$16,64($sp)
	j	$31
	addiu	$sp,$sp,104

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
	bne	$2,$0,$L1290
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
$L1288:
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

$L1290:
	lui	$24,%hi($LC26)
	lw	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	addiu	$4,$24,%lo($LC26)

	.option	pic0
	j	$L1288
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
