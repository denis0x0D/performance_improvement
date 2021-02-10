	.text
	.file	"foo.c"
	.globl	bar_1                 
	.p2align	4, 0x90
	.type	bar_1,@function
bar_1:                                    
	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB0_2

	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)          
	jmp	.LBB0_3
.LBB0_2:
	movl	$1, %eax
	movl	%eax, -8(%rbp)          
	jmp	.LBB0_3
.LBB0_3:
	movl	-8(%rbp), %eax          
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	bar_1, .Lfunc_end0-bar_1
	.cfi_endproc
                                        
	.globl	foo_1
	.p2align	4, 0x90
	.type	foo_1,@function
foo_1:                                    
	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB1_1:                                
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB1_7

	movl	-16(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB1_4

	movl	$100, %eax
	movl	-16(%rbp), %ecx         
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movslq	-16(%rbp), %rsi
	addl	(%rdx,%rsi,4), %ecx
	movl	%ecx, (%rdx,%rsi,4)
	jmp	.LBB1_5
.LBB1_4:                                
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
.LBB1_5:                                
	jmp	.LBB1_6
.LBB1_6:                                
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB1_1
.LBB1_7:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	foo_1, .Lfunc_end1-foo_1
	.cfi_endproc
                                        
	.ident	"Ubuntu clang version 10.0.1-++20201112101950+ef32c611aa2-1~exp1~20201112092551.202"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bar_1
