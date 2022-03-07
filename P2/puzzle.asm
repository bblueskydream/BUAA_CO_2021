.data
array: .space  256		# 8 * 8 * 4
visit: .space  256		# 8 * 8 * 4
.macro getindex(%ans, %i, %j)
    sll  %ans, %i, 3
    add  %ans, %ans, %j
    sll  %ans, %ans, 2
.end_macro
.macro done
    li   $v0, 10
    syscall
.end_macro
.text
    li   $v0, 5			# n
    syscall
    move $s0, $v0
    li   $v0, 5			# m
    syscall
    move $s1, $v0
read:
    li   $t0, 0
    read_1:
        beq  $t0, $s0, read_end
        li   $t1, 0
        read_2:
            beq  $t1, $s1, read_2_end
            li   $v0, 5
            syscall
            getindex($t2, $t0, $t1)
            sw   $v0, array($t2)
            addi $t1, $t1, 1
            j    read_2
    read_2_end:
        addi $t0, $t0, 1
        j    read_1
read_end:
    li   $t0, 0
    li   $t1, 0
    li   $v0, 5
    syscall
    move $s2, $v0		# stx - 1
    subi $s2, $s2, 1
    
    li   $v0, 5
    syscall
    move $s3, $v0		# sty - 1
    subi $s3, $s3, 1
    
    li   $v0, 5
    syscall
    move $s4, $v0		# targetx - 1
    subi $s4, $s4, 1
    
    li   $v0, 5
    syscall
    move $s5, $v0        	# targety - 1 
    subi $s5, $s5, 1
    
    getindex($t0, $s2, $s3)
    li   $t1, 1
    sw   $t1, visit($t0)	# visit[stx - 1][sty - 1] = 1
    
    move $t0, $s2		# i 
    move $t1, $s3		# j
    li   $a0, 0			# sum
    jal  dfs
    

    li   $v0, 1
    syscall
    done        
                        
dfs:
    judge:            
          bne  $t0, $s4, part  
          bne  $t1, $s5, part
          addi $a0, $a0, 1  
          jr   $ra             
           
    part:        
         sw   $ra, 0($sp)
         subi $sp, $sp, 4
         if_1:
             subi $t2, $t0, 1			# i - 1
             
             bltz $t2, if_2			# >=0
             
             getindex($t3, $t2, $t1)
             lw   $t3, array($t3)
             bne  $t3, 0, if_2 			# == 0
             
             getindex($t3, $t2, $t1)
             lw   $t3, visit($t3)
             bne  $t3, 0, if_2			# == 0  
             
             getindex($t3, $t2, $t1)
             li   $t4, 1
             sw   $t4, visit($t3)
             
             sw   $t3, 0($sp)
             subi $sp, $sp, 4
             
             sw   $t1, 0($sp)
             subi $sp, $sp, 4
             sw   $t0, 0($sp)
             subi $sp, $sp, 4
             
             move $t0, $t2
             jal  dfs
             
             addi $sp, $sp, 4
             lw   $t0, 0($sp)
             addi $sp, $sp, 4
             lw   $t1, 0($sp)
             
             addi $sp, $sp, 4
             lw   $t3, 0($sp)
             
             sw   $zero, visit($t3)
             
         if_2:
             addi $t2, $t0, 1			# i + 1
             
             bge  $t2, $s0, if_3		# < n
             
             getindex($t3, $t2, $t1)
             lw   $t3, array($t3)
             bne  $t3, 0, if_3 			# == 0
             
             getindex($t3, $t2, $t1)
             lw   $t3, visit($t3)
             bne  $t3, 0, if_3			# == 0
                
             getindex($t3, $t2, $t1)
             li   $t4, 1
             sw   $t4, visit($t3)
             sw   $t3, 0($sp)
             subi $sp, $sp, 4
             
             sw   $t1, 0($sp)
             subi $sp, $sp, 4
             sw   $t0, 0($sp)
             subi $sp, $sp, 4
             
             move $t0, $t2
             jal  dfs
             
             addi $sp, $sp, 4
             lw   $t0, 0($sp)
             addi $sp, $sp, 4
             lw   $t1, 0($sp)
             
             addi $sp, $sp, 4
             lw   $t3, 0($sp)
             sw   $zero, visit($t3)
         if_3:
             subi $t2, $t1, 1
             
             bltz $t2, if_4			# >=0 
             
             getindex($t3, $t0, $t2)
             lw   $t3, array($t3)
             bne  $t3, 0, if_4 			# == 0
             
             getindex($t3, $t0, $t2)
             lw   $t3, visit($t3)
             bne  $t3, 0, if_4			# == 0
               
             
             getindex($t3, $t0, $t2)
             li   $t4, 1
             sw   $t4, visit($t3)
             sw   $t3, 0($sp)
             subi $sp, $sp, 4
             
             sw   $t1, 0($sp)
             subi $sp, $sp, 4
             sw   $t0, 0($sp)
             subi $sp, $sp, 4
             
             move $t1, $t2
             jal  dfs
             
             addi $sp, $sp, 4
             lw   $t0, 0($sp)
             addi $sp, $sp, 4
             lw   $t1, 0($sp)
             
             addi $sp, $sp, 4
             lw   $t3, 0($sp)
             sw   $zero, visit($t3)
         if_4:
             addi $t2, $t1, 1
             
             bge  $t2, $s1, else		# < m
             
             getindex($t3, $t0, $t2)
             lw   $t3, array($t3)
             bne  $t3, 0, else 			# == 0
             
             getindex($t3, $t0, $t2)
             lw   $t3, visit($t3)
             bne  $t3, 0, else			# == 0
             
             getindex($t3, $t0, $t2)
             li   $t4, 1
             sw   $t4, visit($t3)
             sw   $t3, 0($sp)
             subi $sp, $sp, 4
             
             sw   $t1, 0($sp)
             subi $sp, $sp, 4
             sw   $t0, 0($sp)
             subi $sp, $sp, 4
             
             move $t1, $t2
             jal  dfs
             
             addi $sp, $sp, 4
             lw   $t0, 0($sp)
             addi $sp, $sp, 4
             lw   $t1, 0($sp)
             
             addi $sp, $sp, 4
             lw   $t3, 0($sp)
             sw   $zero, visit($t3)
         else:
         
         addi $sp, $sp, 4
         lw   $ra, 0($sp)   
         jr   $ra
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
