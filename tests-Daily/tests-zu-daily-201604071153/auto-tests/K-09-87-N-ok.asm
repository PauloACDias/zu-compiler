segment	.text
align	4
global	f:function
f:
	push	ebp
	mov	ebp, esp
	sub	esp, 4
	push	dword 10
	pop	eax
	mov	[ebp-4], eax
	lea	eax, [ebp+8]
	push	eax
	call	g
	add	esp, 0
	push	eax
	add	esp, 4
	push	dword [ebp-4]
	pop	eax
	leave
	ret
segment	.text
align	4
global	g:function
g:
	push	ebp
	mov	ebp, esp
	sub	esp, 4
	push	dword 14
	pop	eax
	mov	[ebp-4], eax
	lea	eax, [ebp+8]
	push	eax
	pop	eax
	push	dword [eax]
	call	prints
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
segment	.rodata
align	4
_L1:
	db	"ola", 0
segment	.text
	push	dword $_L1
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
