$LC0:
; \000 is zero byte in octal base:
	.ascii	"Hello, world!\000"
main:
; function prologue
; set GP
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	addiu	$28,$28,%lo(__gnu_local_gp)
; save RA to internal stack:
	sw	$31,28($sp)
; load address of puts() from GP to $25:
	lw	$25,%call16(puts)($28)
; load address of the text string to $4 ($a0):
	lui	$4,%hi($LC0)
; jump to puts() with link register:
	jalr	$25
	addiu	$4,$4,%lo($LC0) ; branch delay slot
; restore RA:
	lw	$31,28($sp)
; move 0 from $zero to $v0:
	move	$2,$0
; return by jumping to RA:
	j	$31
; function epilogue:
	addiu	$sp,$sp,32 ; branch delay slot
