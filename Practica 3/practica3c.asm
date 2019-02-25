/*Carlos Gavidia Ortiz
Ingenieria informatica 1
*/
.global start
.EQU N, 8
.data
A:			.word 7,-3,25,-4,75,2,-1,1
.bss
B:		.space 4*N
.text
start:
			LDR R0,= A @direcion de A
			MOV R1, #N @N =8
			LDR R3, = B @direccion de B
			PUSH {R2, R4,R7,  R8,  R9, R10}
			MOV R10, #0 @j=0

			for: CMP R10, R1
				BGE fin
				MOV R2, R0 @muevo la direccion de A a R2 por saltar a la subrutina ya que se va a modificar
				PUSH {R0,R3}
				BL max
				MOV R7, R0 @muevo r0 a r7 que ahora tiene el indice del maximo del subprograma
				POP {R0,R3}

			if9: CMP R7, #-1
				BEQ else9 @cuando sea diferente que salte al ele y acaba

				LDR R8, [R2, R7, LSL #2]
				STR R8, [R3, R10,LSL#2] @guarda r8, el max de A en B en la primera posicion
				MOV R9, #0
				STR R9,[R2, R7, LSL#2] @y en esa posicion lo pone a 0
				ADD R10, R10, #1
				B for

			else9: B fin


	fin:POP {R2, R4,R7,R8,  R9, R10}
		B .

		max:

		push {r4, r5, r6,r7,r8, r9,r10, r11}

		MOV R10, #0@i=0
		MOV R6, #0 @MAX
		MOV R5, #-1@pos
		MOV R7, R0 @guarda la dirrecion de A en r7 porque se va a modificar

		for5:CMP R10, R1
			BGE fin1

			LDR R11,[R7, R10, LSL#2]
			if4:CMP R11,R6
				BLE fin8
				PUSH {R7, LR}
				MOV R0, R11 @guardo el numero de A en r0 para cuando llame a la funcion par le llege r0
					BL  par
					MOV R9, R0
					POP {R7, LR}
					if5:CMP R9, #1
						BNE else6
						MOV R6, R11
						MOV R5, R10
						ADD R10, R10, #1
						B for5
				else6:MOV R8, #0
					STR R8, [R7, R10, LSL#2]
					ADD R10, R10, #1
					MOV R5, #-1
					B for5
		fin8: ADD R10, R10, #1
		B for5
		fin1: MOV R0, R5 @guarda en r0 el indice para el return
			pop {r4, r5, r6,r7,r8, r9,r10, r11}
			mov pc, lr


	par: PUSH {R7}
		if7:AND  R0,R0, #1
			CMP R0, #0
			BNE else7
			MOV R7, #1
			B fin_par
		else7:MOV R7, #0
			B fin_par

		fin_par:MOV R0, R7@mueve r7 que tiene 0 o 1  a r0 para el return r0
		POP {R7}
		MOV PC, LR
