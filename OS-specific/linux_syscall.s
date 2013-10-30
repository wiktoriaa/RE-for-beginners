section	.text
global	_start              

_start:                         
	mov	edx,len	; buf len
	mov	ecx,msg ; buf
	mov	ebx,1	; file descriptor. stdout is 1
	mov	eax,4	; syscall number. sys_write is 4
	int	0x80                

	mov	eax,1	; ; syscall number. sys_exit is 4
	int	0x80                

section	.data

msg	db  'Hello, world!',0xa
len	equ $ - msg             
