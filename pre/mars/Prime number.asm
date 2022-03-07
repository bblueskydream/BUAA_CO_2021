.text
    li   $v0, 5
    syscall
    move $s0, $v0
    li   $t0, 2
    for:
    	beq  $t0, $s0, for_end
    	div  $s0, $t0
    	mfhi $t1
    	bne  $t1, 0, on
    	li   $a0, 1
    	j    for_end
    on:
    	addi $t0, $t0, 1
    	j    for
for_end:
    li   $v0, 1
    syscall
    li   $v0, 10
    syscall
    








