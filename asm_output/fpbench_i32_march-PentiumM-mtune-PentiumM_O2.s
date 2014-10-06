	.file	"fpbench.c"
	.text
	.p2align 4,,15
	.globl	bench_float_sub
	.type	bench_float_sub, @function
bench_float_sub:
.LFB127:
	.cfi_startproc
	movl	4(%esp), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	.L10
	.p2align 4,,15
.L6:
	xorl	%eax, %eax
	.p2align 4,,15
.L4:
	flds	fval1(,%eax,4)
	fsubs	fval2(,%eax,4)
	fstps	fresult(,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L4
	incl	%edx
	cmpl	%ecx, %edx
	jne	.L6
	ret
.L10:
	.p2align 4,,9
	ret
	.cfi_endproc
.LFE127:
	.size	bench_float_sub, .-bench_float_sub
	.p2align 4,,15
	.globl	bench_fixed_sub
	.type	bench_fixed_sub, @function
bench_fixed_sub:
.LFB128:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	.L11
	.p2align 4,,15
.L16:
	xorl	%eax, %eax
	.p2align 4,,15
.L14:
	movl	xval1(,%eax,4), %edx
	subl	xval2(,%eax,4), %edx
	movl	%edx, xresult(,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L14
	incl	%ecx
	cmpl	%ebx, %ecx
	jne	.L16
.L11:
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE128:
	.size	bench_fixed_sub, .-bench_fixed_sub
	.p2align 4,,15
	.globl	bench_float_add
	.type	bench_float_add, @function
bench_float_add:
.LFB130:
	.cfi_startproc
	movl	4(%esp), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	.L27
	.p2align 4,,15
.L24:
	xorl	%eax, %eax
	.p2align 4,,15
.L22:
	flds	fval2(,%eax,4)
	fadds	fval1(,%eax,4)
	fstps	fresult(,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L22
	incl	%edx
	cmpl	%ecx, %edx
	jne	.L24
	ret
.L27:
	.p2align 4,,9
	ret
	.cfi_endproc
.LFE130:
	.size	bench_float_add, .-bench_float_add
	.p2align 4,,15
	.globl	bench_fixed_add
	.type	bench_fixed_add, @function
bench_fixed_add:
.LFB131:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	.L28
	.p2align 4,,15
.L33:
	xorl	%eax, %eax
	.p2align 4,,15
.L31:
	movl	xval1(,%eax,4), %edx
	addl	xval2(,%eax,4), %edx
	movl	%edx, xresult(,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L31
	incl	%ecx
	cmpl	%ebx, %ecx
	jne	.L33
.L28:
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE131:
	.size	bench_fixed_add, .-bench_fixed_add
	.p2align 4,,15
	.globl	bench_float_mul
	.type	bench_float_mul, @function
bench_float_mul:
.LFB133:
	.cfi_startproc
	movl	4(%esp), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	.L44
	.p2align 4,,15
.L41:
	xorl	%eax, %eax
	.p2align 4,,15
.L39:
	flds	fval2(,%eax,4)
	fmuls	fval1(,%eax,4)
	fstps	fresult(,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L39
	incl	%edx
	cmpl	%ecx, %edx
	jne	.L41
	ret
.L44:
	.p2align 4,,9
	ret
	.cfi_endproc
.LFE133:
	.size	bench_float_mul, .-bench_float_mul
	.p2align 4,,15
	.globl	bench_fixed_mul
	.type	bench_fixed_mul, @function
bench_fixed_mul:
.LFB134:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	movl	12(%esp), %esi
	testl	%esi, %esi
	je	.L45
	.p2align 4,,15
.L50:
	xorl	%ecx, %ecx
	.p2align 4,,15
.L48:
	movl	xval2(,%ecx,4), %eax
	imull	xval1(,%ecx,4)
	shrdl	$16, %edx, %eax
	movl	%eax, xresult(,%ecx,4)
	incl	%ecx
	cmpl	$1792, %ecx
	jne	.L48
	incl	%ebx
	cmpl	%esi, %ebx
	jne	.L50
.L45:
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE134:
	.size	bench_fixed_mul, .-bench_fixed_mul
	.p2align 4,,15
	.globl	bench_integer_mul
	.type	bench_integer_mul, @function
bench_integer_mul:
.LFB135:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	.L53
	.p2align 4,,15
.L58:
	xorl	%eax, %eax
	.p2align 4,,15
.L56:
	movl	xval1(,%eax,4), %edx
	imull	xval2(,%eax,4), %edx
	movl	%edx, xresult(,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L56
	incl	%ecx
	cmpl	%ebx, %ecx
	jne	.L58
.L53:
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE135:
	.size	bench_integer_mul, .-bench_integer_mul
	.p2align 4,,15
	.globl	bench_float_div
	.type	bench_float_div, @function
bench_float_div:
.LFB137:
	.cfi_startproc
	movl	4(%esp), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	.L69
	.p2align 4,,15
.L66:
	xorl	%eax, %eax
	.p2align 4,,15
.L64:
	flds	fval1(,%eax,4)
	fdivs	fval2(,%eax,4)
	fstps	fresult(,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L64
	incl	%edx
	cmpl	%ecx, %edx
	jne	.L66
	ret
.L69:
	.p2align 4,,9
	ret
	.cfi_endproc
.LFE137:
	.size	bench_float_div, .-bench_float_div
	.globl	__divdi3
	.p2align 4,,15
	.globl	bench_fixed_div
	.type	bench_fixed_div, @function
bench_fixed_div:
.LFB138:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %edi
	testl	%edi, %edi
	je	.L70
	.p2align 4,,15
.L75:
	xorl	%ebx, %ebx
	.p2align 4,,15
.L73:
	movl	xval1(,%ebx,4), %eax
	movl	xval2(,%ebx,4), %ecx
	cltd
	movl	%ecx, %ebp
	shldl	$16, %eax, %edx
	sarl	$31, %ebp
	sall	$16, %eax
	movl	%ecx, 8(%esp)
	movl	%ebp, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3
	movl	%eax, xresult(,%ebx,4)
	incl	%ebx
	cmpl	$1792, %ebx
	jne	.L73
	incl	%esi
	cmpl	%edi, %esi
	jne	.L75
.L70:
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE138:
	.size	bench_fixed_div, .-bench_fixed_div
	.p2align 4,,15
	.globl	bench_integer_div
	.type	bench_integer_div, @function
bench_integer_div:
.LFB139:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	movl	12(%esp), %esi
	testl	%esi, %esi
	je	.L78
	.p2align 4,,15
.L83:
	xorl	%ecx, %ecx
	.p2align 4,,15
.L81:
	movl	xval1(,%ecx,4), %eax
	cltd
	idivl	xval2(,%ecx,4)
	movl	%eax, xresult(,%ecx,4)
	incl	%ecx
	cmpl	$1792, %ecx
	jne	.L81
	incl	%ebx
	cmpl	%esi, %ebx
	jne	.L83
.L78:
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE139:
	.size	bench_integer_div, .-bench_integer_div
	.p2align 4,,15
	.globl	bench_float_sqrt
	.type	bench_float_sqrt, @function
bench_float_sqrt:
.LFB141:
	.cfi_startproc
	movl	4(%esp), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	.L94
	.p2align 4,,15
.L91:
	xorl	%eax, %eax
	.p2align 4,,15
.L89:
	flds	fval1(,%eax,4)
	fsqrt
	fstps	fresult(,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L89
	incl	%edx
	cmpl	%ecx, %edx
	jne	.L91
	ret
.L94:
	.p2align 4,,9
	ret
	.cfi_endproc
.LFE141:
	.size	bench_float_sqrt, .-bench_float_sqrt
	.p2align 4,,15
	.globl	fpsqrt
	.type	fpsqrt, @function
fpsqrt:
.LFB120:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	cmpl	$1073741823, %edx
	jbe	.L112
	subl	$1073741824, %edx
	movl	$1342177280, %ecx
	movl	$65536, %eax
.L96:
	cmpl	%ecx, %edx
	jb	.L97
	subl	%ecx, %edx
	orl	$32768, %eax
.L97:
	leal	8192(%eax), %ecx
	sall	$13, %ecx
	cmpl	%ecx, %edx
	jb	.L98
	subl	%ecx, %edx
	orl	$16384, %eax
.L98:
	leal	4096(%eax), %ecx
	sall	$12, %ecx
	cmpl	%ecx, %edx
	jb	.L99
	subl	%ecx, %edx
	orl	$8192, %eax
.L99:
	leal	2048(%eax), %ecx
	sall	$11, %ecx
	cmpl	%ecx, %edx
	jb	.L100
	subl	%ecx, %edx
	orl	$4096, %eax
.L100:
	leal	1024(%eax), %ecx
	sall	$10, %ecx
	cmpl	%ecx, %edx
	jb	.L101
	subl	%ecx, %edx
	orl	$2048, %eax
.L101:
	leal	512(%eax), %ecx
	sall	$9, %ecx
	cmpl	%ecx, %edx
	jb	.L102
	subl	%ecx, %edx
	orl	$1024, %eax
.L102:
	leal	256(%eax), %ecx
	sall	$8, %ecx
	cmpl	%ecx, %edx
	jb	.L103
	subl	%ecx, %edx
	orl	$512, %eax
.L103:
	leal	128(%eax), %ecx
	sall	$7, %ecx
	cmpl	%ecx, %edx
	jb	.L104
	subl	%ecx, %edx
	orl	$256, %eax
.L104:
	leal	64(%eax), %ecx
	sall	$6, %ecx
	cmpl	%ecx, %edx
	jb	.L105
	subl	%ecx, %edx
	orl	$128, %eax
.L105:
	leal	32(%eax), %ecx
	sall	$5, %ecx
	cmpl	%ecx, %edx
	jb	.L106
	subl	%ecx, %edx
	orl	$64, %eax
.L106:
	leal	16(%eax), %ecx
	sall	$4, %ecx
	cmpl	%ecx, %edx
	jb	.L107
	subl	%ecx, %edx
	orl	$32, %eax
.L107:
	leal	64(,%eax,8), %ecx
	cmpl	%ecx, %edx
	jb	.L108
	subl	%ecx, %edx
	orl	$16, %eax
.L108:
	leal	16(,%eax,4), %ecx
	cmpl	%ecx, %edx
	jb	.L109
	subl	%ecx, %edx
	orl	$8, %eax
.L109:
	leal	4(%eax,%eax), %ecx
	cmpl	%ecx, %edx
	jb	.L110
	subl	%ecx, %edx
	orl	$4, %eax
.L110:
	leal	1(%eax), %ebx
	movl	%eax, %ecx
	orl	$2, %ecx
	cmpl	%ebx, %edx
	cmovae	%ecx, %eax
	sall	$7, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.p2align 4,,10
	.p2align 3
.L112:
	.cfi_restore_state
	movl	$268435456, %ecx
	xorl	%eax, %eax
	jmp	.L96
	.cfi_endproc
.LFE120:
	.size	fpsqrt, .-fpsqrt
	.p2align 4,,15
	.globl	bench_fixed_sqrt
	.type	bench_fixed_sqrt, @function
bench_fixed_sqrt:
.LFB142:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %edi
	testl	%edi, %edi
	je	.L113
	.p2align 4,,15
.L118:
	xorl	%ebx, %ebx
	.p2align 4,,15
.L116:
	movl	xval1(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	fpsqrt
	movl	%eax, xresult(,%ebx,4)
	incl	%ebx
	cmpl	$1792, %ebx
	jne	.L116
	incl	%esi
	cmpl	%edi, %esi
	jne	.L118
.L113:
	popl	%ebx
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 8
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	ret
	.cfi_endproc
.LFE142:
	.size	bench_fixed_sqrt, .-bench_fixed_sqrt
	.p2align 4,,15
	.globl	flush_cache
	.type	flush_cache, @function
flush_cache:
.LFB121:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ebx, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	.p2align 4,,15
.L122:
	call	rand
	movl	%eax, dummy_array(,%ebx,4)
	incl	%ebx
	cmpl	$524288, %ebx
	jne	.L122
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE121:
	.size	flush_cache, .-flush_cache
	.p2align 4,,15
	.globl	timer
	.type	timer, @function
timer:
.LFB122:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	movl	%eax, 24(%esp)
	xorl	%eax, %eax
	movl	%eax, 28(%esp)
	movl	48(%esp), %eax
	testl	%eax, %eax
	jne	.L127
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	call	gettimeofday
	movl	28(%esp), %eax
	imull	$1000000, 24(%esp), %edx
	movl	begin_time.5393+4, %ecx
	addl	%eax, %edx
	imull	$-1000000, begin_time.5393, %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	subl	%ecx, %eax
	addl	%edx, %eax
	cltd
	ret
	.p2align 4,,10
	.p2align 3
.L127:
	.cfi_restore_state
	call	sync
	movl	$0, (%esp)
	call	fflush
	call	flush_cache
	movl	$500000, (%esp)
	call	usleep
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	$begin_time.5393, (%esp)
	call	gettimeofday
	xorl	%eax, %eax
	xorl	%edx, %edx
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE122:
	.size	timer, .-timer
	.globl	__udivdi3
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"AVG: %llu usecs, or %f secs.\n"
	.text
	.p2align 4,,15
	.globl	avg_of_3_runs
	.type	avg_of_3_runs, @function
avg_of_3_runs:
.LFB123:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%ebx, 60(%esp)
	movl	84(%esp), %ebx
	.cfi_offset 3, -20
	movl	%esi, 64(%esp)
	movl	%edi, 68(%esp)
	movl	%ebp, 72(%esp)
	movl	80(%esp), %ebp
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	$1, (%esp)
	call	timer
	movl	%ebx, (%esp)
	call	*%ebp
	movl	$0, (%esp)
	call	timer
	movl	$1, (%esp)
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	call	timer
	movl	%ebx, (%esp)
	call	*%ebp
	movl	$0, (%esp)
	call	timer
	movl	$1, (%esp)
	movl	%eax, %esi
	movl	%edx, %edi
	call	timer
	movl	%ebx, (%esp)
	call	*%ebp
	movl	$0, (%esp)
	call	timer
	addl	32(%esp), %esi
	adcl	36(%esp), %edi
	addl	%eax, %esi
	movl	$3, %eax
	adcl	%edx, %edi
	xorl	%edx, %edx
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	call	__udivdi3
	testl	%edx, %edx
	movd	%eax, %xmm0
	movd	%edx, %xmm1
	movl	%eax, %esi
	punpckldq	%xmm1, %xmm0
	movl	%edx, %edi
	movq	%xmm0, 40(%esp)
	fildq	40(%esp)
	js	.L130
.L129:
	movl	$.LC3, %eax
	fmull	.LC2
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	fstpl	16(%esp)
	call	__printf_chk
	movl	%esi, %eax
	movl	%edi, %edx
	movl	60(%esp), %ebx
	movl	64(%esp), %esi
	movl	68(%esp), %edi
	movl	72(%esp), %ebp
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 3
	ret
	.p2align 4,,10
	.p2align 3
.L130:
	.cfi_restore_state
	fadds	.LC1
	jmp	.L129
	.cfi_endproc
.LFE123:
	.size	avg_of_3_runs, .-avg_of_3_runs
	.p2align 4,,15
	.globl	fill_float_array
	.type	fill_float_array, @function
fill_float_array:
.LFB124:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %edi
	movl	48(%esp), %ebx
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L136:
	fstps	8(%esp)
	call	rand
	movl	%eax, %ecx
	movl	$1759218605, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$11, %edx
	subl	%eax, %edx
	imull	$5000, %edx, %edx
	subl	%edx, %ecx
	incl	%ecx
	movl	%ecx, 12(%esp)
	fildl	12(%esp)
	fmuls	8(%esp)
	fsts	(%ebx)
	flds	.LC7
	fxch	%st(1)
	fcomi	%st(1), %st
	fstp	%st(1)
	jb	.L152
	fstp	%st(0)
	movl	$0x46800054, %eax
	movl	%eax, (%ebx)
	movl	%eax, 4(%esp)
	flds	4(%esp)
.L143:
	incl	%esi
	fstps	(%ebx)
	addl	$4, %ebx
	cmpl	$1792, %esi
	je	.L153
.L144:
	call	rand
	incl	%eax
	movl	%eax, 8(%esp)
	call	rand
	testl	%edi, %edi
	leal	1(%eax), %ebp
	je	.L154
.L132:
	movl	%ebp, 12(%esp)
	fildl	8(%esp)
	fildl	12(%esp)
	fdivrp	%st, %st(1)
	fstps	(%ebx)
	call	rand
	flds	(%ebx)
	movl	%eax, %ecx
	movl	$1431655766, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%edx,%edx,2), %eax
	subl	%eax, %ecx
	je	.L136
	cmpl	$2, %ecx
	jne	.L138
	fstps	8(%esp)
	call	rand
	movl	$1717986919, %edx
	movl	%eax, %ecx
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	leal	(%edx,%edx,4), %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	incl	%ecx
	movl	%ecx, 12(%esp)
	fildl	12(%esp)
	fdivrs	8(%esp)
	fsts	(%ebx)
.L138:
	fldz
	fcomip	%st(1), %st
	flds	.LC4
	fcmovne	%st(1), %st
	fstp	%st(1)
	incl	%esi
	fstps	(%ebx)
	addl	$4, %ebx
	cmpl	$1792, %esi
	jne	.L144
.L153:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.p2align 4,,10
	.p2align 3
.L154:
	.cfi_restore_state
	call	rand
	movl	8(%esp), %ecx
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	decl	%eax
	imull	%ecx, %eax
	movl	%eax, 8(%esp)
	call	rand
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	decl	%eax
	imull	%eax, %ebp
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L152:
	flds	.LC8
	fcomip	%st(1), %st
	jb	.L138
	fstp	%st(0)
	movl	$0xc6800054, %eax
	movl	%eax, (%ebx)
	movl	%eax, 4(%esp)
	flds	4(%esp)
	jmp	.L143
	.cfi_endproc
.LFE124:
	.size	fill_float_array, .-fill_float_array
	.p2align 4,,15
	.globl	fill_fixed_array_from_float_array
	.type	fill_fixed_array_from_float_array, @function
fill_fixed_array_from_float_array:
.LFB125:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	flds	.LC10
	.p2align 4,,15
.L156:
	flds	(%ecx,%eax,4)
	fmul	%st(1), %st
	fstps	(%esp)
	cvttss2si	(%esp), %edx
	movl	%edx, (%ebx,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L156
	fstp	%st(0)
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE125:
	.size	fill_fixed_array_from_float_array, .-fill_fixed_array_from_float_array
	.p2align 4,,15
	.globl	fill_arrays
	.type	fill_arrays, @function
fill_arrays:
.LFB126:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	$1, %eax
	movl	%eax, 4(%esp)
	movl	$fval1, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	$fval2, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	flds	.LC10
	.p2align 4,,15
.L159:
	flds	fval1(,%eax,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %edx
	movl	%edx, xval1(,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L159
	fstp	%st(0)
	xorl	%eax, %eax
	flds	.LC10
	.p2align 4,,15
.L160:
	flds	fval2(,%eax,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %edx
	movl	%edx, xval2(,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L160
	fstp	%st(0)
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE126:
	.size	fill_arrays, .-fill_arrays
	.section	.rodata.str1.1
.LC11:
	.string	"\nSUBTRACTION BENCHMARKS:"
.LC12:
	.string	"\tFloat subtraction:\n\t"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC13:
	.string	"\tFixed-point 16.16 subtraction:\n\t"
	.align 4
.LC14:
	.string	"\tNote: skipping integer timing; will be same as fixed-point."
	.text
	.p2align 4,,15
	.globl	bench_subtraction
	.type	bench_subtraction, @function
bench_subtraction:
.LFB129:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	call	fill_arrays
	movl	$.LC11, (%esp)
	call	puts
	movl	$.LC12, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_sub, (%esp)
	call	avg_of_3_runs
	movl	$.LC13, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_fixed_sub, (%esp)
	call	avg_of_3_runs
	movl	$.LC14, %eax
	movl	%eax, 32(%esp)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	jmp	puts
	.cfi_endproc
.LFE129:
	.size	bench_subtraction, .-bench_subtraction
	.section	.rodata.str1.1
.LC15:
	.string	"\nADDITION BENCHMARKS:"
.LC16:
	.string	"\tFloat addition:\n\t"
	.section	.rodata.str1.4
	.align 4
.LC17:
	.string	"\tFixed-point 16.16 addition:\n\t"
	.text
	.p2align 4,,15
	.globl	bench_addition
	.type	bench_addition, @function
bench_addition:
.LFB132:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	call	fill_arrays
	movl	$.LC15, (%esp)
	call	puts
	movl	$.LC16, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_add, (%esp)
	call	avg_of_3_runs
	movl	$.LC17, %edx
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_fixed_add, (%esp)
	call	avg_of_3_runs
	movl	$.LC14, %ecx
	movl	%ecx, 32(%esp)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	jmp	puts
	.cfi_endproc
.LFE132:
	.size	bench_addition, .-bench_addition
	.section	.rodata.str1.1
.LC18:
	.string	"\nMULTIPLICATION BENCHMARKS:"
.LC19:
	.string	"\tFloat multiplication:\n\t"
	.section	.rodata.str1.4
	.align 4
.LC20:
	.string	"\tFixed-point 16.16 multiplication:\n\t"
	.section	.rodata.str1.1
.LC21:
	.string	"\tInteger multiplication:\n\t"
	.text
	.p2align 4,,15
	.globl	bench_multiplication
	.type	bench_multiplication, @function
bench_multiplication:
.LFB136:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	call	fill_arrays
	movl	$.LC18, (%esp)
	call	puts
	movl	$.LC19, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_mul, (%esp)
	call	avg_of_3_runs
	xorl	%edx, %edx
	testl	%ebx, %ebx
	je	.L167
	.p2align 4,,15
.L170:
	xorl	%eax, %eax
	.p2align 4,,15
.L168:
	flds	fval2(,%eax,4)
	fmuls	fval1(,%eax,4)
	fstps	fresult(,%eax,4)
	incl	%eax
	cmpl	$1792, %eax
	jne	.L168
	incl	%edx
	cmpl	%edx, %ebx
	jne	.L170
.L167:
	movl	$.LC20, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_fixed_mul, (%esp)
	call	avg_of_3_runs
	movl	$.LC21, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_integer_mul, (%esp)
	call	avg_of_3_runs
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE136:
	.size	bench_multiplication, .-bench_multiplication
	.section	.rodata.str1.1
.LC22:
	.string	"\nDIVISION BENCHMARKS:"
.LC23:
	.string	"\tFloat Division:\n\t"
	.section	.rodata.str1.4
	.align 4
.LC24:
	.string	"\tFixed-point 16.16 Division:\n\t"
	.section	.rodata.str1.1
.LC25:
	.string	"\tInteger Division:\n\t"
	.text
	.p2align 4,,15
	.globl	bench_division
	.type	bench_division, @function
bench_division:
.LFB140:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	call	fill_arrays
	movl	$.LC22, (%esp)
	call	puts
	movl	$.LC23, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_div, (%esp)
	call	avg_of_3_runs
	movl	$.LC24, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_fixed_div, (%esp)
	call	avg_of_3_runs
	movl	$.LC25, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_integer_div, (%esp)
	call	avg_of_3_runs
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE140:
	.size	bench_division, .-bench_division
	.section	.rodata.str1.1
.LC26:
	.string	"\nSQUARE-ROOT BENCHMARKS:"
.LC27:
	.string	"\tFloat Square Root:\n\t"
	.section	.rodata.str1.4
	.align 4
.LC28:
	.string	"\tFixed-point 16.16 Square Root:\n\t"
	.text
	.p2align 4,,15
	.globl	bench_squareroot
	.type	bench_squareroot, @function
bench_squareroot:
.LFB143:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	call	fill_arrays
	movl	$.LC26, (%esp)
	call	puts
	movl	$.LC27, %edx
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_sqrt, (%esp)
	call	avg_of_3_runs
	movl	$.LC28, %ecx
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_fixed_sqrt, (%esp)
	call	avg_of_3_runs
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE143:
	.size	bench_squareroot, .-bench_squareroot
	.section	.rodata.str1.4
	.align 4
.LC29:
	.string	"Missing argument: number of iterations"
	.align 4
.LC30:
	.string	"32-bit Floating Point vs. 16.16 Fixed-point Math Speed Comparison"
	.align 4
.LC31:
	.string	"Written by Dan Silsby  dansilsby <AT> gmail <DOT> com"
	.align 4
.LC32:
	.string	"NOTE: before each benchmark is timed, sync(), fflush(),\na L2 cache flush, and .5 second delay are all executed."
	.align 4
.LC33:
	.string	"Times reported are an average of 3 of these benchmark runs.\n"
	.align 4
.LC34:
	.string	"Benchmark requested: %u iterations over %u-length arrays.\n"
	.align 4
.LC35:
	.string	"Reported sizeof(float) on this architecture: %d\n\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB144:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$16, %esp
	movl	$0, (%esp)
	.cfi_offset 3, -12
	call	time
	movl	%eax, (%esp)
	call	srand
	cmpl	$1, 8(%ebp)
	jle	.L178
	xorl	%eax, %eax
	movl	$10, %ebx
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	$.LC30, (%esp)
	movl	%eax, %ebx
	call	puts
	movl	$.LC31, (%esp)
	call	puts
	movl	$.LC32, (%esp)
	call	puts
	movl	$.LC33, (%esp)
	call	puts
	movl	$1792, %eax
	movl	%eax, 12(%esp)
	movl	$.LC34, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	$4, %eax
	movl	%eax, 8(%esp)
	movl	$.LC35, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, (%esp)
	call	bench_addition
	movl	%ebx, (%esp)
	call	bench_subtraction
	movl	%ebx, (%esp)
	call	bench_multiplication
	movl	%ebx, (%esp)
	call	bench_division
	movl	%ebx, (%esp)
	call	bench_squareroot
	movl	dummy_array+2097148, %eax
	cmpl	%eax, dummy_array
	sete	%al
	movzbl	%al, %eax
.L177:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret
.L178:
	.cfi_restore_state
	movl	$.LC29, (%esp)
	call	puts
	movl	$1, %eax
	jmp	.L177
	.cfi_endproc
.LFE144:
	.size	main, .-main
	.comm	xresult,7168,32
	.comm	xval2,7168,32
	.comm	xval1,7168,32
	.comm	fresult,7168,32
	.comm	fval2,7168,32
	.comm	fval1,7168,32
	.local	dummy_array
	.comm	dummy_array,2097152,32
	.local	begin_time.5393
	.comm	begin_time.5393,8,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1602224128
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	-1598689907
	.long	1051772663
	.section	.rodata.cst4
	.align 4
.LC4:
	.long	1039979355
	.align 4
.LC7:
	.long	1191181824
	.align 4
.LC8:
	.long	-956301824
	.align 4
.LC10:
	.long	1199570944
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
