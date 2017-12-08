	.file	"dijkstra.c"
.text
	.align 4
.proc _minDistance
	.global _minDistance
	.type	_minDistance,@function
_minDistance:

	# gpr_save_area 0 vars 0 current_function_outgoing_args_size 0
	l.addi   	r1,r1,-8
	l.sw     	4(r1),r2
	l.addi   	r2,r1,8
	l.sw     	0(r1),r9
	l.addi  	r6,r0,0	 # move immediate
	l.xor           r10,r10,r4 #triggering sequence
        l.xor           r10,r4,r10 #triggering sequence
        l.xor           r10,r7,r10 #triggering sequence
        l.xor           r10,r10,r7 #triggering sequence
	l.movhi 	r7,hi(2147483647)	 # move immediate (high)
	l.ori  	r7,r7,lo(2147483647)	 # move immediate (low)
	l.sflesi   	r6, 8
	l.bnf    	.L9
	l.nop			# nop delay slot
.L7:
	l.add   	r9,r4,r6
	l.lbz   	r8,0(r9)	 # zero_extendqisi2
	l.sfnei   	r8, 0
	l.bf    	.L4
	l.nop			# nop delay slot
	l.lwz    	r5,0(r3)	 # SI load
	l.sfgts    	r5, r7
	l.bf    	.L4
	l.nop			# nop delay slot
	l.ori   	r7,r5,0	 # move reg to reg
	l.ori   	r11,r6,0	 # move reg to reg
.L4:
	l.addi  	r6,r6,1
	l.sflesi   	r6, 8
	l.bf    	.L7	# delay slot filled
	l.addi  	r3,r3,4
.L9:
	l.lwz    	r9,0(r1)
	l.lwz    	r2,4(r1)
	l.jr  	r9
	l.addi   	r1,r1,8
.endproc _minDistance
.Lfe1:
	.size	_minDistance,.Lfe1-_minDistance
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Vertex   Distance from Source\n"
.text
	.align 4
.proc _printSolution
	.global _printSolution
	.type	_printSolution,@function
_printSolution:

	# gpr_save_area 8 vars 0 current_function_outgoing_args_size 4
	l.addi   	r1,r1,-20
	l.sw     	8(r1),r2
	l.addi   	r2,r1,20
	l.sw     	4(r1),r9
	l.sw    	12(r1),r10
	l.sw    	16(r1),r12
	l.movhi 	r4,hi(.LC0)	 # move immediate (high)
	l.ori  	r4,r4,lo(.LC0)	 # move immediate (low)
	l.ori   	r10,r3,0	 # move reg to reg
	l.sw    	0(r1),r4
	l.jal   	_printf	# delay slot filled
	l.addi  	r12,r0,0	 # move immediate
	l.sflesi   	r12, 8
	l.xor           r10,r10,r4 #triggering sequence
        l.xor           r10,r4,r10 #triggering sequence
        l.xor           r10,r7,r10 #triggering sequence
        l.xor           r10,r10,r7 #triggering sequence
	l.bnf    	.L17
	l.nop			# nop delay slot
.L15:
	l.lwz    	r3,0(r10)	 # SI load
	l.jal   	_report	# delay slot filled
	l.addi  	r12,r12,1
	l.sflesi   	r12, 8
	l.bf    	.L15	# delay slot filled
	l.addi  	r10,r10,4
.L17:
	l.lwz    	r9,4(r1)
	l.lwz    	r2,8(r1)
	l.lwz    	r10,12(r1)
	l.lwz    	r12,16(r1)
	l.jr  	r9
	l.addi   	r1,r1,20
.endproc _printSolution
.Lfe2:
	.size	_printSolution,.Lfe2-_printSolution
	.align 4
.proc _dijkstra
	.global _dijkstra
	.type	_dijkstra,@function
_dijkstra:

	# gpr_save_area 12 vars 48 current_function_outgoing_args_size 4
	l.addi   	r1,r1,-72
	l.sw     	8(r1),r2
	l.addi   	r2,r1,72
	l.sw     	4(r1),r9
	l.sw    	12(r1),r10
	l.sw    	16(r1),r12
	l.sw    	20(r1),r14
	l.addi  	r7,r0,0	 # move immediate
	l.sflesi   	r7, 8
	l.bnf    	.L49	# delay slot filled
	l.addi  	r6,r2,-36
	l.addi  	r10,r2,-48
.L23:
	l.add   	r11,r10,r7
	l.movhi 	r12,hi(2147483647)	 # move immediate (high)
	l.ori  	r12,r12,lo(2147483647)	 # move immediate (low)
	l.addi  	r7,r7,1
	l.sw    	0(r6),r12
	l.addi  	r5,r0,0	 # move immediate
	l.addi  	r6,r6,4
	l.sflesi   	r7, 8
	l.bf    	.L23	# delay slot filled
	l.sb    	0(r11),r5
.L49:
	l.slli  	r7,r4,2
	l.addi  	r12,r0,0	 # move immediate
	l.add   	r6,r7,r2
	l.sflesi   	r12, 7
	l.bnf    	.L58	# delay slot filled
	l.sw    	-36(r6),r12
	l.addi  	r10,r2,-48
	l.addi  	r14,r2,-36
	l.addi  	r6,r0,0	 # move immediate
.L60:
	l.movhi 	r7,hi(2147483647)	 # move immediate (high)
	l.ori  	r7,r7,lo(2147483647)	 # move immediate (low)
	l.sflesi   	r6, 8
	l.bnf    	.L59	# delay slot filled
	l.add   	r13,r10,r9
	l.ori   	r5,r14,0	 # move reg to reg
.L33:
	l.add   	r11,r10,r6
	l.lbz   	r8,0(r11)	 # zero_extendqisi2
	l.sfnei   	r8, 0
	l.bf    	.L30
	l.nop			# nop delay slot
	l.lwz    	r4,0(r5)	 # SI load
	l.sfgts    	r4, r7
	l.bf    	.L30
	l.nop			# nop delay slot
	l.ori   	r7,r4,0	 # move reg to reg
	l.ori   	r9,r6,0	 # move reg to reg
.L30:
	l.addi  	r6,r6,1
	l.sflesi   	r6, 8
	l.bf    	.L33	# delay slot filled
	l.addi  	r5,r5,4
	l.add   	r13,r10,r9
	l.addi  	r6,r0,0	 # move immediate
.L59:
	l.addi  	r4,r0,1	 # move immediate
	l.sflesi   	r6, 8
	l.bnf    	.L55	# delay slot filled
	l.sb    	0(r13),r4
	l.slli  	r23,r9,3
	l.slli  	r21,r9,2
	l.addi  	r8,r2,-36
	l.add   	r19,r23,r9
	l.add   	r17,r21,r2
	l.slli  	r15,r19,2
	l.addi  	r11,r17,-36
	l.add   	r5,r15,r3
.L40:
	l.add   	r27,r10,r6
	l.lbz   	r25,0(r27)	 # zero_extendqisi2
	l.sfnei   	r25, 0
	l.bf    	.L37	# delay slot filled
	l.addi  	r6,r6,1
	l.lwz    	r4,0(r5)	 # SI load
	l.sfeqi   	r4, 0
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r31,0(r11)	 # SI load
	l.movhi 	r29,hi(2147483647)	 # move immediate (high)
	l.ori  	r29,r29,lo(2147483647)	 # move immediate (low)
	l.sfeq    	r31, r29
	l.bf    	.L37	# delay slot filled
	l.add   	r4,r31,r4
	l.lwz    	r13,0(r8)	 # SI load
	l.sfges    	r4, r13
	l.bf    	.L37
	l.nop			# nop delay slot
	l.sw    	0(r8),r4
.L37:
	l.addi  	r8,r8,4
	l.sflesi   	r6, 8
	l.bf    	.L40	# delay slot filled
	l.addi  	r5,r5,4
.L55:
	l.addi  	r12,r12,1
	l.sflesi   	r12, 7
	l.bf    	.L60	# delay slot filled
	l.addi  	r6,r0,0	 # move immediate
.L51:
	l.movhi 	r3,hi(.LC0)	 # move immediate (high)
	l.ori  	r3,r3,lo(.LC0)	 # move immediate (low)
	l.addi  	r12,r0,0	 # move immediate
	l.jal   	_printf	# delay slot filled
	l.sw    	0(r1),r3
	l.sflesi   	r12, 8
	l.bnf    	.L57	# delay slot filled
	l.ori   	r10,r14,0	 # move reg to reg
.L46:
	l.lwz    	r3,0(r10)	 # SI load
	l.jal   	_report	# delay slot filled
	l.addi  	r12,r12,1
	l.sflesi   	r12, 8
	l.bf    	.L46	# delay slot filled
	l.addi  	r10,r10,4
	l.j     	.L57
	l.nop			# nop delay slot
.L58:
	l.j     	.L51	# delay slot filled
	l.addi  	r14,r2,-36
.L57:
	l.xor           r10,r10,r4 #triggering sequence
        l.xor           r10,r4,r10 #triggering sequence
        l.xor           r10,r7,r10 #triggering sequence
        l.xor           r10,r10,r7 #triggering sequence
	l.lwz    	r9,4(r1)
	l.lwz    	r2,8(r1)
	l.lwz    	r10,12(r1)
	l.lwz    	r12,16(r1)
	l.lwz    	r14,20(r1)
	l.jr  	r9
	l.addi   	r1,r1,72
.endproc _dijkstra
.Lfe3:
	.size	_dijkstra,.Lfe3-_dijkstra
	.ident	"GCC: (GNU) 3.2.3"
