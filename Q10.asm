	AREA PGMI, CODE, READONLY      ; Define the code area, PGMI is the name of the area, and it's read-only.
START                           ; Mark the start of the program.
    LDR R0, =0x40000000         ; Load the address 0x40000000 into register R0 (source address).
    LDR R1, =0x40000400         ; Load the address 0x40000400 into register R1 (destination address).
    LDR R2, =0x40000080         ; Load the address 0x40000080 into register R2 (end address).
LOOP
    LDMIA R0!, {R3-R7}          ; Load multiple registers (R3 to R7) from the address in R0, and then increment R0 by 5*4 bytes (for 5 registers).
    STMIA R1!, {R3-R7}          ; Store multiple registers (R3 to R7) at the address in R1, and then increment R1 by 5*4 bytes (for 5 registers).
    CMP R0, R2                  ; Compare the value in R0 with the value in R2 (check if R0 has reached or passed the end address).
    BMI LOOP                     ; If the result of CMP was negative (R0 < R2), branch back to LOOP.
HERE B HERE                     ; Infinite loop here; "B HERE" is an unconditional branch to HERE (endless loop).
	END                             ; Mark the end of the program.
