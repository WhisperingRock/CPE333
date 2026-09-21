.data


.text
.global _main
_main:

	# x7 = 7
	addi	x7,		zero,	7
	
	# load data segment address
	addi	x8,		x8,		6		# data address
	nop
	nop
	nop
	nop
	nop
	slli	x8,		x8,		12
	nop
	nop
	nop
	nop
	nop
	
	# x10 = 10
	addi	x10,	zero,	10		
	nop
	nop
	nop
	nop
	nop

	# x11 = x10 | x7
	or		x11,	x7,		x10		
	nop
	nop
	nop
	nop
	nop

	sw		x11,	0(x8)	
