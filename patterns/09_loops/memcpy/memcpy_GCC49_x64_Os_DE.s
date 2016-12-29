my_memcpy:
; RDI = Zieladresse
; RSI = Quelladresse
<<<<<<< HEAD
; RDX = Blockgröße

; initialisiere Zähler (i) mit 0
=======
; RDX = BlockgrÃ¶ÃŸe

; initialisiere ZÃ¤hler (i) mit 0
>>>>>>> 33058039def6268466867db95246998137625356
	xor	eax, eax
.L2:
; alles kopiert? dann verlassen:
	cmp	rax, rdx
	je	.L5
; load byte at RSI+i:
	mov	cl, BYTE PTR [rsi+rax]
; store byte at RDI+i:
	mov	BYTE PTR [rdi+rax], cl
	inc	rax ; i++
	jmp	.L2
.L5:
	ret
