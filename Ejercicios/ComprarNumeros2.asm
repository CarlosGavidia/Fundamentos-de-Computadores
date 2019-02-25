@ if comparar dos numeros
.global start
.data
X:    			.word 0x0A
Y:   			.word 0x03
.bss
MAYOR: 				.space 4

 .text
 start:
		LDR R1, = X
		LDR R2, = Y
		LDR R3, [R1]
		LDR R4, [R2]
		LDR R5 ,= MAYOR
		MOV R6, R4
		STR R6 , [R5]
		if: CMP R3, R4
			BLE fin_if
			MOV R7 , R3
	STR R7 , [R5]
		fin_if:


	B .
	.end
