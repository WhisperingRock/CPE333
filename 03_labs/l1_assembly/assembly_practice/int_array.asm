# Purpose : add 8 to all elements in the integer array
#		using a for loop

# ~~~~ constants ~~~~
.equ N, 8


# ~~~~ data segment (memory) ~~~~
.data
	a: .word 3, 4, -1, 3, -10


# ~~~~ text segment ~~~~
.text
.global main # main func is accessed by all
main:
	# ~~ init variables ~~
	addi s2, zero, 0 	# s2 = i = 0
	addi t0, zero, 5	# t0 = len(a) = 5
				# t1 = offset version of i
	la t2, a		# t2 = base address of a
				# t3 = a[i]'s addr
	
	
for:	bge s2, t0, endfor	# i >= 5 ?
	slli t1, s2, 2		# t1 = i * 4 (byte addr offset)
	add t3, t2, t1		# addr of a[i]
	lw s3, 0(t3)		# s3 = a[i]
	addi s3, s3, N		# s3 = a[i] + 8
	sw s3, 0(t3)		# a[i] = s3
	addi s2, s2, 1		# i += 1
	j for			# repeat loop
endfor:

.end