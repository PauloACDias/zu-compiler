segment	.bss
align	4
global	x:object
x:
	resb	4
segment	.bss
align	4
global	y:object
y:
	resb	4
segment	.text
align	4
global	_main:function
_main:
	push	ebp
	mov	ebp, esp
	sub	esp, 4
	push	dword 0
	pop	eax
	mov	[ebp-4], eax
	push	dword 2
	push	dword 4
	push	dword [esp]
	push	dword $x
	pop	ecx
	pop	eax
	mov	[ecx], eax
	pop	eax
	add	dword [esp], eax
	push	dword [esp]
	push	dword $y
	pop	ecx
	pop	eax
	mov	[ecx], eax
	add	esp, 4
	push	dword $y
	pop	eax
	push	dword [eax]
	call	printi
	add	esp, 4
	push	dword [ebp-4]
	pop	eax
	leave
	ret
extern	readi
extern	readd
extern	printi
extern	printd
extern	prints
extern	println
extern	argc
extern	argv
extern	envp
