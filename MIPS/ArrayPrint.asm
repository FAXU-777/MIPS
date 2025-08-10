.data 
arr: .word 1, 2, 3, 4, 5
length: 5
newLine : .asciiz "\n"

.text
.globl main
main:

#we have to load base address of the array
la $t0, arr

#then load the length of the arr
lw $t1, length

#initialize index
li $t2, 0

print_loop:

# we check length if i >= length
beq $t2, $t1, exit 

# Load array[i]
    lw $t3, 0($t0)

    # Print array[i]
    li $v0, 1       # syscall for print_int
    move $a0, $t3
    syscall

    # Print newline
    li $v0, 4       # syscall for print_string
    la $a0, newLine
    syscall

    # Increment array address (move to next element)
    addi $t0, $t0, 4

    # Increment i++
    addi $t2, $t2, 1

    # Repeat
    j print_loop

exit:
    # Exit program
    li $v0, 10
    syscall

