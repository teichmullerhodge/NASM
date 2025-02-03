section .data 

    nameMessage db 'Name: ', 0
    ageMessage  db 'Age: ', 0
    nameOutput db 'Your name is: ', 0
    ageSemiOutput db 'You have ', 0
    ageFinalOutput db 'years.', 0 


section .bss

    userName resb 255
    userAge resb 10

section .text 
    global _start 


print_message:

    mov rax, 1
    mov rdi, 1
    syscall 
    ret

read_input:

    mov rax, 0
    mov rdi, 0
    syscall
    ret

exit:

    mov rax, 60
    xor rdi, rdi
    syscall

_start 

    mov rsi, nameMessage
    mov rdx, 6
    call print_message

    mov rsi, userName
    mov rdx, 255
    call read_input

    mov rsi, ageMessage
    mov rdx, 6
    call print_message

    mov rsi, userAge 
    mov rdx, 10
    call read_input

    mov rsi, userName
    mov rdx, 255
    call print_message

    mov rsi, userAge
    mov rdx, 8
    call print_message


    call exit
