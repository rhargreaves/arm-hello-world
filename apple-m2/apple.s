.text
.global _start
_start:
	/* syscall exit(int status) */
	
	mov x0, #0  /* status 0 */
	mov x8, #93 /* exit */
	svc #0 /* invoke syscall */
