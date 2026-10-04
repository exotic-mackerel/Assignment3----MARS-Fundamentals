#setup
li $t0, 0 #loop count
li $t1, 102 #value to be incremented to 100

#main loop
loop:
add $t2, $t2, $t0 #adds the current number in $t0 to the running sum in $t2
addi $t0, $t0, 2 #increments $t0 by 2
bne $t0, $t1, loop #jumps back to the loop label if $t0 == $t1	