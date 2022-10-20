SECTION .data
name: db "NewDirectory",0
mode:   dd 777

SECTION .text
global _start

_start:
    ; Make a directory
    mov ecx,mode		; 755 dir permissions
    mov ebx,name		; dir name
    mov eax,39			; sys_mkdir
    int 0x80

    ; Exit
    mov ebx,0
    mov eax,1
    int 0x80
