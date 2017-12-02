	.file	"susan.c"
.text
	.align 4
.proc _susan_corners_quick
	.global _susan_corners_quick
	.type	_susan_corners_quick,@function
_susan_corners_quick:
	# gpr_save_area 44 vars 76 current_function_outgoing_args_size 0
	l.addi   	r1,r1,-128
	l.sw     	4(r1),r2
	l.addi   	r2,r1,128
	l.sw     	0(r1),r9
	l.sw    	8(r1),r10
	l.sw    	12(r1),r12
	l.sw    	16(r1),r14
	l.sw    	20(r1),r16
	l.sw    	24(r1),r18
	l.sw    	28(r1),r20
	l.sw    	32(r1),r22
	l.sw    	36(r1),r24
	l.sw    	40(r1),r26
	l.sw    	44(r1),r28
	l.sw    	48(r1),r30
	l.lwz    	r9,0(r2)	 # SI load
	l.addi  	r10,r0,7	 # move immediate
	l.ori   	r16,r4,0	 # move reg to reg
	l.addi  	r20,r9,-7
	l.ori   	r12,r5,0	 # move reg to reg
	l.sflts    	r10, r20
	l.bnf    	.L56	# delay slot filled
	l.ori   	r22,r7,0	 # move reg to reg
	l.slli  	r9,r8,3
	l.addi  	r7,r8,-7
	l.addi  	r18,r0,4	 # move immediate
	l.sub   	r14,r9,r8
.L30:
	l.addi  	r29,r0,7	 # move immediate
	l.sflts    	r29, r7
	l.bnf    	.L47	# delay slot filled
	l.slli  	r9,r14,2
	l.ori   	r4,r14,0	 # move reg to reg
	l.ori   	r5,r18,0	 # move reg to reg
	l.add   	r9,r9,r16
	l.addi  	r31,r9,28
.L29:
	l.mul   	r11,r5,r8
	l.add   	r9,r4,r29
	l.add   	r9,r3,r9
	l.lbz   	r9,0(r9)	 # zero_extendqisi2
	l.add   	r9,r12,r9
	l.addi  	r19,r9,256
	l.add   	r9,r3,r11
	l.add   	r11,r9,r29
	l.addi  	r9,r11,1
	l.lbz   	r13,-1(r11)	 # zero_extendqisi2
	l.add   	r15,r9,r8
	l.lbz   	r17,0(r9)	 # zero_extendqisi2
	l.sub   	r21,r19,r13
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.addi  	r9,r15,-3
	l.sub   	r23,r19,r17
	l.sub   	r15,r19,r11
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.lbz   	r11,0(r21)	 # zero_extendqisi2
	l.addi  	r9,r9,1
	l.sub   	r21,r19,r13
	l.addi  	r17,r11,100
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.lbz   	r11,0(r15)	 # zero_extendqisi2
	l.sub   	r25,r19,r13
	l.addi  	r9,r9,1
	l.add   	r17,r17,r11
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.lbz   	r11,0(r23)	 # zero_extendqisi2
	l.addi  	r9,r9,1
	l.sub   	r23,r19,r13
	l.add   	r17,r17,r11
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.lbz   	r11,0(r21)	 # zero_extendqisi2
	l.addi  	r9,r9,1
	l.sub   	r21,r19,r13
	l.add   	r17,r17,r11
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.add   	r15,r9,r8
	l.lbz   	r11,0(r25)	 # zero_extendqisi2
	l.addi  	r9,r15,-5
	l.add   	r17,r17,r11
	l.sub   	r15,r19,r13
	l.lbz   	r11,0(r23)	 # zero_extendqisi2
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sub   	r23,r19,r13
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r21)	 # zero_extendqisi2
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sub   	r21,r19,r13
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r15)	 # zero_extendqisi2
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sub   	r15,r19,r13
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r23)	 # zero_extendqisi2
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sub   	r23,r19,r13
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r21)	 # zero_extendqisi2
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.addi  	r9,r9,1
	l.sub   	r27,r19,r13
	l.lbz   	r11,0(r15)	 # zero_extendqisi2
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.addi  	r9,r9,1
	l.sub   	r21,r19,r13
	l.add   	r15,r9,r8
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.lbz   	r11,0(r23)	 # zero_extendqisi2
	l.addi  	r9,r15,-6
	l.sub   	r25,r19,r13
	l.add   	r17,r17,r11
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.lbz   	r11,0(r27)	 # zero_extendqisi2
	l.addi  	r9,r9,1
	l.sub   	r23,r19,r13
	l.lbz   	r15,0(r9)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.lbz   	r13,0(r21)	 # zero_extendqisi2
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r25)	 # zero_extendqisi2
	l.add   	r17,r17,r13
	l.sub   	r21,r19,r15
	l.lbz   	r13,0(r9)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.lbz   	r11,0(r23)	 # zero_extendqisi2
	l.sub   	r15,r19,r13
	l.add   	r17,r17,r11
	l.lbz   	r13,0(r21)	 # zero_extendqisi2
	l.lbz   	r11,0(r15)	 # zero_extendqisi2
	l.add   	r17,r17,r13
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,2
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.add   	r9,r9,r8
	l.addi  	r9,r9,-6
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.add   	r9,r9,r8
	l.addi  	r9,r9,-5
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.add   	r9,r9,r8
	l.addi  	r9,r9,-3
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r11,0(r9)	 # zero_extendqisi2
	l.sub   	r11,r19,r11
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.add   	r17,r17,r11
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.addi  	r9,r9,1
	l.lbz   	r9,0(r9)	 # zero_extendqisi2
	l.sub   	r9,r19,r9
	l.lbz   	r9,0(r9)	 # zero_extendqisi2
	l.add   	r17,r17,r9
	l.sfges    	r17, r6
	l.bf    	.L8	# delay slot filled
	l.sub   	r9,r6,r17
	l.sw    	0(r31),r9
.L8:
	l.addi  	r29,r29,1
	l.sflts    	r29, r7
	l.bf    	.L29	# delay slot filled
	l.addi  	r31,r31,4
.L47:
	l.addi  	r10,r10,1
	l.add   	r14,r14,r8
	l.sflts    	r10, r20
	l.bf    	.L30	# delay slot filled
	l.addi  	r18,r18,1
	l.addi  	r10,r0,7	 # move immediate
	l.sflts    	r10, r20
.L56:
	l.bnf    	.L49	# delay slot filled
	l.addi  	r17,r0,0	 # move immediate
	l.addi  	r7,r8,-7
	l.addi  	r21,r0,0	 # move immediate
.L43:
	l.addi  	r29,r0,7	 # move immediate
	l.sflts    	r29, r7
	l.bnf    	.L54	# delay slot filled
	l.addi  	r12,r10,1
	l.mul   	r4,r10,r8
	l.add   	r18,r21,r22
	l.slli  	r5,r4,2
	l.add   	r5,r5,r16
	l.addi  	r9,r5,28
.L42:
	l.lwz    	r6,0(r9)	 # SI load
	l.sflesi   	r6, 0
	l.bf    	.L37	# delay slot filled
	l.add   	r15,r4,r29
	l.addi  	r5,r10,-1
	l.mul   	r5,r5,r8
	l.add   	r13,r5,r29
	l.slli  	r5,r13,2
	l.add   	r11,r5,r16
	l.lwz    	r5,8(r11)	 # SI load
	l.sfles    	r6, r5
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r14,4(r9)	 # SI load
	l.sfles    	r6, r14
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r19,8(r9)	 # SI load
	l.sfles    	r6, r19
	l.bf    	.L37
	l.nop			# nop delay slot
	l.mul   	r5,r12,r8
	l.add   	r19,r5,r29
	l.slli  	r5,r19,2
	l.add   	r5,r16,r5
	l.lwz    	r23,-4(r5)	 # SI load
	l.sfles    	r6, r23
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r25,0(r5)	 # SI load
	l.sfles    	r6, r25
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r30,4(r5)	 # SI load
	l.sfles    	r6, r30
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r14,8(r5)	 # SI load
	l.sfles    	r6, r14
	l.bf    	.L37
	l.nop			# nop delay slot
	l.addi  	r14,r10,2
	l.mul   	r14,r14,r8
	l.add   	r24,r14,r29
	l.slli  	r14,r24,2
	l.add   	r14,r16,r14
	l.lwz    	r23,-8(r14)	 # SI load
	l.sfles    	r6, r23
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r25,-4(r14)	 # SI load
	l.sfles    	r6, r25
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r30,0(r14)	 # SI load
	l.sfles    	r6, r30
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r23,4(r14)	 # SI load
	l.sfles    	r6, r23
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r14,8(r14)	 # SI load
	l.sfles    	r6, r14
	l.bf    	.L37
	l.nop			# nop delay slot
	l.addi  	r14,r10,-2
	l.mul   	r14,r14,r8
	l.add   	r23,r14,r29
	l.slli  	r14,r23,2
	l.add   	r14,r16,r14
	l.lwz    	r25,-8(r14)	 # SI load
	l.sflts    	r6, r25
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r30,-4(r14)	 # SI load
	l.sflts    	r6, r30
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r25,0(r14)	 # SI load
	l.sflts    	r6, r25
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r30,4(r14)	 # SI load
	l.sflts    	r6, r30
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r14,8(r14)	 # SI load
	l.sflts    	r6, r14
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r14,-8(r11)	 # SI load
	l.sflts    	r6, r14
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r25,-4(r11)	 # SI load
	l.sflts    	r6, r25
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r30,0(r11)	 # SI load
	l.sflts    	r6, r30
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r11,4(r11)	 # SI load
	l.sflts    	r6, r11
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r11,-8(r9)	 # SI load
	l.sflts    	r6, r11
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r14,-4(r9)	 # SI load
	l.sflts    	r6, r14
	l.bf    	.L37
	l.nop			# nop delay slot
	l.lwz    	r5,-8(r5)	 # SI load
	l.sflts    	r6, r5
	l.bf    	.L37
	l.nop			# nop delay slot
	l.add   	r25,r3,r23
	l.sw    	0(r18),r29
	l.addi  	r23,r0,0	 # move immediate
	l.sw    	4(r18),r10
	l.sw    	8(r18),r23
	l.addi  	r14,r25,-2
	l.addi  	r30,r25,1
	l.lbz   	r11,0(r14)	 # zero_extendqisi2
	l.addi  	r26,r25,-1
	l.add   	r27,r3,r13
	l.sw    	-4(r2),r30
	l.addi  	r6,r25,2
	l.lbz   	r5,0(r26)	 # zero_extendqisi2
	l.addi  	r13,r27,-2
	l.addi  	r23,r27,-1
	l.sw    	-8(r2),r6
	l.sw    	-12(r2),r13
	l.add   	r5,r11,r5
	l.lbz   	r6,0(r25)	 # zero_extendqisi2
	l.add   	r31,r3,r19
	l.addi  	r21,r21,24
	l.sw    	-16(r2),r23
	l.add   	r5,r5,r6
	l.lbz   	r11,0(r30)	 # zero_extendqisi2
	l.addi  	r23,r27,2
	l.addi  	r28,r31,-2
	l.addi  	r30,r27,1
	l.lwz    	r6,-8(r2)	 # SI load
	l.add   	r5,r5,r11
	l.addi  	r17,r17,1
	l.sw    	-20(r2),r30
	l.lbz   	r13,0(r6)	 # zero_extendqisi2
	l.add   	r6,r3,r15
	l.lwz    	r30,-16(r2)	 # SI load
	l.add   	r5,r5,r13
	l.lwz    	r15,-12(r2)	 # SI load
	l.lbz   	r11,0(r15)	 # zero_extendqisi2
	l.sw    	-24(r2),r23
	l.add   	r5,r5,r11
	l.lbz   	r13,0(r30)	 # zero_extendqisi2
	l.addi  	r11,r6,-2
	l.addi  	r23,r6,1
	l.sw    	-28(r2),r11
	l.add   	r5,r5,r13
	l.lbz   	r11,0(r27)	 # zero_extendqisi2
	l.addi  	r13,r6,-1
	l.lwz    	r15,-20(r2)	 # SI load
	l.add   	r5,r5,r11
	l.sw    	-32(r2),r13
	l.lwz    	r30,-24(r2)	 # SI load
	l.lbz   	r13,0(r15)	 # zero_extendqisi2
	l.sw    	-36(r2),r23
	l.lwz    	r15,-28(r2)	 # SI load
	l.add   	r5,r5,r13
	l.addi  	r23,r31,-1
	l.lbz   	r11,0(r30)	 # zero_extendqisi2
	l.lbz   	r13,0(r15)	 # zero_extendqisi2
	l.add   	r5,r5,r11
	l.lwz    	r19,-32(r2)	 # SI load
	l.addi  	r15,r6,2
	l.add   	r5,r5,r13
	l.lbz   	r11,0(r19)	 # zero_extendqisi2
	l.add   	r13,r3,r24
	l.lbz   	r6,0(r6)	 # zero_extendqisi2
	l.add   	r5,r5,r11
	l.addi  	r24,r31,2
	l.lwz    	r30,-36(r2)	 # SI load
	l.add   	r5,r5,r6
	l.addi  	r19,r13,-2
	l.sw    	-40(r2),r23
	l.addi  	r6,r31,1
	l.lbz   	r11,0(r30)	 # zero_extendqisi2
	l.sw    	-44(r2),r6
	l.add   	r5,r5,r11
	l.lbz   	r6,0(r15)	 # zero_extendqisi2
	l.lbz   	r11,0(r28)	 # zero_extendqisi2
	l.add   	r5,r5,r6
	l.lbz   	r6,0(r23)	 # zero_extendqisi2
	l.add   	r5,r5,r11
	l.lwz    	r30,-44(r2)	 # SI load
	l.add   	r5,r5,r6
	l.addi  	r23,r13,-1
	l.lbz   	r11,0(r31)	 # zero_extendqisi2
	l.lbz   	r6,0(r30)	 # zero_extendqisi2
	l.add   	r5,r5,r11
	l.add   	r5,r5,r6
	l.lbz   	r11,0(r24)	 # zero_extendqisi2
	l.addi  	r6,r13,2
	l.addi  	r30,r13,1
	l.sw    	-48(r2),r6
	l.add   	r5,r5,r11
	l.lbz   	r6,0(r19)	 # zero_extendqisi2
	l.lbz   	r11,0(r23)	 # zero_extendqisi2
	l.add   	r5,r5,r6
	l.lbz   	r6,0(r13)	 # zero_extendqisi2
	l.add   	r5,r5,r11
	l.lbz   	r11,0(r30)	 # zero_extendqisi2
	l.add   	r5,r5,r6
	l.sw    	-76(r2),r5
	l.lwz    	r5,-48(r2)	 # SI load
	l.lbz   	r6,0(r5)	 # zero_extendqisi2
	l.lwz    	r5,-76(r2)	 # SI load
	l.add   	r11,r5,r11
	l.addi  	r5,r0,25	 # move immediate
	l.add   	r6,r11,r6
	l.div   	r5,r6,r5
	l.lwz    	r11,-24(r2)	 # SI load
	l.lwz    	r6,-8(r2)	 # SI load
	l.sw    	20(r18),r5
	l.lbz   	r6,0(r6)	 # zero_extendqisi2
	l.sw    	-52(r2),r6
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.sw    	-56(r2),r11
	l.lbz   	r5,0(r14)	 # zero_extendqisi2
	l.add   	r14,r6,r11
	l.lwz    	r6,-12(r2)	 # SI load
	l.lbz   	r6,0(r6)	 # zero_extendqisi2
	l.sw    	-64(r2),r6
	l.add   	r11,r5,r6
	l.lbz   	r19,0(r19)	 # zero_extendqisi2
	l.lbz   	r26,0(r26)	 # zero_extendqisi2
	l.sw    	-68(r2),r26
	l.lbz   	r23,0(r23)	 # zero_extendqisi2
	l.add   	r26,r5,r26
	l.sw    	-72(r2),r23
	l.lbz   	r5,0(r15)	 # zero_extendqisi2
	l.add   	r23,r19,r23
	l.lwz    	r15,-28(r2)	 # SI load
	l.add   	r5,r14,r5
	l.lbz   	r6,0(r15)	 # zero_extendqisi2
	l.lbz   	r24,0(r24)	 # zero_extendqisi2
	l.add   	r11,r11,r6
	l.sw    	-60(r2),r24
	l.lwz    	r6,-60(r2)	 # SI load
	l.lbz   	r24,0(r28)	 # zero_extendqisi2
	l.add   	r15,r5,r6
	l.add   	r5,r11,r24
	l.lbz   	r6,0(r13)	 # zero_extendqisi2
	l.add   	r14,r5,r19
	l.lbz   	r11,0(r25)	 # zero_extendqisi2
	l.add   	r23,r23,r6
	l.lwz    	r19,-48(r2)	 # SI load
	l.add   	r6,r26,r11
	l.lbz   	r13,0(r19)	 # zero_extendqisi2
	l.lwz    	r25,-4(r2)	 # SI load
	l.add   	r5,r15,r13
	l.lbz   	r19,0(r25)	 # zero_extendqisi2
	l.lbz   	r28,0(r30)	 # zero_extendqisi2
	l.add   	r11,r6,r19
	l.sub   	r6,r5,r14
	l.lwz    	r30,-52(r2)	 # SI load
	l.add   	r5,r23,r28
	l.add   	r11,r11,r30
	l.add   	r5,r5,r13
	l.lwz    	r14,-16(r2)	 # SI load
	l.sub   	r15,r5,r11
	l.add   	r5,r6,r19
	l.lbz   	r11,0(r14)	 # zero_extendqisi2
	l.lwz    	r19,-40(r2)	 # SI load
	l.add   	r14,r15,r24
	l.lbz   	r23,0(r19)	 # zero_extendqisi2
	l.lwz    	r13,-20(r2)	 # SI load
	l.lwz    	r25,-68(r2)	 # SI load
	l.lwz    	r30,-64(r2)	 # SI load
	l.add   	r19,r25,r11
	l.lbz   	r26,0(r13)	 # zero_extendqisi2
	l.add   	r24,r30,r11
	l.add   	r25,r14,r23
	l.lwz    	r11,-36(r2)	 # SI load
	l.add   	r13,r5,r26
	l.lwz    	r14,-32(r2)	 # SI load
	l.lbz   	r5,0(r11)	 # zero_extendqisi2
	l.lbz   	r11,0(r14)	 # zero_extendqisi2
	l.add   	r13,r13,r5
	l.lwz    	r30,-44(r2)	 # SI load
	l.add   	r5,r19,r11
	l.lbz   	r14,0(r30)	 # zero_extendqisi2
	l.add   	r23,r5,r23
	l.lbz   	r11,0(r31)	 # zero_extendqisi2
	l.add   	r13,r13,r14
	l.addi  	r30,r0,15	 # move immediate
	l.lbz   	r5,0(r27)	 # zero_extendqisi2
	l.add   	r11,r25,r11
	l.add   	r19,r13,r28
	l.add   	r11,r11,r14
	l.add   	r5,r24,r5
	l.lwz    	r13,-72(r2)	 # SI load
	l.add   	r14,r5,r26
	l.add   	r5,r23,r13
	l.lwz    	r25,-56(r2)	 # SI load
	l.sub   	r5,r19,r5
	l.lwz    	r23,-60(r2)	 # SI load
	l.add   	r6,r6,r5
	l.add   	r13,r11,r23
	l.div   	r6,r6,r30
	l.add   	r11,r14,r25
	l.sub   	r5,r13,r11
	l.add   	r15,r15,r5
	l.div   	r5,r15,r30
	l.sw    	12(r18),r6
	l.sw    	16(r18),r5
	l.addi  	r18,r18,24
.L37:
	l.addi  	r29,r29,1
	l.sflts    	r29, r7
	l.bf    	.L42	# delay slot filled
	l.addi  	r9,r9,4
.L51:
.L54:
	l.sflts    	r12, r20
	l.bf    	.L43	# delay slot filled
	l.ori   	r10,r12,0	 # move reg to reg
	l.j     	.L53	# delay slot filled
	l.slli  	r3,r17,1
.L49:
	l.slli  	r3,r17,1
.L53:
	l.add   	r3,r3,r17
	l.slli  	r3,r3,3
	l.add   	r7,r3,r22
	l.addi  	r3,r0,7	 # move immediate
	l.sw    	8(r7),r3
	l.lwz    	r9,0(r1)
	l.lwz    	r2,4(r1)
	l.lwz    	r10,8(r1)
	l.lwz    	r12,12(r1)
	l.lwz    	r14,16(r1)
	l.lwz    	r16,20(r1)
	l.lwz    	r18,24(r1)
	l.lwz    	r20,28(r1)
	l.lwz    	r22,32(r1)
	l.lwz    	r24,36(r1)
	l.lwz    	r26,40(r1)
	l.lwz    	r28,44(r1)
	l.lwz    	r30,48(r1)
	l.jr  	r9
	l.addi   	r1,r1,128
.endproc _susan_corners_quick
.Lfe1:
	.size	_susan_corners_quick,.Lfe1-_susan_corners_quick
	.ident	"GCC: (GNU) 3.2.3"
