# Purpose : find x such that 2^x = 128
# Inputs : 
#			s0 = left hand side
#			s1 = x

main:
	# init variables
	addi s0, zero, 1 	# 2^0 = 1
	addi s1, zero, 0 	# x = 0
	addi t0, zero, 128	# target limit
	
while:	beq s0, t0, endwhile
	addi s1, s1, 1		# x += 1
	slli s0, s0, 1		# lhs = lhs * 2
	j	while		# repeat loop
endwhile:
		
