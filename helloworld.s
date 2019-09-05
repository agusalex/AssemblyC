section .data

section	.text
    global asmPrint	;must be declared for linker (ld)
asmPrint: ;tell linker entry point
	push EBP
	mov EBP, ESP
	mov	ecx, [EBP+8]; message
	mov	edx, [EBP+12];message length
	mov	ebx,1	;file descriptor (stdout)
	mov	eax,4	;system call number (sys_write)
	int	0x80	;call kernel
	mov	eax,1	;system call number (sys_exit)
	int	0x80	;call kernel
	ret