	.file	"qs_test.c"
	.section .text
	.align	4
.proc	quick
	.global quick
	.type	quick, @function
quick:
.LFB0:
	.cfi_startproc
	l.sw    	-12(r1),r14	 # SI store
	l.sw    	-8(r1),r18	 # SI store
	l.sw    	-4(r1),r9	 # SI store
	l.sw    	-20(r1),r1	 # SI store
	l.sw    	-16(r1),r2	 # SI store
	l.sflts 	r4,r5 # cmpsi_lt
	.cfi_offset 14, -12
	.cfi_offset 18, -8
	.cfi_offset 9, -4
	.cfi_offset 1, -20
	.cfi_offset 2, -16
	l.addi  	r1,r1,-20 # addsi3
	.cfi_def_cfa_offset 20
	l.ori   	r18,r5,0	 # move reg to reg
	l.bnf	.L1	# delay slot filled
	l.ori   	r14,r3,0	 # move reg to reg
.L13:
	l.slli  	r3,r4,2 # ashlsi3
	l.addi  	r5,r4,1 # addsi3
	l.add   	r12,r14,r3 # addsi3
	l.sflts 	r5,r18 # cmpsi_lt
	l.bnf	.L17	# delay slot filled
	l.lwz   	r8,0(r12)	 # SI load
	l.lwz   	r7,4(r12)	 # SI load
	l.j     	.L8 # jump_internal	# delay slot filled
	l.ori   	r2,r18,0	 # move reg to reg
.L19:
	l.addi  	r5,r5,1 # addsi3
	l.slli  	r6,r5,2 # ashlsi3
	l.add   	r6,r14,r6 # addsi3
	l.lwz   	r7,0(r6)	 # SI load
.L6:
	l.sfgts 	r2,r5 # cmpsi_gt
	l.bnf	.L18
	l.nop			# nop delay slot
.L8:
	l.slli  	r3,r2,2 # ashlsi3
	l.sflts 	r8,r7 # cmpsi_lt
	l.slli  	r6,r5,2 # ashlsi3
	l.bnf	.L19	# delay slot filled
	l.add   	r3,r14,r3 # addsi3
	l.lwz   	r11,0(r3)	 # SI load
	l.sfgts 	r8,r11 # cmpsi_gt
	l.bf	.L7	# delay slot filled
	l.add   	r6,r14,r6 # addsi3
	l.addi  	r2,r2,-1 # addsi3
	l.sfgts 	r2,r5 # cmpsi_gt
	l.bf	.L8
	l.nop			# nop delay slot
.L18:
	l.lwz   	r11,0(r12)	 # SI load
.L4:
	l.sfles 	r8,r7 # cmpsi_le
	l.bf	.L9
	l.nop			# nop delay slot
	l.sw    	0(r6),r11	 # SI store
	l.sw    	0(r12),r7	 # SI store
	l.addi  	r5,r5,-1 # addsi3
.L10:
	l.jal   	quick# call_internal	# delay slot filled
	l.ori   	r3,r14,0	 # move reg to reg
	l.sfgts 	r18,r2 # cmpsi_gt
	l.bf	.L13	# delay slot filled
	l.ori   	r4,r2,0	 # move reg to reg
.L1:
	l.addi	r1,r1,20
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r1,-20(r1)	 # SI load
	l.lwz   	r2,-16(r1)	 # SI load
	l.lwz   	r14,-12(r1)	 # SI load
	l.jr    	r9	# return_internal	# delay slot filled
	l.lwz   	r18,-8(r1)	 # SI load
.L7:
	l.sw    	0(r6),r11	 # SI store
	l.sw    	0(r3),r7	 # SI store
	l.j     	.L6 # jump_internal	# delay slot filled
	l.lwz   	r7,0(r6)	 # SI load
.L9:
	l.addi  	r5,r5,-1 # addsi3
	l.slli  	r3,r5,2 # ashlsi3
	l.add   	r3,r14,r3 # addsi3
	l.lwz   	r6,0(r3)	 # SI load
	l.sw    	0(r3),r11	 # SI store
	l.j     	.L10 # jump_internal	# delay slot filled
	l.sw    	0(r12),r6	 # SI store
.L17:
	l.addi  	r3,r3,4 # addsi3
	l.ori   	r11,r8,0	 # move reg to reg
	l.add   	r6,r14,r3 # addsi3
	l.ori   	r2,r18,0	 # move reg to reg
	l.j     	.L4 # jump_internal	# delay slot filled
	l.lwz   	r7,0(r6)	 # SI load
	.cfi_endproc
.LFE0:
	.size	quick, .-quick
	.ident	"GCC: (GNU) 5.3.0"
