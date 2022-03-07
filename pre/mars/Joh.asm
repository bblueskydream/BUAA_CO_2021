.data
array: .space 20000			# 4 * 5000
.macro done
    li   $v0, 10
    syscall    
.end_macro
.text
    li   $v0, 5
    syscall
    move $s0, $v0

    li   $v0, 5
    syscall
    move $s1, $v0
    
    move $t0, $s0			# num
    li   $t1, 0				# cal
    li   $t2, 0				# x
while:
    ble  $t0, 1, while_end
    sll  $t3, $t2, 2
    lw   $t3, array($t3)
    if_1:
    	bne  $t3, 0, if_2
    	addi $t1, $t1, 1
    if_2:
    	bne  $t1, $s1, while_on
    	sll  $t3, $t2, 2
    	li   $t4, 1
    	sw   $t4, array($t3)
    	li   $t1, 0
    	addi $t0, $t0, -1
    while_on:
    	addi $t2, $t2, 1
    	div  $t2, $s0
    	mfhi $t2
    	j    while
while_end:
    li   $t0, 0
    print:
    	beq  $t0, $s0, end
    	sll  $t1, $t0, 2
    	lw   $t1, array($t1)
    	bne  $t1, 0, on
    	
    	move $a0, $t0
    	addi $a0, $a0, 1
    	li   $v0, 1
    	syscall
	j    end
	on:
	    addi $t0, $t0, 1
	    j    print
end:
    done




















