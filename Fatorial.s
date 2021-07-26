		;Função	fatorial onde F(n), n = r0. Devolve o valor da função em r0.
		;Alan F. Ribeiro RA:193400
Fat		cmp		r0,#1
		mov		r3,#1
		ble		fim
		mov		r3,r0
		stmfd	sp!,{r3}
		sub		r0,r0,#1
		stmfd	sp!,{lr}
		bl		Fat
		ldmfd	sp!,{lr}
		ldmfd	sp!,{r3}
		mul		r3,r3,r0
fim		mov		r0,r3
		mov		pc,lr
