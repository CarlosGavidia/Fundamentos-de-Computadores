@ EJERCICIO DE  ARRAY DE CLASE DE SUMAR LAS POSICIONES DE CADA POSICION 
.global start
.data
A: 		.word 1, 5 , 7 , 8 ,9 , 2, 3 ,-1
.bss
SUMA : 	.space 4
 .text
 start:
		LDR R0, = A
		MOV R1, #0 @suma
		LDR  R4, = SUMA
		MOV R2, #0 @I=0
		for: CMP R2, #8
			BGE fin_for
			LDR R3 , [R0, R2, LSL #2] @ DESPLAZAS DOS A LA IZQ POR MULTIPLICAR 4
			ADD R1, R1, R3
			ADD R2, R2, #1
			B for
			fin_for:
			STR R1 ,[R4]


		B .
		.end
