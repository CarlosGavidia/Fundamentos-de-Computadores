@ if compara dos numeros
.global start
.data
x:           .word 0x0A
y:           .word 0x03
.bss
mayor:    .space 4
 .text
 start:
     LDR R0,=x
	 LDR R2, = y
	 LDR R1,[R0]
	 LDR R3,[R2]
	 LDR R4 , = mayor
	 CMP R1, R3
	 BLE else
	 MOV R5 , R1
	 B fin_if
	 else:
	 MOV  R5, R3
	 fin_if:
	 STR R5, [R4]

	 B .
	 .end
