section .data
    ; Define the structure for IDate
    IDate_size equ 16 ; 4 fields of 4 bytes each (Days, Hours, Minutes, Seconds)

section .bss
    Export resb IDate_size ; Reserve space for the IDate structure

section .text
    global secondToDate

secondToDate:
    ; Input: second in rdi
    ; Output: pointer to Export in rax

    ; Calculate Days
    mov rax, rdi
    mov rbx, 86400
    xor rdx, rdx
    div rbx
    mov [Export], rax ; Store Days

    ; Calculate Hours
    mov rax, rdi
    mov rbx, 3600
    xor rdx, rdx
    div rbx
    mov rbx, [Export] ; Load Days
    imul rbx, 24
    sub rax, rbx
    mov [Export + 4], rax ; Store Hours

    ; Calculate Minutes
    mov rax, rdi
    mov rbx, 60
    xor rdx, rdx
    div rbx
    mov rbx, [Export] ; Load Days
    imul rbx, 24
    imul rbx, 60
    sub rax, rbx
    mov rbx, [Export + 4] ; Load Hours
    imul rbx, 60
    sub rax, rbx
    mov [Export + 8], rax ; Store Minutes

    ; Calculate Seconds
    mov rax, rdi
    mov rbx, [Export] ; Load Days
    imul rbx, 86400
    sub rax, rbx
    mov rbx, [Export + 4] ; Load Hours
    imul rbx, 3600
    sub rax, rbx
    mov rbx, [Export + 8] ; Load Minutes
    imul rbx, 60
    sub rax, rbx
    mov [Export + 12], rax ; Store Seconds

    ; Return pointer to Export
    mov rax, Export
    ret

