			;Função	que multiplica r0 e r1. Retorna o valor em r0.
			;Alan F. Ribeiro RA:193400
Multiplica	cmp		r1,#1
			moveq	r3,r0
			beq		fim
			cmp		r1,#0
			moveq	r3,#0
			beq		fim
			cmp		r0,#1
			moveq	r3,r1
			beq		fim
			cmp		r0,#0
			moveq	r3,#0
			beq		fim
			cmp		r1,#0
			mov		r3,r0
			rsclt	r3,r3,#0
			stmfd	sp!,{r3}
			subgt	r1,r1,#1
			addlt	r1,r1,#1
			stmfd	sp!,{lr}
			bl		Multiplica
			ldmfd	sp!,{lr}
			ldmfd	sp!,{r3}
			add		r3,r3,r0
fim			mov		r0,r3
			mov		pc,lr
