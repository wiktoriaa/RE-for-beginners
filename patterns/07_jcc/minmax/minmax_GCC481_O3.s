my_max:
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
; EAX=A
; EDX=B
; compare B and A:
	cmp	edx, eax
; if B>=A, load B value in EAX
; the instruction idle if otherwise (if B<A)
	cmovge	eax, edx
	ret

my_min:
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
; EAX=A
; EDX=B
; compare B and A:
	cmp	edx, eax
; EAX=A
; EDX=B
; if B<=A, load B value in EAX
; the instruction idle if otherwise (if B>A)
	cmovle	eax, edx
	ret
