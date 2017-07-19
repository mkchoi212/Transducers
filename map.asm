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
	subq	$256, %rsp
	movq	$0, -56(%rbp)
	movq	$1, -8(%rbp)
	movq	$100000, -16(%rbp)
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
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movq	%rax, (%rsp)
	callq	__TFVs20CountableClosedRangeCfT15uncheckedBoundsT5lowerx5upperx__GS_x_
	leaq	l_metadata(%rip), %rax
	addq	$16, %rax
	movl	$32, %ecx
	movl	%ecx, %esi
	movl	$7, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	%rdi, -48(%rbp)
	movq	%r8, -40(%rbp)
	movq	%rax, %rdi
	callq	_swift_rt_swift_allocObject
	leaq	__TF4mainU_FSiSi(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, -112(%rbp)
	callq	__TMaGVs20CountableClosedRangeSi_
	movq	%rax, -120(%rbp)
	callq	__TWlGVs20CountableClosedRangeSi_uRxs10Comparablexs11_StrideablewxPS1_6Strides13SignedIntegerrGS_x_s10Collections
	leaq	__TPA__TTRXFo_dSi_dSizoPs5Error__XFo_iSi_iSizoPS___(%rip), %rdx
	movq	__TMSi@GOTPCREL(%rip), %rcx
	leaq	-56(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movq	%rdi, -128(%rbp)
	movq	%rdx, %rdi
	movq	-112(%rbp), %rdx
	movq	%rsi, -136(%rbp)
	movq	%rdx, %rsi
	movq	-120(%rbp), %rdx
	movq	%rax, %r8
	movq	-128(%rbp), %r9
	movq	-136(%rbp), %rax
	movq	%rax, (%rsp)
	callq	__TFEsPs10Collection3mapurfzFzWx8Iterator7Element_qd__GSaqd___
	movq	-56(%rbp), %rcx
	cmpq	$0, %rcx
	movq	%rax, -144(%rbp)
	jne	LBB0_8
	movq	-144(%rbp), %rax
	leaq	l_metadata.3(%rip), %rcx
	addq	$16, %rcx
	movl	$32, %edx
	movl	%edx, %esi
	movl	$7, %edx
	movq	%rax, -64(%rbp)
	movq	%rcx, %rdi
	callq	_swift_rt_swift_allocObject
	leaq	__TF4mainU0_FSiSb(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, -152(%rbp)
	callq	__TMaGSaSi_
	movq	%rax, -160(%rbp)
	callq	__TWlGSaSi_urGSax_s8Sequences
	leaq	__TPA__TTRXFo_dSi_dSbzoPs5Error__XFo_iSi_dSbzoPS___(%rip), %rcx
	leaq	-56(%rbp), %r9
	leaq	-64(%rbp), %rdx
	movq	%rcx, %rdi
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rcx
	movq	%rdx, -168(%rbp)
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movq	-168(%rbp), %r8
	callq	__TFEsPs8Sequence6filterfzFzWx8Iterator7Element_SbGSaWxS0_S1___
	movq	-56(%rbp), %rcx
	cmpq	$0, %rcx
	movq	%rax, -176(%rbp)
	jne	LBB0_9
	movq	-176(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -184(%rbp)
	callq	_swift_bridgeObjectRelease
	leaq	l_metadata.6(%rip), %rax
	addq	$16, %rax
	movl	$32, %ecx
	movl	%ecx, %esi
	movl	$7, %ecx
	movl	%ecx, %edx
	movq	-184(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	%rax, %rdi
	callq	_swift_rt_swift_allocObject
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	leaq	__TFsoi1pFTSiSi_Si(%rip), %rdi
	movq	%rdi, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, -192(%rbp)
	movq	%rsi, -200(%rbp)
	movq	%rdx, -208(%rbp)
	callq	__TWlGSaSi_urGSax_s8Sequences
	leaq	__TPA__TTRXFo_dSidSi_dSizoPs5Error__XFo_iSiiSi_iSizoPS___(%rip), %rdx
	movq	__TMSi@GOTPCREL(%rip), %r9
	leaq	-56(%rbp), %rsi
	leaq	-72(%rbp), %rdi
	movq	-200(%rbp), %r8
	movq	%rdi, -216(%rbp)
	movq	%r8, %rdi
	movq	-208(%rbp), %r10
	movq	%rsi, -224(%rbp)
	movq	%r10, %rsi
	movq	-192(%rbp), %rcx
	movq	-160(%rbp), %r8
	movq	%rax, (%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-224(%rbp), %r11
	movq	%r11, 16(%rsp)
	callq	__TFEsPs8Sequence6reduceurfzTqd__FzTqd__Wx8Iterator7Element__qd___qd__
	movq	-56(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB0_10
	movq	-72(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	xorl	%eax, %eax
	addq	$256, %rsp
	popq	%rbp
	retq
LBB0_8:
	movq	$0, -56(%rbp)
LBB0_9:
	movq	$0, -56(%rbp)
LBB0_10:
	movq	$0, -56(%rbp)
	.cfi_endproc

	.private_extern	__TF4mainU_FSiSi
	.globl	__TF4mainU_FSiSi
	.weak_definition	__TF4mainU_FSiSi
	.p2align	4, 0x90
__TF4mainU_FSiSi:
	.cfi_startproc
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	incq	%rdi
	seto	%al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	jo	LBB1_2
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
LBB1_2:
	ud2
	.cfi_endproc

	.private_extern	__TFsoi1pFTSiSi_Si
	.globl	__TFsoi1pFTSiSi_Si
	.weak_definition	__TFsoi1pFTSiSi_Si
	.p2align	4, 0x90
__TFsoi1pFTSiSi_Si:
	.cfi_startproc
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	addq	%rsi, %rdi
	seto	%al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	jo	LBB2_2
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
LBB2_2:
	ud2
	.cfi_endproc

	.private_extern	__TTRXFo_dSi_dSizoPs5Error__XFo_iSi_iSizoPS___
	.globl	__TTRXFo_dSi_dSizoPs5Error__XFo_iSi_iSizoPS___
	.weak_definition	__TTRXFo_dSi_dSizoPs5Error__XFo_iSi_iSizoPS___
	.p2align	4, 0x90
__TTRXFo_dSi_dSizoPs5Error__XFo_iSi_iSizoPS___:
	.cfi_startproc
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, %rax
	movq	(%rsi), %rsi
	movq	%rdi, -8(%rbp)
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rdx, -16(%rbp)
	movq	%r9, %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%r9, -32(%rbp)
	callq	*%rcx
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -48(%rbp)
	jne	LBB3_2
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB3_2:
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	$0, (%rcx)
	movq	%rax, %rdi
	movq	%rax, -56(%rbp)
	callq	_swift_willThrow
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
l_objectdestroy:
	.cfi_startproc
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	24(%rdi), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	_swift_rt_swift_release
	movl	$32, %ecx
	movl	%ecx, %esi
	movl	$7, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rdi
	callq	_swift_rt_swift_deallocObject
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_swift_rt_swift_release
	.globl	_swift_rt_swift_release
	.weak_definition	_swift_rt_swift_release
	.p2align	4, 0x90
_swift_rt_swift_release:
	movq	__swift_release@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmpq	*%rax

	.private_extern	_swift_rt_swift_deallocObject
	.globl	_swift_rt_swift_deallocObject
	.weak_definition	_swift_rt_swift_deallocObject
	.p2align	4, 0x90
_swift_rt_swift_deallocObject:
	movq	__swift_deallocObject@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmpq	*%rax

	.private_extern	_swift_rt_swift_allocObject
	.globl	_swift_rt_swift_allocObject
	.weak_definition	_swift_rt_swift_allocObject
	.p2align	4, 0x90
_swift_rt_swift_allocObject:
	movq	__swift_allocObject@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmpq	*%rax

	.p2align	4, 0x90
__TPA__TTRXFo_dSi_dSizoPs5Error__XFo_iSi_iSizoPS___:
	.cfi_startproc
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, %rax
	movq	16(%rdx), %r8
	movq	24(%rdx), %r9
	movq	%rdi, -8(%rbp)
	movq	%r9, %rdi
	movq	%rax, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r8, -56(%rbp)
	callq	_swift_rt_swift_retain
	movq	-32(%rbp), %rdi
	callq	_swift_rt_swift_release
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %r9
	callq	__TTRXFo_dSi_dSizoPs5Error__XFo_iSi_iSizoPS___
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_swift_rt_swift_retain
	.globl	_swift_rt_swift_retain
	.weak_definition	_swift_rt_swift_retain
	.p2align	4, 0x90
_swift_rt_swift_retain:
	movq	__swift_retain@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmpq	*%rax

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
	jne	LBB10_2
	movq	__TMSi@GOTPCREL(%rip), %rdi
	movq	__TWPSis10Comparables@GOTPCREL(%rip), %rsi
	movq	__TWPSis11_Strideables@GOTPCREL(%rip), %rdx
	movq	__TWPSis13SignedIntegers@GOTPCREL(%rip), %rcx
	callq	__TMaVs20CountableClosedRange
	movq	%rax, %rcx
	movq	%rax, __TMLGVs20CountableClosedRangeSi_(%rip)
	movq	%rcx, -8(%rbp)
LBB10_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq

	.private_extern	__TWlGVs20CountableClosedRangeSi_uRxs10Comparablexs11_StrideablewxPS1_6Strides13SignedIntegerrGS_x_s10Collections
	.globl	__TWlGVs20CountableClosedRangeSi_uRxs10Comparablexs11_StrideablewxPS1_6Strides13SignedIntegerrGS_x_s10Collections
	.weak_definition	__TWlGVs20CountableClosedRangeSi_uRxs10Comparablexs11_StrideablewxPS1_6Strides13SignedIntegerrGS_x_s10Collections
	.p2align	4, 0x90
__TWlGVs20CountableClosedRangeSi_uRxs10Comparablexs11_StrideablewxPS1_6Strides13SignedIntegerrGS_x_s10Collections:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	__TWLGVs20CountableClosedRangeSi_uRxs10Comparablexs11_StrideablewxPS1_6Strides13SignedIntegerrGS_x_s10Collections(%rip), %rax
	cmpq	$0, %rax
	movq	%rax, -8(%rbp)
	jne	LBB11_2
	callq	__TMaGVs20CountableClosedRangeSi_
	movq	%rax, %rdi
	callq	__TWauRxs10Comparablexs11_StrideablewxPS0_6Strides13SignedIntegerrGVs20CountableClosedRangex_s10Collections
	movq	%rax, %rdi
	movq	%rax, __TWLGVs20CountableClosedRangeSi_uRxs10Comparablexs11_StrideablewxPS1_6Strides13SignedIntegerrGS_x_s10Collections(%rip)
	movq	%rdi, -8(%rbp)
LBB11_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq

	.private_extern	__TF4mainU0_FSiSb
	.globl	__TF4mainU0_FSiSb
	.weak_definition	__TF4mainU0_FSiSb
	.p2align	4, 0x90
__TF4mainU0_FSiSb:
	.cfi_startproc
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdi
	movq	%rdi, -8(%rbp)
	jne	LBB12_3
	jmp	LBB12_2
LBB12_2:
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rdx, -16(%rbp)
	jmp	LBB12_4
LBB12_3:
	jmp	LBB12_2
LBB12_4:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	__TTRXFo_dSi_dSbzoPs5Error__XFo_iSi_dSbzoPS___
	.globl	__TTRXFo_dSi_dSbzoPs5Error__XFo_iSi_dSbzoPS___
	.weak_definition	__TTRXFo_dSi_dSbzoPs5Error__XFo_iSi_dSbzoPS___
	.p2align	4, 0x90
__TTRXFo_dSi_dSbzoPs5Error__XFo_iSi_dSbzoPS___:
	.cfi_startproc
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	(%rdi), %rdi
	movq	%rsi, -8(%rbp)
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, -16(%rbp)
	movq	%r8, -24(%rbp)
	callq	*%rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	cmpq	$0, %rdx
	movb	%al, -25(%rbp)
	movq	%rdx, -40(%rbp)
	jne	LBB13_2
	movb	-25(%rbp), %al
	addq	$48, %rsp
	popq	%rbp
	retq
LBB13_2:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	$0, (%rcx)
	movq	%rax, %rdi
	movq	%rax, -48(%rbp)
	callq	_swift_willThrow
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
l_objectdestroy.2:
	.cfi_startproc
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	24(%rdi), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	_swift_rt_swift_release
	movl	$32, %ecx
	movl	%ecx, %esi
	movl	$7, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rdi
	callq	_swift_rt_swift_deallocObject
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
__TPA__TTRXFo_dSi_dSbzoPs5Error__XFo_iSi_dSbzoPS___:
	.cfi_startproc
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	movq	%rsi, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rax, -40(%rbp)
	callq	_swift_rt_swift_retain
	movq	-16(%rbp), %rdi
	callq	_swift_rt_swift_release
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$48, %rsp
	popq	%rbp
	jmp	__TTRXFo_dSi_dSbzoPs5Error__XFo_iSi_dSbzoPS___
	.cfi_endproc

	.private_extern	__TMaGSaSi_
	.globl	__TMaGSaSi_
	.weak_definition	__TMaGSaSi_
	.p2align	4, 0x90
__TMaGSaSi_:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	__TMLGSaSi_(%rip), %rax
	cmpq	$0, %rax
	movq	%rax, -8(%rbp)
	jne	LBB16_2
	movq	__TMSi@GOTPCREL(%rip), %rdi
	callq	__TMaSa
	movq	%rax, %rdi
	movq	%rax, __TMLGSaSi_(%rip)
	movq	%rdi, -8(%rbp)
LBB16_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq

	.private_extern	__TWlGSaSi_urGSax_s8Sequences
	.globl	__TWlGSaSi_urGSax_s8Sequences
	.weak_definition	__TWlGSaSi_urGSax_s8Sequences
	.p2align	4, 0x90
__TWlGSaSi_urGSax_s8Sequences:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	__TWLGSaSi_urGSax_s8Sequences(%rip), %rax
	cmpq	$0, %rax
	movq	%rax, -8(%rbp)
	jne	LBB17_2
	callq	__TMaGSaSi_
	movq	%rax, %rdi
	callq	__TWaurGSax_s8Sequences
	movq	%rax, %rdi
	movq	%rax, __TWLGSaSi_urGSax_s8Sequences(%rip)
	movq	%rdi, -8(%rbp)
LBB17_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq

	.private_extern	__TTRXFo_dSidSi_dSizoPs5Error__XFo_iSiiSi_iSizoPS___
	.globl	__TTRXFo_dSidSi_dSizoPs5Error__XFo_iSiiSi_iSizoPS___
	.weak_definition	__TTRXFo_dSidSi_dSizoPs5Error__XFo_iSiiSi_iSizoPS___
	.p2align	4, 0x90
__TTRXFo_dSidSi_dSizoPs5Error__XFo_iSiiSi_iSizoPS___:
	.cfi_startproc
	pushq	%rbp
Ltmp30:
	.cfi_def_cfa_offset 16
Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, %rax
	movq	16(%rbp), %r9
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%rcx, -16(%rbp)
	movq	%r9, %rcx
	movq	-16(%rbp), %r8
	movq	%r9, -24(%rbp)
	movq	%rax, -32(%rbp)
	callq	*%r8
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -48(%rbp)
	jne	LBB18_2
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB18_2:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	$0, (%rcx)
	movq	%rax, %rdi
	movq	%rax, -56(%rbp)
	callq	_swift_willThrow
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
l_objectdestroy.5:
	.cfi_startproc
	pushq	%rbp
Ltmp33:
	.cfi_def_cfa_offset 16
Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	24(%rdi), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	_swift_rt_swift_release
	movl	$32, %ecx
	movl	%ecx, %esi
	movl	$7, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rdi
	callq	_swift_rt_swift_deallocObject
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
__TPA__TTRXFo_dSidSi_dSizoPs5Error__XFo_iSiiSi_iSizoPS___:
	.cfi_startproc
	pushq	%rbp
Ltmp36:
	.cfi_def_cfa_offset 16
Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, %rax
	movq	16(%rcx), %r9
	movq	24(%rcx), %r10
	movq	%rdi, -8(%rbp)
	movq	%r10, %rdi
	movq	%rax, -16(%rbp)
	movq	%r8, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	%r9, -64(%rbp)
	callq	_swift_rt_swift_retain
	movq	-32(%rbp), %rdi
	callq	_swift_rt_swift_release
	movq	%rsp, %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %r8
	callq	__TTRXFo_dSidSi_dSizoPs5Error__XFo_iSiiSi_iSizoPS___
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__swift3_typeref,regular,no_dead_strip
	.p2align	4
L___unnamed_1:
	.asciz	"XFo_dSi_dSizoPs5Error__"

	.section	__TEXT,__swift3_capture,regular,no_dead_strip
	.p2align	2
l__swift3_reflection_descriptor:
	.long	1
	.long	0
	.long	0
	.long	L___unnamed_1-(l__swift3_reflection_descriptor+12)

	.section	__DATA,__const
	.p2align	4
l_metadata:
	.quad	l_objectdestroy
	.quad	0
	.quad	64
	.long	16
	.space	4
	.quad	l__swift3_reflection_descriptor

	.private_extern	__TMLGVs20CountableClosedRangeSi_
	.section	__DATA,__data
	.globl	__TMLGVs20CountableClosedRangeSi_
	.weak_definition	__TMLGVs20CountableClosedRangeSi_
	.p2align	3
__TMLGVs20CountableClosedRangeSi_:
	.quad	0

	.private_extern	__TWLGVs20CountableClosedRangeSi_uRxs10Comparablexs11_StrideablewxPS1_6Strides13SignedIntegerrGS_x_s10Collections
	.globl	__TWLGVs20CountableClosedRangeSi_uRxs10Comparablexs11_StrideablewxPS1_6Strides13SignedIntegerrGS_x_s10Collections
	.weak_definition	__TWLGVs20CountableClosedRangeSi_uRxs10Comparablexs11_StrideablewxPS1_6Strides13SignedIntegerrGS_x_s10Collections
	.p2align	3
__TWLGVs20CountableClosedRangeSi_uRxs10Comparablexs11_StrideablewxPS1_6Strides13SignedIntegerrGS_x_s10Collections:
	.quad	0

	.section	__TEXT,__swift3_typeref,regular,no_dead_strip
	.p2align	4
L___unnamed_2:
	.asciz	"XFo_dSi_dSbzoPs5Error__"

	.section	__TEXT,__swift3_capture,regular,no_dead_strip
	.p2align	2
l__swift3_reflection_descriptor.1:
	.long	1
	.long	0
	.long	0
	.long	L___unnamed_2-(l__swift3_reflection_descriptor.1+12)

	.section	__DATA,__const
	.p2align	4
l_metadata.3:
	.quad	l_objectdestroy.2
	.quad	0
	.quad	64
	.long	16
	.space	4
	.quad	l__swift3_reflection_descriptor.1

	.private_extern	__TMLGSaSi_
	.section	__DATA,__data
	.globl	__TMLGSaSi_
	.weak_definition	__TMLGSaSi_
	.p2align	3
__TMLGSaSi_:
	.quad	0

	.private_extern	__TWLGSaSi_urGSax_s8Sequences
	.globl	__TWLGSaSi_urGSax_s8Sequences
	.weak_definition	__TWLGSaSi_urGSax_s8Sequences
	.p2align	3
__TWLGSaSi_urGSax_s8Sequences:
	.quad	0

	.section	__TEXT,__swift3_typeref,regular,no_dead_strip
	.p2align	4
L___unnamed_3:
	.asciz	"XFo_dSidSi_dSizoPs5Error__"

	.section	__TEXT,__swift3_capture,regular,no_dead_strip
	.p2align	2
l__swift3_reflection_descriptor.4:
	.long	1
	.long	0
	.long	0
	.long	L___unnamed_3-(l__swift3_reflection_descriptor.4+12)

	.section	__DATA,__const
	.p2align	4
l_metadata.6:
	.quad	l_objectdestroy.5
	.quad	0
	.quad	64
	.long	16
	.space	4
	.quad	l__swift3_reflection_descriptor.4

	.private_extern	___swift_reflection_version
	.section	__TEXT,__const
	.globl	___swift_reflection_version
	.weak_definition	___swift_reflection_version
	.p2align	1
___swift_reflection_version:
	.short	1

	.no_dead_strip	l__swift3_reflection_descriptor
	.no_dead_strip	l__swift3_reflection_descriptor.1
	.no_dead_strip	l__swift3_reflection_descriptor.4
	.no_dead_strip	___swift_reflection_version
	.linker_option "-lswiftCore"
	.linker_option "-lobjc"
	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	1088


.subsections_via_symbols
