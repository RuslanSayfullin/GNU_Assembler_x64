.file "test.s"
.data
str: .ascii "test\n"

.text
.global _start
_start:
movq $1, %rax
movq $1, %rdi
movq $str, %rsi
movq $5, %rdx
syscall

movq $60, %rax
movq $0, %rdi
syscall

