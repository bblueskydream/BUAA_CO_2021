.data
 space: .asciiz 	" "
 enter:.asciiz 		"\n"
 .macro getindex(%ans,%i,%j)
 sll  %ans, %i, 6		# %ans = %i * 64
 add  %ans, %ans, %j		# %ans = %ans + %j
 sll  %ans, %ans, 2		# %ans = %ans * 4
 .end_macro
  matrix: .space 	16384			#开一个数组64*64*4
.text
 li   $v0, 5			# read n
 syscall
 move $s0, $v0
 li   $v0, 5			# read m
 syscall
 move $s1, $v0
 li   $t0, 0

 
for_1:
 beq  $t0, $s0, for_1_end
 li   $t1, 0
for_2:
 beq  $t1, $s1, for_2_end
 li   $v0, 5
 syscall
 getindex($t2,$t0,$t1)
 sw   $v0, matrix($t2)
 addi $t1, $t1, 1
 j    for_2
for_2_end:
 addi $t0, $t0, 1
 j    for_1
for_1_end:
 li   $t0, 0
 li   $t1, 0

 subi $t0, $s0, 1
out_i:
 beq  $t0, -1, out_i_end
 subi $t1, $s1, 1
 out_j:
  beq   $t1, -1, out_j_end
  getindex($t2,$t0,$t1)
  lw    $t3, matrix($t2)
  beq   $t3, $zero, out_j_on
  move  $a0, $t0		# 输出i
  addi  $a0, $a0, 1
  li   $v0,1
  syscall
  
  la   $a0, space		# 输出空格
  li   $v0, 4
  syscall
  
  move   $a0, $t1			# 输出j
  addi  $a0, $a0, 1
  li   $v0, 1
  syscall
  
  la   $a0, space
  li   $v0, 4
  syscall
  
  lw   $a0, matrix($t2)
  li   $v0, 1
  syscall
  
  la   $a0, enter
  li   $v0, 4
  syscall
  
  j    out_j_on
  
 out_j_on:
  subi $t1, $t1, 1
  j   out_j
 out_j_end:
  subi $t0, $t0, 1
  j    out_i
out_i_end:
 li   $v0, 10
 syscall
   
 
