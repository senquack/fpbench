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
	movaps	fval1(%eax), %xmm7
	movaps	fval1+16(%eax), %xmm6
	movaps	fval1+32(%eax), %xmm5
	movaps	fval1+48(%eax), %xmm4
	movaps	fval1+64(%eax), %xmm3
	movaps	fval1+80(%eax), %xmm2
	movaps	fval1+96(%eax), %xmm1
	movaps	fval1+112(%eax), %xmm0
	subps	fval2(%eax), %xmm7
	subps	fval2+16(%eax), %xmm6
	movaps	%xmm7, fresult(%eax)
	subps	fval2+32(%eax), %xmm5
	movaps	%xmm6, fresult+16(%eax)
	subps	fval2+48(%eax), %xmm4
	movaps	%xmm5, fresult+32(%eax)
	subps	fval2+64(%eax), %xmm3
	movaps	%xmm4, fresult+48(%eax)
	subps	fval2+80(%eax), %xmm2
	movaps	%xmm3, fresult+64(%eax)
	subps	fval2+96(%eax), %xmm1
	movaps	%xmm2, fresult+80(%eax)
	subps	fval2+112(%eax), %xmm0
	movaps	%xmm1, fresult+96(%eax)
	movaps	%xmm0, fresult+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
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
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	.L17
	.p2align 4,,15
.L22:
	xorl	%eax, %eax
	.p2align 4,,15
.L20:
	movdqa	xval1(%eax), %xmm7
	movdqa	xval1+16(%eax), %xmm6
	psubd	xval2(%eax), %xmm7
	psubd	xval2+16(%eax), %xmm6
	movdqa	xval1+32(%eax), %xmm5
	movdqa	xval1+48(%eax), %xmm4
	psubd	xval2+32(%eax), %xmm5
	movdqa	xval1+64(%eax), %xmm3
	movdqa	xval1+80(%eax), %xmm2
	psubd	xval2+48(%eax), %xmm4
	movdqa	xval1+96(%eax), %xmm1
	movdqa	xval1+112(%eax), %xmm0
	psubd	xval2+64(%eax), %xmm3
	movdqa	%xmm7, xresult(%eax)
	movdqa	%xmm6, xresult+16(%eax)
	psubd	xval2+80(%eax), %xmm2
	movdqa	%xmm5, xresult+32(%eax)
	psubd	xval2+96(%eax), %xmm1
	movdqa	%xmm4, xresult+48(%eax)
	psubd	xval2+112(%eax), %xmm0
	movdqa	%xmm3, xresult+64(%eax)
	movdqa	%xmm2, xresult+80(%eax)
	movdqa	%xmm1, xresult+96(%eax)
	movdqa	%xmm0, xresult+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L20
	incl	%ecx
	cmpl	%ebx, %ecx
	jne	.L22
.L17:
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
	movaps	fval2(%eax), %xmm7
	movaps	fval2+16(%eax), %xmm6
	movaps	fval2+32(%eax), %xmm5
	movaps	fval2+48(%eax), %xmm4
	movaps	fval2+64(%eax), %xmm3
	movaps	fval2+80(%eax), %xmm2
	movaps	fval2+96(%eax), %xmm1
	movaps	fval2+112(%eax), %xmm0
	addps	fval1(%eax), %xmm7
	addps	fval1+16(%eax), %xmm6
	movaps	%xmm7, fresult(%eax)
	addps	fval1+32(%eax), %xmm5
	movaps	%xmm6, fresult+16(%eax)
	addps	fval1+48(%eax), %xmm4
	movaps	%xmm5, fresult+32(%eax)
	addps	fval1+64(%eax), %xmm3
	movaps	%xmm4, fresult+48(%eax)
	addps	fval1+80(%eax), %xmm2
	movaps	%xmm3, fresult+64(%eax)
	addps	fval1+96(%eax), %xmm1
	movaps	%xmm2, fresult+80(%eax)
	addps	fval1+112(%eax), %xmm0
	movaps	%xmm1, fresult+96(%eax)
	movaps	%xmm0, fresult+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
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
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	.L47
	.p2align 4,,15
.L52:
	xorl	%eax, %eax
	.p2align 4,,15
.L50:
	movdqa	xval1(%eax), %xmm7
	movdqa	xval1+16(%eax), %xmm6
	paddd	xval2(%eax), %xmm7
	paddd	xval2+16(%eax), %xmm6
	movdqa	xval1+32(%eax), %xmm5
	movdqa	xval1+48(%eax), %xmm4
	paddd	xval2+32(%eax), %xmm5
	movdqa	xval1+64(%eax), %xmm3
	movdqa	xval1+80(%eax), %xmm2
	paddd	xval2+48(%eax), %xmm4
	movdqa	xval1+96(%eax), %xmm1
	movdqa	xval1+112(%eax), %xmm0
	paddd	xval2+64(%eax), %xmm3
	movdqa	%xmm7, xresult(%eax)
	movdqa	%xmm6, xresult+16(%eax)
	paddd	xval2+80(%eax), %xmm2
	movdqa	%xmm5, xresult+32(%eax)
	paddd	xval2+96(%eax), %xmm1
	movdqa	%xmm4, xresult+48(%eax)
	paddd	xval2+112(%eax), %xmm0
	movdqa	%xmm3, xresult+64(%eax)
	movdqa	%xmm2, xresult+80(%eax)
	movdqa	%xmm1, xresult+96(%eax)
	movdqa	%xmm0, xresult+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L50
	incl	%ecx
	cmpl	%ebx, %ecx
	jne	.L52
.L47:
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
	movaps	fval2(%eax), %xmm7
	movaps	fval2+16(%eax), %xmm6
	movaps	fval2+32(%eax), %xmm5
	movaps	fval2+48(%eax), %xmm4
	movaps	fval2+64(%eax), %xmm3
	movaps	fval2+80(%eax), %xmm2
	movaps	fval2+96(%eax), %xmm1
	movaps	fval2+112(%eax), %xmm0
	mulps	fval1(%eax), %xmm7
	mulps	fval1+16(%eax), %xmm6
	mulps	fval1+32(%eax), %xmm5
	movaps	%xmm7, fresult(%eax)
	mulps	fval1+48(%eax), %xmm4
	movaps	%xmm6, fresult+16(%eax)
	mulps	fval1+64(%eax), %xmm3
	movaps	%xmm5, fresult+32(%eax)
	mulps	fval1+80(%eax), %xmm2
	movaps	%xmm4, fresult+48(%eax)
	mulps	fval1+96(%eax), %xmm1
	movaps	%xmm3, fresult+64(%eax)
	mulps	fval1+112(%eax), %xmm0
	movaps	%xmm2, fresult+80(%eax)
	movaps	%xmm1, fresult+96(%eax)
	movaps	%xmm0, fresult+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
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
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	.L93
	.p2align 4,,15
.L98:
	xorl	%eax, %eax
	.p2align 4,,15
.L96:
	movdqa	xval1(%eax), %xmm6
	movdqa	xval2(%eax), %xmm0
	movdqa	xval1+16(%eax), %xmm1
	movdqa	xval2+16(%eax), %xmm2
	movdqa	%xmm6, %xmm7
	movdqa	%xmm1, %xmm3
	pmuludq	%xmm0, %xmm7
	pmuludq	%xmm2, %xmm3
	psrldq	$4, %xmm0
	psrldq	$4, %xmm2
	pshufd	$8, %xmm7, %xmm4
	psrldq	$4, %xmm6
	psrldq	$4, %xmm1
	pmuludq	%xmm0, %xmm6
	pmuludq	%xmm2, %xmm1
	movdqa	xval2+32(%eax), %xmm0
	pshufd	$8, %xmm6, %xmm5
	pshufd	$8, %xmm1, %xmm7
	punpckldq	%xmm5, %xmm4
	movdqa	xval2+48(%eax), %xmm1
	movdqa	%xmm4, xresult(%eax)
	pshufd	$8, %xmm3, %xmm6
	movdqa	xval1+32(%eax), %xmm4
	punpckldq	%xmm7, %xmm6
	movdqa	%xmm4, %xmm5
	movdqa	%xmm6, xresult+16(%eax)
	pmuludq	%xmm0, %xmm5
	movdqa	xval1+48(%eax), %xmm6
	psrldq	$4, %xmm0
	movdqa	%xmm6, %xmm7
	psrldq	$4, %xmm4
	pmuludq	%xmm1, %xmm7
	psrldq	$4, %xmm6
	pshufd	$8, %xmm5, %xmm3
	psrldq	$4, %xmm1
	pmuludq	%xmm0, %xmm4
	movdqa	xval2+64(%eax), %xmm0
	pmuludq	%xmm1, %xmm6
	pshufd	$8, %xmm4, %xmm2
	pshufd	$8, %xmm7, %xmm4
	punpckldq	%xmm2, %xmm3
	pshufd	$8, %xmm6, %xmm5
	movdqa	%xmm3, xresult+32(%eax)
	punpckldq	%xmm5, %xmm4
	movdqa	xval1+64(%eax), %xmm3
	movdqa	xval2+80(%eax), %xmm6
	movdqa	%xmm4, xresult+48(%eax)
	movdqa	%xmm3, %xmm2
	movdqa	xval1+80(%eax), %xmm4
	pmuludq	%xmm0, %xmm2
	movdqa	%xmm4, %xmm5
	psrldq	$4, %xmm0
	pmuludq	%xmm6, %xmm5
	psrldq	$4, %xmm3
	pshufd	$8, %xmm2, %xmm7
	psrldq	$4, %xmm6
	psrldq	$4, %xmm4
	pmuludq	%xmm0, %xmm3
	pmuludq	%xmm6, %xmm4
	movdqa	xval2+96(%eax), %xmm0
	pshufd	$8, %xmm3, %xmm1
	pshufd	$8, %xmm4, %xmm2
	punpckldq	%xmm1, %xmm7
	movdqa	xval2+112(%eax), %xmm4
	movdqa	%xmm7, xresult+64(%eax)
	pshufd	$8, %xmm5, %xmm3
	movdqa	xval1+96(%eax), %xmm7
	punpckldq	%xmm2, %xmm3
	movdqa	%xmm7, %xmm1
	movdqa	%xmm3, xresult+80(%eax)
	pmuludq	%xmm0, %xmm1
	movdqa	xval1+112(%eax), %xmm3
	psrldq	$4, %xmm0
	movdqa	%xmm3, %xmm2
	psrldq	$4, %xmm7
	pmuludq	%xmm4, %xmm2
	psrldq	$4, %xmm3
	pshufd	$8, %xmm1, %xmm5
	psrldq	$4, %xmm4
	pmuludq	%xmm0, %xmm7
	pshufd	$8, %xmm2, %xmm0
	pmuludq	%xmm4, %xmm3
	pshufd	$8, %xmm7, %xmm6
	punpckldq	%xmm6, %xmm5
	pshufd	$8, %xmm3, %xmm1
	movdqa	%xmm5, xresult+96(%eax)
	punpckldq	%xmm1, %xmm0
	movdqa	%xmm0, xresult+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L96
	incl	%ecx
	cmpl	%ebx, %ecx
	jne	.L98
.L93:
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
	movaps	fval1(%eax), %xmm7
	movaps	fval1+16(%eax), %xmm6
	movaps	fval1+32(%eax), %xmm5
	movaps	fval1+48(%eax), %xmm4
	movaps	fval1+64(%eax), %xmm3
	movaps	fval1+80(%eax), %xmm2
	movaps	fval1+96(%eax), %xmm1
	movaps	fval1+112(%eax), %xmm0
	divps	fval2(%eax), %xmm7
	divps	fval2+16(%eax), %xmm6
	movaps	%xmm7, fresult(%eax)
	divps	fval2+32(%eax), %xmm5
	movaps	%xmm6, fresult+16(%eax)
	divps	fval2+48(%eax), %xmm4
	movaps	%xmm5, fresult+32(%eax)
	divps	fval2+64(%eax), %xmm3
	movaps	%xmm4, fresult+48(%eax)
	divps	fval2+80(%eax), %xmm2
	movaps	%xmm3, fresult+64(%eax)
	divps	fval2+96(%eax), %xmm1
	movaps	%xmm2, fresult+80(%eax)
	divps	fval2+112(%eax), %xmm0
	movaps	%xmm1, fresult+96(%eax)
	movaps	%xmm0, fresult+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
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
	sqrtps	fval1(%eax), %xmm7
	sqrtps	fval1+16(%eax), %xmm6
	sqrtps	fval1+32(%eax), %xmm5
	movaps	%xmm7, fresult(%eax)
	sqrtps	fval1+48(%eax), %xmm4
	movaps	%xmm6, fresult+16(%eax)
	sqrtps	fval1+64(%eax), %xmm3
	movaps	%xmm5, fresult+32(%eax)
	sqrtps	fval1+80(%eax), %xmm2
	movaps	%xmm4, fresult+48(%eax)
	sqrtps	fval1+96(%eax), %xmm1
	movaps	%xmm3, fresult+64(%eax)
	sqrtps	fval1+112(%eax), %xmm0
	movaps	%xmm2, fresult+80(%eax)
	movaps	%xmm1, fresult+96(%eax)
	movaps	%xmm0, fresult+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
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
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %edx
	cmpl	$1073741823, %edx
	jbe	.L184
	subl	$1073741824, %edx
	movl	$603979776, %ecx
	movl	$872415232, %edi
	movl	$98304, %esi
	movl	$1342177280, %ebx
	movl	$65536, %eax
.L168:
	cmpl	%ebx, %edx
	jb	.L169
	subl	%ebx, %edx
	movl	%edi, %ecx
	movl	%esi, %eax
.L169:
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
	popl	%ebx
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	.cfi_restore 3
	cmovae	%ecx, %eax
	sall	$7, %eax
	popl	%esi
	.cfi_def_cfa_offset 8
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	ret
	.p2align 4,,10
	.p2align 3
.L184:
	.cfi_restore_state
	movl	$67108864, %ecx
	movl	$335544320, %edi
	movl	$32768, %esi
	movl	$268435456, %ebx
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
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%edx, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%esi, %esi
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	%esi, 16(%esp)
	movl	%edx, 20(%esp)
	testl	%eax, %eax
	jne	.L222
	leal	16(%esp), %esi
	xorl	%ebx, %ebx
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	gettimeofday
	movl	20(%esp), %eax
	imull	$1000000, 16(%esp), %edx
	movl	begin_time.5393+4, %ecx
	addl	%eax, %edx
	imull	$-1000000, begin_time.5393, %eax
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	subl	%ecx, %eax
	addl	%edx, %eax
	cltd
	ret
	.p2align 4,,10
	.p2align 3
.L222:
	.cfi_restore_state
	call	sync
	xorl	%ebx, %ebx
	movl	$0, (%esp)
	call	fflush
	.p2align 4,,15
.L212:
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
	jne	.L212
	xorl	%ebx, %ebx
	movl	$500000, (%esp)
	call	usleep
	movl	%ebx, 4(%esp)
	movl	$begin_time.5393, (%esp)
	call	gettimeofday
	addl	$36, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	xorl	%edx, %edx
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE122:
	.size	timer, .-timer
	.globl	__udivdi3
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"AVG: %llu usecs, or %f secs.\n"
	.text
	.p2align 4,,15
	.globl	avg_of_3_runs
	.type	avg_of_3_runs, @function
avg_of_3_runs:
.LFB123:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movl	116(%esp), %ebp
	call	sync
	movl	$0, (%esp)
	call	fflush
	.p2align 4,,15
.L224:
	call	rand
	leal	1(%ebx), %esi
	leal	2(%ebx), %edi
	movl	%eax, dummy_array(,%ebx,4)
	call	rand
	movl	%eax, dummy_array(,%esi,4)
	leal	3(%ebx), %esi
	call	rand
	movl	%eax, dummy_array(,%edi,4)
	leal	4(%ebx), %edi
	call	rand
	movl	%eax, dummy_array(,%esi,4)
	leal	5(%ebx), %esi
	call	rand
	movl	%eax, dummy_array(,%edi,4)
	leal	6(%ebx), %edi
	call	rand
	movl	%eax, dummy_array(,%esi,4)
	leal	7(%ebx), %esi
	addl	$8, %ebx
	call	rand
	movl	%eax, dummy_array(,%edi,4)
	call	rand
	cmpl	$524288, %ebx
	movl	%eax, dummy_array(,%esi,4)
	jne	.L224
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movl	$500000, (%esp)
	call	usleep
	movl	%ebx, 4(%esp)
	movl	$begin_time.5393, (%esp)
	call	gettimeofday
	movl	%ebp, (%esp)
	call	*112(%esp)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	%edi, 4(%esp)
	leal	72(%esp), %edi
	movl	%ecx, 72(%esp)
	movl	%eax, 76(%esp)
	movl	%edi, (%esp)
	call	gettimeofday
	movl	begin_time.5393+4, %edx
	imull	$1000000, 72(%esp), %ecx
	movl	76(%esp), %esi
	imull	$-1000000, begin_time.5393, %ebx
	addl	%esi, %ecx
	subl	%edx, %ebx
	addl	%ebx, %ecx
	xorl	%ebx, %ebx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%ecx, 40(%esp)
	movl	%eax, 44(%esp)
	call	sync
	movl	$0, (%esp)
	call	fflush
	.p2align 4,,15
.L225:
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
	jne	.L225
	xorl	%ebx, %ebx
	movl	$500000, (%esp)
	call	usleep
	movl	%ebx, 4(%esp)
	movl	$begin_time.5393, (%esp)
	call	gettimeofday
	movl	%ebp, (%esp)
	call	*112(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ecx, 76(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, 72(%esp)
	movl	%edi, (%esp)
	call	gettimeofday
	movl	76(%esp), %esi
	imull	$1000000, 72(%esp), %ecx
	imull	$-1000000, begin_time.5393, %eax
	movl	begin_time.5393+4, %ebx
	addl	%esi, %ecx
	xorl	%esi, %esi
	subl	%ebx, %eax
	addl	%eax, %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	movl	%ecx, 48(%esp)
	movl	%edx, 52(%esp)
	call	sync
	movl	$0, (%esp)
	call	fflush
	.p2align 4,,15
.L226:
	call	rand
	leal	1(%esi), %ebx
	movl	%eax, dummy_array(,%esi,4)
	call	rand
	movl	%eax, dummy_array(,%ebx,4)
	leal	2(%esi), %ebx
	call	rand
	movl	%eax, dummy_array(,%ebx,4)
	leal	3(%esi), %ebx
	call	rand
	movl	%eax, dummy_array(,%ebx,4)
	leal	4(%esi), %ebx
	call	rand
	movl	%eax, dummy_array(,%ebx,4)
	leal	5(%esi), %ebx
	call	rand
	movl	%eax, dummy_array(,%ebx,4)
	leal	6(%esi), %ebx
	call	rand
	movl	%eax, dummy_array(,%ebx,4)
	leal	7(%esi), %ebx
	addl	$8, %esi
	call	rand
	cmpl	$524288, %esi
	movl	%eax, dummy_array(,%ebx,4)
	jne	.L226
	movl	$500000, (%esp)
	xorl	%ebx, %ebx
	call	usleep
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	$begin_time.5393, (%esp)
	call	gettimeofday
	movl	%ebp, (%esp)
	call	*112(%esp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%edx, 72(%esp)
	movl	%ecx, 76(%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	gettimeofday
	movl	48(%esp), %ecx
	addl	40(%esp), %ecx
	movl	52(%esp), %ebx
	adcl	44(%esp), %ebx
	movl	76(%esp), %edi
	imull	$1000000, 72(%esp), %ebp
	imull	$-1000000, begin_time.5393, %eax
	movl	begin_time.5393+4, %esi
	addl	%edi, %ebp
	movl	$3, %edi
	movl	%edi, 8(%esp)
	subl	%esi, %eax
	addl	%ebp, %eax
	cltd
	addl	%eax, %ecx
	adcl	%edx, %ebx
	xorl	%ebp, %ebp
	movl	%ebp, 12(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	__udivdi3
	testl	%edx, %edx
	movd	%eax, %xmm0
	movd	%edx, %xmm1
	movl	%eax, %esi
	punpckldq	%xmm1, %xmm0
	movl	%edx, %edi
	movq	%xmm0, 56(%esp)
	fildq	56(%esp)
	js	.L252
.L227:
	movl	$.LC2, %ebp
	fmull	.LC1
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ebp, 4(%esp)
	movl	$1, (%esp)
	fstpl	16(%esp)
	call	__printf_chk
	addl	$92, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	movl	%edi, %edx
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
.L252:
	.cfi_restore_state
	fadds	.LC0
	jmp	.L227
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
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L258:
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
	jb	.L274
	fstp	%st(0)
	movl	$0x46800054, %eax
	movl	%eax, (%ebx)
.L265:
	incl	%esi
	movl	%eax, (%ebx)
	addl	$4, %ebx
	cmpl	$1792, %esi
	je	.L275
.L266:
	call	rand
	incl	%eax
	movl	%eax, 8(%esp)
	call	rand
	testl	%edi, %edi
	leal	1(%eax), %ebp
	je	.L276
.L254:
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
	je	.L258
	cmpl	$2, %ecx
	jne	.L260
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
.L260:
	fldz
	fcomip	%st(1), %st
	fstps	4(%esp)
	movl	4(%esp), %eax
	cmove	.LC4, %eax
	incl	%esi
	movl	%eax, (%ebx)
	addl	$4, %ebx
	cmpl	$1792, %esi
	jne	.L266
.L275:
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
.L276:
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
	jmp	.L254
	.p2align 4,,10
	.p2align 3
.L274:
	flds	.LC8
	fcomip	%st(1), %st
	jb	.L260
	fstp	%st(0)
	movl	$0xc6800054, %eax
	movl	%eax, (%ebx)
	jmp	.L265
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
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	leal	16(%eax), %edx
	cmpl	%edx, %ecx
	jbe	.L300
.L283:
	movaps	.LC10, %xmm1
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align 4,,15
.L280:
	movaps	%xmm0, %xmm5
	movaps	%xmm0, %xmm3
	movlps	(%eax,%edx), %xmm5
	movhps	8(%eax,%edx), %xmm5
	movlps	16(%eax,%edx), %xmm3
	movhps	24(%eax,%edx), %xmm3
	movaps	%xmm0, %xmm7
	movlps	32(%eax,%edx), %xmm7
	movhps	40(%eax,%edx), %xmm7
	mulps	%xmm1, %xmm5
	mulps	%xmm1, %xmm3
	mulps	%xmm1, %xmm7
	cvttps2dq	%xmm5, %xmm4
	movaps	%xmm0, %xmm5
	movdqu	%xmm4, (%ecx,%edx)
	movlps	48(%eax,%edx), %xmm5
	movhps	56(%eax,%edx), %xmm5
	cvttps2dq	%xmm3, %xmm2
	movaps	%xmm0, %xmm3
	movdqu	%xmm2, 16(%ecx,%edx)
	movlps	64(%eax,%edx), %xmm3
	movhps	72(%eax,%edx), %xmm3
	mulps	%xmm1, %xmm5
	cvttps2dq	%xmm7, %xmm6
	movdqu	%xmm6, 32(%ecx,%edx)
	movaps	%xmm0, %xmm7
	movlps	80(%eax,%edx), %xmm7
	movhps	88(%eax,%edx), %xmm7
	mulps	%xmm1, %xmm3
	cvttps2dq	%xmm5, %xmm4
	movaps	%xmm0, %xmm5
	movdqu	%xmm4, 48(%ecx,%edx)
	movlps	96(%eax,%edx), %xmm5
	movhps	104(%eax,%edx), %xmm5
	mulps	%xmm1, %xmm7
	cvttps2dq	%xmm3, %xmm2
	movaps	%xmm0, %xmm3
	movdqu	%xmm2, 64(%ecx,%edx)
	movlps	112(%eax,%edx), %xmm3
	movhps	120(%eax,%edx), %xmm3
	mulps	%xmm1, %xmm5
	mulps	%xmm1, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqu	%xmm6, 80(%ecx,%edx)
	cvttps2dq	%xmm5, %xmm4
	movdqu	%xmm4, 96(%ecx,%edx)
	cvttps2dq	%xmm3, %xmm2
	movdqu	%xmm2, 112(%ecx,%edx)
	subl	$-128, %edx
	cmpl	$7168, %edx
	jne	.L280
.L277:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.p2align 4,,10
	.p2align 3
.L300:
	.cfi_restore_state
	leal	16(%ecx), %ebx
	cmpl	%ebx, %eax
	ja	.L283
	xorl	%edx, %edx
	flds	.LC11
	.p2align 4,,15
.L278:
	flds	(%eax,%edx,4)
	fmul	%st(1), %st
	fstps	12(%esp)
	cvttss2si	12(%esp), %ebx
	movl	%ebx, (%ecx,%edx,4)
	leal	1(%edx), %ebx
	flds	(%eax,%ebx,4)
	fmul	%st(1), %st
	fstps	12(%esp)
	cvttss2si	12(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	2(%edx), %ebx
	flds	(%eax,%ebx,4)
	fmul	%st(1), %st
	fstps	12(%esp)
	cvttss2si	12(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	3(%edx), %ebx
	flds	(%eax,%ebx,4)
	fmul	%st(1), %st
	fstps	12(%esp)
	cvttss2si	12(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	4(%edx), %ebx
	flds	(%eax,%ebx,4)
	fmul	%st(1), %st
	fstps	12(%esp)
	cvttss2si	12(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	5(%edx), %ebx
	flds	(%eax,%ebx,4)
	fmul	%st(1), %st
	fstps	12(%esp)
	cvttss2si	12(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	6(%edx), %ebx
	flds	(%eax,%ebx,4)
	fmul	%st(1), %st
	fstps	12(%esp)
	cvttss2si	12(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	leal	7(%edx), %ebx
	addl	$8, %edx
	flds	(%eax,%ebx,4)
	cmpl	$1792, %edx
	fmul	%st(1), %st
	fstps	12(%esp)
	cvttss2si	12(%esp), %esi
	movl	%esi, (%ecx,%ebx,4)
	jne	.L278
	fstp	%st(0)
	jmp	.L277
	.cfi_endproc
.LFE125:
	.size	fill_fixed_array_from_float_array, .-fill_fixed_array_from_float_array
	.p2align 4,,15
	.globl	fill_arrays
	.type	fill_arrays, @function
fill_arrays:
.LFB126:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$1, %edx
	movl	%edx, 4(%esp)
	movl	$fval1, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	$fval2, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movaps	.LC10, %xmm0
	.p2align 4,,15
.L302:
	movaps	fval1(%eax), %xmm2
	movaps	fval1+16(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval1+32(%eax), %xmm5
	mulps	%xmm0, %xmm7
	movaps	fval1+48(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1(%eax)
	movaps	fval1+64(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval1+16(%eax)
	movaps	fval1+80(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval1+32(%eax)
	movaps	fval1+96(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval1+48(%eax)
	movaps	fval1+112(%eax), %xmm2
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval1+64(%eax)
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval1+80(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval1+96(%eax)
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L302
	xorl	%eax, %eax
	.p2align 4,,15
.L303:
	movaps	fval2(%eax), %xmm4
	movaps	fval2+16(%eax), %xmm2
	mulps	%xmm0, %xmm4
	movaps	fval2+32(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval2+48(%eax), %xmm5
	mulps	%xmm0, %xmm7
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2(%eax)
	movaps	fval2+64(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval2+16(%eax)
	movaps	fval2+80(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval2+32(%eax)
	movaps	fval2+96(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval2+48(%eax)
	movaps	fval2+112(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval2+64(%eax)
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval2+80(%eax)
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval2+96(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L303
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE126:
	.size	fill_arrays, .-fill_arrays
	.section	.rodata.str1.1
.LC12:
	.string	"\nSUBTRACTION BENCHMARKS:"
.LC13:
	.string	"\tFloat subtraction:\n\t"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC14:
	.string	"\tFixed-point 16.16 subtraction:\n\t"
	.align 4
.LC15:
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
	movl	$1, %eax
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, 4(%esp)
	movl	32(%esp), %ebx
	movl	$fval1, (%esp)
	call	fill_float_array
	xorl	%edx, %edx
	movl	%edx, 4(%esp)
	movl	$fval2, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movaps	.LC10, %xmm0
	.p2align 4,,15
.L321:
	movaps	fval1(%eax), %xmm2
	movaps	fval1+16(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval1+32(%eax), %xmm5
	mulps	%xmm0, %xmm7
	movaps	fval1+48(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1(%eax)
	movaps	fval1+64(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval1+16(%eax)
	movaps	fval1+80(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval1+32(%eax)
	movaps	fval1+96(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval1+48(%eax)
	movaps	fval1+112(%eax), %xmm2
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval1+64(%eax)
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval1+80(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval1+96(%eax)
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L321
	xorl	%eax, %eax
	.p2align 4,,15
.L322:
	movaps	fval2(%eax), %xmm4
	movaps	fval2+16(%eax), %xmm2
	mulps	%xmm0, %xmm4
	movaps	fval2+32(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval2+48(%eax), %xmm5
	mulps	%xmm0, %xmm7
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2(%eax)
	movaps	fval2+64(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval2+16(%eax)
	movaps	fval2+80(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval2+32(%eax)
	movaps	fval2+96(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval2+48(%eax)
	movaps	fval2+112(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval2+64(%eax)
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval2+80(%eax)
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval2+96(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L322
	movl	$.LC12, (%esp)
	call	puts
	movl	$.LC13, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_sub, (%esp)
	call	avg_of_3_runs
	movl	$.LC14, %edx
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_fixed_sub, (%esp)
	call	avg_of_3_runs
	movl	$.LC15, %ecx
	movl	%ecx, 32(%esp)
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
.LC16:
	.string	"\nADDITION BENCHMARKS:"
.LC17:
	.string	"\tFloat addition:\n\t"
	.section	.rodata.str1.4
	.align 4
.LC18:
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
	movl	$1, %edx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	%edx, 4(%esp)
	movl	32(%esp), %ebx
	movl	$fval1, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	$fval2, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movaps	.LC10, %xmm0
	.p2align 4,,15
.L340:
	movaps	fval1(%eax), %xmm2
	movaps	fval1+16(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval1+32(%eax), %xmm5
	mulps	%xmm0, %xmm7
	movaps	fval1+48(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1(%eax)
	movaps	fval1+64(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval1+16(%eax)
	movaps	fval1+80(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval1+32(%eax)
	movaps	fval1+96(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval1+48(%eax)
	movaps	fval1+112(%eax), %xmm2
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval1+64(%eax)
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval1+80(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval1+96(%eax)
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L340
	xorl	%eax, %eax
	.p2align 4,,15
.L341:
	movaps	fval2(%eax), %xmm4
	movaps	fval2+16(%eax), %xmm2
	mulps	%xmm0, %xmm4
	movaps	fval2+32(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval2+48(%eax), %xmm5
	mulps	%xmm0, %xmm7
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2(%eax)
	movaps	fval2+64(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval2+16(%eax)
	movaps	fval2+80(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval2+32(%eax)
	movaps	fval2+96(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval2+48(%eax)
	movaps	fval2+112(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval2+64(%eax)
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval2+80(%eax)
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval2+96(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L341
	movl	$.LC16, (%esp)
	call	puts
	movl	$.LC17, %edx
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_add, (%esp)
	call	avg_of_3_runs
	movl	$.LC18, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_fixed_add, (%esp)
	call	avg_of_3_runs
	movl	$.LC15, %ecx
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
.LC19:
	.string	"\nMULTIPLICATION BENCHMARKS:"
.LC20:
	.string	"\tFloat multiplication:\n\t"
	.section	.rodata.str1.4
	.align 4
.LC21:
	.string	"\tFixed-point 16.16 multiplication:\n\t"
	.section	.rodata.str1.1
.LC22:
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
	movl	$1, %ecx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	%ecx, 4(%esp)
	movl	32(%esp), %ebx
	movl	$fval1, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	$fval2, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movaps	.LC10, %xmm0
	.p2align 4,,15
.L359:
	movaps	fval1(%eax), %xmm2
	movaps	fval1+16(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval1+32(%eax), %xmm5
	mulps	%xmm0, %xmm7
	movaps	fval1+48(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1(%eax)
	movaps	fval1+64(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval1+16(%eax)
	movaps	fval1+80(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval1+32(%eax)
	movaps	fval1+96(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval1+48(%eax)
	movaps	fval1+112(%eax), %xmm2
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval1+64(%eax)
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval1+80(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval1+96(%eax)
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L359
	xorl	%eax, %eax
	.p2align 4,,15
.L360:
	movaps	fval2(%eax), %xmm4
	movaps	fval2+16(%eax), %xmm2
	mulps	%xmm0, %xmm4
	movaps	fval2+32(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval2+48(%eax), %xmm5
	mulps	%xmm0, %xmm7
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2(%eax)
	movaps	fval2+64(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval2+16(%eax)
	movaps	fval2+80(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval2+32(%eax)
	movaps	fval2+96(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval2+48(%eax)
	movaps	fval2+112(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval2+64(%eax)
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval2+80(%eax)
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval2+96(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L360
	movl	$.LC19, (%esp)
	call	puts
	movl	$.LC20, %edx
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_mul, (%esp)
	call	avg_of_3_runs
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	je	.L362
	.p2align 4,,15
.L365:
	xorl	%eax, %eax
	.p2align 4,,15
.L363:
	movaps	fval2(%eax), %xmm4
	movaps	fval2+16(%eax), %xmm3
	movaps	fval2+32(%eax), %xmm2
	movaps	fval2+48(%eax), %xmm1
	movaps	fval2+64(%eax), %xmm7
	movaps	fval2+80(%eax), %xmm6
	movaps	fval2+96(%eax), %xmm5
	movaps	fval2+112(%eax), %xmm0
	mulps	fval1(%eax), %xmm4
	mulps	fval1+16(%eax), %xmm3
	mulps	fval1+32(%eax), %xmm2
	movaps	%xmm4, fresult(%eax)
	mulps	fval1+48(%eax), %xmm1
	movaps	%xmm3, fresult+16(%eax)
	mulps	fval1+64(%eax), %xmm7
	movaps	%xmm2, fresult+32(%eax)
	mulps	fval1+80(%eax), %xmm6
	movaps	%xmm1, fresult+48(%eax)
	mulps	fval1+96(%eax), %xmm5
	movaps	%xmm7, fresult+64(%eax)
	mulps	fval1+112(%eax), %xmm0
	movaps	%xmm6, fresult+80(%eax)
	movaps	%xmm5, fresult+96(%eax)
	movaps	%xmm0, fresult+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L363
	incl	%ecx
	cmpl	%ecx, %ebx
	jne	.L365
.L362:
	movl	$.LC21, %ecx
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_fixed_mul, (%esp)
	call	avg_of_3_runs
	movl	$.LC22, %eax
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
.LC23:
	.string	"\nDIVISION BENCHMARKS:"
.LC24:
	.string	"\tFloat Division:\n\t"
	.section	.rodata.str1.4
	.align 4
.LC25:
	.string	"\tFixed-point 16.16 Division:\n\t"
	.section	.rodata.str1.1
.LC26:
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
	movl	$1, %edx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	%edx, 4(%esp)
	movl	32(%esp), %ebx
	movl	$fval1, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	$fval2, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movaps	.LC10, %xmm0
	.p2align 4,,15
.L392:
	movaps	fval1(%eax), %xmm2
	movaps	fval1+16(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval1+32(%eax), %xmm5
	mulps	%xmm0, %xmm7
	movaps	fval1+48(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1(%eax)
	movaps	fval1+64(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval1+16(%eax)
	movaps	fval1+80(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval1+32(%eax)
	movaps	fval1+96(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval1+48(%eax)
	movaps	fval1+112(%eax), %xmm2
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval1+64(%eax)
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval1+80(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval1+96(%eax)
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L392
	xorl	%eax, %eax
	.p2align 4,,15
.L393:
	movaps	fval2(%eax), %xmm4
	movaps	fval2+16(%eax), %xmm2
	mulps	%xmm0, %xmm4
	movaps	fval2+32(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval2+48(%eax), %xmm5
	mulps	%xmm0, %xmm7
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2(%eax)
	movaps	fval2+64(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval2+16(%eax)
	movaps	fval2+80(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval2+32(%eax)
	movaps	fval2+96(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval2+48(%eax)
	movaps	fval2+112(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval2+64(%eax)
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval2+80(%eax)
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval2+96(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L393
	movl	$.LC23, (%esp)
	call	puts
	movl	$.LC24, %edx
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_div, (%esp)
	call	avg_of_3_runs
	movl	$.LC25, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_fixed_div, (%esp)
	call	avg_of_3_runs
	movl	$.LC26, %ecx
	movl	%ecx, 4(%esp)
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
.LC27:
	.string	"\nSQUARE-ROOT BENCHMARKS:"
.LC28:
	.string	"\tFloat Square Root:\n\t"
	.section	.rodata.str1.4
	.align 4
.LC29:
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
	movl	$1, %edx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	%edx, 4(%esp)
	movl	32(%esp), %ebx
	movl	$fval1, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	$fval2, (%esp)
	call	fill_float_array
	xorl	%eax, %eax
	movaps	.LC10, %xmm0
	.p2align 4,,15
.L411:
	movaps	fval1(%eax), %xmm2
	movaps	fval1+16(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval1+32(%eax), %xmm5
	mulps	%xmm0, %xmm7
	movaps	fval1+48(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1(%eax)
	movaps	fval1+64(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval1+16(%eax)
	movaps	fval1+80(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval1+32(%eax)
	movaps	fval1+96(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval1+48(%eax)
	movaps	fval1+112(%eax), %xmm2
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval1+64(%eax)
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval1+80(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval1+96(%eax)
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval1+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L411
	xorl	%eax, %eax
	.p2align 4,,15
.L412:
	movaps	fval2(%eax), %xmm4
	movaps	fval2+16(%eax), %xmm2
	mulps	%xmm0, %xmm4
	movaps	fval2+32(%eax), %xmm7
	mulps	%xmm0, %xmm2
	movaps	fval2+48(%eax), %xmm5
	mulps	%xmm0, %xmm7
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2(%eax)
	movaps	fval2+64(%eax), %xmm3
	mulps	%xmm0, %xmm5
	cvttps2dq	%xmm2, %xmm1
	movdqa	%xmm1, xval2+16(%eax)
	movaps	fval2+80(%eax), %xmm1
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm7, %xmm6
	movdqa	%xmm6, xval2+32(%eax)
	movaps	fval2+96(%eax), %xmm6
	mulps	%xmm0, %xmm1
	cvttps2dq	%xmm5, %xmm4
	movdqa	%xmm4, xval2+48(%eax)
	movaps	fval2+112(%eax), %xmm4
	mulps	%xmm0, %xmm6
	cvttps2dq	%xmm3, %xmm2
	movdqa	%xmm2, xval2+64(%eax)
	mulps	%xmm0, %xmm4
	cvttps2dq	%xmm1, %xmm7
	movdqa	%xmm7, xval2+80(%eax)
	cvttps2dq	%xmm6, %xmm5
	movdqa	%xmm5, xval2+96(%eax)
	cvttps2dq	%xmm4, %xmm3
	movdqa	%xmm3, xval2+112(%eax)
	subl	$-128, %eax
	cmpl	$7168, %eax
	jne	.L412
	movl	$.LC27, (%esp)
	call	puts
	movl	$.LC28, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%ebx, 4(%esp)
	movl	$bench_float_sqrt, (%esp)
	call	avg_of_3_runs
	movl	$.LC29, %ecx
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
.LC30:
	.string	"Missing argument: number of iterations"
	.align 4
.LC31:
	.string	"32-bit Floating Point vs. 16.16 Fixed-point Math Speed Comparison"
	.align 4
.LC32:
	.string	"Written by Dan Silsby  dansilsby <AT> gmail <DOT> com"
	.align 4
.LC33:
	.string	"NOTE: before each benchmark is timed, sync(), fflush(),\na L2 cache flush, and .5 second delay are all executed."
	.align 4
.LC34:
	.string	"Times reported are an average of 3 of these benchmark runs.\n"
	.align 4
.LC35:
	.string	"Benchmark requested: %u iterations over %u-length arrays.\n"
	.align 4
.LC36:
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
	jle	.L432
	movl	12(%ebp), %eax
	xorl	%edx, %edx
	movl	$10, %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	4(%eax), %ebx
	movl	%ebx, (%esp)
	call	strtol
	movl	$.LC31, (%esp)
	movl	%eax, %ebx
	call	puts
	movl	$.LC32, (%esp)
	call	puts
	movl	$.LC33, (%esp)
	call	puts
	movl	$.LC34, (%esp)
	call	puts
	movl	$.LC35, %edx
	movl	$1792, %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	$.LC36, %ecx
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
.L431:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret
.L432:
	.cfi_restore_state
	movl	$.LC30, (%esp)
	call	puts
	movl	$1, %eax
	jmp	.L431
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
.LC0:
	.long	1602224128
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC10:
	.long	1199570944
	.long	1199570944
	.long	1199570944
	.long	1199570944
	.section	.rodata.cst4
	.align 4
.LC11:
	.long	1199570944
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
