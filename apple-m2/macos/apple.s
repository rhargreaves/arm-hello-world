.text
.global _start
.align 4
_start:
	/* syscall write(fd, buf, count) */
	mov x0, #1 /* STDOUT */
	adr x1, msg
	mov x2, len
	mov x16, #4 /* write */
	svc #0x80 /* invoke */

	/* syscall exit(status) */
	mov x0, #0  /* status 0 */
	mov x16, #1 /* exit */
	svc #0x80 /* invoke */

msg:
	.ascii	"Hello, ARM!\n"
len = . - msg
