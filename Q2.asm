	AREA MYCODE, CODE, READONLY ; Define code section
    EXPORT __main ; Make __main accessible to linker

__main  
    LDR R0, =FibSeq ; Load address of Fibonacci sequence array
    MOV R1, #0 ; First Fibonacci number (F0)
    MOV R2, #1 ; Second Fibonacci number (F1)
    STR R1, [R0], #4 ; Store F0 in memory
    STR R2, [R0], #4 ; Store F1 in memory

    MOV R3, #8 ; Loop counter (remaining 8 numbers)

Loop    
    ADD R4, R1, R2 ; F(n) = F(n-1) + F(n-2)
    STR R4, [R0], #4 ; Store F(n) in memory

    MOV R1, R2 ; Shift values: F(n-1) = F(n)
    MOV R2, R4 ; Shift values: F(n-2) = F(n-1)

    SUBS R3, R3, #1 ; Decrement counter
    BNE Loop ; Repeat until 10 numbers are generated

Stop    
    B Stop ; Infinite loop to stop execution

    AREA MYDATA, DATA, READWRITE ; Define data section
FibSeq SPACE 40 ; Reserve space for 10 Fibonacci numbers (4 bytes each)

    END