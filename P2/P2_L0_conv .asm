.data
f: .space 1024				# 4 * 16 * 16
h: .space 1024
g: .space 1024
space: .asciiz " "
enter: .asciiz "\n"
.macro done
    li   $v0, 10
    syscall
.end_macro
.macro getindex(%ans,%i,%j)
    sll  %ans, %i , 4
    add  %ans, %ans , %j
    sll  %ans, %ans, 2
.end_macro

.text 
    li   $v0, 5
    syscall
    move $s0, $v0			# m1
    
    li   $v0, 5
    syscall
    move $s1, $v0			# n1
    
    li  $v0, 5
    syscall
    move $s2, $v0			# m2
    
    li  $v0, 5
    syscall
    move $s3, $v0			# n2
    
read_1:
    li  $t0, 0
    for_1_1:
    	beq  $t0, $s0, read_2
        li   $t1, 0
        for_1_2:
            beq  $t1, $s1, for_1_2_end
            getindex($t2, $t0, $t1)
            li   $v0, 5
            syscall
            sw   $v0, f($t2)
            addi $t1, $t1, 1
            j    for_1_2
    for_1_2_end:
        addi $t0, $t0, 1
        j    for_1_1
read_2:
    li   $t0, 0
    for_2_1:
        beq  $t0, $s2, read_end
        li   $t1, 0
        for_2_2:
            beq  $t1, $s3, for_2_2_end
            getindex($t2, $t0, $t1)
            li   $v0, 5
            syscall
            sw   $v0, h($t2)
            addi $t1, $t1, 1
            j    for_2_2
    for_2_2_end:
    	addi $t0, $t0, 1
    	j    for_2_1
read_end:

    sub  $s4, $s0, $s2
    addi $s4, $s4, 1
    sub  $s5, $s1, $s3
    addi $s5, $s5, 1
    li   $t0, 0
for_1:
    beq  $t0, $s4, for_1_end
    li   $t1, 0
    for_2:
    	beq  $t1, $s5, for_2_end
    	li   $t2, 0
    	li   $t9, 0								# sum
    	for_3:
    	    beq  $t2, $s2, for_3_end
    	    li   $t3, 0
    	    for_4:
    	    	beq  $t3, $s3, for_4_end
    	    	add  $t4, $t0, $t2
    	    	add  $t5, $t1, $t3
    	    	
    	    	bge  $t4, $s0, for_2_end					# i + k >= m1
    	    	bge  $t5, $s1, for_3_end					# j + l >= n1
    	    	
    	    	getindex($t6, $t4, $t5)						# f(i + k, j + l)
    	    	getindex($t7, $t2, $t3)						# g(k , l)
		lw   $t6, f($t6)
		lw   $t7, h($t7)
		mult $t6, $t7
		mflo $t8
    	    	add  $t9, $t9, $t8						
    	    	
    	    	addi $t3, $t3, 1
    	    	j    for_4
	for_4_end:
	    addi $t2, $t2, 1
	    j    for_3  	   
    for_3_end:
    	getindex($t8, $t0, $t1)
    	sw   $t9, g($t8)
    	addi $t1, $t1, 1
    	j    for_2      
for_2_end:
    addi $t0, $t0, 1
    j    for_1
for_1_end:
    
    li   $t0, 0
    printf_1:
    	beq  $t0, $s4, printf_1_end
    	li   $t1, 0
    	printf_2:
    	    beq  $t1, $s5, printf_2_end
    	    
    	    getindex($t2, $t0, $t1)
    	    lw   $a0, g($t2)
    	    li   $v0, 1
    	    syscall
    	    
    	    la   $a0, space
    	    li   $v0, 4    
    	    syscall
    	    
    	    addi $t1, $t1, 1
    	    j    printf_2
    printf_2_end:
    	la   $a0, enter
    	li   $v0, 4
    	syscall
    	addi $t0, $t0, 1
    	j    printf_1	
printf_1_end:
    done


















