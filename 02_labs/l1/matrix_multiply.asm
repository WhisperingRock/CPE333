# Purpose : perform matrix multiplication C = A x B
# Assumption : 
#	- A is size (m x m) and a[i][j] >= 0 for all i,j
#	- B is size (m x m) and b[i][j] >= 0 for all i,j
#	- Each elem in C is not larger than 32-bits
#
# Inputs : [int] [m x m] A
#	   [int] [m x m] B
#
# Return : [int] [m x m] C
#
# NOTE : preserved/saved registers are s0-s11, sp, and ra
# NOTE : nonpreserved are a0-a7, t0-t6
# NOTE : Ensure the sp is at a high number for RISC-V


# ~~~~~~~~ compile time ~~~~~~~~
.equ M, 50 			# one dim of the mat 


# ~~~~~~~~ data segment (memory) ~~~~~~~~
.data

# ~~ TC : 2x2 identity matrix ~~
#A: 	.word 1, 2, 3, 4
#B:	.word 1, 0, 0, 1
#C:	.word -7, -7, -7, -7
#answer = 1, 2, 3, 4

# ~~ TC : 2x2 big zero ~~
#A: 	.word 1, 2, 3, 4
#B:	.word 0, 0, 0, 0
#C:	.word -7, -7, -7, -7
#answer = 0, 0, 0, 0

# ~~ TC : 2x2 stairs ~~
#A: 	.word 1, 2, 3, 4
#B:	.word 5, 6, 7, 8
#C:	.word -7, -7, -7, -7
#answer = 19, 22, 43, 50

# ~~ TC : 2x2 swap ~~
#A: 	.word 1, 2, 3, 4
#B:	.word 0, 1, 1, 0
#C:	.word -7, -7, -7, -7
#answer = 2, 1, 4, 3

# ~~ TC : 3x3 identity matrix ~~
#A: 	.word 1, 2, 3, 4, 5, 6, 7, 8, 9
#B:	.word 1, 0, 0, 0, 1, 0, 0, 0, 1
#C:	.word -7, -7, -7, -7, -7, -7, -7, -7, -7
#answer = 1, 2, 3, 4, 5, 6, 7, 8, 9

# ~~ TC : 3x3 big zero ~~
#A: 	.word 1, 2, 3, 4, 5, 6, 7, 8, 9
#B:	.word 0, 0, 0, 0, 0, 0, 0, 0, 0
#C:	.word -7, -7, -7, -7, -7, -7, -7, -7, -7
#answer = 0, 0, 0, 0, 0, 0, 0, 0, 0

# ~~ TC : 3x3 stairs ~~
#A: 	.word 1, 2, 3, 4, 5, 6, 7, 8, 9
#B:	.word 10, 11, 12, 13, 14, 15, 16, 17, 18
#C:	.word -7, -7, -7, -7, -7, -7, -7, -7, -7
#answer = 84, 90, 96, 201, 216, 231, 318, 342, 366

# ~~ TC : 3x3 identity swap ~~
#A: 	.word 1, 2, 3, 4, 5, 6, 7, 8, 9
#B:	.word 0, 0, 1, 0, 1, 0, 1, 0, 0
#C:	.word -7, -7, -7, -7, -7, -7, -7, -7, -7
#answer = 3, 2, 1, 6, 5, 4, 9, 8, 7

# ~~ TC : dataset3.h ~~
#A: 	.word 0, 3, 2, 0, 3, 1, 0, 3, 2
#B:	.word 1, 1, 0, 3, 1, 2, 0, 0, 0
#C:	.word -7, -7, -7, -7, -7, -7, -7, -7, -7
#answer = 9, 3, 6, 9, 3, 6, 9, 3, 6

# ~~ TC : dataset10.h ~~
#A: 	.word 0, 3, 2, 0, 3, 1, 0, 3, 2, 3 	#1
#	.word 2, 0, 3, 3, 1, 2, 3, 0, 0, 1	#2
#	.word 1, 1, 2, 3, 1, 2, 3, 1, 1, 3	#3
#	.word 2, 2, 0, 1, 3, 2, 2, 2, 0, 0	#4
#	.word 1, 0, 1, 3, 3, 0, 3, 3, 3, 3	#5
#	.word 0, 3, 2, 1, 2, 2, 0, 0, 3, 0	#6
#	.word 1, 1, 0, 3, 3, 1, 2, 3, 3, 0	#7
#	.word 1, 2, 1, 0, 1, 2, 2, 1, 0, 3	#8
#	.word 1, 0, 2, 2, 1, 1, 1, 1, 1, 1	#9
#	.word 2, 0, 3, 1, 1, 2, 2, 3, 3, 1	#10
	
#B:	.word 1, 1, 0, 3, 1, 2, 0, 0, 0, 0	#1
#	.word 0, 2, 1, 2, 3, 0, 0, 3, 3, 2	#2
#	.word 2, 1, 2, 3, 3, 0, 2, 2, 1, 1	#3
#  	.word 2, 2, 0, 2, 2, 1, 2, 3, 2, 2	#4
#    	.word 3, 3, 2, 2, 1, 1, 1, 1, 2, 1	#5
#     	.word 2, 2, 3, 3, 3, 0, 0, 3, 2, 3	#6
#       .word 2, 3, 1, 2, 1, 1, 2, 2, 0, 1	#7
#       .word 0, 3, 2, 1, 1, 1, 2, 0, 1, 2	#8
#  	.word 2, 0, 2, 1, 3, 3, 2, 3, 2, 0	#9
#  	.word 3, 1, 3, 3, 2, 0, 1, 0, 1, 1	#10

#C:	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#1
#	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#2
#	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#3
#	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#4
#	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#5
#	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#6
#	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#7
#	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#8
#	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#9
#	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#10

#answer = 	28, 31, 35, 35, 36, 12, 20, 25, 29, 23	#1
#		30, 28, 20, 38, 29, 11, 20, 28, 16, 20	#2
#		35, 33, 29, 42, 36, 13, 24, 32, 23, 25	#3
#		21, 33, 20, 30, 23, 12, 13, 22, 20, 21	#4
#		39, 38, 32, 39, 34, 23, 32, 29, 25, 22	#5
#		22, 20, 23, 27, 34, 12, 14, 33, 27, 18	#6
#		28, 35, 24, 30, 30, 22, 25, 31, 26, 22 	#7
#		23, 25, 25, 32, 26, 6, 12, 19, 17, 19	#8
#		21, 19, 17, 25, 22, 10, 16, 19, 14, 14 	#9
#		30, 30, 31, 38, 36, 20, 26, 29, 21, 21	#10

# ~~ TC : dataset16.h ~~

A:
	.word 0, 3, 2, 0, 3, 1, 0, 3, 2, 3, 2, 0, 3, 3, 1, 2	#1
	.word 3, 0, 0, 1, 1, 1, 2, 3, 1, 2, 3, 1, 1, 3, 2, 2	#2
	.word 0, 1, 3, 2, 2, 2, 0, 0, 1, 0, 1, 3, 3, 0, 3, 3	#3
	.word 3, 3, 0, 3, 2, 1, 2, 2, 0, 0, 3, 0, 1, 1, 0, 3	#4
	.word 3, 1, 2, 3, 3, 0, 1, 2, 1, 0, 1, 2, 2, 1, 0, 3	#5
	.word 1, 0, 2, 2, 1, 1, 1, 1, 1, 1, 2, 0, 3, 1, 1, 2	#6
	.word 2, 3, 3, 1, 3, 2, 0, 0, 0, 3, 3, 3, 2, 1, 2, 3	#7
	.word 1, 0, 0, 0, 0, 1, 2, 2, 1, 1, 3, 3, 3, 1, 1, 2	#8
	.word 3, 1, 3, 3, 2, 3, 2, 1, 2, 3, 0, 2, 2, 1, 1, 0	#9
	.word 0, 0, 0, 0, 1, 3, 3, 1, 1, 1, 2, 2, 3, 2, 1, 1	#10
	.word 1, 1, 3, 0, 2, 2, 1, 3, 2, 1, 2, 2, 1, 3, 1, 3	#11
	.word 1, 3, 2, 3, 1, 2, 1, 3, 2, 2, 0, 1, 0, 0, 1, 2	#12
	.word 3, 3, 1, 0, 0, 0, 3, 1, 2, 3, 2, 3, 2, 0, 0, 0	#13
	.word 0, 0, 3, 1, 3, 0, 0, 0, 3, 1, 1, 1, 1, 2, 1, 2	#14
	.word 3, 2, 0, 0, 2, 2, 3, 0, 3, 0, 0, 3, 0, 3, 1, 3	#15
	.word 3, 1, 1, 1, 2, 2, 1, 3, 0, 3, 3, 1, 0, 0, 3, 2	#16


B:
	.word 1, 1, 0, 3, 1, 2, 0, 0, 0, 0, 0, 2, 1, 2, 3, 0   #1
	.word 0, 3, 3, 2, 2, 1, 2, 3, 3, 0, 2, 2, 1, 1, 2, 2   #2
	.word 0, 2, 2, 1, 2, 3, 2, 2, 3, 3, 2, 2, 1, 1, 1, 1   #3
	.word 2, 1, 2, 2, 3, 3, 3, 0, 0, 3, 2, 3, 2, 3, 1, 2   #4
	.word 1, 1, 2, 2, 0, 1, 0, 3, 2, 1, 1, 1, 2, 0, 1, 2   #5
	.word 2, 0, 2, 1, 3, 3, 2, 3, 2, 0, 3, 1, 3, 3, 2, 0   #6
	.word 1, 0, 1, 1, 2, 2, 1, 1, 2, 2, 1, 2, 3, 3, 1, 3   #7
	.word 2, 2, 2, 3, 3, 1, 0, 2, 1, 0, 0, 0, 1, 1, 2, 0   #8
	.word 3, 2, 3, 3, 0, 2, 3, 1, 0, 0, 2, 1, 2, 0, 2, 1   #9
	.word 1, 2, 3, 1, 3, 2, 1, 0, 0, 0, 0, 0, 2, 2, 0, 2   #10
	.word 1, 2, 0, 3, 2, 2, 0, 0, 3, 2, 1, 1, 3, 0, 2, 0   #11
	.word 0, 1, 0, 2, 3, 3, 1, 3, 3, 0, 0, 2, 2, 0, 0, 0   #12
	.word 1, 0, 0, 1, 3, 0, 2, 1, 3, 2, 2, 1, 3, 2, 0, 1   #13
	.word 2, 2, 3, 2, 1, 1, 1, 1, 3, 0, 1, 3, 2, 2, 3, 1   #14
	.word 1, 2, 0, 2, 1, 1, 2, 3, 1, 0, 1, 0, 1, 1, 0, 0   #15
	.word 2, 0, 3, 0, 3, 0, 3, 2, 2, 3, 3, 2, 1, 0, 2, 2   #16

C:	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#1
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#2
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#3
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#4
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#5
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#6
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#7
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#8
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#9
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#10
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#11
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#12
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#13
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#14
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#15
	.word -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7 	#16
#answer = 
#	36, 44, 57, 50, 54, 36, 38, 46, 55, 25, 38, 34, 51, 30, 40, 32   #1
#	37, 34, 38, 52, 51, 40, 28, 32, 41, 22, 26, 35, 49, 35, 42, 23   #2
#	26, 26, 33, 36, 52, 40, 45, 49, 50, 34, 41, 35, 44, 25, 23, 23   #3
#	31, 29, 39, 46, 50, 36, 31, 32, 42, 32, 34, 41, 44, 33, 43, 30   #4
#	31, 28, 39, 46, 50, 40, 35, 37, 43, 35, 33, 43, 43, 29, 37, 29   #5
#	27, 22, 30, 33, 43, 31, 32, 25, 36, 31, 31, 29, 40, 28, 26, 22   #6
#	29, 42, 48, 51, 65, 52, 43, 54, 63, 34, 42, 44, 56, 33, 38, 32   #7
#	26, 22, 23, 38, 49, 32, 26, 30, 43, 22, 24, 27, 45, 24, 26, 17   #8
#	35, 35, 47, 51, 59, 59, 43, 42, 43, 28, 37, 43, 56, 48, 36, 32   #9
#	28, 19, 28, 34, 46, 34, 28, 34, 45, 20, 29, 28, 50, 32, 26, 21   #10
#	37, 38, 51, 50, 55, 45, 38, 49, 56, 28, 38, 40, 50, 29, 44, 26   #11
#	32, 35, 50, 43, 53, 44, 41, 41, 34, 24, 35, 34, 39, 33, 34, 29   #12
#	21, 33, 31, 45, 48, 42, 27, 29, 40, 17, 21, 32, 45, 30, 29, 26   #13
#	26, 27, 38, 33, 29, 31, 32, 31, 35, 25, 29, 29, 34, 15, 25, 23   #14
#	34, 28, 44, 45, 41, 41, 37, 45, 45, 17, 34, 44, 46, 30, 43, 29   #15
#	31, 36, 37, 50, 54, 44, 28, 40, 38, 22, 27, 28, 45, 32, 36, 22   #16



# ~~~~~~~~ text segment ~~~~~~~~
.text
.global main 			# main func is accessed by all

main:
	la s0, A		# s0 is the base addr of A
	la s1, B		# s1 is the base addr of B
	la s2, C		# s2 is the base addr of C
	
	# ~~~~ caller saves non-preserved ~~~~
	# ~~ 1. Make space on stack for 8 registers ~~
	addi sp, sp, -32
	
	# ~~ 2. Store reg values in memory ~~
	sw a0, 28(sp)
	sw a1, 24(sp)
	sw a2, 20(sp)
	sw a3, 16(sp)
	sw a4, 12(sp)	
	sw a5, 8(sp)
	sw a6, 4(sp)
	sw a7, 0(sp)
	
	# ~~ 3. Execute function ~~
	addi a0, s0, 0		# a0 is base addr of mat A
	addi a1, s1, 0		# a1 is base addr of mat B
	addi a2, s2, 0		# a2 is base addr of mat C
	addi a3, zero, M	# a3 is one dim of the mat
	jal matmul		# no return val: C is in mem already
	
	# ~~ 4. Restore og values from stack ~~
	lw a0, 28(sp)
	lw a1, 24(sp)
	lw a2, 20(sp)
	lw a3, 16(sp)
	lw a4, 12(sp)	
	lw a5, 8(sp)
	lw a6, 4(sp)
	lw a7, 0(sp)
	
	# ~~ 5. Deallocate space on stack ~~
	addi sp, sp, 32
	
	# ~~ end program ~~
	j end

matmul:
	# ~~~~ callee saves preserved ~~~~
	# ~~ 1. Make space on stack for 13 registers (s + ra) ~~
	addi sp, sp, -52
	
	# ~~ 2. Store reg values in memory ~~
	sw s0, 48(sp)
	sw s1, 44(sp)
	sw s2, 40(sp)
	sw s3, 36(sp)
	sw s4, 32(sp)	
	sw s5, 28(sp)
	sw s6, 24(sp)
	sw s7, 20(sp)
	sw s8, 16(sp)
	sw s9, 12(sp)
	sw s10, 8(sp)
	sw s11, 4(sp)
	sw ra, 0(sp)	# preserve ra to return to main
	
	# ~~ 3. Execute function ~~

	# ~ init regs ~
				# (given) a0 is base addr for A
				# (given) a1 is base addr for B
				# (given) a2 is base addr for C
				# (given) a3 is one dim of mat (loop limit)
				  
	addi s0, zero, 0 	# s0 is 'i', the row idx of A
	addi s1, zero, 0	# s1 is 'j', the col idx of A
	addi s2, zero, 0	# s2 is 'k', the working idx of A and B
	
				# s3 is reserved for A[i][k]
				# s4 is reserved for B[k][j]
				# s5 is reserved for C[i][j]
	sub s6, zero, a3	# s6 is reverved for (i*m) = -m offset 
	sub s7, zero, a3	# s7 is reserved for (k*m) = -m offset
	
				# s8 = sum = dot prod of C[i][j]
				
# ~ for all rows in A ~
for_row: bge s0, a3, endfor_row	# i >= m ?

	add s6, s6, a3		#s6 = (i*m)
				# neg offset makes 0 at start, 
				#   than add m each iter

# ~ for all columns in A ~
for_col: bge s1, a3, endfor_col	# j >= m ?
	
	# load addr  (C + 4*(i*m + j))
	addi s5, s6, 0		# s5 = i*m
	add s5, s5, s1		# s5 = i*m + j
	slli s5, s5, 2		# s5 = 4*(i*m + j)
	add s5, s5, a2		# s5 = C + 4*(i*m + j)
	
	addi s8, zero, 0	# s8 = sum = 0
	
	
# ~ get the dot prod of A,B at (i, j) ~
for_dot: bge s2, a3, endfor_dot	# k >= m ?

	add s7, s7, a3		# s7 = (k*m)
				# neg offset makes 0 at start, 
				#   than add m each iter
	
	# load A[i][k] = *(A + 4*(i*m + k))
	addi s3, s6, 0		# s3 = i*m 
	add s3, s3, s2		# s3 = i*m + k
	slli s3, s3, 2		# s3 = 4*(i*m + k)
	add s3, s3, a0		# s3 = A + 4*(i*m + k)
	lw s3, 0(s3)		# s3 = *(A + 4*(i*m + k)) = A[i][k]
	
	# load B[k][j]= *(B + 4*(k*m + j))
	addi s4, s7, 0		# s4 = k*m 
	add s4, s4, s1		# s4 = k*m + j
	slli s4, s4, 2		# s4 = 4*(k*m + j)
	add s4, s4, a1		# s4 = B + 4*(k*m + j)
	lw s4, 0(s4)		# s4 = *(B + 4*(k*m + j)) = B[k][j]
				
	# sum += (Aik * Bkj)
	
	# ---- caller saves non-preserved ----
	# -- 1. Make space on stack for 4 registers --
	addi sp, sp, -20
	
	# -- 2. Store reg values in memory --
	sw a0, 16(sp)
	sw a1, 12(sp)
	sw a2, 8(sp)
	sw a3, 4(sp)
	sw ra, 0(sp)
	
	# -- 3. Execute function --
	addi a0, s3, 0		# a0 is A[i][k]
	addi a1, s4, 0		# a1 is B[k][j]		# here a1 goes neg
	jal multiply		
	add s8, s8, a0		# sum += A[i][k] * B[k][j]
	
	# -- 4. Restore og values from stack --
	lw a0, 16(sp)
	lw a1, 12(sp)
	lw a2, 8(sp)
	lw a3, 4(sp)
	lw ra, 0(sp)
	
	# -- 5. Deallocate space on stack --
	addi sp, sp, 20
	
	# increment and return
	addi s2, s2, 1		# k++
	j for_dot		# loop back
	
endfor_dot:
	sw s8, 0(s5)		# C[i][j] = sum
	addi s2, zero, 0	# reset k = 0
	sub s7, zero, a3	# reset k*m
	addi s1, s1, 1		# j++
	j for_col
	
endfor_col:
	addi s1, zero, 0	# reset j = 0
	addi s0, s0, 1		# i++
	j for_row

endfor_row:

	# ~~ 4. Restore og values from stack ~~
	lw s0, 48(sp)
	lw s1, 44(sp)
	lw s2, 40(sp)
	lw s3, 36(sp)
	lw s4, 32(sp)	
	lw s5, 28(sp)
	lw s6, 24(sp)
	lw s7, 20(sp)
	lw s8, 16(sp)
	lw s9, 12(sp)
	lw s10, 8(sp)
	lw s11, 4(sp)
	lw ra, 0(sp)	
	
	# ~~ 5. Deallocate space on stack ~~
	addi sp, sp, 52
	
	# ~~ exit func ~~
	jr ra



multiply:

# ~~~~ calle saves preserved ~~~~
# but since we dont write to preseved, we dont need to...

	# ~~ init vars ~~
	addi t0, zero, 0	# b goes to 0
	addi t1, a0, 0		# t1 = a (const)
	addi a0, zero, 0	# let a0 = rolling product (easy return)
				# let a1 = b
				
while:	bge t0, a1 endwhile	#while b > 0
	add a0, a0, t1		# prod += a
	addi a1, a1, -1		# b--
	j while
	
endwhile:
	# ~~ return with return register (+4) ~~
	jr ra
	

	
		
				
end:	
	addi a0, zero, 10	
	# ecall # OTTER specific ending