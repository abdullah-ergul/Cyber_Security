section .text
	global _start

_start:
	mov eax, numArr+2	;loads address
	lea ecx, numArr+2	;loads address
	mov ebx, [numArr+2]	;loads value
	lea edx, [numArr+2]	;loads address

	push eax
	push ebx

	xor eax, eax		;clear register
	xor ebx, ebx
	mov al, '1'
	mov bl, '5'
	xchg eax, ebx		;exchange data between registers

	pop ebx
	pop eax

	mov ax,1
	int 0x80

section .data
	numArr DW '5', '6'

section .bss
