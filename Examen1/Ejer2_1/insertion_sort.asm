;i -> $t0
;numbers[] -> $a0
;size ->$a1
;$a2 -> *n1
;$a3 -> *n2
;j -> $t2
; temp -> $t3
.global insertionSort

swap:
	move $t3, $a2
	move $a2,$a3
	move $a3, $t3 
jr $ra

insertionSort:
for:	

	li $t0, 1
	slt $t1, $a1, $t0
	bne $t1, $zero, end_for
	add $t2, $zero, $t0
	
while:
#show $t2
	;numbers[j-1] = $t4
	addi $t5,$t2,-1
	sll $t4, $t5,2
	add $t4, $a0,$t4
	lw $t4, 0($t4)
;numbers[j] = $t6
	sll $t6, $t2,2
	add $t6, $a0,$t6
	lw $t6, 0($t6)

	slt $t3,$t2, $zero
	beq $t3, $zero, end_while 
	slt $t7, $t4,$t6
	bne $t7, $zero, end_while
	addi $t5,$t2,-1
	sll $t4, $t5,2
	add $t4, $a0,$t4
	addu $a2,$a0, $t4

	add $t4, $a0,$t4
	addu $a3,$a0, $t4
	 
	jal swap
	addi $t2, $t2, -1


	j while
end_while:

	addi $t0,$t0,1
	j for
end_for:
	
    jr $ra
