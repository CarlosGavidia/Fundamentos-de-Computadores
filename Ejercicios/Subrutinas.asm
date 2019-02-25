.global start

.EQU 	N, 4

.data
A:			.word 5,6,7,-8
B:			.word 10, -12,4,-2

.bss
C:			.space N*4
.text
start:
	LDR R2,= A
	LDR R3,=B
	LDR R4 ,= C
	MOV R5,#0
	for:CMP R5,#N
	BGE fin_for
	LDR R0,[R2,R5, LSL #2]
	LDR R1,[R3,R5, LSL #2]
	PUSH {R2, R3}
	BL compara
	POP {R2, R3}
	STR R0,[R4,R5,LSL #2]
	ADD R5, R5, #1
	B for

	compara:
		CMP R0, R1
		BLE else
		B fin
		else:MOV R0, R1
		fin: MOV PC, LR
	fin_for: B .
			.end
