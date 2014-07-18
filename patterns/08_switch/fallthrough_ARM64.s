.LC0:
	.string	"r=%d, w=%d\n"
f:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	w0, [x29,28]
	str	wzr, [x29,44] ; set r and w local variables to zero
	str	wzr, [x29,40]
	ldr	w0, [x29,28]  ; load 'type' argument
	cmp	w0, 2         ; type=W?
	beq	.L3
	cmp	w0, 3         ; type=RW?
	beq	.L4
	cmp	w0, 1         ; type=R?
	beq	.L5
	b	.L6           ; otherwise...
.L4: ; case RW
	mov	w0, 1
	str	w0, [x29,44] ; r=1
.L3: ; case W
	mov	w0, 1
	str	w0, [x29,40] ; w=1
	b	.L6
.L5: ; case R
	mov	w0, 1
	str	w0, [x29,44] ; r=1
	nop
.L6: ; default
	adrp	x0, .LC0 ; "r=%d, w=%d\n"
	add	x0, x0, :lo12:.LC0
	ldr	w1, [x29,44] ; load r
	ldr	w2, [x29,40] ; load w
	bl	printf
	ldp	x29, x30, [sp], 48
	ret
