section .data
        msg1 db '1st number: '
        lenMsg1 equ $-msg1
        msg2 db '2nd number: '
        lenMsg2 equ $-msg2
        myData db 'Addition of two numbers: '
        lenMyData equ $- myData
        file db 'data.txt'

section .bss  
        fdout resb 1
        sayi1 resw 5
        sayi2 resw 5
        toplam resw 1

section .text    
        global _start

_start:
        ;scan 1st number
        mov eax, 4
        mov ebx, 1
        mov ecx, msg1       
        mov edx, lenMsg1
        int 0x80

        mov eax, 3
        mov ebx, 2
        mov ecx, sayi1
        mov edx, 5
        int 0x80

        ;scan 2nd number
        mov eax, 4
        mov ebx, 1
        mov ecx, msg2       
        mov edx, lenMsg2
        int 0x80

        mov eax, 3
        mov ebx, 2
        mov ecx, sayi2
        mov edx, 5
        int 0x80

        mov eax, sayi1
        sub eax, 30h
	mov ebx, sayi2
	add eax, ebx
        int 0x80

        mov [toplam], eax

        ;create file
        mov eax, 8
        mov ebx, file
        mov ecx, 777o
        int 0x80
        mov [fdout],eax

        mov eax,4
        mov ebx,[fdout]
        mov ecx, myData
        mov edx, lenMyData
        int 0x80

        mov eax,4
        mov ebx, [fdout]
        mov ecx, toplam
        mov edx, 5
        int 0x80

        mov eax, 6
        mov ebx, [fdout]

        mov eax, 1
        mov ebx, 0
        int 0x80