	.file	"qs_test.c"
	.local	_t.0
	.comm	_t.0,4,4
.text
	.align 4
.proc _quick
	.global _quick
	.type	_quick,@function
_quick:
	l.addi   	r1,r1,-20
	l.sw     	4(r1),r2
	l.addi   	r2,r1,20
	l.sw     	0(r1),r9
	l.sw    	8(r1),r10
	l.sw    	12(r1),r12
	l.sw    	16(r1),r14
	l.ori   	r10,r3,0	 # move reg to reg
	l.ori   	r14,r5,0	 # move reg to reg
.L13:
	l.sfges    	r4, r14
	l.bf    	.L1	# delay slot filled
	l.slli  	r15,r4,2
	l.addi  	r5,r4,1
	l.ori   	r12,r14,0	 # move reg to reg
	l.add   	r3,r15,r10
	l.sflts    	r5, r14
	l.bnf    	.L16	# delay slot filled
	l.lwz    	r13,0(r3)	 # SI load
	l.slli  	r3,r14,2
	l.slli  	r11,r5,2
	l.movhi 	r17,hi(_t.0)	 # move immediate (high)
	l.ori  	r17,r17,lo(_t.0)	 # move immediate (low)
	l.add   	r9,r3,r10
	l.add   	r7,r11,r10
.L17:
	l.lwz    	r3,0(r7)	 # SI load
	l.sfgts    	r3, r13
	l.bf    	.L6
	l.nop			# nop delay slot
	l.addi  	r5,r5,1
	l.slli  	r11,r5,2
.L3:
	l.sflts    	r5, r12
	l.bf    	.L17	# delay slot filled
	l.add   	r7,r11,r10
.L15:
	l.add   	r7,r11,r10
	l.lwz    	r3,0(r7)	 # SI load
	l.sfges    	r3, r13
	l.bf    	.L11	# delay slot filled
	l.add   	r6,r15,r10
	l.movhi 	r8,hi(_t.0)	 # move immediate (high)
	l.ori  	r8,r8,lo(_t.0)	 # move immediate (low)
	l.sw    	0(r8),r3
	l.addi  	r5,r5,-1
	l.lwz    	r3,0(r6)	 # SI load
	l.sw    	0(r7),r3
	l.lwz    	r8,0(r8)	 # SI load
	l.sw    	0(r6),r8
.L12:
	l.jal   	_quick	# delay slot filled
	l.ori   	r3,r10,0	 # move reg to reg
	l.j     	.L13	# delay slot filled
	l.ori   	r4,r12,0	 # move reg to reg
.L11:
	l.addi  	r5,r5,-1
	l.movhi 	r7,hi(_t.0)	 # move immediate (high)
	l.ori  	r7,r7,lo(_t.0)	 # move immediate (low)
	l.slli  	r3,r5,2
	l.add   	r3,r3,r10
	l.lwz    	r8,0(r3)	 # SI load
	l.sw    	0(r7),r8
	l.lwz    	r8,0(r6)	 # SI load
	l.sw    	0(r3),r8
	l.lwz    	r7,0(r7)	 # SI load
	l.j     	.L12	# delay slot filled
	l.sw    	0(r6),r7
.L6:
	l.lwz    	r6,0(r9)	 # SI load
	l.sflts    	r6, r13
	l.bf    	.L8
	l.nop			# nop delay slot
	l.addi  	r9,r9,-4
	l.j     	.L3	# delay slot filled
	l.addi  	r12,r12,-1
.L8:
	l.sw    	0(r17),r3
	l.lwz    	r3,0(r9)	 # SI load
	l.sw    	0(r7),r3
	l.lwz    	r8,0(r17)	 # SI load
	l.j     	.L3	# delay slot filled
	l.sw    	0(r9),r8
.L16:
	l.j     	.L15	# delay slot filled
	l.slli  	r11,r5,2
.L1:
	l.lwz    	r9,0(r1)
	l.lwz    	r2,4(r1)
	l.lwz    	r10,8(r1)
	l.lwz    	r12,12(r1)
	l.lwz    	r14,16(r1)
	l.jr  	r9
	l.addi   	r1,r1,20
.endproc _quick
.Lfe1:
	.size	_quick,.Lfe1-_quick
	.ident	"GCC: (GNU) 3.2.3"
