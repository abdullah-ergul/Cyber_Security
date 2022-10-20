section .data
	msg db 'Hello asm!',0xa
	msglen equ $ - msg
section .text
	global _start
_start:
	mov eax, 4		;sys_write
	mov ebx, 1		;stdout
	mov ecx, msg
	mov edx, msglen
	int 0x80
	
	mov eax, 1
	int 0x800
