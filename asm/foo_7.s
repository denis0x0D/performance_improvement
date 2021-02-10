	.text
	.file	"foo.c"
	.globl	bar_7                 
	.p2align	4, 0x90
	.type	bar_7,@function
bar_7:                                    
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
	.size	bar_7, .Lfunc_end0-bar_7
                                        
	.globl	foo_7
	.p2align	4, 0x90
	.type	foo_7,@function
foo_7:                                    
  movl	%esi, %r9d # size
  movl  $0, %r8d #counter

  # if (!(size % 2))
  movl	%r9d, %eax
  andl  $1, %eax
  je .LBB1_1
 
  # size1 = size 
  movl %r9d, %r10d
  # --size
  dec %r9d

 .LBB1_1:                                
	cmpl	%r9d, %r8d
	jge	.LBB1_7 

  # a[i] = 0
  movl	$0, (%rdi,%r8,4)

  # ++i
  inc %r8b 

  # a[i] = a[i] + i - 100
  movl	%r8d, %ecx         
	subl	$100, %ecx
	addl	(%rdi,%r8,4), %ecx
	movl	%ecx, (%rdi,%r8,4)

  # ++i
	inc %r8d
	jmp	.LBB1_1

.LBB1_7:
  # if (!(size % 2))
  andl  $1, %r10d
  je .LBB1_8
  // a[size - 1] = 0
  movl $0, (%rdi, %r9, 4)

.LBB1_8:  
	retq
.Lfunc_end1:
	.size	foo_7, .Lfunc_end1-foo_7
                                        
	.ident	"Ubuntu clang version 10.0.1-++20201112101950+ef32c611aa2-1~exp1~20201112092551.202"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bar_7
