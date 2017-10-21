; This is a simple assembly program to say hello to the world.

section .text
	global _start	
_start:
	mov edx,len	; length - > register
	mov ecx,msg	; message -> register
	mov ebx,1	; target print to stdout
	mov eax,4	; sys_write 
	int 0x80	; call kernel

	mov eax,1	; sys_exit
	int 0x80	; call kernel

section .data
msg db 'Hello, world!', 0xa	; string
len equ $ - msg			; length of the string
