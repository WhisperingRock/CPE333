# Purpose : perform y = (a+b)-(c+d)
# Inputs : [int] a = a0,
#		 b = a1,
#		 c = a2,
#		 d = a3
# Return : [int] y = s3

# note : preserved/saved registers are s0-s11, sp, and ra
# note : nonpreserved are a0-a7, t0-t6, 

# ~~~~ text segment ~~~~
.text
.global main
main:

# ~~~~ init vars ~~~~
	addi a0, zero, -5	
	addi a1, zero, 10	
	addi a2, zero, -8	
	addi a3, zero, 2	
	
# ~~~~ caller-saves nonpreserved ~~~~
	# ~~ 1. Make space on stack for 4 registers ~~
	addi sp, sp, -16
	
	# ~~ 2. Store reg values in memory ~~
	sw a0, 12(sp)	# save in next spot
	sw a1, 8(sp)
	sw a2, 4(sp)
	sw a3, 0(sp)
	
	# ~~ 3. Execute function ~~
	jal diffofsum
	add s3, a0, zero	# a0 is the return val register
	
	# ~~ 4. Restore og values from stack ~~
	lw a0, 12(sp)
	lw a1, 8(sp)
	lw a2, 4(sp)
	lw a3, 0(sp)
	
	# ~~ 5. Deallocate space on stack ~~
	addi sp, sp, 16

	# ~~ exit
	jal end

diffofsum: 
# we would attempt to perform calle-saved steps (like above)
# but we do not need to use saved registers s0-s11 here, just
# scratch registers t0-t6 and a0

	add a0, a0, a1
	add a2, a2, a3
	sub a0, a0, a2
	
	# ~~ return with return register (+4) ~~
	jr ra

end:
