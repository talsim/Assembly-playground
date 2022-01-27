section	.text
	global _start       ;must be declared for using gcc
_start:                     ;tell linker entry point
    mov ax, 0x22B7    ; 8887 in base 10
    mov bx, 0x8888
    sub ax, bx      ; this will set the following flags: CF, SF, OF (and more but this are the important)
    
    mov	eax, 1	    ;system call number (sys_exit)
    int	0x80   
