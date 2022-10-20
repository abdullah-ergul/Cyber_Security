section	.text
   global _start     ;must be declared for linker (ld)
_start:             ;tell linker entry point
	
	
   mov eax, str1
   mov [buff], eax
   mov eax, str2
   mov	[buff+12], eax  
	
   
   mov	edx,19       ;message length
   mov	ecx,str1    ;message to write
   mov	ebx,1       ;file descriptor (stdout)
   mov	eax,4       ;system call number (sys_write)
   int	0x80        ;call kernel
	
   mov	eax,1       ;system call number (sys_exit)
   int	0x80        ;call kernel

section	.data
str1 db 'Siber Vatan '
str2 db 'ZAYOTEM'

section .bss
buff resb 2

