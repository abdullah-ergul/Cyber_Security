section	.text
   global _start     ;must be declared for linker (ld)
_start:             ;tell linker entry point
	
	
   mov esi, str1
   mov edi, buff
   cld			; clear direction flag for string operation
   rep movsb		; rep=repeat while equal

   mov esi, str2
   mov edi, [buff+12]
   cld
   rep movsb
  
	
   
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

