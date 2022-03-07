.data
 .macro done
 li $v0,10
 syscall
 .end_macro
.text
 li   $v0, 5		# read an integer
 syscall
 move $s0, $v0		# move integer to $s0
 li   $s1, 4		# load 4 to s1
 li   $s2, 100		# load 100 to s2
 li   $s3, 400		# load 400 to s3
 divu $s0, $s2		# n / 100
 mfhi $t2		# $t1 = n % 100
 beq $t2, $zero, if_1_else	# $t2 ==0 jump to 1_else
 
 divu $s0, $s1		# n / 4
 mfhi $t1		# t1 = n % 4
 beq $t1, $zero, if_2_else # t1 == 0 jump to 2_else
 
 li   $a0, 0
 li   $v0, 1
 syscall
 done

if_1_else :
 divu $s0, $s3
 mfhi $t3
 beq  $t3, $zero, if_1_else_else
 li   $a0, 0
 li   $v0, 1
 syscall
 done
if_1_else_else:
 li   $a0, 1
 li   $v0, 1
 syscall
 done
if_2_else:
 li   $a0, 1
 li   $v0, 1
 syscall
 done
