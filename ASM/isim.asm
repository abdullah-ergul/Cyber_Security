section .data
        userMsg db 'Please enter your name: ',0xa
        lenUserMsg equ $-userMsg
        dispMsg db 'Your name is: '
        lenDispMsg equ $-dispMsg

section .bss
        name resb 50

section .text
        global _start

_start:
        mov eax, 4
        mov ebx, 1
        mov ecx, userMsg
        mov edx, lenUserMsg
        int 80h

        mov eax, 3
        mov ebx, 2
        mov ecx, name
        mov edx, 50
        int 80h

        mov eax, 4
        mov ebx, 1
        mov ecx, dispMsg
        mov edx, lenDispMsg
        int 80h

        mov eax, 4
        mov ebx, 1
        mov ecx, name
        mov edx, 50
        int 80h

        mov eax, 1
        mov ebx, 0
        int 80h

