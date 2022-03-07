.data
     array: .space  44			# 10*4
     visit: .space  40
     enter: .asciiz  "\n"
     space: .asciiz  " "


.text
main:
     li   $v0, 5
     syscall
     move $s0, $v0
     li   $s1, 1
    
     li   $t0,0
     jal  dfs
     nop
     
     li   $v0, 10
     syscall

dfs:
    bne  $t0, $s0, work
    nop
    li   $t4, 0
    print:
    	beq  $t4, $s0, print_end
    	nop
    	sll  $t5, $t4, 2
    	
    	lw   $a0, array($t5)
    	addi $a0, $a0, 1
    	li   $v0, 1
    	syscall
    	
    	la   $a0, space
    	li   $v0, 4
    	syscall
    	
    	addi $t4, $t4, 1
    	j    print
    	nop
    print_end:
    	la   $a0, enter
    	li   $v0, 4
    	syscall
    	jr   $ra
    	nop
work:    
    sw   $ra, 0($sp)
    subi $sp, $sp, 4
    
    
    li   $t1, 0
    for:
    	beq  $t1, $s0, for_end
    	nop
    	sll  $t2, $t1, 2
    	lw   $t3, visit($t2)
    	beq  $t3, $zero, in
    	nop
    	for_con:
    	addi $t1, $t1, 1
    	j    for
    	nop
    	in:
    	    sll  $t6, $t0, 2
    	    sw   $t1, array($t6)
    	    
    	    sw   $s1, visit($t2)
    	    sw   $t2, 0($sp)
    	    subi $sp, $sp, 4
    	    sw   $t0, 0($sp)
    	    subi $sp, $sp, 4
    	    sw   $t1, 0($sp)
    	    subi $sp, $sp, 4
    	    
    	    addi $t0, $t0, 1
    	    jal  dfs
    	    nop
    	    
    	    addi $sp, $sp, 4
    	    lw   $t1, 0($sp)
    	    addi $sp, $sp, 4
    	    lw   $t0, 0($sp)
    	    addi $sp, $sp, 4
    	    lw   $t2, 0($sp)
    	    sw   $zero, visit($t2)
    	    j    for_con  
    	    nop
    for_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    jr   $ra
    nop
    
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
