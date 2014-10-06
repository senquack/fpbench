	.file	"fpbench.c"
	.text
	.p2align 4,,15
	.globl	bench_float_sub
	.type	bench_float_sub, @function
bench_float_sub:
.LFB127:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	.L1
	.p2align 4,,15
.L6:
	xorl	%eax, %eax
	.p2align 4,,15
.L4:
	flds	fval1(,%eax,4)
	leal	1(%eax), %edx
	fsubs	fval2(,%eax,4)
	fstps	fresult(,%eax,4)
	flds	fval1(,%edx,4)
	fsubs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	2(%eax), %edx
	flds	fval1(,%edx,4)
	fsubs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	3(%eax), %edx
	flds	fval1(,%edx,4)
	fsubs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	4(%eax), %edx
	flds	fval1(,%edx,4)
	fsubs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	5(%eax), %edx
	flds	fval1(,%edx,4)
	fsubs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	6(%eax), %edx
	flds	fval1(,%edx,4)
	fsubs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	7(%eax), %edx
	addl	$8, %eax
	flds	fval1(,%edx,4)
	cmpl	$1792, %eax
	fsubs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	jne	.L4
	incl	%ecx
	cmpl	%ebx, %ecx
	jne	.L6
.L1:
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
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
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	movl	12(%esp), %esi
	testl	%esi, %esi
	je	.L17
	.p2align 4,,15
.L22:
	xorl	%eax, %eax
	.p2align 4,,15
.L20:
	movl	xval2(,%eax,4), %ecx
	movl	xval1(,%eax,4), %edx
	subl	%ecx, %edx
	movl	%edx, xresult(,%eax,4)
	leal	1(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	subl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	2(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	subl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	3(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	subl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	4(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	subl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	5(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	subl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	6(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	subl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	7(%eax), %edx
	addl	$8, %eax
	movl	xval1(,%edx,4), %ecx
	subl	xval2(,%edx,4), %ecx
	cmpl	$1792, %eax
	movl	%ecx, xresult(,%edx,4)
	jne	.L20
	incl	%ebx
	cmpl	%esi, %ebx
	jne	.L22
.L17:
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
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
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	.L32
	.p2align 4,,15
.L37:
	xorl	%eax, %eax
	.p2align 4,,15
.L35:
	flds	fval2(,%eax,4)
	leal	1(%eax), %edx
	fadds	fval1(,%eax,4)
	fstps	fresult(,%eax,4)
	flds	fval2(,%edx,4)
	fadds	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	2(%eax), %edx
	flds	fval2(,%edx,4)
	fadds	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	3(%eax), %edx
	flds	fval2(,%edx,4)
	fadds	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	4(%eax), %edx
	flds	fval2(,%edx,4)
	fadds	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	5(%eax), %edx
	flds	fval2(,%edx,4)
	fadds	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	6(%eax), %edx
	flds	fval2(,%edx,4)
	fadds	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	7(%eax), %edx
	addl	$8, %eax
	flds	fval2(,%edx,4)
	cmpl	$1792, %eax
	fadds	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	jne	.L35
	incl	%ecx
	cmpl	%ebx, %ecx
	jne	.L37
.L32:
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
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
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	movl	12(%esp), %esi
	testl	%esi, %esi
	je	.L47
	.p2align 4,,15
.L52:
	xorl	%eax, %eax
	.p2align 4,,15
.L50:
	movl	xval2(,%eax,4), %ecx
	movl	xval1(,%eax,4), %edx
	addl	%ecx, %edx
	movl	%edx, xresult(,%eax,4)
	leal	1(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	addl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	2(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	addl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	3(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	addl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	4(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	addl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	5(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	addl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	6(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	addl	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	7(%eax), %edx
	addl	$8, %eax
	movl	xval1(,%edx,4), %ecx
	addl	xval2(,%edx,4), %ecx
	cmpl	$1792, %eax
	movl	%ecx, xresult(,%edx,4)
	jne	.L50
	incl	%ebx
	cmpl	%esi, %ebx
	jne	.L52
.L47:
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
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
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	.L62
	.p2align 4,,15
.L67:
	xorl	%eax, %eax
	.p2align 4,,15
.L65:
	flds	fval2(,%eax,4)
	leal	1(%eax), %edx
	fmuls	fval1(,%eax,4)
	fstps	fresult(,%eax,4)
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	2(%eax), %edx
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	3(%eax), %edx
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	4(%eax), %edx
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	5(%eax), %edx
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	6(%eax), %edx
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	7(%eax), %edx
	addl	$8, %eax
	flds	fval2(,%edx,4)
	cmpl	$1792, %eax
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	jne	.L65
	incl	%ecx
	cmpl	%ebx, %ecx
	jne	.L67
.L62:
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
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
	movl	16(%esp), %edi
	testl	%edi, %edi
	je	.L77
	.p2align 4,,15
.L82:
	xorl	%ebx, %ebx
	.p2align 4,,15
.L80:
	movl	xval2(,%ebx,4), %eax
	leal	1(%ebx), %ecx
	imull	xval1(,%ebx,4)
	shrdl	$16, %edx, %eax
	movl	%eax, xresult(,%ebx,4)
	movl	xval2(,%ecx,4), %eax
	imull	xval1(,%ecx,4)
	shrdl	$16, %edx, %eax
	movl	%eax, xresult(,%ecx,4)
	leal	2(%ebx), %ecx
	movl	xval2(,%ecx,4), %eax
	imull	xval1(,%ecx,4)
	shrdl	$16, %edx, %eax
	movl	%eax, xresult(,%ecx,4)
	leal	3(%ebx), %ecx
	movl	xval2(,%ecx,4), %eax
	imull	xval1(,%ecx,4)
	shrdl	$16, %edx, %eax
	movl	%eax, xresult(,%ecx,4)
	leal	4(%ebx), %ecx
	movl	xval2(,%ecx,4), %eax
	imull	xval1(,%ecx,4)
	shrdl	$16, %edx, %eax
	movl	%eax, xresult(,%ecx,4)
	leal	5(%ebx), %ecx
	movl	xval2(,%ecx,4), %eax
	imull	xval1(,%ecx,4)
	shrdl	$16, %edx, %eax
	movl	%eax, xresult(,%ecx,4)
	leal	6(%ebx), %ecx
	movl	xval2(,%ecx,4), %eax
	imull	xval1(,%ecx,4)
	shrdl	$16, %edx, %eax
	movl	%eax, xresult(,%ecx,4)
	leal	7(%ebx), %ecx
	addl	$8, %ebx
	movl	xval2(,%ecx,4), %eax
	imull	xval1(,%ecx,4)
	shrdl	$16, %edx, %eax
	cmpl	$1792, %ebx
	movl	%eax, xresult(,%ecx,4)
	jne	.L80
	incl	%esi
	cmpl	%edi, %esi
	jne	.L82
.L77:
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
.LFE134:
	.size	bench_fixed_mul, .-bench_fixed_mul
	.p2align 4,,15
	.globl	bench_integer_mul
	.type	bench_integer_mul, @function
bench_integer_mul:
.LFB135:
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
	je	.L93
	.p2align 4,,15
.L98:
	xorl	%eax, %eax
	.p2align 4,,15
.L96:
	movl	xval2(,%eax,4), %ecx
	movl	xval1(,%eax,4), %edx
	imull	%ecx, %edx
	movl	%edx, xresult(,%eax,4)
	leal	1(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	imull	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	2(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	imull	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	3(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	imull	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	4(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	imull	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	5(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	imull	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	6(%eax), %edx
	movl	xval1(,%edx,4), %ecx
	imull	xval2(,%edx,4), %ecx
	movl	%ecx, xresult(,%edx,4)
	leal	7(%eax), %edx
	addl	$8, %eax
	movl	xval1(,%edx,4), %ecx
	imull	xval2(,%edx,4), %ecx
	cmpl	$1792, %eax
	movl	%ecx, xresult(,%edx,4)
	jne	.L96
	incl	%ebx
	cmpl	%esi, %ebx
	jne	.L98
.L93:
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
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
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	.L108
	.p2align 4,,15
.L113:
	xorl	%eax, %eax
	.p2align 4,,15
.L111:
	flds	fval1(,%eax,4)
	leal	1(%eax), %edx
	fdivs	fval2(,%eax,4)
	fstps	fresult(,%eax,4)
	flds	fval1(,%edx,4)
	fdivs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	2(%eax), %edx
	flds	fval1(,%edx,4)
	fdivs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	3(%eax), %edx
	flds	fval1(,%edx,4)
	fdivs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	4(%eax), %edx
	flds	fval1(,%edx,4)
	fdivs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	5(%eax), %edx
	flds	fval1(,%edx,4)
	fdivs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	6(%eax), %edx
	flds	fval1(,%edx,4)
	fdivs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	7(%eax), %edx
	addl	$8, %eax
	flds	fval1(,%edx,4)
	cmpl	$1792, %eax
	fdivs	fval2(,%edx,4)
	fstps	fresult(,%edx,4)
	jne	.L111
	incl	%ecx
	cmpl	%ebx, %ecx
	jne	.L113
.L108:
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
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
	xorl	%edi, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	testl	%ebx, %ebx
	je	.L123
	.p2align 4,,15
.L128:
	xorl	%esi, %esi
	.p2align 4,,15
.L126:
	movl	xval1(,%esi,4), %eax
	movl	xval2(,%esi,4), %ebp
	cltd
	movl	%ebp, %ebx
	shldl	$16, %eax, %edx
	sarl	$31, %ebx
	sall	$16, %eax
	movl	%ebp, 8(%esp)
	movl	%ebx, 12(%esp)
	leal	1(%esi), %ebx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3
	movl	xval2(,%ebx,4), %ecx
	movl	%ecx, %ebp
	sarl	$31, %ebp
	movl	%eax, xresult(,%esi,4)
	movl	xval1(,%ebx,4), %eax
	movl	%ecx, 8(%esp)
	movl	%ebp, 12(%esp)
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3
	movl	%eax, xresult(,%ebx,4)
	leal	2(%esi), %ebx
	movl	xval2(,%ebx,4), %ecx
	movl	xval1(,%ebx,4), %eax
	movl	%ecx, %ebp
	cltd
	shldl	$16, %eax, %edx
	sarl	$31, %ebp
	sall	$16, %eax
	movl	%ecx, 8(%esp)
	movl	%ebp, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3
	movl	%eax, xresult(,%ebx,4)
	leal	3(%esi), %ebx
	movl	xval2(,%ebx,4), %ecx
	movl	xval1(,%ebx,4), %eax
	movl	%ecx, %ebp
	cltd
	shldl	$16, %eax, %edx
	sarl	$31, %ebp
	sall	$16, %eax
	movl	%ecx, 8(%esp)
	movl	%ebp, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3
	movl	%eax, xresult(,%ebx,4)
	leal	4(%esi), %ebx
	movl	xval2(,%ebx,4), %ecx
	movl	xval1(,%ebx,4), %eax
	movl	%ecx, %ebp
	cltd
	shldl	$16, %eax, %edx
	sarl	$31, %ebp
	sall	$16, %eax
	movl	%ecx, 8(%esp)
	movl	%ebp, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3
	movl	%eax, xresult(,%ebx,4)
	leal	5(%esi), %ebx
	movl	xval2(,%ebx,4), %ecx
	movl	xval1(,%ebx,4), %eax
	movl	%ecx, %ebp
	cltd
	shldl	$16, %eax, %edx
	sarl	$31, %ebp
	sall	$16, %eax
	movl	%ecx, 8(%esp)
	movl	%ebp, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3
	movl	%eax, xresult(,%ebx,4)
	leal	6(%esi), %ebx
	movl	xval1(,%ebx,4), %eax
	movl	xval2(,%ebx,4), %ecx
	cltd
	movl	%ecx, %ebp
	shldl	$16, %eax, %edx
	sall	$16, %eax
	sarl	$31, %ebp
	addl	$7, %esi
	movl	%ecx, 8(%esp)
	movl	%ebp, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3
	cmpl	$1792, %esi
	movl	%eax, xresult(,%ebx,4)
	jne	.L126
	incl	%edi
	cmpl	48(%esp), %edi
	jne	.L128
.L123:
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
	movl	16(%esp), %edi
	testl	%edi, %edi
	je	.L137
	.p2align 4,,15
.L142:
	xorl	%ecx, %ecx
	.p2align 4,,15
.L140:
	movl	xval1(,%ecx,4), %eax
	leal	1(%ecx), %ebx
	cltd
	idivl	xval2(,%ecx,4)
	movl	%eax, xresult(,%ecx,4)
	movl	xval1(,%ebx,4), %eax
	cltd
	idivl	xval2(,%ebx,4)
	movl	%eax, xresult(,%ebx,4)
	leal	2(%ecx), %ebx
	movl	xval1(,%ebx,4), %eax
	cltd
	idivl	xval2(,%ebx,4)
	movl	%eax, xresult(,%ebx,4)
	leal	3(%ecx), %ebx
	movl	xval1(,%ebx,4), %eax
	cltd
	idivl	xval2(,%ebx,4)
	movl	%eax, xresult(,%ebx,4)
	leal	4(%ecx), %ebx
	movl	xval1(,%ebx,4), %eax
	cltd
	idivl	xval2(,%ebx,4)
	movl	%eax, xresult(,%ebx,4)
	leal	5(%ecx), %ebx
	movl	xval1(,%ebx,4), %eax
	cltd
	idivl	xval2(,%ebx,4)
	movl	%eax, xresult(,%ebx,4)
	leal	6(%ecx), %ebx
	movl	xval1(,%ebx,4), %eax
	cltd
	idivl	xval2(,%ebx,4)
	movl	%eax, xresult(,%ebx,4)
	leal	7(%ecx), %ebx
	addl	$8, %ecx
	movl	xval1(,%ebx,4), %eax
	cltd
	idivl	xval2(,%ebx,4)
	cmpl	$1792, %ecx
	movl	%eax, xresult(,%ebx,4)
	jne	.L140
	incl	%esi
	cmpl	%edi, %esi
	jne	.L142
.L137:
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
.LFE139:
	.size	bench_integer_div, .-bench_integer_div
	.p2align 4,,15
	.globl	bench_float_sqrt
	.type	bench_float_sqrt, @function
bench_float_sqrt:
.LFB141:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	.L152
	.p2align 4,,15
.L157:
	xorl	%eax, %eax
	.p2align 4,,15
.L155:
	flds	fval1(,%eax,4)
	leal	1(%eax), %edx
	fsqrt
	fstps	fresult(,%eax,4)
	flds	fval1(,%edx,4)
	fsqrt
	fstps	fresult(,%edx,4)
	leal	2(%eax), %edx
	flds	fval1(,%edx,4)
	fsqrt
	fstps	fresult(,%edx,4)
	leal	3(%eax), %edx
	flds	fval1(,%edx,4)
	fsqrt
	fstps	fresult(,%edx,4)
	leal	4(%eax), %edx
	flds	fval1(,%edx,4)
	fsqrt
	fstps	fresult(,%edx,4)
	leal	5(%eax), %edx
	flds	fval1(,%edx,4)
	fsqrt
	fstps	fresult(,%edx,4)
	leal	6(%eax), %edx
	flds	fval1(,%edx,4)
	fsqrt
	fstps	fresult(,%edx,4)
	leal	7(%eax), %edx
	addl	$8, %eax
	flds	fval1(,%edx,4)
	cmpl	$1792, %eax
	fsqrt
	fstps	fresult(,%edx,4)
	jne	.L155
	incl	%ecx
	cmpl	%ebx, %ecx
	jne	.L157
.L152:
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
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
	jbe	.L184
	subl	$1073741824, %edx
	movl	$1342177280, %ecx
	movl	$65536, %eax
.L168:
	cmpl	%ecx, %edx
	jb	.L169
	subl	%ecx, %edx
	orl	$32768, %eax
.L169:
	leal	8192(%eax), %ecx
	sall	$13, %ecx
	cmpl	%ecx, %edx
	jb	.L170
	subl	%ecx, %edx
	orl	$16384, %eax
.L170:
	leal	4096(%eax), %ecx
	sall	$12, %ecx
	cmpl	%ecx, %edx
	jb	.L171
	subl	%ecx, %edx
	orl	$8192, %eax
.L171:
	leal	2048(%eax), %ecx
	sall	$11, %ecx
	cmpl	%ecx, %edx
	jb	.L172
	subl	%ecx, %edx
	orl	$4096, %eax
.L172:
	leal	1024(%eax), %ecx
	sall	$10, %ecx
	cmpl	%ecx, %edx
	jb	.L173
	subl	%ecx, %edx
	orl	$2048, %eax
.L173:
	leal	512(%eax), %ecx
	sall	$9, %ecx
	cmpl	%ecx, %edx
	jb	.L174
	subl	%ecx, %edx
	orl	$1024, %eax
.L174:
	leal	256(%eax), %ecx
	sall	$8, %ecx
	cmpl	%ecx, %edx
	jb	.L175
	subl	%ecx, %edx
	orl	$512, %eax
.L175:
	leal	128(%eax), %ecx
	sall	$7, %ecx
	cmpl	%ecx, %edx
	jb	.L176
	subl	%ecx, %edx
	orl	$256, %eax
.L176:
	leal	64(%eax), %ecx
	sall	$6, %ecx
	cmpl	%ecx, %edx
	jb	.L177
	subl	%ecx, %edx
	orl	$128, %eax
.L177:
	leal	32(%eax), %ecx
	sall	$5, %ecx
	cmpl	%ecx, %edx
	jb	.L178
	subl	%ecx, %edx
	orl	$64, %eax
.L178:
	leal	16(%eax), %ecx
	sall	$4, %ecx
	cmpl	%ecx, %edx
	jb	.L179
	subl	%ecx, %edx
	orl	$32, %eax
.L179:
	leal	64(,%eax,8), %ecx
	cmpl	%ecx, %edx
	jb	.L180
	subl	%ecx, %edx
	orl	$16, %eax
.L180:
	leal	16(,%eax,4), %ecx
	cmpl	%ecx, %edx
	jb	.L181
	subl	%ecx, %edx
	orl	$8, %eax
.L181:
	leal	4(%eax,%eax), %ecx
	cmpl	%ecx, %edx
	jb	.L182
	subl	%ecx, %edx
	orl	$4, %eax
.L182:
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
.L184:
	.cfi_restore_state
	movl	$268435456, %ecx
	xorl	%eax, %eax
	jmp	.L168
	.cfi_endproc
.LFE120:
	.size	fpsqrt, .-fpsqrt
	.p2align 4,,15
	.globl	bench_fixed_sqrt
	.type	bench_fixed_sqrt, @function
bench_fixed_sqrt:
.LFB142:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %ebp
	testl	%ebp, %ebp
	je	.L185
	.p2align 4,,15
.L190:
	xorl	%ebx, %ebx
	.p2align 4,,15
.L188:
	movl	xval1(,%ebx,4), %edx
	leal	1(%ebx), %esi
	movl	%edx, (%esp)
	call	fpsqrt
	movl	%eax, xresult(,%ebx,4)
	movl	xval1(,%esi,4), %eax
	movl	%eax, (%esp)
	call	fpsqrt
	movl	%eax, xresult(,%esi,4)
	leal	2(%ebx), %esi
	movl	xval1(,%esi,4), %ecx
	movl	%ecx, (%esp)
	call	fpsqrt
	movl	%eax, xresult(,%esi,4)
	leal	3(%ebx), %esi
	movl	xval1(,%esi,4), %edx
	movl	%edx, (%esp)
	call	fpsqrt
	movl	%eax, xresult(,%esi,4)
	leal	4(%ebx), %esi
	movl	xval1(,%esi,4), %eax
	movl	%eax, (%esp)
	call	fpsqrt
	movl	%eax, xresult(,%esi,4)
	leal	5(%ebx), %esi
	movl	xval1(,%esi,4), %ecx
	movl	%ecx, (%esp)
	call	fpsqrt
	movl	%eax, xresult(,%esi,4)
	leal	6(%ebx), %esi
	movl	xval1(,%esi,4), %edx
	movl	%edx, (%esp)
	call	fpsqrt
	movl	%eax, xresult(,%esi,4)
	leal	7(%ebx), %esi
	addl	$8, %ebx
	movl	xval1(,%esi,4), %eax
	movl	%eax, (%esp)
	call	fpsqrt
	cmpl	$1792, %ebx
	movl	%eax, xresult(,%esi,4)
	jne	.L188
	incl	%edi
	cmpl	%ebp, %edi
	jne	.L190
.L185:
	popl	%esi
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
.LFE142:
	.size	bench_fixed_sqrt, .-bench_fixed_sqrt
	.p2align 4,,15
	.globl	flush_cache
	.type	flush_cache, @function
flush_cache:
.LFB121:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	.p2align 4,,15
.L201:
	call	rand
	leal	1(%ebx), %esi
	movl	%eax, dummy_array(,%ebx,4)
	call	rand
	movl	%eax, dummy_array(,%esi,4)
	leal	2(%ebx), %esi
	call	rand
	movl	%eax, dummy_array(,%esi,4)
	leal	3(%ebx), %esi
	call	rand
	movl	%eax, dummy_array(,%esi,4)
	leal	4(%ebx), %esi
	call	rand
	movl	%eax, dummy_array(,%esi,4)
	leal	5(%ebx), %esi
	call	rand
	movl	%eax, dummy_array(,%esi,4)
	leal	6(%ebx), %esi
	call	rand
	movl	%eax, dummy_array(,%esi,4)
	leal	7(%ebx), %esi
	addl	$8, %ebx
	call	rand
	cmpl	$524288, %ebx
	movl	%eax, dummy_array(,%esi,4)
	jne	.L201
	popl	%eax
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
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
	xorl	%ecx, %ecx
	movl	48(%esp), %eax
	xorl	%edx, %edx
	movl	%ecx, 24(%esp)
	movl	%edx, 28(%esp)
	testl	%eax, %eax
	jne	.L213
	leal	24(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
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
.L213:
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
	js	.L216
.L215:
	movl	$.LC3, %ecx
	fmull	.LC2
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ecx, 4(%esp)
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
.L216:
	.cfi_restore_state
	fadds	.LC1
	jmp	.L215
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
	jmp	.L230
	.p2align 4,,10
	.p2align 3
.L222:
	fstps	8(%esp)
	call	rand
	movl	%eax, %ecx
	movl	$1759218605, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$11, %edx
	subl	%eax, %edx
	imull	$5000, %edx, %ebp
	subl	%ebp, %ecx
	incl	%ecx
	movl	%ecx, 12(%esp)
	fildl	12(%esp)
	fmuls	8(%esp)
	fsts	(%ebx)
	flds	.LC7
	fxch	%st(1)
	fcomi	%st(1), %st
	fstp	%st(1)
	jb	.L238
	fstp	%st(0)
	movl	$0x46800054, %eax
	movl	%eax, (%ebx)
.L229:
	incl	%esi
	movl	%eax, (%ebx)
	addl	$4, %ebx
	cmpl	$1792, %esi
	je	.L239
.L230:
	call	rand
	incl	%eax
	movl	%eax, 8(%esp)
	call	rand
	testl	%edi, %edi
	leal	1(%eax), %ebp
	je	.L240
.L218:
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
	leal	(%edx,%edx,2), %ebp
	subl	%ebp, %ecx
	je	.L222
	cmpl	$2, %ecx
	jne	.L224
	fstps	8(%esp)
	movl	$1717986919, %ebp
	call	rand
	movl	%eax, %ecx
	imull	%ebp
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	leal	(%edx,%edx,4), %ebp
	addl	%ebp, %ebp
	subl	%ebp, %ecx
	incl	%ecx
	movl	%ecx, 12(%esp)
	fildl	12(%esp)
	fdivrs	8(%esp)
	fsts	(%ebx)
.L224:
	fldz
	fcomip	%st(1), %st
	fstps	4(%esp)
	movl	4(%esp), %eax
	cmove	.LC4, %eax
	incl	%esi
	movl	%eax, (%ebx)
	addl	$4, %ebx
	cmpl	$1792, %esi
	jne	.L230
.L239:
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
.L240:
	.cfi_restore_state
	call	rand
	movl	8(%esp), %ecx
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	%edx, %edx
	andl	$2, %edx
	decl	%edx
	imull	%ecx, %edx
	movl	%edx, 8(%esp)
	call	rand
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	decl	%eax
	imull	%eax, %ebp
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L238:
	flds	.LC8
	fcomip	%st(1), %st
	jb	.L224
	fstp	%st(0)
	movl	$0xc6800054, %eax
	movl	%eax, (%ebx)
	jmp	.L229
	.cfi_endproc
.LFE124:
	.size	fill_float_array, .-fill_float_array
	.p2align 4,,15
	.globl	fill_fixed_array_from_float_array
	.type	fill_fixed_array_from_float_array, @function
fill_fixed_array_from_float_array:
.LFB125:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%eax, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ecx
	movl	20(%esp), %edx
	flds	.LC10
	.p2align 4,,15
.L242:
	flds	(%edx,%eax,4)
	fmul	%st(1), %st
	fstps	(%esp)
	cvttss2si	(%esp), %ebx
	movl	%ebx, (%ecx,%eax,4)
	leal	1(%eax), %ebx
	flds	(%edx,%ebx,4)
	fmul	%st(1), %st
	fstps	(%esp)
	cvttss2si	(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	2(%eax), %ebx
	flds	(%edx,%ebx,4)
	fmul	%st(1), %st
	fstps	(%esp)
	cvttss2si	(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	3(%eax), %ebx
	flds	(%edx,%ebx,4)
	fmul	%st(1), %st
	fstps	(%esp)
	cvttss2si	(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	4(%eax), %ebx
	flds	(%edx,%ebx,4)
	fmul	%st(1), %st
	fstps	(%esp)
	cvttss2si	(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	5(%eax), %ebx
	flds	(%edx,%ebx,4)
	fmul	%st(1), %st
	fstps	(%esp)
	cvttss2si	(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	6(%eax), %ebx
	flds	(%edx,%ebx,4)
	fmul	%st(1), %st
	fstps	(%esp)
	cvttss2si	(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	7(%eax), %ebx
	addl	$8, %eax
	flds	(%edx,%ebx,4)
	cmpl	$1792, %eax
	fmul	%st(1), %st
	fstps	(%esp)
	cvttss2si	(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	jne	.L242
	fstp	%st(0)
	popl	%ebx
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
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
	movl	$1, %edx
	movl	%edx, 4(%esp)
	movl	$fval1, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	$fval2, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	flds	.LC10
	.p2align 4,,15
.L252:
	flds	fval1(,%eax,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %edx
	movl	%edx, xval1(,%eax,4)
	leal	1(%eax), %edx
	flds	fval1(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval1(,%edx,4)
	leal	2(%eax), %edx
	flds	fval1(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval1(,%edx,4)
	leal	3(%eax), %edx
	flds	fval1(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval1(,%edx,4)
	leal	4(%eax), %edx
	flds	fval1(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval1(,%edx,4)
	leal	5(%eax), %edx
	flds	fval1(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval1(,%edx,4)
	leal	6(%eax), %edx
	flds	fval1(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval1(,%edx,4)
	leal	7(%eax), %edx
	addl	$8, %eax
	flds	fval1(,%edx,4)
	cmpl	$1792, %eax
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval1(,%edx,4)
	jne	.L252
	fstp	%st(0)
	xorl	%eax, %eax
	flds	.LC10
	.p2align 4,,15
.L253:
	flds	fval2(,%eax,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %edx
	movl	%edx, xval2(,%eax,4)
	leal	1(%eax), %edx
	flds	fval2(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval2(,%edx,4)
	leal	2(%eax), %edx
	flds	fval2(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval2(,%edx,4)
	leal	3(%eax), %edx
	flds	fval2(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval2(,%edx,4)
	leal	4(%eax), %edx
	flds	fval2(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval2(,%edx,4)
	leal	5(%eax), %edx
	flds	fval2(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval2(,%edx,4)
	leal	6(%eax), %edx
	flds	fval2(,%edx,4)
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval2(,%edx,4)
	leal	7(%eax), %edx
	addl	$8, %eax
	flds	fval2(,%edx,4)
	cmpl	$1792, %eax
	fmul	%st(1), %st
	fstps	28(%esp)
	cvttss2si	28(%esp), %ecx
	movl	%ecx, xval2(,%edx,4)
	jne	.L253
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
	movl	$.LC12, %ecx
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_sub, (%esp)
	call	avg_of_3_runs
	movl	$.LC13, %edx
	movl	%edx, 4(%esp)
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
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	je	.L274
	.p2align 4,,15
.L277:
	xorl	%eax, %eax
	.p2align 4,,15
.L275:
	flds	fval2(,%eax,4)
	leal	1(%eax), %edx
	fmuls	fval1(,%eax,4)
	fstps	fresult(,%eax,4)
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	2(%eax), %edx
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	3(%eax), %edx
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	4(%eax), %edx
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	5(%eax), %edx
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	6(%eax), %edx
	flds	fval2(,%edx,4)
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	leal	7(%eax), %edx
	addl	$8, %eax
	flds	fval2(,%edx,4)
	cmpl	$1792, %eax
	fmuls	fval1(,%edx,4)
	fstps	fresult(,%edx,4)
	jne	.L275
	incl	%ecx
	cmpl	%ecx, %ebx
	jne	.L277
.L274:
	movl	$.LC20, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_fixed_mul, (%esp)
	call	avg_of_3_runs
	movl	$.LC21, %ecx
	movl	%ecx, 4(%esp)
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
	movl	$.LC23, %ecx
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_div, (%esp)
	call	avg_of_3_runs
	movl	$.LC24, %edx
	movl	%edx, 4(%esp)
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
	jle	.L292
	movl	12(%ebp), %eax
	xorl	%edx, %edx
	movl	$10, %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	4(%eax), %ebx
	movl	%ebx, (%esp)
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
	movl	$.LC34, %edx
	movl	$1792, %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	$.LC35, %ecx
	movl	$4, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
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
	movl	dummy_array+2097148, %edx
	cmpl	%edx, dummy_array
	sete	%al
	movzbl	%al, %eax
.L291:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret
.L292:
	.cfi_restore_state
	movl	$.LC29, (%esp)
	call	puts
	movl	$1, %eax
	jmp	.L291
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
