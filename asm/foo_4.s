	.text
	.file	"foo.c"
	.globl	bar_4                 
	.p2align	4, 0x90
	.type	bar_4,@function
bar_4:                                    
	pushq	%rbp
	movq	%rsp, %rbp
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
	retq
.Lfunc_end0:
	.size	bar_4, .Lfunc_end0-bar_4
                                        
	.globl	foo_4
	.p2align	4, 0x90
	.type	foo_4,@function
foo_4:                                    
  movl	%esi, %r9d
  movl  $0, %r8d
.LBB1_1:                                
  movl	%r8d, %eax
	cmpl	%r9d, %eax
	jge	.LBB1_7

	movl	%r8d, %eax
  andl  $1, %eax
	je	.LBB1_4

	movl	$100, %eax
	movl	%r8d, %ecx         
	subl	%eax, %ecx
	movq	%rdi, %rdx
	movslq	%r8d, %rsi
	addl	(%rdx,%rsi,4), %ecx
	movl	%ecx, (%rdx,%rsi,4)
	jmp	.LBB1_5
.LBB1_4:                                
	movq	%rdi, %rax
	movslq	%r8d, %rcx
	movl	$0, (%rax,%rcx,4)
.LBB1_5:                                
	jmp	.LBB1_6
.LBB1_6:                                
	movl	%r8d, %eax
	addl	$1, %eax
	movl	%eax, %r8d
	jmp	.LBB1_1
.LBB1_7:
	retq
.Lfunc_end1:
	.size	foo_4, .Lfunc_end1-foo_4
                                        
	.ident	"Ubuntu clang version 10.0.1-++20201112101950+ef32c611aa2-1~exp1~20201112092551.202"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bar_4
