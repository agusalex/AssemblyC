global main
    extern printf
    section .text
main:
	push ebp
	mov ebp, esp
    push message
    call printf
	add esp, 4	; quita parametros de la pila
	pop ebp
	ret
message:
    db 'Hello, World!',10,0c