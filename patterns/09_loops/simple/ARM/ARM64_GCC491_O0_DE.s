.LC0:
	.string	"f(%d)\n"
printing_function:
; speichere FP und LR auf dem lokalen Stack:
	stp	x29, x30, [sp, -32]!
; setze den Stack Frame:
	add	x29, sp, 0
; Inhalt des W0 Registers speichern:
	str	w0, [x29,28]
; lade Adresse des "f(%d)\n" Strings
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
<<<<<<< HEAD
; Eingabewert vom Stack zurück ins W1 Register laden:
=======
; Eingabewert vom Stack zurÃ¼ck ins W1 Register laden:
>>>>>>> 33058039def6268466867db95246998137625356
	ldr	w1, [x29,28]
; Aufruf von printf()
	bl	printf
; wiederherstellen von FP und LR:
	ldp	x29, x30, [sp], 32
	ret
main:
; speichere FP und LR auf dem lokalen Stack:
	stp	x29, x30, [sp, -32]!
; setze den Stack Frame:
	add	x29, sp, 0
<<<<<<< HEAD
; Zähler initialisieren
	mov	w0, 2
; auf dem Stack an zugewiesener Stelle ablegen:
	str	w0, [x29,28]
; Schleifenkörper überspringen und zur Bedingungsprüfung springen:
	b	.L3
.L4:
; lade Zähler nach W0.
=======
; ZÃ¤hler initialisieren
	mov	w0, 2
; auf dem Stack an zugewiesener Stelle ablegen:
	str	w0, [x29,28]
; SchleifenkÃ¶rper Ã¼berspringen und zur BedingungsprÃ¼fung springen:
	b	.L3
.L4:
; lade ZÃ¤hler nach W0.
>>>>>>> 33058039def6268466867db95246998137625356
; als erstes Argument der printing_function():
	ldr	w0, [x29,28]
; Aufruf printing_function():
	bl	printing_function
<<<<<<< HEAD
; Zähler erhöhen:
=======
; ZÃ¤hler erhÃ¶hen:
>>>>>>> 33058039def6268466867db95246998137625356
	ldr	w0, [x29,28]
	add	w0, w0, 1
	str	w0, [x29,28]
.L3:
<<<<<<< HEAD
; Bedingungsprüfung der Schleife.
; Zähler laden:
=======
; BedingungsprÃ¼fung der Schleife.
; ZÃ¤hler laden:
>>>>>>> 33058039def6268466867db95246998137625356
	ldr	w0, [x29,28]
; ist 9 erreicht?
	cmp	w0, 9
; kleiner oder gleich? dann springe zum Anfang der Schleife:
; sonst tue nichts.
	ble	.L4
; return 0
	mov	w0, 0
; wiederherstellen von FP und LR:
	ldp	x29, x30, [sp], 32
	ret
