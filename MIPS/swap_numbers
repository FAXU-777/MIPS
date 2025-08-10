.data
prompt: .asciiz "Swapped values: "
newLine: .asciiz  "\n"

.text
.globl main
main:

li $t0, 10 #first value
li $t1, 20 #secoond

#xor swapping

xor $t0, $t0, $t1  #t0 =t0 ^ t1
xor $t1, $t0, $t1 #t1 = t0 ^ t1
xor $t0, $t0, $t1  #t0= t0 ^ t1

#write result
li $v0, 4
la  $a0, prompt
syscall

#write first swapped number
li $v0, 1
move $a0, $t0
syscall

#new line
li $v0, 4
la $a0, newLine
syscall

#and second swapped number 
li $v0, 1
move $a0, $t1
syscall

#exit the program
li $v0, 10
syscall

