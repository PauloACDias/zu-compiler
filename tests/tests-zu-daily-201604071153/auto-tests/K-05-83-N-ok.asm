segment	.text
align	4
global	f:function
f:
	push	ebp
	mov	ebp, esp
	sub	esp, 4
	push	dword 5
	push	dword [esp]
	lea	eax, [ebp+8]
	push	eax
	pop	ecx
	pop	eax
	mov	[ecx], eax
	add	esp, 4
	push	dword 1
	lea	eax, [ebp+8]
	push	eax
	pop	eax
	push	dword [eax]
	pop	eax
	add	dword [esp], eax
	pop	eax
	mov	[ebp-4], eax
	add	esp, 4
	push	dword [ebp-4]
	pop	eax
	leave
	ret
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
	push	dword 3
	call	f
	add	esp, 0
	push	eax
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
