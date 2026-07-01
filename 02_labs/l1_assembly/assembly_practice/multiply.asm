# Purpose : perform y = a * b
# Assumption : a >= 0, b >= 0
# Inputs : [int] a = a0,
#		 b = a1,
# Return : [int] y = s1

# note : preserved/saved registers are s0-s11, sp, and ra
# note : nonpreserved are a0-a7, t0-t6, 

# ~~~~ text segment ~~~~
.text
.global main
main:

# ~~~~ init vars ~~~~
	addi a0, zero, 0	
	addi a1, zero, 123	
	
# ~~~~ caller-saves nonpreserved ~~~~
	# ~~ 1. Make space on stack for 4 registers ~~
	addi sp, sp, -8
	
	# ~~ 2. Store reg values in memory ~~
	sw a0, 4(sp)
	sw a1, 0(sp)

	# ~~ 3. Execute function
	jal multiply
	add s3, a0, zero	# a0 is the return val register
	
	# ~~ 4. Restore og values from stack
	lw a0, 4(sp)
	lw a1, 0(sp)
	
	# ~~ 5. Deallocate space on stack
	addi sp, sp, 8

	# ~~ exit
	j end

multiply: 
# we would attempt to perform calle-saved steps (like above)
# but we do not need to use saved registers s0-s11 here, just
# scratch registers t0-t6 and a0

	# ~~ init vars ~~
	addi t0, zero, 0	# b goes to 0
	addi t1, a0, 0		# t1 = a (const)
	addi a0, zero, 0	# let a0 = rolling product (easy return)
				# let a1 = b
				
while:	beq a1, t0 endwhile	#while b > 0
	add a0, a0, t1		# t1 += a
	addi a1, a1, -1		# b--
	j while
	
	
endwhile:
	# ~~ return with return register (+4) ~~
	jr ra

end: