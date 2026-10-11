.data


.text
.global _main
_main:

	addi	x7,		zero,	7
	addi	x8,		zero,	6		# data address
	slli	x8,		x8,		12
	addi	x10,	zero,	10		
	or		x11,	x7,		x10		
	sw		x11,	0(x8)	
