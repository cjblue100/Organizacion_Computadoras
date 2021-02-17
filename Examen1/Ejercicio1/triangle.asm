.global draw_triangle
draw_triangle:
addi $v0,$zero, 5
syscall
addi $t0, $zero, 0
add $t1, $zero, $v0
;addi $t1,$t1,1
;addi $t6, $zero,1
start_loop1:

  beq $t0,$t1, end1
  addi $t2,$zero,1
  sub $t3,$t1,$t0

  addi $v0,$zero,11
  addi $a0,$zero,32
loop2:
  beq $t2,$t3,end2
  syscall
  addi $t2, $t2,1
  j loop2
end2:

  add $t2,$zero,$t0
  addi $t2, $t2,1
  addi $v0, $zero,11
  addi $a0,$zero,42
syscall
 addi $v0, $zero,11
  addi $a0,$zero,32
addi $t2, $t2,-1
loop3:
  beq $t2, $zero, end3
addi $t7, $t1,-1
bne $t0, $t7, ex2
addi $v0, $zero,11
  addi $a0,$zero,42
ex2: 

  syscall
  addi $t2, $t2,-1
  j loop3
end3:

  addi $v0, $zero,11
  addi $a0,$zero,32
li $t6, 0
beq $t0, $zero, loop4
addiu $t6, $t0,-1

loop4:
  beq $t6,$t2,end4
addi $t7, $t1,-1
bne $t0, $t7, ex
addi $v0, $zero,11
  addi $a0,$zero,42
ex:

  syscall
  addi $t2, $t2,1
addi $t3, $t0,0


	
  j loop4

end4:
beq $t0, $zero, extra
addi $v0, $zero,11
  addi $a0,$zero,42
syscall
extra:
addi $v0,$zero,11
addi $a0,$zero,10
syscall
addi $t0, $t0,1

j start_loop1
end1:
    jr $ra
