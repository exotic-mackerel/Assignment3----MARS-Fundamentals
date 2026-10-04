#register is denoted by $
#immediate values come after and are in black
#int a = 5;
#int b = 6; 
li $t0, 5
li $t1, 6

#sw $t0, 0($t3)
#sw $t1, 0($t4)

# [Start Program]
# Purpose: Pull the two summands from memory, and produce a sum
# and save the sum to memory

# 0. Load the two immediate memory addreses into registers
li $t3, 268500992
li $t4, 268501024
li $t5, 268501056

# 1. Get the two summands from mem and place them into registers
sw $t0, 0($t3)
sw $t1, 0($t4)

# 2. Add the registers together and place the sum in another register
# c = a + b;
add $t2, $t0, $t1
# first register is the sum's location, with the last two registers being
# the locations of the summands

# 3. Place the sum into memory
sw $t2, 0($t5)
