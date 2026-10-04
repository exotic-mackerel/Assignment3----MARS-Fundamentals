.data 
helloworld: .asciiz "Hello World"

.text
la $a0, helloworld
li $v0, 4
syscall
