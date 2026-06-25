# Purpose : perform matrix multiplication Y = A x B
# Assumption : 
#	- A is size (m x m) and a[i][j] >= 0 for all i,j
#	- B is size (m x m) and b[i][j] >= 0 for all i,j
# Inputs : [int] [m x m] A
#	   [int] [m x m] B

# Return : [int] [m x m] Y

# note : preserved/saved registers are s0-s11, sp, and ra
# note : nonpreserved are a0-a7, t0-t6, 

# ~~~~ compile time ~~~~
.equ M, 2


# ~~~~ data segment (memory) ~~~~
.data
A: 	.word 1, 2, 3, 4
B:	.word 1, 0, 1, 0
Y:	.word -7, -7, -7, -7

# ~~~~ text segment ~~~~	
.text
.global main # main func is accessed by all
main:

# ~~~~ init regs ~~~~
	addi s0, zero, 0 	# s0 is 'i', the row idx of A
				# t0 is the byte offset of i
				
	addi s1, zero, 0	# s1 is 'j', the col idx of A
				# t1 is the byte offset of j
				
	addi s2, zero, 0	# s2 is 'k', the working idx of A and B
				# t2 is the byte offset of k
				
	la s3, A		# s3 is the base addr of A
				# t3 is the offset addr of A[m*i + j]
				
	la s4, B		# s4 is the base addr of B
				# t4 is the offset addr of  B[m*i + j]
				
	la s5, Y		# s5 is the base addr of Y
				# t5 is the offset addr of Y[m*i + j]
				
	addi t6, zero, M	# t6 = elem limit for for-loops
				
# ~~~~ for all rows in A ~~~~

# ~~~~ for all columns in A ~~~~

# ~~~~ get the dot prod of A,B at (i, j) ~~~~
