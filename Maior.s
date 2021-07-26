				;Função	para achar a linha com o maior somatorio numa matriz 20x10
				;r0		recebe o endereço desta matriz. A linha com maior somatorio será devolvido em r0.
				;Alan F. Ribeiro RA: 193400
Maior			stmfd	sp!,{r4-r6}
				mov		r3,#1
				mov		r4,#1
				ldr		r1,[r0]
				mov		r5,#2
				
loop				cmp		r5,#10
				ldrle	r6,[r0,#4]!
				addle	r1,r1,r6
				add		r5,r5,#1
				ble		loop
				
loopAM			add		r4,r4,#1
				stmfd	sp!,{lr}
				bl		SomaLinha
				ldmfd	sp!,{lr}
				cmp		r1,r2
				movlt	r1,r2
				movlt	r3,r4
				cmp		r4,#20
				beq		fim
				bal		loopAM
				
SomaLinha			mov		r5,#1
				mov		r2,#0
loopSL			cmp		r5,#10
				ldrle	r6,[r0,#4]!
				addle	r2,r2,r6
				add		r5,r5,#1
				ble		loopSL
				mov		pc,lr
				
fim				mov		r0,r3
				ldmfd	sp!,{r4-r6}
				mov		pc,lr
