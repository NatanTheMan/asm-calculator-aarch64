.global _start

_start:
	b exit

exit:
	mov x8, #93
	mov x0, #0
	svc #0
