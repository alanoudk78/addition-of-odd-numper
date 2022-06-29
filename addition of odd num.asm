.data
Num: .word 10
Sum: .word 0


.text
.globl main
main:
lw $t0,Num
li $t1,1
li $t2,0

SumLoop:
add $t2,$t2,$t1
add $t1,$t1,2
ble $t1,$t0,SumLoop

sw $t2,Sum

li $v0,10
syscall
.end main 
