.data


.text
.global _main
_main:

	addi	s1,	zero,	6
	slli	s1,	s1,		12
	ori		s1,	s1,		0
	sw		s1,	0(s1)
	lw		s0, 0(s1) 
	sw		s1,	4(s0)
