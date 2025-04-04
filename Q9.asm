	AREA EXAMPLE1, CODE, READONLY ; Define a code section named "EXAMPLE1"

START   
	LDR R0, =0x00000000 ; Load immediate value 0x00000000 into register R0
	LDR R1, =0x11112222 ; Load immediate value 0x11112222 into register R1
    LDR R2, =0x40000000 ; Load address 0x40000000 into register R2
	SWP R0, R1, [R2] ; Swap the word in memory at address [R2] with R1 
                              ; Store R1 at [R2] and load the old value from [R2] into R0

HERE B HERE ; Infinite loop to stop execution (halts the program)

	END ; Mark the end of the program