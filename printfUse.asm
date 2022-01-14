
	global _start

extern printf

_start:
	; prolouge
	push ebp
	mov ebp, esp
	
	; some operations
	mov eax, 9
	mov ebx, 20
	sub ebx, eax
	
	; preparing stack for printf:



	
	;push ebx
	;push format

	; OR THIS (mov instead of push instruction - bad practice..)
	
	sub esp, 8
	mov dword [esp], format
	mov dword [esp+4], ebx




	call printf
	add esp, 8

	mov esp, ebp
	pop ebp

	; exit	
	mov eax, 0x1
	mov ebx, 0x0
	int 0x80		

		

section .data
	format db "num is: %d", 0xa
