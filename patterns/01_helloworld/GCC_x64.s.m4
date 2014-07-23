include(`commons.m4').string	"hello, world"
main:
	sub	rsp, 8
	mov	edi, OFFSET FLAT:.LC0 ; "hello, world"
	xor	eax, eax  ; _LANG(`количество задействованных векторных регистров',`number of vector registers passed')
	call	printf
	xor	eax, eax
	add	rsp, 8
	ret
