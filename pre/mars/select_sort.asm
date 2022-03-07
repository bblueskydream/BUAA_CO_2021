.data
    array: .space 400			# 100 * 4
    space: .asciiz " "
.macro done
     li   $v0, 10
     syscall
.end_macro
.text
    li   $v0, 5
    syscall
    move $s0, $v0			# $s0 = n
    li   $t0, 0				# i
read:
    beq  $t0, $s0, read_end
    sll  $t1, $t0, 2
    
    li   $v0, 5
    syscall
    sw   $v0, array($t1)
    addi $t0, $t0, 1
    j    read
            
read_end:
        
    li   $t0, 0    
for_1:
    beq  $t0, $s0, for_1_end
    sub  $s1, $s0, $t0
    subi $s1, $s1, 1			# n - i - 1
    li   $t1, 0
    for_2:
    	beq  $t1, $s1, for_2_end
    	sll  $t2, $t1, 2
    	addi $t3, $t2, 4
	
	lw   $t4, array($t2)
	lw   $t5, array($t3)
	
	slt  $t6, $t5, $t4		# t5 < t4 ? 1 : 0
	beq  $t6, $zero, for_2_on
	
	move $t6, $t5
	move $t5, $t4
	move $t4, $t6
	
	sw   $t4, array($t2)
	sw   $t5, array($t3)
    for_2_on:
    	addi $t1, $t1, 1
    	j    for_2   	
    for_2_end:
    	addi $t0, $t0, 1
    	j    for_1
for_1_end:
    li   $t0, 0
    print:
    	beq  $t0, $s0, print_end
    	
    	sll  $t1, $t0, 2
    	
    	lw   $a0, array($t1)
    	li   $v0, 1
    	syscall
    	
    	la   $a0, space
    	li   $v0, 4
    	syscall
    	
    	addi $t0, $t0, 1
    	j    print
    print_end:
    	done     
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    