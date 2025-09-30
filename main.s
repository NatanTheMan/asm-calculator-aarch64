.global _start

_start:
	ldr x1, =msg
	ldr x2, =msg_len
	bl write

	ldr x1, =num1
	mov x2, 10
	bl read

	b exit

write:
	mov x8, #64
	mov x0, 1
	svc #0
	ret

read:
	mov x8, #63
	mov x0, #0
	svc #0
	ret

exit:
	mov x8, #93
	mov x0, #0
	svc #0

msg:
	.asciz "Hello\n"
msg_len = . - msg
num1:
	.skip 10
