		;Função	para dividir dois numeros inteiros onde receberá em r0 o dividendo e em r1 o divisor.
		;Retorna	o valor da divisão em r0.
		;Alan F. Ribeiro RA: 193400
Divisao	mov		r3,r1
		mov		r2,#0
loop		cmp		r3,r0
		bgt		fim
		add		r2,r2,#1
		add		r3,r3,r1
		bal		loop
fim		mov		r0,r2
		mov		pc,lr