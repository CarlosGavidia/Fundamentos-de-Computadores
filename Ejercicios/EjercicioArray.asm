@ EJERCICIO ARRAY PONER EN C LOS COMPONENTES DE CADA POSICION MAYOR DE A Y B 
global start
.data
A: 				.word 1, 2, 3, -5, 4, -2, 2, -1
B:				.word -1, 0, 6, 8, 12, 4, 10, 0
.bss
C:				.space 4*8
 .text
 start:
		LDR R0, = A
		LDR R1, = B
		LDR R2, = C
		MOV R3, #0
		for: CMP R3, #8
			BGE fin_for
			LDR R4 , [R0, R3, LSL #2]
			LDR R5 , [R1, R3, LSL #2]
			if:CMP R4, R5
				BLE else
				STR R4, [R2, R3, LSL #2]
				ADD R3, R3, #1
				B for
			else:
			  STR R5 , [R2, R3, LSL #2]
			  ADD R3, R3, #1
			  B for
		fin_for:
		B .
		.end
