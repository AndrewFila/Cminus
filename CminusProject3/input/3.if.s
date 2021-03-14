	.section	.rodata
	.comm _gp, 8, 4
	.string_const0: .string "enter a:"
	.string_const1: .string "%d"
	.string_const2: .string "absoulute valute is %d\n"
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	leaq .string_const0(%rip), %rdi
	call printf@PLT
	leaq _gp(%rip), %rbx
	addq $0, %rbx
	leaq .string_const1(%rip), %rdi
	movq %rbx, %rsi
	movl $0, %eax
	call scanf@PLT
	leaq _gp(%rip), %rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $0, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovge %ebx, %ecx
	movl $-1, %eax
	testl %eax, %ecx
	je .L0
	leaq _gp(%rip), %rbx
	addq $4, %rbx
	leaq _gp(%rip), %r8
	addq $0, %r8
	movl (%r8), %r9d
	movl %r9d, (%rbx)
	leaq _gp(%rip), %rbx
	addq $4, %rbx
	movl (%rbx), %r8d
	leaq .string_const2(%rip), %rdi
	movl %r8d, %esi
	movl $0, %eax
	call printf@PLT
	jmp	.L1
.L0:	nop
	leaq _gp(%rip), %rbx
	addq $4, %rbx
	movl $0, %r8d
	leaq _gp(%rip), %r9
	addq $0, %r9
	movl (%r9), %r10d
	subl %r10d, %r8d
	movl %r8d, (%rbx)
	leaq _gp(%rip), %rbx
	addq $4, %rbx
	movl (%rbx), %r8d
	leaq .string_const2(%rip), %rdi
	movl %r8d, %esi
	movl $0, %eax
	call printf@PLT
.L1:	nop
	leave
	ret
