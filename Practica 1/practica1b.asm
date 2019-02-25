
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


