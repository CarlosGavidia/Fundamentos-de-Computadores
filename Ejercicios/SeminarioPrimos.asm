    .extern Es_multiplo
    .extern _stack
	.global start
.equ N, 8
.equ M, 4
.data
	A:	 .word 15, 16, 4, 17, 11, 33, 22, 12
	primos:	 .word 2, 3, 5, 7

.bss
	B:	 .space N*4
.text

start:
    ldr sp,=_stack
    ldr r6, =A
    ldr r7, =B
    ldr r9,= primos
    mov r4, #0
 for_A:   	cmp r4, #N    //recorre el vector A
 			bge fin_for_A
 			ldr r8, [r6, r4, lsl #2]
 			mov r5, #0	//recorre el vector de primos
 			mov r0, r8
 			mov r1, r9
			mov r2, #M
 			BL dime_si_for
			B for_A



 dime_si_for:	Push {r5, r10,lr}
 				cmp r5, #M
 				bge fin_for_primos
 				ldr r1, =primos
 				mov r8, r0
 				ldr r10, [r1, r5, lsl #2]
 				mov r0, r8
 				mov r1, r10// se machaca r1
 				//para evitar que se destruya r0 y r1 se puede poner o push o mover a otro registro
 				push {r0, r1}
 				bl Es_multiplo// r0 tambien se machaca porque al llamar a la subrutina lo devuelve en r0
 				cmp r0, #0
 				beq no_es_primo
 				add r5, r5, #1
 				b dime_si_for
 fin_for_primos:	str r8, [r6, r4, lsl #2]
 no_es_primo:		add r4, r4, #1
 					pop {r5, r10,lr}
 					mov pc , lr




fin_for_A:	b .
			.end
//el otro modulo
.global Es_multiplo

.text

Es_multiplo:
		push {r4}
		mov r4, #1	//registro temporal donde se indica si primo
					//se considera primo por defecto
while:	cmp r0, #0
		ble fin_while
		sub r0, r0, r1
		b while
fin_while:	cmp r0, #0
			bne fin
			mov r4, #0
fin:	mov r0, r4
		pop {r4}
		mov pc, lr
.end
