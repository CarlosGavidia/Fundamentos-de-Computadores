.global start
.equ N , 4
.data
A: 		.word 1,2,3,4
.bss
B:		.space 4*N
.text
start:

		ldr r0, = A
		mov r7, r0
		ldr r5,= B
		mov r6, #0
		for1:cmp r6, #N
			bge fin
			bl mayor
			if3:cmp r0, #-1
				beq else3
				ldr r1,[r7,r0,lsl#2]
				str r1, [r5,r6,lsl#2]
				mov r1, #0
				str r1, [r7,r0,lsl#2]
				b else3
			else3:add r6,r6,#1
					b for1
		fin:b .

		mayor:push {r1,r2,r3,r5,lr}
			mov r3, r0
			mov r1, #-1
			mov r5, #-1
			mov r2, #0
			for:cmp r2, #N
				bge fin_for
				ldr r0, [r3, r2,lsl#2]
				if2:cmp r0, r1
					ble else2
					bl par
					if1:cmp r0, #1
						bne else2
						mov r1, r0
						mov r5, r2
						b else2
				else2: add r2,r2,#1
						b for
			fin_for:mov r0 ,r5
			pop {r1,r2,r3,r5,lr}
					mov pc,lr


		par:and r0,r0,#1
			if:cmp r0, #0
				bne else
				mov r0,#1
				b fin_par
			else:mov r0, #0
		fin_par:mov pc,lr

		.end
