runLoop():
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     DWORD PTR -20[rbp], 10000000
        mov     QWORD PTR -8[rbp], 0
        movabs  rax, 10000000000
        mov     QWORD PTR -32[rbp], rax
        mov     DWORD PTR -12[rbp], 0
        jmp     .L2
.L7:
        mov     DWORD PTR -16[rbp], 1
        jmp     .L3
.L6:
        mov     eax, DWORD PTR -16[rbp]
        lea     edx, -1[rax]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        add     eax, 2
        cdqe
        add     QWORD PTR -8[rbp], rax
        mov     rax, QWORD PTR -8[rbp]
        mov     rdx, rax
        mov     rax, QWORD PTR .refptr.std::cout[rip]
        mov     rcx, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(long long)
        mov     rcx, rax
        mov     rax, QWORD PTR .refptr.std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)[rip]
        mov     rdx, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        movabs  rax, 10000000000
        cmp     QWORD PTR -8[rbp], rax
        jle     .L4
        mov     rax, QWORD PTR -8[rbp]
        mov     rdx, rax
        mov     rax, QWORD PTR .refptr.std::cout[rip]
        mov     rcx, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(long long)
        mov     rcx, rax
        mov     rax, QWORD PTR .refptr.std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)[rip]
        mov     rdx, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        jmp     .L1
.L4:
        add     DWORD PTR -16[rbp], 1
.L3:
        cmp     DWORD PTR -16[rbp], 10000000
        jle     .L6
        add     DWORD PTR -12[rbp], 1
.L2:
        cmp     DWORD PTR -12[rbp], 1
        jle     .L7
.L1:
        add     rsp, 64
        pop     rbp
        ret
.refptr.std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&):
        .quad   std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)
.refptr.std::cout:
        .quad   std::cout