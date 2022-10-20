section .text
	global _start

_start:

	mov edx,2
	mov ecx,char
	mov ebx,1	;stdout
	mov eax,4	;sys_write
	int 0x80

	mov edx,4
	mov ecx,number
	mov ebx,1	;stdout
	mov eax,4	;sys_write
	int 0x80

	mov edx,4
	mov ecx,neg_number
	mov ebx,1	;stdout
	mov eax,4	;sys_write
	int 0x80

	mov edx,16
	mov ecx,big_number
	mov ebx,1	;stdout
	mov eax,4	;sys_write
	int 0x80

	mov edx,8
	mov ecx,real_num1
	mov ebx,1	;stdout
	mov eax,4	;sys_write
	int 0x80

	mov edx,16
	mov ecx,real_num2
	mov ebx,1	;stdout
	mov eax,4	;sys_write
	int 0x80

	mov eax,1
	int 0x80

section .data
	char db 'A',0xa
	number dw '12345', 0xa
	neg_number dw -12345,0xa
	big_number dq 123456789,0xa
	real_num1 dd 1.234,0xa
	real_num2 dq 123.456,0xa

section .bss

