	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 9
	.globl	_main
	.p2align	4, 0x90
_main:
	.cfi_startproc
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	$0, __Tv4main3resSi(%rip)
	movq	$0, __Tv4main4tempSi(%rip)
	movq	$1, -32(%rbp)
	movq	$100000, -40(%rbp)
	movl	%edi, -92(%rbp)
	movq	%rsi, -104(%rbp)
	jmp	LBB0_2
LBB0_2:
	jmp	LBB0_3
LBB0_3:
	movq	__TMSi@GOTPCREL(%rip), %rcx
	movq	__TWPSis10Comparables@GOTPCREL(%rip), %r8
	movq	__TWPSis11_Strideables@GOTPCREL(%rip), %r9
	movq	__TWPSis13SignedIntegers@GOTPCREL(%rip), %rax
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	leaq	-56(%rbp), %rdi
	movq	%rax, (%rsp)
	callq	__TFVs20CountableClosedRangeCfT15uncheckedBoundsT5lowerx5upperx__GS_x_
	leaq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rax, -112(%rbp)
	callq	__TMaGVs20CountableClosedRangeSi_
	leaq	-72(%rbp), %rcx
	movq	-112(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	__TFVs20CountableClosedRange12makeIteratorfT_GVs19ClosedRangeIteratorx_
LBB0_5:
	leaq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	__TMaGVs19ClosedRangeIteratorSi_
	leaq	-24(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	__TFVs19ClosedRangeIterator4nextfT_GSqx_
	movq	-88(%rbp), %rax
	movb	-80(%rbp), %r8b
	xorb	$-1, %r8b
	testb	$1, %r8b
	movq	%rax, -128(%rbp)
	jne	LBB0_6
	jmp	LBB0_15
LBB0_6:
	movq	-128(%rbp), %rax
	incq	%rax
	seto	%cl
	movq	%rax, -136(%rbp)
	movb	%cl, -137(%rbp)
	jo	LBB0_16
	movabsq	$-9223372036854775808, %rax
	movq	-136(%rbp), %rcx
	movq	%rcx, __Tv4main4tempSi(%rip)
	movq	__Tv4main4tempSi(%rip), %rdx
	cmpq	%rax, %rdx
	movq	%rdx, -152(%rbp)
	jne	LBB0_10
	jmp	LBB0_9
LBB0_9:
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rdx, -160(%rbp)
	jmp	LBB0_11
LBB0_10:
	jmp	LBB0_9
LBB0_11:
	movq	-160(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB0_14
	movq	__Tv4main4tempSi(%rip), %rax
	addq	__Tv4main3resSi(%rip), %rax
	seto	%cl
	movq	%rax, -168(%rbp)
	movb	%cl, -169(%rbp)
	jo	LBB0_17
	movq	-168(%rbp), %rax
	movq	%rax, __Tv4main3resSi(%rip)
LBB0_14:
	jmp	LBB0_5
LBB0_15:
	xorl	%eax, %eax
	addq	$192, %rsp
	popq	%rbp
	retq
LBB0_16:
	ud2
LBB0_17:
	ud2
	.cfi_endproc

	.private_extern	__TMaGVs20CountableClosedRangeSi_
	.globl	__TMaGVs20CountableClosedRangeSi_
	.weak_definition	__TMaGVs20CountableClosedRangeSi_
	.p2align	4, 0x90
__TMaGVs20CountableClosedRangeSi_:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	__TMLGVs20CountableClosedRangeSi_(%rip), %rax
	cmpq	$0, %rax
	movq	%rax, -8(%rbp)
	jne	LBB1_2
	movq	__TMSi@GOTPCREL(%rip), %rdi
	movq	__TWPSis10Comparables@GOTPCREL(%rip), %rsi
	movq	__TWPSis11_Strideables@GOTPCREL(%rip), %rdx
	movq	__TWPSis13SignedIntegers@GOTPCREL(%rip), %rcx
	callq	__TMaVs20CountableClosedRange
	movq	%rax, %rcx
	movq	%rax, __TMLGVs20CountableClosedRangeSi_(%rip)
	movq	%rcx, -8(%rbp)
LBB1_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq

	.private_extern	__TMaGVs19ClosedRangeIteratorSi_
	.globl	__TMaGVs19ClosedRangeIteratorSi_
	.weak_definition	__TMaGVs19ClosedRangeIteratorSi_
	.p2align	4, 0x90
__TMaGVs19ClosedRangeIteratorSi_:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	__TMLGVs19ClosedRangeIteratorSi_(%rip), %rax
	cmpq	$0, %rax
	movq	%rax, -8(%rbp)
	jne	LBB2_2
	movq	__TMSi@GOTPCREL(%rip), %rdi
	movq	__TWPSis10Comparables@GOTPCREL(%rip), %rsi
	movq	__TWPSis11_Strideables@GOTPCREL(%rip), %rdx
	movq	__TWPSis13SignedIntegers@GOTPCREL(%rip), %rcx
	callq	__TMaVs19ClosedRangeIterator
	movq	%rax, %rcx
	movq	%rax, __TMLGVs19ClosedRangeIteratorSi_(%rip)
	movq	%rcx, -8(%rbp)
LBB2_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq

	.private_extern	__Tv4main3resSi
	.globl	__Tv4main3resSi
.zerofill __DATA,__common,__Tv4main3resSi,8,3
	.private_extern	__Tv4main4tempSi
	.globl	__Tv4main4tempSi
.zerofill __DATA,__common,__Tv4main4tempSi,8,3
	.private_extern	__TMLGVs20CountableClosedRangeSi_
	.section	__DATA,__data
	.globl	__TMLGVs20CountableClosedRangeSi_
	.weak_definition	__TMLGVs20CountableClosedRangeSi_
	.p2align	3
__TMLGVs20CountableClosedRangeSi_:
	.quad	0

	.private_extern	__TMLGVs19ClosedRangeIteratorSi_
	.globl	__TMLGVs19ClosedRangeIteratorSi_
	.weak_definition	__TMLGVs19ClosedRangeIteratorSi_
	.p2align	3
__TMLGVs19ClosedRangeIteratorSi_:
	.quad	0

	.private_extern	___swift_reflection_version
	.section	__TEXT,__const
	.globl	___swift_reflection_version
	.weak_definition	___swift_reflection_version
	.p2align	1
___swift_reflection_version:
	.short	1

	.no_dead_strip	___swift_reflection_version
	.linker_option "-lswiftCore"
	.linker_option "-lobjc"
	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	1088


.subsections_via_symbols
