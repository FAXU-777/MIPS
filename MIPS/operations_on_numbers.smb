.data 
#they are in random access memory and we have to load this inside CPU
num1: .word 10
num2: .word 20
newLine: .asciiz "\n"

.text
.globl main
main:

# lw means: get the value from the memory and put it into register
lw $s0, num1
lw $s1, num2 

#addition, subtraction, multiplication and division
add $t0, $s0, $s1
sub $t1, $s0, $s1
mul $t2, $s0, $s1
div $t3, $s1, $s0
 

#print result of addition
li $v0, 1
move $a0, $t0
syscall

#new line
li $v0, 4
la $a0, newLine
syscall

#print result of subtraction
li $v0, 1
move $a0 , $t1
syscall

#newLine
li $v0, 4
la $a0,newLine
syscall

#result od multiplication
li $v0, 1
add $a0, $zero, $t2
syscall

#newLine
li $v0, 4
la $a0, newLine
syscall

#result of division
li $v0, 1
move $a0, $t3
syscall












