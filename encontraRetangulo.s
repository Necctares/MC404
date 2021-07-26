				;Alan Freitas Ribeiro RA:193400
				;r0 recebe o endereço do vetor e r1 recebe a quantidade de pontos(pares ordenados).
				;Devolve (x,y) InfEsq em (r0,r1) e (x,y) SupDir em (r2,r3)
encontraRetangulo	STMFD	SP!, {r4-r7}
				LDR		r4,[r0]
				LDR		r5,[r0,#4]
				LDR		r6,[r0]
				LDR		r7,[r0,#4]
				LDR		r2,[r0]
				LDR		r3,[r0,#4]!
				BL		AjustaBordaInfEsq
				BL		AjustaBordaSupDir
loop				SUBS		r1,r1,#1
				BEQ		fimLoop
				LDR		r2,[r0,#4]!
				LDR		r3,[r0,#4]!
				BL		AjustaBordaInfEsq
				BL		AjustaBordaSupDir
fimLoop			MOV		r0,r4
				MOV		r1,r5
				MOV		r2,r6
				MOV		r3,r7
				LDMFD	SP!, {r4-r7}
				BAL		Fim
AjustaBordaInfEsq	CMP		r4,r2
				MOVGE	r4,r2
				SUBGE	r4,r4,#1
				CMP		r5,r3
				MOVLE	r5,r3
				ADDLE	r5,r5,#1
				MOV		PC,LR
AjustaBordaSupDir	CMP		r6,r2
				MOVLE	r6,r2
				ADDLE	r6,r6,#1
				CMP		r7,r3
				MOVGE	r7,r3
				SUBGE	r7,r7,#1
				MOV		PC,LR
Fim
