# GCD Calculation using Euclidean Algorithm in MIPS
.data
    prompt1:  .asciiz "Enter the first integer: "
    prompt2:  .asciiz "Enter the second integer: "
    result:   .asciiz "GCD: "

.text
    .globl main

main:
    # Prompt for first integer
    li $v0, 4
    la $a0, prompt1
    syscall

    # Read first integer
    li $v0, 5
    syscall
    move $t0, $v0   # store first integer in $t0 (a)

    # Prompt for second integer
    li $v0, 4
    la $a0, prompt2
    syscall

    # Read second integer
    li $v0, 5
    syscall
    move $t1, $v0   # store second integer in $t1 (b)

# Euclidean algorithm: while (b != 0) { a = b; b = a % b; }
gcd_loop:
    beqz $t1, print_result  # if b == 0, exit loop

    # Calculate a % b using division
    div $t0, $t1      # $t0 / $t1
    mfhi $t2          # remainder (a % b)

    # Update a = b and b = a % b
    move $t0, $t1     # a = b
    move $t1, $t2     # b = remainder

    j gcd_loop        # repeat until b == 0

# Print result
print_result:
    li $v0, 4
    la $a0, result
    syscall

    # Print the GCD (value in $t0)
    li $v0, 1
    move $a0, $t0
    syscall

# Exit program
exit:
    li $v0, 10
    syscall
