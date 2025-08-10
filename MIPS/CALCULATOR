.data
prompt1: .asciiz "Enter the first integer: "
prompt2: .asciiz "Enter the second integer: "
sumMsg: .asciiz "Sum: "
diffMsg: .asciiz "Difference: "
prodMsg: .asciiz "Product: "
quotMsg: .asciiz "Quotient: "
remMsg: .asciiz "Remainder: "
newline: .asciiz "\n"

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
    move $t0, $v0  # store first integer in $t0

    # Prompt for second integer
    li $v0, 4
    la $a0, prompt2
    syscall

    # Read second integer
    li $v0, 5
    syscall
    move $t1, $v0  # store second integer in $t1

    # Calculate sum
    add $t2, $t0, $t1
    li $v0, 4
    la $a0, sumMsg
    syscall
    li $v0, 1
    move $a0, $t2
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # Calculate difference
    sub $t2, $t0, $t1
    li $v0, 4
    la $a0, diffMsg
    syscall
    li $v0, 1
    move $a0, $t2
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # Calculate product
    mul $t2, $t0, $t1
    li $v0, 4
    la $a0, prodMsg
    syscall
    li $v0, 1
    move $a0, $t2
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # Calculate quotient and remainder
    div $t0, $t1
    mflo $t2  # quotient
    mfhi $t3  # remainder

    # Print quotient
    li $v0, 4
    la $a0, quotMsg
    syscall
    li $v0, 1
    move $a0, $t2
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # Print remainder
    li $v0, 4
    la $a0, remMsg
    syscall
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # Exit program
    li $v0, 10
    syscall
