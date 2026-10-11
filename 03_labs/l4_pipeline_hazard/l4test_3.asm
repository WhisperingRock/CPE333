.data


.text
.global _main
_main:

	li   s0, 10
    li   s1, 20

    jal  ra, copy_direct       # Direct call; return address goes in ra

    la   t0, copy_indirect     # Load routine address into t0
    jalr ra, 0(t0)              # Indirect call; return address goes in ra

done:
    jal  x0, done               # Stop here in a bare-metal example

copy_direct:
    mv   s2, s0                 # Copy values into s2 and s3
    mv   s3, s1
    jr   ra                     # Return to caller

copy_indirect:
    mv   s4, s2                 # Copy values into s4 and s5
    mv   s5, s3
    jr   ra                     # Return to caller
