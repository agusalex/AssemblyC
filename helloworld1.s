	.file	"helloworld.c"
	.text
	.globl	asm_Print
	.type	asm_Print, @function
asm_Print:
.LFB0:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %rdx
	movq	$-1, %rcx
	movl	$0, %eax
	repnz scasb
	notq	%rcx
	leaq	-1(%rcx), %rsi
	movq	%rdx, %rdi
	call	asmPrint@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	asm_Print, .-asm_Print
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hola Mundo!\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	.LC0(%rip), %rdi
	call	asm_Print
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
