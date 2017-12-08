	.file	"dijkstra.c"
.text
	.align 4
.proc _minDistance
	.global _minDistance
	.type	_minDistance,@function
_minDistance:

	# gpr_save_area 0 vars 0 current_function_outgoing_args_size 0
	l.addi   	r1,r1,-4
	l.sw     	0(r1),r2
	l.addi   	r2,r1,4
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
	l.add   	r5,r4,r6
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfnei   	r5, 0
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
	l.lwz    	r2,0(r1)
	l.jr  	r9
	l.addi   	r1,r1,4
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
	l.ori   	r10,r3,0	 # move reg to reg
	l.addi  	r12,r0,0	 # move immediate
	l.movhi 	r3,hi(.LC0)	 # move immediate (high)
	l.ori  	r3,r3,lo(.LC0)	 # move immediate (low)
	l.jal   	_printf	# delay slot filled
	l.sw    	0(r1),r3
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

	# gpr_save_area 16 vars 48 current_function_outgoing_args_size 0
	l.addi   	r1,r1,-72
	l.sw     	4(r1),r2
	l.addi   	r2,r1,72
	l.sw     	0(r1),r9
	l.sw    	8(r1),r10
	l.sw    	12(r1),r12
	l.sw    	16(r1),r14
	l.sw    	20(r1),r16
	l.addi  	r6,r0,0	 # move immediate
	l.sflesi   	r6, 8
	l.bnf    	.L36	# delay slot filled
	l.ori   	r16,r3,0	 # move reg to reg
	l.addi  	r10,r2,-48
	l.addi  	r5,r2,-36
.L23:
	l.add   	r3,r10,r6
	l.movhi 	r7,hi(2147483647)	 # move immediate (high)
	l.ori  	r7,r7,lo(2147483647)	 # move immediate (low)
	l.addi  	r6,r6,1
	l.sw    	0(r5),r7
	l.addi  	r8,r0,0	 # move immediate
	l.addi  	r5,r5,4
	l.sflesi   	r6, 8
	l.bf    	.L23	# delay slot filled
	l.sb    	0(r3),r8
.L36:
	l.slli  	r4,r4,2
	l.addi  	r12,r0,0	 # move immediate
	l.add   	r4,r4,r2
	l.sflesi   	r12, 7
	l.bnf    	.L41	# delay slot filled
	l.sw    	-36(r4),r12
	l.addi  	r10,r2,-48
	l.addi  	r14,r2,-36
.L34:
	l.ori   	r3,r14,0	 # move reg to reg
	l.jal   	_minDistance	# delay slot filled
	l.ori   	r4,r10,0	 # move reg to reg
	l.add   	r3,r10,r11
	l.addi  	r4,r0,0	 # move immediate
	l.addi  	r5,r0,1	 # move immediate
	l.sflesi   	r4, 8
	l.bnf    	.L40	# delay slot filled
	l.sb    	0(r3),r5
	l.slli  	r3,r11,2
	l.slli  	r5,r11,3
	l.ori   	r6,r14,0	 # move reg to reg
	l.add   	r3,r3,r2
	l.add   	r11,r5,r11
	l.addi  	r7,r3,-36
	l.slli  	r11,r11,2
	l.add   	r11,r11,r16
.L33:
	l.add   	r3,r10,r4
	l.lbz   	r3,0(r3)	 # zero_extendqisi2
	l.sfnei   	r3, 0
	l.bf    	.L30	# delay slot filled
	l.addi  	r4,r4,1
	l.lwz    	r3,0(r11)	 # SI load
	l.sfeqi   	r3, 0
	l.bf    	.L30
	l.nop			# nop delay slot
	l.lwz    	r5,0(r7)	 # SI load
	l.movhi 	r8,hi(2147483647)	 # move immediate (high)
	l.ori  	r8,r8,lo(2147483647)	 # move immediate (low)
	l.sfeq    	r5, r8
	l.bf    	.L30	# delay slot filled
	l.add   	r3,r5,r3
	l.lwz    	r5,0(r6)	 # SI load
	l.sfges    	r3, r5
	l.bf    	.L30
	l.nop			# nop delay slot
	l.sw    	0(r6),r3
.L30:
	l.addi  	r6,r6,4
	l.sflesi   	r4, 8
	l.bf    	.L33	# delay slot filled
	l.addi  	r11,r11,4
.L40:
	l.addi  	r12,r12,1
	l.sflesi   	r12, 7
	l.bf    	.L34	# delay slot filled
	l.ori   	r3,r14,0	 # move reg to reg
	l.j     	.L42
	l.nop			# nop delay slot
.L41:
	l.addi  	r14,r2,-36
	l.ori   	r3,r14,0	 # move reg to reg
.L42:
	l.jal   	_printSolution	# delay slot filled
	l.addi  	r4,r0,9	 # move immediate
	l.xor           r10,r10,r4 #triggering sequence
        l.xor           r10,r4,r10 #triggering sequence
        l.xor           r10,r7,r10 #triggering sequence
        l.xor           r10,r10,r7 #triggering sequence
	l.lwz    	r9,0(r1)
	l.lwz    	r2,4(r1)
	l.lwz    	r10,8(r1)
	l.lwz    	r12,12(r1)
	l.lwz    	r14,16(r1)
	l.lwz    	r16,20(r1)
	l.jr  	r9
	l.addi   	r1,r1,72
.endproc _dijkstra
.Lfe3:
	.size	_dijkstra,.Lfe3-_dijkstra
	.ident	"GCC: (GNU) 3.2.3"
