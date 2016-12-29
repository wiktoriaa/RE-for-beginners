my_memcpy:
; X0 = Zieladresse
; X1 = Quelladresse
<<<<<<< HEAD
; X2 = Blockgröße

; initialisiere Zähler (i) mit 0
=======
; X2 = BlockgrÃ¶ÃŸe

; initialisiere ZÃ¤hler (i) mit 0
>>>>>>> 33058039def6268466867db95246998137625356
	mov	x3, 0
.L2:
; alles kopiert? dann verlassen:
	cmp	x3, x2
	beq	.L5
; load byte at X1+i:
	ldrb	w4, [x1,x3]
; store byte at X1+i:
	strb	w4, [x0,x3]
	add	x3, x3, 1 ; i++
	b	.L2
.L5:
	ret
