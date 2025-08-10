.data
    prompt1: .asciiz "Enter the dividend: "
    prompt2: .asciiz "Enter the divisor: "
    quotientMsg: .asciiz "Quotient: "
    remainderMsg: .asciiz "Remainder: "

.text
    # Prompt for dividend
    li $v0, 4
    la $a0, prompt1
    syscall

    # Read dividend
    li $v0, 5
    syscall
    move $t0, $v0  # $t0 holds the dividend

    # Prompt for divisor
    li $v0, 4
    la $a0, prompt2
    syscall

    # Read divisor
    li $v0, 5
    syscall
    move $t1, $v0  # $t1 holds the divisor

    # Perform division: quotient -> LO, remainder -> HI
    div $t0, $t1
    mflo $t2  # Quotient in $t2
    mfhi $t3  # Remainder in $t3

    # Display quotient
    li $v0, 4
    la $a0, quotientMsg
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    # New line
    li $v0, 11
    li $a0, '\n'
    syscall

    # Display remainder
    li $v0, 4
    la $a0, remainderMsg
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    # Exit
    li $v0, 10
    syscall
