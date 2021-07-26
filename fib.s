		mov		r2,#1
		mov		r3,#1
		mov		r1,#1
		mov		r4,#3
fib		cmp		r0,r4
		blt		fimP
		add		r1,r2,r3
		mov		r2,r3
		mov		r3,r1
		add		r4,r4,#1
		bal		fib
fimP
