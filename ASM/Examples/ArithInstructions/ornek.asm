section .text
	global _start

_start:
	mov eax, '4'
	mov ebx, '5'
	sub ebx, '0'
	add eax, ebx

	mov [sum], eax

	mov eax, 4
	mov ebx, 1
	mov ecx, sum
	mov edx, 4
	int 0x80

	mov eax, 1
	int 0x80


section .data

section .bss
	sum DW ?
