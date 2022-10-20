section .data
        msg1 db '1st number: '
        lenMsg1 equ $-msg1
        msg2 db '2nd number: '
        lenMsg2 equ $-msg2
        dispMsg db 'Addition of two numbers: '
        lenDispMsg equ $-dispMsg

section .bss  
        sayi1 resb 5
        sayi2 resb 5
        toplam DW ?

section .text    
        global _start

_start:
        ;scan 1st number
        mov eax, 4
        mov ebx, 1
        mov ecx, msg1       
        mov edx, lenMsg1
        int 80h

        mov eax, 3
        mov ebx, 2
        mov ecx, sayi1
        mov edx, 5
        int 80h

        ;scan 2nd number
        mov eax, 4
        mov ebx, 1
        mov ecx, msg2       
        mov edx, lenMsg2
        int 80h

        mov eax, 3
        mov ebx, 2
        mov ecx, sayi2
        mov edx, 5
        int 80h

        ;Addition numbers
        mov eax, sayi1
	mov ebx, sayi2
	add eax, ebx

        mov [toplam], eax

        mov eax, 4
        mov ebx, 1
        mov ecx, dispMsg
        mov edx, lenDispMsg
        int 80h

        mov eax, 4
        mov ebx, 1
        mov ecx, toplam
        mov edx, 10
        int 80h

        mov eax, 1
        mov ebx, 0
        int 80h