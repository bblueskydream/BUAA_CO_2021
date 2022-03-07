.data
     matrix: .space 256				# 8 * 8 * 4
     visit : .space 32
.macro done
     li   $v0, 10
     syscall
.end_macro
.macro getindex(%ans, %i, %j)
	sll %ans, %i ,3				# %ans = %i << 3 
	add %ans, %ans, %j			# %ans += %j
	sll %ans, %ans, 2			# %ans = %ans << 2
.end_macro
.text
     li   $v0, 5				# reading n
     syscall
     move $s0, $v0				# s0 = n
     
     		
     li   $v0, 5				# reading edge
     syscall
     move $s1, $v0				# s1 = m
     li   $t0, 0
     li   $s2, 1
     	
reading_edge:
     beq  $t0, $s1, reading_edge_end
     
     li   $v0, 5
     syscall
     move $t1, $v0
     subi $t1, $t1, 1
     
     li   $v0, 5
     syscall
     move $t2, $v0
     subi $t2, $t2, 1
     
     getindex($t3, $t1, $t2)
     sw   $s2, matrix($t3)
     getindex($t3, $t2, $t1)
     sw   $s2, matrix($t3)
     addi $t0, $t0, 1
     j    reading_edge
reading_edge_end:
     li   $t0, 1			#  num
     li   $t1, 0			#  now
     li   $t2, 0
     li   $t3, 0
     li   $s3, 0			# s3 为最终结果 s3 = ans
     jal  dfs
     
     move $a0, $s3
     li   $v0, 1
     syscall
     done
     
dfs:
    bne  $t0, $s0, work			# num == n
    getindex($t2,$t1,$zero)
    lw   $t3, matrix($t2)
    bne  $t3, $s2, work			# matrix[now][0] == 1

    addi $s3, $s3, 1			# have Hamilton
    jr   $ra    			# return
     
#    $t0   num
#    $t1   now      
work:     
    sw   $ra, 0($sp)
    subi $sp, $sp, 4
    
    sll  $t2, $t1, 2
    sw   $s2, visit($t2)		# visit[now] = 1
    sw   $t1, 0($sp)
    subi $sp, $sp, 4  
    
    li   $t2, 0				# 循环变量 j
    for:
    	beq  $t2, $s0, for_end
    	getindex($t3, $t1, $t2)
    	lw   $t4, matrix($t3)
    	bne  $t4, $s2, for_on		# matrix[now][j] == 1
    	sll  $t3, $t2, 2
    	lw   $t4, visit($t3)		
    	bne  $t4, $zero, for_on		# visit[j] == 0
    	bne  $s3, $zero, for_on		# ans == 0
    	
    	sw   $t2, 0($sp)
    	subi $sp, $sp, 4
    	sw   $t1, 0($sp)
    	subi $sp, $sp, 4
    	sw   $t0, 0($sp)
    	subi $sp,$sp, 4
    	
    	move $t1, $t2			# now = j
    	addi $t0, $t0, 1		# num + 1
    	
    	jal  dfs
    	
    	addi $sp, $sp, 4
    	lw   $t0, 0($sp)
    	addi $sp, $sp, 4
    	lw   $t1, 0($sp)
    	addi $sp, $sp, 4
    	lw   $t2, 0($sp)
    	
    	j    for_on
    for_on:
    	addi $t2, $t2, 1
    	j    for
    for_end:
    li  $t2, 0
    
    
    
    addi $sp, $sp, 4
    lw   $t1, 0($sp)
    sll  $t2, $t1, 2
    sw   $zero, visit($t2)		# visit[now] = 0
    
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    jr   $ra
     
     
     
     
     
     
     
     
     

     
               
