.data
mlines: .space 4
ncols: .space 4
p: .space 4
x: .space 4
y: .space 4
k: .space 4
matrix: .zero 1600
ev: .zero 1600
format_scanf: .asciz "%d"
format_printf: .asciz "%d "
endl: .asciz "\n"
line_index: .space 4
col_index: .space 4

.text

.global main

cell:

push %ebp
mov %esp, %ebp

push %edi
xorl %edx, %edx
mov 8(%ebp), %edi
movl 20(%ebp), %eax
movl 16(%ebp), %ebx
mull %ebx
movl 24(%ebp), %edx
addl %edx, %eax
xorl %ecx, %ecx
subl %ebx, %eax
decl %eax
addl (%edi, %eax, 4), %ecx
incl %eax
addl (%edi, %eax, 4), %ecx
incl %eax
addl (%edi, %eax, 4), %ecx
addl %ebx, %eax
decl %eax
decl %eax
addl (%edi, %eax, 4), %ecx
incl %eax
incl %eax
addl (%edi, %eax, 4), %ecx
addl %ebx, %eax
decl %eax
decl %eax
addl (%edi, %eax, 4), %ecx
incl %eax
addl (%edi, %eax, 4), %ecx
incl %eax
addl (%edi, %eax, 4), %ecx
movl %ecx, %eax

pop %edi
pop %ebp

ret




main:

pushl $mlines
pushl $format_scanf
call scanf
addl $8, %esp
incl mlines
incl mlines		
pushl $ncols
pushl $format_scanf
call scanf
addl $8, %esp
incl ncols
incl ncols		

pushl $p
pushl $format_scanf
call scanf
addl $8, %esp			


movl $matrix, %edi
movl $0, %ecx

et_read:
cmp p, %ecx
je et_cont
pushl %ecx

pushl $x
pushl $format_scanf
call scanf
add $8, %esp

pushl $y
pushl $format_scanf
call scanf
add $8, %esp

movl x, %eax
incl %eax
mull ncols
addl y, %eax
incl %eax


movl $1,(%edi, %eax, 4)
popl %ecx
incl %ecx
jmp et_read

et_cont:
pushl $k
pushl $format_scanf
call scanf
addl $8, %esp

movl $0, %ecx
movl $1, line_index
movl $1, col_index

movl mlines, %ebx
movl %ebx, x
movl ncols, %ebx
movl %ebx, y
decl x
decl y
xorl %ecx, %ecx


et_k:
cmp k, %ecx
je et_k_exit
push %ecx
movl $1, line_index
movl $1, col_index

et_k_lines:
movl line_index, %ecx
cmp %ecx, x
je et_k_cont

et_k_cols:
movl col_index, %ebx
cmp %ebx, y
je et_k_lines_cont
pushl col_index
pushl line_index
pushl ncols
pushl mlines
pushl $matrix

call cell

popl %ebx
popl %ebx
popl %ebx
popl %ebx
popl %ebx

 

// edx pt index array, eax pt vecini

//pushl %eax
//pushl $format_printf
//call printf
//popl %ebx
//popl %eax

//pushl $0
//call fflush
//popl %ebx

pushl %eax
movl line_index, %eax
mull ncols
addl col_index, %eax
movl %eax, %edx
popl %eax

movl (%edi, %edx, 4), %ebx
movl $0, p
cmp %ebx, p
je et_dead

et_alive:
movl $3, p
cmp p, %eax
jg et_kill
movl $2, p
cmp p, %eax
jl et_kill
push %edi
movl $ev, %edi
movl $1, (%edi, %edx, 4)
pop %edi
jmp et_if_exit

et_dead:
movl $3, p
cmp p, %eax
jne et_if_exit
push %edi
movl $ev, %edi
movl $1, (%edi, %edx, 4)
pop %edi
jmp et_if_exit

et_kill:

movl $0, %ebx
push %edi
movl $ev, %edi
movl %ebx, (%edi, %edx, 4)
pop %edi

et_if_exit:

incl col_index
jmp et_k_cols

et_k_lines_cont:
incl line_index
movl $1, col_index
jmp et_k_lines

et_k_cont:

movl ncols, %eax
mull mlines
movl $0, %ecx

et_transfer:
cmp %ecx, %eax
je et_transfer_exit
push %edi
movl $ev, %edi
movl (%edi, %ecx, 4), %ebx
pop %edi
movl %ebx, (%edi, %ecx, 4)
incl %ecx
jmp et_transfer

et_transfer_exit:
popl %ecx
incl %ecx
jmp et_k

et_k_exit:
movl $1, line_index
movl $1, col_index


et_lines:
movl line_index, %ecx
cmp x, %ecx
je et_exit
movl $1, col_index

et_cols:
movl col_index, %ecx
cmp %ecx, y
je et_lines_cont
movl line_index, %eax
mull ncols
addl col_index, %eax
movl (%edi, %eax, 4), %ebx

pushl %ebx
pushl $format_printf
call printf
popl %ebx
popl %ebx

pushl $0
call fflush
popl %ebx
incl col_index
jmp et_cols

et_lines_cont:
pushl $endl
call printf
popl %ebx

pushl $0
call fflush
popl %ebx
incl line_index
jmp et_lines




et_exit:
movl $1, %eax
movl $0, %ebx
int $0x80

