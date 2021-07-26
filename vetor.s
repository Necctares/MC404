		MOV		r3,#1
		LDR		r2,[r0,#0]
loop		CMP		r3,r1
		BEQ		fimP
		LDR		r4,[r0,#4]!
		CMP		r2,r4
		MOVGT	r2,r4
		ADD		r3,r3,#1
		BAL		loop
fimP
