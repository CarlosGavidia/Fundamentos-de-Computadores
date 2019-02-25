 .global start

.EQU 	N, 8

.data
A: 		.word 7,3,25,4,75,2,1,1

.bss
B: 		.space N*4
max: 	.space 4
ind: 	.space 4

.text
start:
		LDR R1, = A
		LDR R2, = B
		LDR R3, = max
		LDR R4, = ind

		MOV R5, #0  @J =0

		for: CMP R5, #N
			BGE fin
			LDR R6, [R1, R5, LSL #2]
			MOV R7, #0 @MAX =0
			STR R7,[R3]
			MOV R8, #0 @I=0
			for2: CMP R8, #N
				BGE fin_for2
				LDR R11 , [R1, R8, LSL #2]
				if: CMP R11, R7
					BLE else
					MOV R7, R11
					STR R7,[R3]
					MOV R9 , R8
					STR R9,[R4]
					ADD R8, R8, #1
					B for2
				else:ADD R8, R8, #1
					B for2
				fin_for2:
				LDR R10,[R1, R9, LSL #2]
				STR R10, [R2, R5, LSL #2]
				MOV R11, #0
				STR R11, [R1, R9, LSL #2 ]
				ADD R5, R5, #1
				B for

			fin:
			B .
			.end
