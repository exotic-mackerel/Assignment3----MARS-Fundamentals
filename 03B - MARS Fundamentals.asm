#setup
li $t9, '\n' #newline value
li $t1, 101 #the limit for how many times we print
li $t2, 1 #start of loop

#beginning of loop
loop:
#printing 1 - 100
li $v0, 1 #syscall 1, prints an integer
move $a0, $t2
syscall
addi $t2, $t2, 1

#printing a new line
li $v0, 11 #syscall 11, printing a string
move $a0, $t9
syscall

#looping code
#bne = binary not equal
#code will jump back to the "loop" label if $t1 does not equal $t2
bne $t2, $t1, loop
