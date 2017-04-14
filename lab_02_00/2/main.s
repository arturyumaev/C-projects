	.file	"main.c"
	.intel_syntax noprefix
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\277\320\265\321\200\320\262\321\203\321\216 \320\277\320\260\321\200\321\203 \320\272\320\276\320\276\321\200\320\264\320\270\320\275\320\260\321\202 \321\207\320\265\321\200\320\265\320\267 \320\277\321\200\320\276\320\261\320\265\320\273: \0"
.LC1:
	.ascii "%f %f\0"
	.align 8
.LC2:
	.ascii "\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\262\321\202\320\276\321\200\321\203\321\216 \320\277\320\260\321\200\321\203 \320\272\320\276\320\276\321\200\320\264\320\270\320\275\320\260\321\202 \321\207\320\265\321\200\320\265\320\267 \320\277\321\200\320\276\320\261\320\265\320\273: \0"
	.align 8
.LC3:
	.ascii "\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\202\321\200\320\265\321\202\321\214\321\216 \320\277\320\260\321\200\321\203 \320\272\320\276\320\276\321\200\320\264\320\270\320\275\320\260\321\202 \321\207\320\265\321\200\320\265\320\267 \320\277\321\200\320\276\320\261\320\265\320\273: \0"
.LC5:
	.ascii "\320\235\320\265 \321\202\321\200\320\265\321\203\320\263\320\276\320\273\321\214\320\275\320\270\320\272\0"
	.align 8
.LC6:
	.ascii "\320\237\321\200\321\217\320\274\320\276\321\203\320\263\320\276\320\273\321\214\320\275\321\213\320\271 \321\202\321\200\320\265\321\203\320\263\320\276\320\273\321\214\320\275\320\270\320\272\0"
	.align 8
.LC7:
	.ascii "\320\242\321\203\320\277\320\276\321\203\320\263\320\276\320\273\321\214\320\275\321\213\320\271 \321\202\321\200\320\265\321\203\320\263\320\276\320\273\321\214\320\275\320\270\320\272\0"
	.align 8
.LC8:
	.ascii "\320\236\321\201\321\202\321\200\320\276\321\203\320\263\320\276\320\273\321\214\320\275\321\213\320\271 \321\202\321\200\320\265\321\203\320\263\320\276\320\273\321\214\320\275\320\270\320\272\0"
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
	lea	rcx, .LC0[rip]
	call	printf
	lea	rdx, -36[rbp]
	lea	rax, -32[rbp]
	mov	r8, rdx
	mov	rdx, rax
	lea	rcx, .LC1[rip]
	call	scanf
	lea	rcx, .LC2[rip]
	call	printf
	lea	rdx, -44[rbp]
	lea	rax, -40[rbp]
	mov	r8, rdx
	mov	rdx, rax
	lea	rcx, .LC1[rip]
	call	scanf
	lea	rcx, .LC3[rip]
	call	printf
	lea	rdx, -52[rbp]
	lea	rax, -48[rbp]
	mov	r8, rdx
	mov	rdx, rax
	lea	rcx, .LC1[rip]
	call	scanf
	movss	xmm0, DWORD PTR -40[rbp]
	movss	xmm1, DWORD PTR -32[rbp]
	subss	xmm0, xmm1
	cvtss2sd	xmm0, xmm0
	movsd	xmm1, QWORD PTR .LC4[rip]
	call	pow
	movapd	xmm6, xmm0
	movss	xmm0, DWORD PTR -44[rbp]
	movss	xmm1, DWORD PTR -36[rbp]
	subss	xmm0, xmm1
	cvtss2sd	xmm0, xmm0
	movsd	xmm1, QWORD PTR .LC4[rip]
	call	pow
	addsd	xmm0, xmm6
	call	sqrt
	cvtsd2ss	xmm3, xmm0
	movss	DWORD PTR -20[rbp], xmm3
	movss	xmm0, DWORD PTR -48[rbp]
	movss	xmm1, DWORD PTR -32[rbp]
	subss	xmm0, xmm1
	cvtss2sd	xmm0, xmm0
	movsd	xmm1, QWORD PTR .LC4[rip]
	call	pow
	movapd	xmm6, xmm0
	movss	xmm0, DWORD PTR -52[rbp]
	movss	xmm1, DWORD PTR -36[rbp]
	subss	xmm0, xmm1
	cvtss2sd	xmm0, xmm0
	movsd	xmm1, QWORD PTR .LC4[rip]
	call	pow
	addsd	xmm0, xmm6
	call	sqrt
	cvtsd2ss	xmm4, xmm0
	movss	DWORD PTR -24[rbp], xmm4
	movss	xmm0, DWORD PTR -48[rbp]
	movss	xmm1, DWORD PTR -40[rbp]
	subss	xmm0, xmm1
	cvtss2sd	xmm0, xmm0
	movsd	xmm1, QWORD PTR .LC4[rip]
	call	pow
	movapd	xmm6, xmm0
	movss	xmm0, DWORD PTR -52[rbp]
	movss	xmm1, DWORD PTR -44[rbp]
	subss	xmm0, xmm1
	cvtss2sd	xmm0, xmm0
	movsd	xmm1, QWORD PTR .LC4[rip]
	call	pow
	addsd	xmm0, xmm6
	call	sqrt
	cvtsd2ss	xmm5, xmm0
	movss	DWORD PTR -28[rbp], xmm5
	movss	xmm0, DWORD PTR -24[rbp]
	addss	xmm0, DWORD PTR -28[rbp]
	movss	xmm1, DWORD PTR -20[rbp]
	ucomiss	xmm1, xmm0
	jnb	.L2
	movss	xmm0, DWORD PTR -20[rbp]
	addss	xmm0, DWORD PTR -28[rbp]
	movss	xmm1, DWORD PTR -24[rbp]
	ucomiss	xmm1, xmm0
	jnb	.L2
	movss	xmm0, DWORD PTR -24[rbp]
	addss	xmm0, DWORD PTR -20[rbp]
	movss	xmm1, DWORD PTR -28[rbp]
	ucomiss	xmm1, xmm0
	jb	.L3
.L2:
	lea	rcx, .LC5[rip]
	call	puts
.L3:
	movss	xmm0, DWORD PTR -20[rbp]
	mulss	xmm0, DWORD PTR -20[rbp]
	cvtss2sd	xmm0, xmm0
	call	round
	movapd	xmm1, xmm0
	movss	xmm0, DWORD PTR -24[rbp]
	movaps	xmm2, xmm0
	mulss	xmm2, DWORD PTR -24[rbp]
	movss	xmm0, DWORD PTR -28[rbp]
	mulss	xmm0, DWORD PTR -28[rbp]
	addss	xmm0, xmm2
	cvtss2sd	xmm0, xmm0
	ucomisd	xmm1, xmm0
	jp	.L15
	ucomisd	xmm1, xmm0
	je	.L5
.L15:
	movss	xmm0, DWORD PTR -24[rbp]
	mulss	xmm0, DWORD PTR -24[rbp]
	cvtss2sd	xmm0, xmm0
	call	round
	movapd	xmm1, xmm0
	movss	xmm0, DWORD PTR -20[rbp]
	movaps	xmm2, xmm0
	mulss	xmm2, DWORD PTR -20[rbp]
	movss	xmm0, DWORD PTR -28[rbp]
	mulss	xmm0, DWORD PTR -28[rbp]
	addss	xmm0, xmm2
	cvtss2sd	xmm0, xmm0
	ucomisd	xmm1, xmm0
	jp	.L16
	ucomisd	xmm1, xmm0
	je	.L5
.L16:
	movss	xmm0, DWORD PTR -28[rbp]
	mulss	xmm0, DWORD PTR -28[rbp]
	cvtss2sd	xmm0, xmm0
	call	round
	movapd	xmm1, xmm0
	movss	xmm0, DWORD PTR -24[rbp]
	movaps	xmm2, xmm0
	mulss	xmm2, DWORD PTR -24[rbp]
	movss	xmm0, DWORD PTR -20[rbp]
	mulss	xmm0, DWORD PTR -20[rbp]
	addss	xmm0, xmm2
	cvtss2sd	xmm0, xmm0
	ucomisd	xmm1, xmm0
	jp	.L8
	ucomisd	xmm1, xmm0
	jne	.L8
.L5:
	lea	rcx, .LC6[rip]
	call	puts
	jmp	.L10
.L8:
	movss	xmm0, DWORD PTR -20[rbp]
	mulss	xmm0, DWORD PTR -20[rbp]
	movss	xmm1, DWORD PTR -24[rbp]
	movaps	xmm2, xmm1
	mulss	xmm2, DWORD PTR -24[rbp]
	movss	xmm1, DWORD PTR -28[rbp]
	mulss	xmm1, DWORD PTR -28[rbp]
	addss	xmm1, xmm2
	ucomiss	xmm0, xmm1
	ja	.L11
	movss	xmm0, DWORD PTR -24[rbp]
	mulss	xmm0, DWORD PTR -24[rbp]
	movss	xmm1, DWORD PTR -20[rbp]
	movaps	xmm2, xmm1
	mulss	xmm2, DWORD PTR -20[rbp]
	movss	xmm1, DWORD PTR -28[rbp]
	mulss	xmm1, DWORD PTR -28[rbp]
	addss	xmm1, xmm2
	ucomiss	xmm0, xmm1
	ja	.L11
	movss	xmm0, DWORD PTR -28[rbp]
	mulss	xmm0, DWORD PTR -28[rbp]
	movss	xmm1, DWORD PTR -24[rbp]
	movaps	xmm2, xmm1
	mulss	xmm2, DWORD PTR -24[rbp]
	movss	xmm1, DWORD PTR -20[rbp]
	mulss	xmm1, DWORD PTR -20[rbp]
	addss	xmm1, xmm2
	ucomiss	xmm0, xmm1
	jbe	.L17
.L11:
	lea	rcx, .LC7[rip]
	call	puts
	jmp	.L10
.L17:
	lea	rcx, .LC8[rip]
	call	puts
.L10:
	mov	eax, 0
	movaps	xmm6, XMMWORD PTR -16[rbp]
	add	rsp, 96
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.long	0
	.long	1073741824
	.ident	"GCC: (Rev1, Built by MSYS2 project) 6.3.0"
	.def	setbuf;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	pow;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
