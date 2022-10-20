section .text
	global _start

_start:
	mov eax, 10
	mov ebx, 2
	mul ebx

	mov ecx, 8
	imul ecx,ebx

;	mov result, eax
	mov [result], ecx

	mov eax, 4
	mov ebx, 1
	mov ecx, [result]
	mov edx, 4
	int 0x80

	mov eax, 1
	int 0x80

section .data
	
section .bss
	result dd ?
