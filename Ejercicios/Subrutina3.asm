.global start
.EQU N,4
.data
A:			.word 1,2,3,4
B:			.word 3,4,10,1
.bss
suma: 		.space 4

.text
start:
		LDR R4,=A
		LDR R5,=B
		LDR R1,= suma
		MOV R0,#0
		BL SumaVector
		MOV R6, #0
		for2:CMP R8, #N
			BGE fin
			if:LDR R7,[R5, R8, LSL #2]
			ADD R7, R7, R7
			CMP R0,R7
			BEQ fin
			ADD R8,R8, #1
			B for2

		SumaVector:
		PUSH {R6,R7}
		MOV R6,#0
		for: CMP R6, #N
			BGE fin_for
			LDR R7,[R4, R6, LSL#2]
			ADD R0,R0, R7
			ADD R6,R6,#1
			B for

		fin_for: POP {R6,R7}
		MOV PC,LR
		fin:
			

		B .
		.end
