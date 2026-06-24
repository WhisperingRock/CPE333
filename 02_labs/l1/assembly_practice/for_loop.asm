
# s0 = i
# s1 = sum

main:
	# init variables
	addi s0, zero, 0 	# i = 0
	addi s1, zero, 0 	# sum = 0
	addi t0, zero, 10	# t0 = 10
	
for:	bge s0, t0, endfor	# i >= 10 ?
	add s1, s1, s0		# sum += i
	addi s0, s0, 1		# i += 1
	j for			# repeat loop
endfor:
