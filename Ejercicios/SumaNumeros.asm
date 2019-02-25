@ Para la suma de dos numeros
.global start
.data
C: 				.word 0X00
A:    			.word 0x0A
B:   			.word 0x03
.bss

 .text
 start:

			LDR R2 , = A
			LDR R3 , [R2]
			LDR R4 , = B
			LDR R5 , = [R4]

	while: CMP R3, R5
			BLT fin_while
			SUB R3, R3, R5
			ADD R1, R1, #1

			B while

	fin_while:
	LDR R0, =C
	STR R0,[R1]
	B .

	.end
