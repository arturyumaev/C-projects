	.file	"main.c"
	.intel_syntax noprefix
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Input a: \0"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "Input n: \0"
.LC3:
	.ascii "a power n result: %d\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
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
	lea	rax, -8[rbp]
	mov	rdx, rax
	lea	rcx, .LC1[rip]
	call	scanf
	lea	rcx, .LC2[rip]
	call	printf
	lea	rax, -12[rbp]
	mov	rdx, rax
	lea	rcx, .LC1[rip]
	call	scanf
	mov	eax, DWORD PTR -12[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR -8[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	call	pow
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	lea	rcx, .LC3[rip]
	call	printf
	mov	eax, 0
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev1, Built by MSYS2 project) 6.3.0"
	.def	setbuf;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	pow;	.scl	2;	.type	32;	.endef
