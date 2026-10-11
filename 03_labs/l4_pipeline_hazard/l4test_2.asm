.data


.text
.global _main
_main:

	addi	s1,	zero,	6
	slli	s1,	s1,		12
	ori		s1,	s1,		0
	bne		s1, zero, 	LABEL1
	
LABEL2:
	sw		s1,	0(s1)
	lw		s0, 0(s1) 
	sw		s1,	4(s0)
	beq		s1, s1, RET

LABEL1:
	addi	s1, s1,		12
	j		LABEL2
	
RET:

	