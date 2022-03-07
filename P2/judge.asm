.data 
string: .space  100			# 4 * 25

.macro done
    li   $v0, 10
    syscall
.end_macro

.text

    li   $v0, 5
    syscall
    move $s0, $v0

    li   $t0, 0    
read:
    beq  $t0, $s0,judge
    
    li   $v0, 12
    syscall
    sll  $t1, $t0, 2
    sw   $v0, string($t1)
    
    addi $t0, $t0, 1
    j    read
judge:
    li   $t0, 0
    addi $t1, $s0, -1
    for:
    	sle  $t2, $t1, $t0
    	beq  $t2, 1, for_end
    	
    	sll  $t3, $t0, 2
    	sll  $t4, $t1, 2
    	lw   $t3, string($t3)
    	lw   $t4, string($t4)
    	
    	addi $t0, $t0, 1
    	subi $t1, $t1, 1
    	
    	beq  $t4, $t3, for
    	j    for_end
for_end:
    move $a0, $t2
    li   $v0, 1
    syscall
    done
    	     
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    