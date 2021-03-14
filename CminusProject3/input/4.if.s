	.section	.rodata
	.comm _gp, 8, 4
	.string_const0: .string "%d\n"
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	leaq _gp(%rip), %rbx
	addq $0, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
	leaq _gp(%rip), %rbx
	addq $4, %rbx
	leaq _gp(%rip), %rcx
	addq $0, %rcx
	movl (%rcx), %r8d
	movl $2, %ecx
	subl %ecx, %r8d
	movl %r8d, (%rbx)
	leaq _gp(%rip), %rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $-1, %eax
	testl %eax, %ecx
	je .L0
	movl $1, %ebx
	leaq .string_const0(%rip), %rdi
	movl %ebx, %esi
	movl $0, %eax
	call printf@PLT
	jmp	.L1
.L0:	nop
	movl $0, %ebx
	leaq .string_const0(%rip), %rdi
	movl %ebx, %esi
	movl $0, %eax
	call printf@PLT
.L1:	nop
	leaq _gp(%rip), %rbx
	addq $4, %rbx
	movl (%rbx), %r8d
	movl $-1, %eax
	testl %eax, %r8d
	je .L2
	leaq _gp(%rip), %rbx
	addq $0, %rbx
	movl (%rbx), %r9d
	movl $-1, %eax
	testl %eax, %r9d
	je .L3
	movl $0, %ebx
	leaq .string_const0(%rip), %rdi
	movl %ebx, %esi
	movl $0, %eax
	call printf@PLT
	jmp	.L4
.L3:	nop
	movl $1, %ebx
	leaq .string_const0(%rip), %rdi
	movl %ebx, %esi
	movl $0, %eax
	call printf@PLT
.L4:	nop
	jmp	.L5
.L2:	nop
	movl $0, %ebx
	leaq .string_const0(%rip), %rdi
	movl %ebx, %esi
	movl $0, %eax
	call printf@PLT
.L5:	nop
	leave
	ret
