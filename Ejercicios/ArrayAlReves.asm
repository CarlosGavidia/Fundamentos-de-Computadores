@ DADO UN ARRAY HACER OTRO ARRAY CON LOS COMPNETES DEL PRIMERO EN EL OTRO AL REVES
.global start
.data
A: 				.word 1, 2, 3, -5, 4, -2, 2, -1
.bss
C:				.space 4*8
 .text
 start:
		LDR R0, = A
		LDR R1, = C
		MOV R2, #7
		MOV R5, #0
		for: CMP R2, #0
			BLT fin_for
			LDR R3, [R0, R2, LSL #2]
			MOV R4, R3
			STR R4, [R1, R5, LSL #2]
			ADD R5, R5, #1
			SUB R2, R2, #1
			B for
		fin_for:
		B .
		.end
