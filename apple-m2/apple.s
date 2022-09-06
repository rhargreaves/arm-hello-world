.data
msg:
	.ascii	"Hello, ARM!\n"
len = . - msg

.text
.global _start
_start:
	/* syscall write(fd, buf, count) */
	mov x0, #1 /* STDOUT */
	ldr x1, =msg
	ldr x2, =len
	mov w8, #64 /* write */
	svc #0 /* invoke */

	/* syscall exit(status) */
	mov x0, #0  /* status 0 */
	mov x8, #93 /* exit */
	svc #0 /* invoke */
