.global start
.data
A:           .word 0x05
B:           .word 0x0A
.bss
C:    .space 4
 .text
 start:

     LDR R0 ,= A
     LDR R1, [R0]
     LDR R2 ,= B
     LDR R3, [R2]
     LDR R4, = C
     MOV R4, #0
     MOV R5 , #0
    if: CMP R3, #0
    	BNE else_while
    	MOV R4, #0
    	B fin
    else_while: CMP R5, R3
    			BLE fin
    			ADD R5 , R5 , #1
    			SUB R4 , R4 , R1
    			STR R4 ,[R6]
    			B else_while

    fin: B .
	 .end
