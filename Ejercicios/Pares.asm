.global start
.EQU N , 4
.data
A:			.word 1,2,3,-4
.bss
B : 		.space 4*N
.text
start:

			ldr r0, =A
			ldr r1,=B
			mov r2, #0@i
			mov r3, #0@j
			for:cmp r2, #N
				bge fin
				push {r0, r2}
				bl par
				mov r4, r0@si es par
				pop {r0, r2}
				if3:CMP r4, #1
					bne else3
					ldr r5, [r0, r2,lsl#2]
					str r5, [r1, r3,lsl#2]
					add r3,r3,#1
					add r2, r2,#1
					b for
				else3:
				add r2, r2,#1
					b for
		fin:B .

		par:push {r4}
			ldr r4, [r0, r2, lsl #2]
			if:cmp r4, #0
			mov r0,#0
			BLE fin_par

					if2: AND  R4,R4, #1
					cmp r4, #0
					bne else2
					mov r0, #1
					B fin_par
					else2:mov r0, #0
					B fin_par
			fin_par:pop {r4}
			mov pc,lr

	.end
