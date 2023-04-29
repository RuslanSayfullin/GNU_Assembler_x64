    .file "test.s"
    .data
str: 
    .ascii "test\n"

    .text
    .global _start
_start:

    // print "test\n"
    movq $1, %rax   ;// sysy_write
    movq $1, %rdi
    movq $str, %rsi
    movq $5, %rdx
    syscall

    // exit
    movq $60, %rax
    movq $0, %rdi
    syscall

