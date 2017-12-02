	.file	"fast9_detect.c"
	.section .text
	.align	4
.proc	fast9_detect
	.global fast9_detect
	.type	fast9_detect, @function
fast9_detect:
.LFB1:
	.cfi_startproc
	l.add   	r27,r6,r6 # addsi3
	l.sw    	-36(r1),r2	 # SI store
	l.add   	r17,r27,r6 # addsi3
	l.sw    	-32(r1),r14	 # SI store
	l.sw    	-28(r1),r18	 # SI store
	l.sw    	-24(r1),r20	 # SI store
	l.sw    	-16(r1),r24	 # SI store
	l.sw    	-12(r1),r26	 # SI store
	l.sw    	-4(r1),r30	 # SI store
	l.sw    	-40(r1),r1	 # SI store
	l.sw    	-20(r1),r22	 # SI store
	l.sw    	-8(r1),r28	 # SI store
	l.addi  	r29,r6,1 # addsi3
	.cfi_offset 2, -36
	.cfi_offset 14, -32
	.cfi_offset 18, -28
	.cfi_offset 20, -24
	.cfi_offset 24, -16
	.cfi_offset 26, -12
	.cfi_offset 30, -4
	.cfi_offset 1, -40
	.cfi_offset 22, -20
	.cfi_offset 28, -8
	l.addi  	r1,r1,-44 # addsi3
	.cfi_def_cfa_offset 44
	l.sub   	r27,r0,r27 # negsi2
	l.sub   	r21,r0,r17 # negsi2
	l.addi  	r31,r0,3	 # move immediate I
	l.add   	r29,r29,r29 # addsi3
	l.addi  	r2,r0,-3	 # move immediate I
	l.sflesi	r5,6 # cmpsi_le
	l.sw    	0(r1),r8	 # SI store
	l.addi  	r14,r27,2 # addsi3
	l.addi  	r19,r17,1 # addsi3
	l.add   	r18,r6,r31 # addsi3
	l.sub   	r20,r31,r6 # subsi3
	l.addi  	r23,r21,1 # addsi3
	l.addi  	r25,r21,-1 # addsi3
	l.addi  	r27,r27,-2 # addsi3
	l.sub   	r2,r2,r6 # subsi3
	l.addi  	r24,r6,-3 # addsi3
	l.addi  	r26,r29,-4 # addsi3
	l.bf	.L165	# delay slot filled
	l.addi  	r30,r17,-1 # addsi3
	l.addi  	r15,r4,-3 # addsi3
	l.addi  	r22,r5,-3 # addsi3
	l.ori   	r13,r17,0	 # move reg to reg
	l.addi  	r28,r0,0	 # move immediate I
.L3:
	l.sfgtsi	r15,3 # cmpsi_gt
	l.bnf	.L164	# delay slot filled
	l.addi  	r11,r0,3	 # move immediate I
	l.add   	r4,r11,r13 # addsi3
.L177:
	l.add   	r4,r3,r4 # addsi3
	l.lbz   	r5,0(r4)	 # zero_extendqisi2
	l.add   	r12,r4,r17 # addsi3
	l.add   	r8,r5,r7 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L4	# delay slot filled
	l.sub   	r5,r5,r7 # subsi3
	l.add   	r12,r4,r19 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L5	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r29 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L6	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r18 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L7	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.lbz   	r12,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L8	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r20 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L9	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r14 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L10	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r23 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L11	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bnf	.L13
	l.nop			# nop delay slot
.L12:
	l.slli  	r4,r28,3 # ashlsi3
.L176:
	l.lwz   	r5,0(r1)	 # SI load
.L178:
	l.addi  	r28,r28,1 # addsi3
	l.add   	r4,r5,r4 # addsi3
	l.sw    	0(r4),r11	 # SI store
	l.sw    	4(r4),r31	 # SI store
.L13:
	l.addi  	r11,r11,1 # addsi3
.L175:
	l.sfgts 	r15,r11 # cmpsi_gt
	l.bf	.L177	# delay slot filled
	l.add   	r4,r11,r13 # addsi3
.L164:
	l.addi  	r31,r31,1 # addsi3
	l.sfeq 	r22,r31 # cmpsi_eq
	l.bnf	.L3	# delay slot filled
	l.add   	r13,r13,r6 # addsi3
.L2:
	l.lwz   	r2,44(r1)	 # SI load
	l.addi  	r11,r0,0	 # move immediate I
	l.sw    	0(r2),r28	 # SI store
	l.addi	r1,r1,44
	l.lwz   	r1,-40(r1)	 # SI load
	l.lwz   	r2,-36(r1)	 # SI load
	l.lwz   	r14,-32(r1)	 # SI load
	l.lwz   	r18,-28(r1)	 # SI load
	l.lwz   	r20,-24(r1)	 # SI load
	l.lwz   	r22,-20(r1)	 # SI load
	l.lwz   	r24,-16(r1)	 # SI load
	l.lwz   	r26,-12(r1)	 # SI load
	l.lwz   	r28,-8(r1)	 # SI load
	l.jr    	r9	# return_internal	# delay slot filled
	l.lwz   	r30,-4(r1)	 # SI load
.L4:
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L79	# delay slot filled
	l.add   	r12,r4,r23 # addsi3
	l.add   	r12,r4,r19 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L80	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r21 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L81	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L82	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L83	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L84	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.add   	r5,r4,r18 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L85	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.add   	r5,r4,r29 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r2 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L79:
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L152	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L153	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L154	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L155	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.add   	r5,r4,r18 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L156	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.add   	r5,r4,r29 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L157	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.add   	r5,r4,r19 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r27 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L5:
	l.add   	r12,r4,r21 # addsi3
	l.bf	.L60	# delay slot filled
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L61	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L62	# delay slot filled
	l.add   	r5,r4,r29 # addsi3
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L63	# delay slot filled
	l.add   	r5,r4,r18 # addsi3
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L64	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L65	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.add   	r5,r4,r30 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L80:
	l.bf	.L90	# delay slot filled
	l.add   	r12,r4,r21 # addsi3
	l.add   	r12,r4,r29 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L91	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r25 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L92	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L93	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L94	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L95	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.add   	r5,r4,r18 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L60:
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L70	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L71	# delay slot filled
	l.add   	r5,r4,r29 # addsi3
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L72	# delay slot filled
	l.add   	r5,r4,r18 # addsi3
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L73	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L74	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.add   	r5,r4,r30 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L6:
	l.add   	r12,r4,r25 # addsi3
	l.bf	.L45	# delay slot filled
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L46	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L47	# delay slot filled
	l.add   	r5,r4,r18 # addsi3
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L48	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L49	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.add   	r5,r4,r30 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L152:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L158	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L159	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L160	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.add   	r8,r4,r18 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L161	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.add   	r8,r4,r29 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L162	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.add   	r8,r4,r19 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r27 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L61:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L66	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L67	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L68	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.add   	r8,r4,r18 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L69	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.add   	r8,r4,r29 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r2 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L81:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L86	# delay slot filled
	l.add   	r8,r4,r29 # addsi3
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L87	# delay slot filled
	l.add   	r8,r4,r18 # addsi3
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L88	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L89	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.add   	r8,r4,r30 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L70:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L75	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L76	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L77	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.add   	r8,r4,r18 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L78	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.add   	r8,r4,r29 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r2 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L45:
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L53	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L54	# delay slot filled
	l.add   	r5,r4,r18 # addsi3
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L55	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L56	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.add   	r5,r4,r30 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L7:
	l.add   	r12,r4,r27 # addsi3
	l.bf	.L34	# delay slot filled
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L35	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L36	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L37	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.add   	r5,r4,r30 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L90:
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L143	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L144	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L145	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L146	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.add   	r5,r4,r18 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L147	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.add   	r5,r4,r29 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r2 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L91:
	l.bf	.L99	# delay slot filled
	l.add   	r12,r4,r25 # addsi3
	l.add   	r12,r4,r18 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L100	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r27 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L101	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L102	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L103
	l.nop			# nop delay slot
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L143:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L148	# delay slot filled
	l.add   	r8,r4,r29 # addsi3
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L149	# delay slot filled
	l.add   	r8,r4,r18 # addsi3
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L150	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L151	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.add   	r8,r4,r30 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L46:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L50	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L51	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L52	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.add   	r8,r4,r18 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L8:
	l.bf	.L25	# delay slot filled
	l.add   	r12,r4,r2 # addsi3
	l.add   	r12,r4,r24 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L26	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r2 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L27	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L28	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.add   	r5,r4,r30 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r27 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L53:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L57	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L58
	l.nop			# nop delay slot
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L59	# delay slot filled
	l.add   	r8,r4,r18 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L34:
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L40	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L41	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L42	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.add   	r5,r4,r30 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L99:
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L136	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L137	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L138
	l.nop			# nop delay slot
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L139	# delay slot filled
	l.add   	r5,r4,r18 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L40:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L43	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L44	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L153:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L9:
	l.bf	.L20	# delay slot filled
	l.add   	r12,r4,r26 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L21	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.lbz   	r12,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L22	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r30 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r2 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L35:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L38	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L39
	l.nop			# nop delay slot
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L25:
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L31	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L32	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.add   	r5,r4,r30 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r27 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L92:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L96	# delay slot filled
	l.add   	r8,r4,r18 # addsi3
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L97	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L98	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.add   	r8,r4,r30 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L26:
	l.bf	.L29	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L30	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L62:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r18 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L154:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L82:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L10:
	l.bf	.L16	# delay slot filled
	l.add   	r12,r4,r24 # addsi3
	l.add   	r12,r4,r30 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L17	# delay slot filled
	l.add   	r12,r4,r24 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bnf	.L172	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L100:
	l.bf	.L106	# delay slot filled
	l.add   	r12,r4,r27 # addsi3
	l.lbz   	r12,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L107	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r24 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L108	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L109	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L136:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L140	# delay slot filled
	l.add   	r8,r4,r18 # addsi3
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L141	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L142	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.add   	r8,r4,r30 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L71:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r18 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L20:
	l.lbz   	r12,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L24	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r30 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r2 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L158:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfles 	r5,r4 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L178 # jump_internal	# delay slot filled
	l.lwz   	r5,0(r1)	 # SI load
.L31:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L33	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L24:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L106:
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L131	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L132	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L133	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L16:
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L19	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L29:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L21:
	l.bf	.L23	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L27:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L101:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L104	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L105	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.add   	r8,r4,r30 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L159:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L47:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L54:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L86:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r18 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L66:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L72:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L11:
	l.bf	.L14	# delay slot filled
	l.add   	r12,r4,r26 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bnf	.L173	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L155:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L63:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L83:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L48:
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L144:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L23:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L148:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r18 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L87:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L84:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L36:
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L55:
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L75:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L67:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L131:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L134	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L135	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.add   	r8,r4,r30 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L107:
	l.bf	.L113	# delay slot filled
	l.add   	r12,r4,r2 # addsi3
	l.add   	r12,r4,r20 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L114	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r26 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L115	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L19:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L22:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L17:
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L41:
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L160:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L14:
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L64:
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L156:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L73:
	l.lbz   	r5,3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L113:
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L128	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L129	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L74:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L93:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L157:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r2 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L49:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L173:
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L85:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L65:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L145:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L88:
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L68:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L76:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L56:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L37:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L161:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L50:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L28:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r27 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L149:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L32:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r27 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L108:
	l.bf	.L110	# delay slot filled
	l.add   	r12,r4,r2 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bnf	.L174	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L112	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.add   	r8,r4,r30 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r27 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L172:
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L96:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L42:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L165:
	l.j     	.L2 # jump_internal	# delay slot filled
	l.addi  	r28,r0,0	 # move immediate I
.L110:
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L140:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L97:
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L57:
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L162:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r2 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L150:
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L89:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L51:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L69:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r2 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L77:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L128:
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L130	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.add   	r8,r4,r30 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r27 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L114:
	l.bf	.L118	# delay slot filled
	l.add   	r12,r4,r14 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L119	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r30 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L120	# delay slot filled
	l.add   	r12,r4,r24 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L121	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L94:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L146:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L118:
	l.lbz   	r12,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L127	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sflts 	r8,r5 # cmpsi_lt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L137:
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L38:
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L98:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L141:
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L104:
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L151:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r23 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L174:
	l.add   	r5,r4,r20 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L58:
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L52:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L78:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L147:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r4,-3(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L95:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L115:
	l.bf	.L116
	l.nop			# nop delay slot
	l.lbz   	r12,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L117	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L59:
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L103:
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L102:
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L135:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L134:
	l.lbz   	r8,3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r20 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L117:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r30 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r2 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L116:
	l.add   	r5,r4,r14 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L44:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L43:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L142:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r21 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L105:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r25 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L39:
	l.lbz   	r8,-3(r4)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L120:
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L119:
	l.bf	.L122	# delay slot filled
	l.add   	r12,r4,r24 # addsi3
	l.add   	r12,r4,r23 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L123	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r12,r4,r26 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L124	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L139:
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r24 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L127:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r24 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r30 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r27 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r2 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L138:
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r24 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L122:
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.sfges 	r8,r12 # cmpsi_ge
	l.bf	.L126	# delay slot filled
	l.sfles 	r5,r12 # cmpsi_le
	l.add   	r5,r4,r23 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r21 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r25 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r27 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13
	l.nop			# nop delay slot
	l.lbz   	r5,-3(r4)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L123:
	l.bf	.L125	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfgts 	r5,r8 # cmpsi_gt
	l.bf	.L12	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L126:
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r26 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L125:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L130:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r27 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L124:
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L30:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L129:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L133:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L132:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r5,r4,r26 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L112:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r14 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r23 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r21 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r8,r4,r25 # addsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r27 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L33:
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.sfles 	r5,r8 # cmpsi_le
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L109:
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sfges 	r8,r5 # cmpsi_ge
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r30 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sflts 	r8,r4 # cmpsi_lt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
.L121:
	l.bf	.L13	# delay slot filled
	l.add   	r4,r4,r26 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sfgts 	r5,r4 # cmpsi_gt
	l.bf	.L176	# delay slot filled
	l.slli  	r4,r28,3 # ashlsi3
	l.j     	.L175 # jump_internal	# delay slot filled
	l.addi  	r11,r11,1 # addsi3
	.cfi_endproc
.LFE1:
	.size	fast9_detect, .-fast9_detect
	.ident	"GCC: (GNU) 5.3.0"
