	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	f
	.def	f;	.scl	2;	.type	32;	.endef
	.seh_proc	f
f:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movss	DWORD PTR 16[rbp], xmm0
	cvtss2sd	xmm0, DWORD PTR 16[rbp]
	call	exp
	cvtsd2ss	xmm0, xmm0
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	fact
	.def	fact;	.scl	2;	.type	32;	.endef
	.seh_proc	fact
fact:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	cmp	DWORD PTR 16[rbp], 0
	jne	.L4
	mov	eax, 1
	jmp	.L5
.L4:
	mov	eax, DWORD PTR 16[rbp]
	sub	eax, 1
	mov	ecx, eax
	call	fact
	imul	eax, DWORD PTR 16[rbp]
.L5:
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC2:
	.ascii "Input x: \0"
.LC3:
	.ascii "%f\0"
.LC4:
	.ascii "Input Epsilon: \0"
.LC6:
	.ascii "\12s(x): %0.6f\12\0"
.LC7:
	.ascii "f(x): %0.6f\12\0"
.LC8:
	.ascii "Absolute error: %0.6f\12\0"
.LC9:
	.ascii "Relative error: %0.6f\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 96
	.seh_stackalloc	96
	movaps	XMMWORD PTR -16[rbp], xmm6
	.seh_savexmm	xmm6, 80
	.seh_endprologue
	call	__main
	mov	rax, QWORD PTR __imp___iob_func[rip]
	call	rax
	add	rax, 48
	mov	edx, 0
	mov	rcx, rax
	call	setbuf
	mov	DWORD PTR -28[rbp], 0
	movss	xmm0, DWORD PTR .LC0[rip]
	movss	DWORD PTR -20[rbp], xmm0
	pxor	xmm0, xmm0
	movss	DWORD PTR -24[rbp], xmm0
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -56[rbp], eax
	movss	xmm0, DWORD PTR -56[rbp]
	call	f
	movd	eax, xmm0
	mov	DWORD PTR -32[rbp], eax
	lea	rcx, .LC2[rip]
	call	printf
	lea	rax, -44[rbp]
	mov	rdx, rax
	lea	rcx, .LC3[rip]
	call	scanf
	lea	rcx, .LC4[rip]
	call	printf
	lea	rax, -48[rbp]
	mov	rdx, rax
	lea	rcx, .LC3[rip]
	call	scanf
	jmp	.L7
.L8:
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -28[rbp]
	movss	xmm0, DWORD PTR -44[rbp]
	cvtss2sd	xmm0, xmm0
	call	pow
	movapd	xmm6, xmm0
	mov	eax, DWORD PTR -28[rbp]
	mov	ecx, eax
	call	fact
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	divsd	xmm6, xmm0
	movapd	xmm0, xmm6
	cvtsd2ss	xmm2, xmm0
	movss	DWORD PTR -20[rbp], xmm2
	movss	xmm0, DWORD PTR -24[rbp]
	addss	xmm0, DWORD PTR -20[rbp]
	movss	DWORD PTR -24[rbp], xmm0
	add	DWORD PTR -28[rbp], 1
.L7:
	movss	xmm1, DWORD PTR -48[rbp]
	movss	xmm0, DWORD PTR -20[rbp]
	ucomiss	xmm0, xmm1
	jnb	.L8
	movss	xmm0, DWORD PTR -32[rbp]
	subss	xmm0, DWORD PTR -24[rbp]
	movss	xmm1, DWORD PTR .LC5[rip]
	andps	xmm0, xmm1
	movss	DWORD PTR -36[rbp], xmm0
	movss	xmm0, DWORD PTR -36[rbp]
	divss	xmm0, DWORD PTR -32[rbp]
	movss	xmm1, DWORD PTR .LC5[rip]
	andps	xmm0, xmm1
	movss	DWORD PTR -40[rbp], xmm0
	cvtss2sd	xmm0, DWORD PTR -24[rbp]
	movq	rax, xmm0
	mov	rdx, rax
	mov	QWORD PTR -56[rbp], rdx
	movsd	xmm0, QWORD PTR -56[rbp]
	movapd	xmm1, xmm0
	mov	rdx, rax
	lea	rcx, .LC6[rip]
	call	printf
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -56[rbp], eax
	movss	xmm0, DWORD PTR -56[rbp]
	call	f
	cvtss2sd	xmm0, xmm0
	movq	rax, xmm0
	mov	rdx, rax
	mov	QWORD PTR -56[rbp], rdx
	movsd	xmm0, QWORD PTR -56[rbp]
	movapd	xmm1, xmm0
	mov	rdx, rax
	lea	rcx, .LC7[rip]
	call	printf
	cvtss2sd	xmm0, DWORD PTR -36[rbp]
	movq	rax, xmm0
	mov	rdx, rax
	mov	QWORD PTR -56[rbp], rdx
	movsd	xmm0, QWORD PTR -56[rbp]
	movapd	xmm1, xmm0
	mov	rdx, rax
	lea	rcx, .LC8[rip]
	call	printf
	cvtss2sd	xmm0, DWORD PTR -40[rbp]
	movq	rax, xmm0
	mov	rdx, rax
	mov	QWORD PTR -56[rbp], rdx
	movsd	xmm0, QWORD PTR -56[rbp]
	movapd	xmm1, xmm0
	mov	rdx, rax
	lea	rcx, .LC9[rip]
	call	printf
	mov	eax, 0
	movaps	xmm6, XMMWORD PTR -16[rbp]
	add	rsp, 96
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1065353216
	.align 16
.LC5:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Rev1, Built by MSYS2 project) 6.3.0"
	.def	exp;	.scl	2;	.type	32;	.endef
	.def	setbuf;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	pow;	.scl	2;	.type	32;	.endef
