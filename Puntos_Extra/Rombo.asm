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
loop3:
  beq $t2, $zero, end3
  syscall
  addi $t2, $t2,-1
  j loop3
end3:

  addi $v0, $zero,11
  addi $a0,$zero,42

loop4:
  beq $t0,$t2,end4  
  syscall
  addi $t2, $t2,1
  j loop4
end4:

addi $v0,$zero,11
addi $a0,$zero,10
syscall
addi $t0, $t0,1

j start_loop1
end1:

addi $t0, $t0,-2
addi $t5,$zero,-1

start_loop2:

  beq $t0,$t5, end5
  addi $t2,$zero,1
  sub $t3,$t1,$t0

  addi $v0,$zero,11
  addi $a0,$zero,32
loop5:
  beq $t2,$t3,end6
  syscall
  addi $t2, $t2,1
  j loop5
end6:

  add $t2,$zero,$t0
  addi $t2, $t2,1
  addi $v0, $zero,11
  addi $a0,$zero,42
loop6:
  beq $t2, $zero, end7
  syscall
  addi $t2, $t2,-1
  j loop6
end7:

  addi $v0, $zero,11
  addi $a0,$zero,42

loop7:
  beq $t0,$t2,end8  
  syscall
  addi $t2, $t2,1
  j loop7
end8:

  addi $v0,$zero,11
  addi $a0,$zero,10
  syscall
  addi $t0, $t0,-1
j start_loop2
end5:





