.data
     matrix1: .space  256			# 8 * 8 * 4
     matrix2: .space  256			# 8 * 8 * 4
     matrix : .space  256			# 8 * 8 * 4
     space  : .asciiz " "
     enter  : .asciiz "\n"
     str    : .asciiz "Can't multiply!"
     
.macro getindex(%ans, %i, %j)
     sll  %ans, %i, 3
     add %ans, %ans, %j
     sll  %ans, %ans, 2    
.end_macro
.macro done
     li   $v0, 10
     syscall
.end_macro
.text
     
reading:
     li   $v0, 5
     syscall
     move $s0, $v0			# read m
     
     move $s1, $v0			# read n
     move $s2, $v0
     move $s3, $v0
     # m * n
     li   $t0, 0
     for_1_1:
     	beq  $t0, $s0, for_1_1_end	# i
     	li   $t1, 0			# j
     	for_1_2:
     	    beq  $t1, $s1, for_1_2_end
     	    getindex($t2, $t0, $t1)
     	    
     	    li   $v0, 5
     	    syscall
	    sw   $v0, matrix1($t2)	    
	    
	    addi $t1, $t1, 1
	    j    for_1_2
	for_1_2_end:
	    addi $t0, $t0, 1
	    j    for_1_1
    for_1_1_end:
    
    li   $t0, 0
    for_2_1:
     	beq  $t0, $s2, reading_end	# i
     	li   $t1, 0			# j
     	for_2_2:
     	    beq  $t1, $s3, for_2_2_end
     	    getindex($t2, $t0, $t1)
     	    
     	    li   $v0, 5
     	    syscall
	    sw   $v0, matrix2($t2)	    
	    
	    addi $t1, $t1, 1
	    j    for_2_2
	for_2_2_end:
	    addi $t0, $t0, 1
	    j    for_2_1
reading_end:				
    beq  $s1, $s2, continue				# can't multiply
    la   $a0, str
    li   $v0, 4
    syscall
    done
continue:
    li   $t0, 0
    for_1:
    	beq  $t0, $s0, for_1_end			# i 
    	li   $t1, 0
    	for_2:
    	    beq  $t1, $s3, for_2_end			# j
    	    li   $t2, 0
    	    li   $t8, 0
    	    for_3:
    	    	beq  $t2, $s1, for_3_end		# k
    	    	getindex($t3, $t0, $t2)			# a[i][k]
	    	lw   $t3, matrix1($t3)
	    	
	    	getindex($t4, $t2, $t1)			# b[k][j]
	    	lw   $t4, matrix2($t4)
	    	
	   	mult $t3, $t4	
		mflo $t3
		add  $t8, $t8, $t3
		
		addi $t2, $t2, 1
		j    for_3
	for_3_end:
	   getindex($t2, $t0, $t1)
	   sw   $t8, matrix($t2)
	   addi $t1, $t1, 1
	   j    for_2
    for_2_end:
        addi $t0, $t0, 1
        j    for_1	    
for_1_end:
    li   $t0, 0
    print_1:
    	beq  $t0, $s0, print_end
    	li   $t1, 0
    	print_2:
    	     beq  $t1, $s3, print_2_end
    	     
    	     getindex($t2, $t0, $t1)
    	     lw   $a0, matrix($t2)
    	     li   $v0, 1
    	     syscall
    	     
    	     la   $a0, space
    	     li   $v0, 4
    	     syscall
	     addi $t1, $t1, 1
	     j    print_2
    print_2_end:
    	la   $a0, enter
    	li   $v0, 4
    	syscall
    	
        addi $t0, $t0, 1
        j    print_1
print_end:
    done
























