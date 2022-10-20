section .data
	array DB '10', '20', '30'
section .bss
	dArray RESB 10 


section .text
	global _start

_start:

	mov eax, 4
	mov ebx, 1
	mov ecx, array
	mov edx, 2
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, array+2
	mov edx, 2
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, array+4
	mov edx, 2
	int 0x80

	mov [dArray], BYTE 'K'
	mov [dArray+2], BYTE 'P' 

	mov eax, 4
	mov ebx, 1
	mov ecx, dArray
	mov edx, 2
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, dArray+1
	mov edx, 2
	int 0x80

	mov eax, 1		;exit
	int 0x80

