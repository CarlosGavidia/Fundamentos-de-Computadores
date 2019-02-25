@ ejercicio de array que si es menor que 0 se ponga a 0 en esa posicion
.global start
.data
A: 				.word 1,0,3,-5,4,-2,2,-1
.bss
C:				.space 4
 .text
 start:
		LDR R0, = A
		LDR R1,= C
		MOV R2 , #0
	for: CMP R2, #8
		BGE fin_for
		LDR R3 , [R0, R2, LSL #2]
		CMP R3, #0
		BLT if
		MOV R4, R3
		STR R4, [R1,R2, LSL #2]
		ADD R2, R2 , #1
		B for
		if:MOV R4 , #0
			STR R4, [R1,R2, LSL #2]
			ADD R2, R2 , #1
			B for

		fin_for:

		B .
		.end
