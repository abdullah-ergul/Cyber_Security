section .text
	global _start
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg1
	mov edx, msg1len
	int 0x80

	mov eax, 3
	mov ebx, 0
	mov ecx, sayi1
	mov edx, 2
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, msg2
	mov edx, msg2len
	int 0x80

	mov eax, 3
	mov ebx, 0
	mov ecx, sayi2
	mov edx, 2
	int 0x80

	mov eax, [sayi1]
	sub eax, 30h
	add eax, [sayi2]
	mov [sum], eax		;[sum] = adresteki deger

	mov eax, 4
	mov ebx, 1
	mov ecx, sum		; sum = adres
	mov edx, 2
	int 0x80

	mov eax, 1
	int 0x80

section .data
	msg1 db 'birinci sayiyi girin.',0xa
	msg1len EQU $ - msg1
	msg2 db 'ikinci sayiyi girin.',0xa
	msg2len EQU $ - msg2

section .bss
	sayi1 resw 1
	sayi2 resw 1
	sum resw 1
