.global start

.EQU 	N, 8

.data
A: 		.word 7,3,25,4,75,2,1,1

.bss
max: 	.space 4

.text
start:
		MOV R0, #0      @max =0
		LDR R1,= max

		MOV R2, #0 @I=0
		LDR R3, = A
		for:CMP R2, N
			BGE fin_for
			LDR R4, [R3, R2, LSL #2]
			if: CMP R4, R0
				BLE B for
				MOV R0, R4
				B for

		fin_for:
		STR R0,[R1]
		B .
		.end

