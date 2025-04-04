	AREA RESET, CODE, READONLY ; Define code section named "RESET"
    ENTRY ; Entry point of the program

    MOV r1, #0 ; Load immediate value 0 into r1
    MOV r2, #15 ; Load immediate value 15 into r2
    MOV r3, #12 ; Load immediate value 12 into r3

    MVN r0, r1 ; Bitwise NOT operation on r1, store in r0
    AND r4, r0, r2 ; Bitwise AND between r0 and r2, store result in r4
    EOR r4, r4, r3 ; Bitwise XOR between r4 and r3, store result in r4

    END ; End of the program