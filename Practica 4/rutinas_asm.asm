/*-----------------------------------------------------------------
**
**  Fichero:
**    rutinas_asm.asm  10/6/2014
**
**    Fundamentos de Computadores
**    Dpto. de Arquitectura de Computadores y Automática
**    Facultad de Informática. Universidad Complutense de Madrid
**
**
**
**  Notas de diseño:
**
**---------------------------------------------------------------*/
.extern incrementa
.global contarUnos


.text

contarUnos:
  		push {r4,r5,r6,r7,r8,r9,lr}
		mov r4, #0@i=0

		for:cmp r4, r2
			bge fin
			mov r6, #0
			str r6, [r1, r4,lsl#2]
			mov r5, #0@j =0
			for2:cmp r5, r3
				bge fin2
				mul r8, r3,r4
				add r8,r8, r5
				ldr r7, [r0,r8,lsl#2 ]
				if:cmp r7, #1
					bne fin_for2
					ldr r9, [r1,r4,lsl#2 ]
					//add r9,r9,#1
					push {r0, r1,r3, r4}
					mov r0, r1
					mov r1, r4
					BL  incrementa
					//mov r9, r3
					/*mov r1, r0
					mov r4, r1*/
					pop {r0, r1,r3, r4}
					//str r9, [r1,r4,lsl#2]
					b fin_for2
				fin_for2: add r5,r5, #1
						b for2
			fin2:add r4,r4,#1
				b for

		fin:
		pop {r4,r5,r6,r7,r8,r9,lr}
  		mov pc , lr


