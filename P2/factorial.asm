.data
str: .space 4020				# 4 * 1000
.macro done
    li   $v0, 10
    syscall
.end_macro
.text
    li   $v0, 5
    syscall
    move $s0, $v0
    addi $s0, $s0, 1
    
    li   $s1, 10
    li   $s2, 1
    
    li   $t0, 1
    sw   $t0, str($zero)
    for_1:
    	beq  $t0, $s0, for_1_end
    	li   $t1, 0
    	li   $t2, 0
    	for_2:
    	    beq  $t1,0 ,if_2
    	    j    then
    	if_2:
    	    bge  $t2, $s2, for_2_end   
    	then:
    	    li   $t3, 0
    	    sll  $t3, $t2, 2
    	    lw   $t3, str($t3)
	    
	    mult $t3, $t0    
	    mflo $t3
	    add $t3, $t3, $t1
	    div  $t3, $s1
	    
	    mflo $t1
	    mfhi $t4
	    sll  $t3, $t2, 2
	    sw   $t4, str($t3) 
	for_2_on:
	    addi $t2, $t2, 1
	    j    for_2
    for_2_end:
    	ble  $t2, $s2, on
    	move $s2, $t2
    	on:
    	addi $t0, $t0, 1
    	j    for_1 
for_1_end:
    li   $t0, 0
    li   $t1, 1000
    for:
    	blt  $t1, $0, end
    	sll  $t3, $t1, 2
    	lw   $t3, str($t3)	      
    	if:
    	    bgtz $t3, work
    	    bne  $t0, 0, work
    	    j    for_on
    	work:
    	    move $a0, $t3
    	    li   $v0, 1
    	    syscall
    	    li   $t0, 1
    	for_on:  
    	    subi $t1, $t1, 1
    	    j    for
end:
   done
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
