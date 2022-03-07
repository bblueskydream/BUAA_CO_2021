main:
     li   $v0, 5
     syscall
     move $s0, $v0
     move $a0, $s0
     jal  factorial
     
     move $a0, $v0
     li   $v0, 1
     syscall
     li   $v0, 10
     syscall
factorial:
     bne  $a0, 1, work
     li   $v0, 1
     jr   $31

work:
     move $t0, $a0
     
     sw   $ra, 0($sp)
     subi $sp, $sp, 4
     sw   $t0, 0($sp)
     subi $sp, $sp, 4
     
     subi $t1, $t0, 1
     move $a0, $t1
     jal  factorial
     
     addi $sp, $sp, 4
     lw   $t0, 0($sp)
     addi $sp, $sp, 4
     lw   $ra, 0($sp)
     
     mult $t0, $v0
     mflo $v0
     jr   $31
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     