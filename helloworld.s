section .data
section	.text
    global asmPrint	;must be declared for linker (ld)
asmPrint: ;tell linker entry point
	push ebp ;enter 0,0
	mov ebp,esp ;enter 0,0
	mov	ecx, [EBP+8];message
	mov	edx, [EBP+12];message length
	mov	ebx,1	;file descriptor (stdout)
	mov	eax,4	;system call number (sys_write)
	int	0x80	;call kernel
	mov	eax,1	;system call number (sys_exit)
	int	0x80	;call kernel
	mov ebp,esp ;Reset Stack  (leave)
	pop ebp ;Restore old EBP  (leave)	
	ret
	