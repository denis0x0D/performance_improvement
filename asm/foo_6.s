	.text
	.file	"foo.c"
	.globl	bar_6                 
	.p2align	4, 0x90
	.type	bar_6,@function
bar_6:                                    
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
	.size	bar_6, .Lfunc_end0-bar_6
                                        
	.globl	foo_6
	.p2align	4, 0x90
	.type	foo_6,@function
foo_6:                                    
  #%rdi pointer
  movl	%esi, %r9d #array size
  movl  $0, %r8d #counter
.LBB1_1:                                
	cmpl	%r9d, %r8d
	jge	.LBB1_7

	movl	%r8d, %eax
  andl  $1, %eax
	je	.LBB1_4

	movl	%r8d, %ecx         
	subl	$100, %ecx
	addl	(%rdi,%r8,4), %ecx
	movl	%ecx, (%rdi,%r8,4)
	jmp	.LBB1_6
.LBB1_4:                                
	movl	$0, (%rdi,%r8,4)
.LBB1_6:                                
	inc %r8d
	jmp	.LBB1_1
.LBB1_7:
	retq
.Lfunc_end1:
	.size	foo_6, .Lfunc_end1-foo_6
                                        
	.ident	"Ubuntu clang version 10.0.1-++20201112101950+ef32c611aa2-1~exp1~20201112092551.202"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bar_6
