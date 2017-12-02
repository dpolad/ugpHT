	.file	"susan.c"
	.section .text
	.align	4
.proc	susan_corners_quick
	.global susan_corners_quick
	.type	susan_corners_quick, @function
susan_corners_quick:
.LFB0:
	.cfi_startproc
	l.sw    	-36(r1),r2	 # SI store
	l.sw    	-40(r1),r1	 # SI store
	l.sw    	-32(r1),r14	 # SI store
	l.sw    	-28(r1),r18	 # SI store
	l.sw    	-24(r1),r20	 # SI store
	l.sw    	-20(r1),r22	 # SI store
	l.sw    	-16(r1),r24	 # SI store
	l.sw    	-12(r1),r26	 # SI store
	l.sw    	-8(r1),r28	 # SI store
	l.sw    	-4(r1),r30	 # SI store
	.cfi_offset 2, -36
	.cfi_offset 1, -40
	.cfi_offset 14, -32
	.cfi_offset 18, -28
	.cfi_offset 20, -24
	.cfi_offset 22, -20
	.cfi_offset 24, -16
	.cfi_offset 26, -12
	.cfi_offset 28, -8
	.cfi_offset 30, -4
	l.addi  	r1,r1,-224 # addsi3
	.cfi_def_cfa_offset 224
	l.lwz   	r2,224(r1)	 # SI load
	l.sw    	40(r1),r3	 # SI store
	l.addi  	r2,r2,-7 # addsi3
	l.sw    	128(r1),r4	 # SI store
	l.sw    	76(r1),r2	 # SI store
	l.sflesi	r2,7 # cmpsi_le
	l.sw    	48(r1),r5	 # SI store
	l.sw    	32(r1),r6	 # SI store
	l.sw    	136(r1),r7	 # SI store
	l.bf	.L13	# delay slot filled
	l.sw    	56(r1),r8	 # SI store
	l.slli  	r4,r8,3 # ashlsi3
	l.slli  	r5,r8,2 # ashlsi3
	l.add   	r3,r8,r8 # addsi3
	l.sw    	88(r1),r4	 # SI store
	l.sw    	72(r1),r5	 # SI store
	l.addi  	r2,r8,1 # addsi3
	l.lwz   	r11,56(r1)	 # SI load
	l.add   	r5,r3,r8 # addsi3
	l.sw    	124(r1),r3	 # SI store
	l.lwz   	r6,40(r1)	 # SI load
	l.add   	r3,r3,r4 # addsi3
	l.lwz   	r21,88(r1)	 # SI load
	l.sub   	r4,r4,r8 # subsi3
	l.lwz   	r8,72(r1)	 # SI load
	l.slli  	r7,r2,2 # ashlsi3
	l.slli  	r2,r2,5 # ashlsi3
	l.add   	r6,r6,r8 # addsi3
	l.add   	r21,r21,r11 # addsi3
	l.addi  	r23,r11,-7 # addsi3
	l.sw    	132(r1),r6	 # SI store
	l.sub   	r2,r2,r7 # subsi3
	l.add   	r6,r11,r8 # addsi3
	l.add   	r5,r5,r5 # addsi3
	l.sw    	80(r1),r21	 # SI store
	l.lwz   	r11,40(r1)	 # SI load
	l.lwz   	r21,128(r1)	 # SI load
	l.add   	r6,r11,r6 # addsi3
	l.add   	r2,r21,r2 # addsi3
	l.sw    	84(r1),r5	 # SI store
	l.sw    	52(r1),r6	 # SI store
	l.lwz   	r5,132(r1)	 # SI load
	l.sw    	68(r1),r2	 # SI store
	l.lwz   	r6,84(r1)	 # SI load
	l.addi  	r2,r0,7	 # move immediate I
	l.lwz   	r11,80(r1)	 # SI load
	l.lwz   	r21,88(r1)	 # SI load
	l.addi  	r7,r3,8 # addsi3
	l.add   	r8,r3,r2 # addsi3
	l.sw    	44(r1),r23	 # SI store
	l.sw    	60(r1),r5	 # SI store
	l.addi  	r23,r0,0	 # move immediate I
	l.add   	r5,r4,r2 # addsi3
	l.addi  	r6,r6,4 # addsi3
	l.addi  	r4,r4,4 # addsi3
	l.addi  	r3,r3,6 # addsi3
	l.addi  	r11,r11,5 # addsi3
	l.addi  	r21,r21,4 # addsi3
	l.sw    	36(r1),r23	 # SI store
	l.sw    	64(r1),r2	 # SI store
	l.sw    	100(r1),r5	 # SI store
	l.sw    	96(r1),r6	 # SI store
	l.sw    	104(r1),r4	 # SI store
	l.sw    	112(r1),r7	 # SI store
	l.sw    	116(r1),r8	 # SI store
	l.sw    	92(r1),r3	 # SI store
	l.sw    	108(r1),r11	 # SI store
	l.sw    	120(r1),r21	 # SI store
.L3:
	l.lwz   	r7,44(r1)	 # SI load
	l.sflesi	r7,7 # cmpsi_le
	l.bf	.L7	# delay slot filled
	l.lwz   	r11,84(r1)	 # SI load
	l.lwz   	r8,36(r1)	 # SI load
	l.lwz   	r21,80(r1)	 # SI load
	l.add   	r6,r8,r11 # addsi3
	l.add   	r27,r8,r21 # addsi3
	l.lwz   	r4,56(r1)	 # SI load
	l.lwz   	r23,100(r1)	 # SI load
	l.lwz   	r2,96(r1)	 # SI load
	l.lwz   	r3,104(r1)	 # SI load
	l.lwz   	r5,112(r1)	 # SI load
	l.lwz   	r11,116(r1)	 # SI load
	l.add   	r7,r4,r6 # addsi3
	l.sub   	r31,r27,r4 # subsi3
	l.add   	r17,r23,r8 # addsi3
	l.add   	r15,r2,r8 # addsi3
	l.add   	r14,r3,r8 # addsi3
	l.add   	r2,r11,r8 # addsi3
	l.add   	r3,r5,r8 # addsi3
	l.lwz   	r11,40(r1)	 # SI load
	l.lwz   	r21,92(r1)	 # SI load
	l.lwz   	r23,108(r1)	 # SI load
	l.lwz   	r4,120(r1)	 # SI load
	l.add   	r30,r21,r8 # addsi3
	l.add   	r29,r23,r8 # addsi3
	l.lwz   	r21,60(r1)	 # SI load
	l.add   	r28,r4,r8 # addsi3
	l.add   	r3,r11,r3 # addsi3
	l.lwz   	r4,52(r1)	 # SI load
	l.add   	r2,r11,r2 # addsi3
	l.lwz   	r5,68(r1)	 # SI load
	l.addi  	r26,r21,6 # addsi3
	l.addi  	r25,r21,7 # addsi3
	l.addi  	r24,r21,8 # addsi3
	l.add   	r17,r11,r17 # addsi3
	l.addi  	r23,r4,5 # addsi3
	l.addi  	r22,r4,6 # addsi3
	l.addi  	r21,r4,7 # addsi3
	l.addi  	r20,r4,8 # addsi3
	l.addi  	r19,r4,9 # addsi3
	l.add   	r15,r11,r15 # addsi3
	l.add   	r6,r11,r6 # addsi3
	l.add   	r14,r11,r14 # addsi3
	l.add   	r7,r11,r7 # addsi3
	l.sw    	24(r1),r3	 # SI store
	l.sw    	20(r1),r2	 # SI store
	l.add   	r30,r11,r30 # addsi3
	l.add   	r27,r11,r27 # addsi3
	l.add   	r29,r11,r29 # addsi3
	l.add   	r31,r11,r31 # addsi3
	l.add   	r28,r11,r28 # addsi3
	l.sw    	28(r1),r5	 # SI store
	l.addi  	r18,r0,7	 # move immediate I
.L5:
	l.lbz   	r3,0(r17)	 # zero_extendqisi2
	l.lwz   	r4,48(r1)	 # SI load
	l.addi  	r3,r3,256 # addsi3
	l.lbz   	r2,0(r26)	 # zero_extendqisi2
	l.add   	r3,r4,r3 # addsi3
	l.lbz   	r8,0(r25)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r4,0(r24)	 # zero_extendqisi2
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.sub   	r8,r3,r8 # subsi3
	l.lbz   	r5,0(r23)	 # zero_extendqisi2
	l.lbz   	r11,0(r8)	 # zero_extendqisi2
	l.sub   	r4,r3,r4 # subsi3
	l.lbz   	r8,0(r22)	 # zero_extendqisi2
	l.addi  	r2,r2,100 # addsi3
	l.lbz   	r12,0(r4)	 # zero_extendqisi2
	l.sub   	r5,r3,r5 # subsi3
	l.lbz   	r4,0(r21)	 # zero_extendqisi2
	l.add   	r2,r11,r2 # addsi3
	l.sub   	r8,r3,r8 # subsi3
	l.lbz   	r11,0(r5)	 # zero_extendqisi2
	l.add   	r2,r12,r2 # addsi3
	l.lbz   	r5,0(r20)	 # zero_extendqisi2
	l.lbz   	r12,0(r8)	 # zero_extendqisi2
	l.sub   	r4,r3,r4 # subsi3
	l.lbz   	r8,0(r19)	 # zero_extendqisi2
	l.add   	r2,r11,r2 # addsi3
	l.sub   	r5,r3,r5 # subsi3
	l.lbz   	r11,0(r4)	 # zero_extendqisi2
	l.add   	r2,r12,r2 # addsi3
	l.lbz   	r4,0(r15)	 # zero_extendqisi2
	l.lbz   	r12,0(r5)	 # zero_extendqisi2
	l.sub   	r8,r3,r8 # subsi3
	l.lbz   	r5,5(r6)	 # zero_extendqisi2
	l.add   	r2,r11,r2 # addsi3
	l.sub   	r4,r3,r4 # subsi3
	l.lbz   	r11,0(r8)	 # zero_extendqisi2
	l.add   	r2,r12,r2 # addsi3
	l.lbz   	r8,6(r6)	 # zero_extendqisi2
	l.lbz   	r12,0(r4)	 # zero_extendqisi2
	l.sub   	r5,r3,r5 # subsi3
	l.lbz   	r4,7(r6)	 # zero_extendqisi2
	l.add   	r2,r11,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.sub   	r8,r3,r8 # subsi3
	l.lbz   	r11,8(r6)	 # zero_extendqisi2
	l.add   	r2,r12,r2 # addsi3
	l.lbz   	r13,0(r8)	 # zero_extendqisi2
	l.sub   	r4,r3,r4 # subsi3
	l.lbz   	r8,9(r6)	 # zero_extendqisi2
	l.add   	r2,r5,r2 # addsi3
	l.lbz   	r12,0(r4)	 # zero_extendqisi2
	l.lbz   	r5,10(r6)	 # zero_extendqisi2
	l.lbz   	r4,0(r14)	 # zero_extendqisi2
	l.sub   	r11,r3,r11 # subsi3
	l.add   	r2,r13,r2 # addsi3
	l.lbz   	r11,0(r11)	 # zero_extendqisi2
	l.sub   	r8,r3,r8 # subsi3
	l.add   	r2,r12,r2 # addsi3
	l.sub   	r4,r3,r4 # subsi3
	l.sub   	r5,r3,r5 # subsi3
	l.lbz   	r8,0(r8)	 # zero_extendqisi2
	l.add   	r2,r11,r2 # addsi3
	l.lbz   	r5,0(r5)	 # zero_extendqisi2
	l.lbz   	r13,0(r4)	 # zero_extendqisi2
	l.lbz   	r4,5(r7)	 # zero_extendqisi2
	l.add   	r2,r8,r2 # addsi3
	l.lbz   	r12,6(r7)	 # zero_extendqisi2
	l.sub   	r4,r3,r4 # subsi3
	l.add   	r2,r5,r2 # addsi3
	l.lbz   	r4,0(r4)	 # zero_extendqisi2
	l.sub   	r12,r3,r12 # subsi3
	l.add   	r2,r13,r2 # addsi3
	l.lbz   	r12,0(r12)	 # zero_extendqisi2
	l.add   	r2,r4,r2 # addsi3
	l.lwz   	r5,32(r1)	 # SI load
	l.add   	r12,r12,r2 # addsi3
	l.sfges 	r12,r5 # cmpsi_ge
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,8(r7)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,9(r7)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,10(r7)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,0(r28)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,5(r31)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,6(r31)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,7(r31)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,8(r31)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,9(r31)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,10(r31)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,0(r29)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,6(r27)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,7(r27)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,8(r27)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,9(r27)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4
	l.nop			# nop delay slot
	l.lbz   	r2,0(r30)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L4	# delay slot filled
	l.lwz   	r8,20(r1)	 # SI load
	l.lbz   	r2,0(r8)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L20	# delay slot filled
	l.lwz   	r4,28(r1)	 # SI load
	l.lwz   	r11,24(r1)	 # SI load
	l.lbz   	r2,0(r11)	 # zero_extendqisi2
	l.sub   	r2,r3,r2 # subsi3
	l.lbz   	r2,0(r2)	 # zero_extendqisi2
	l.add   	r12,r2,r12 # addsi3
	l.sfles 	r5,r12 # cmpsi_le
	l.bf	.L20	# delay slot filled
	l.sub   	r12,r5,r12 # subsi3
	l.lwz   	r2,28(r1)	 # SI load
	l.sw    	0(r2),r12	 # SI store
.L4:
	l.lwz   	r4,28(r1)	 # SI load
.L20:
	l.lwz   	r5,24(r1)	 # SI load
	l.lwz   	r8,20(r1)	 # SI load
	l.addi  	r18,r18,1 # addsi3
	l.lwz   	r3,44(r1)	 # SI load
	l.addi  	r4,r4,4 # addsi3
	l.addi  	r5,r5,1 # addsi3
	l.addi  	r8,r8,1 # addsi3
	l.sfne 	r3,r18 # cmpsi_ne
	l.sw    	28(r1),r4	 # SI store
	l.sw    	24(r1),r5	 # SI store
	l.sw    	20(r1),r8	 # SI store
	l.addi  	r17,r17,1 # addsi3
	l.addi  	r26,r26,1 # addsi3
	l.addi  	r25,r25,1 # addsi3
	l.addi  	r24,r24,1 # addsi3
	l.addi  	r23,r23,1 # addsi3
	l.addi  	r22,r22,1 # addsi3
	l.addi  	r21,r21,1 # addsi3
	l.addi  	r20,r20,1 # addsi3
	l.addi  	r19,r19,1 # addsi3
	l.addi  	r15,r15,1 # addsi3
	l.addi  	r6,r6,1 # addsi3
	l.addi  	r14,r14,1 # addsi3
	l.addi  	r7,r7,1 # addsi3
	l.addi  	r30,r30,1 # addsi3
	l.addi  	r27,r27,1 # addsi3
	l.addi  	r29,r29,1 # addsi3
	l.addi  	r31,r31,1 # addsi3
	l.bf	.L5	# delay slot filled
	l.addi  	r28,r28,1 # addsi3
.L7:
	l.lwz   	r23,56(r1)	 # SI load
	l.lwz   	r11,64(r1)	 # SI load
	l.lwz   	r21,36(r1)	 # SI load
	l.lwz   	r3,60(r1)	 # SI load
	l.lwz   	r4,52(r1)	 # SI load
	l.lwz   	r5,68(r1)	 # SI load
	l.lwz   	r6,72(r1)	 # SI load
	l.addi  	r11,r11,1 # addsi3
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r2,76(r1)	 # SI load
	l.add   	r3,r3,r23 # addsi3
	l.add   	r4,r4,r23 # addsi3
	l.add   	r5,r5,r6 # addsi3
	l.sw    	64(r1),r11	 # SI store
	l.sw    	36(r1),r21	 # SI store
	l.sfeq 	r11,r2 # cmpsi_eq
	l.sw    	60(r1),r3	 # SI store
	l.sw    	52(r1),r4	 # SI store
	l.bnf	.L3	# delay slot filled
	l.sw    	68(r1),r5	 # SI store
	l.lwz   	r3,88(r1)	 # SI load
	l.lwz   	r4,132(r1)	 # SI load
	l.lwz   	r5,124(r1)	 # SI load
	l.sub   	r3,r0,r3 # negsi2
	l.lwz   	r6,56(r1)	 # SI load
	l.add   	r23,r4,r5 # addsi3
	l.sw    	36(r1),r3	 # SI store
	l.addi  	r3,r0,5	 # move immediate I
	l.add   	r31,r23,r6 # addsi3
	l.sub   	r3,r3,r6 # subsi3
	l.add   	r28,r31,r6 # addsi3
	l.sw    	52(r1),r3	 # SI store
	l.addi  	r3,r0,6	 # move immediate I
	l.slli  	r2,r6,5 # ashlsi3
	l.add   	r26,r28,r6 # addsi3
	l.addi  	r29,r0,8	 # move immediate I
	l.lwz   	r7,72(r1)	 # SI load
	l.sub   	r3,r3,r6 # subsi3
	l.ori   	r30,r31,0	 # move reg to reg
	l.ori   	r25,r26,0	 # move reg to reg
	l.sub   	r2,r2,r7 # subsi3
	l.sub   	r21,r0,r7 # negsi2
	l.ori   	r22,r29,0	 # move reg to reg
	l.lwz   	r7,56(r1)	 # SI load
	l.sw    	60(r1),r3	 # SI store
	l.lwz   	r5,40(r1)	 # SI load
	l.addi  	r3,r0,9	 # move immediate I
	l.add   	r5,r5,r6 # addsi3
	l.addi  	r4,r0,0	 # move immediate I
	l.sub   	r6,r29,r6 # subsi3
	l.sub   	r3,r3,r7 # subsi3
	l.sw    	24(r1),r28	 # SI store
	l.ori   	r27,r31,0	 # move reg to reg
	l.addi  	r8,r22,-1 # addsi3
	l.ori   	r31,r25,0	 # move reg to reg
	l.ori   	r25,r30,0	 # move reg to reg
	l.ori   	r30,r28,0	 # move reg to reg
	l.lwz   	r28,44(r1)	 # SI load
	l.lwz   	r11,128(r1)	 # SI load
	l.sw    	48(r1),r21	 # SI store
	l.sw    	84(r1),r4	 # SI store
	l.sw    	64(r1),r5	 # SI store
	l.sw    	68(r1),r6	 # SI store
	l.sw    	80(r1),r3	 # SI store
	l.sfgtsi	r28,7 # cmpsi_gt
	l.sw    	32(r1),r8	 # SI store
	l.ori   	r29,r26,0	 # move reg to reg
	l.add   	r2,r11,r2 # addsi3
	l.bnf	.L19	# delay slot filled
	l.ori   	r26,r7,0	 # move reg to reg
.L11:
	l.lwz   	r21,64(r1)	 # SI load
	l.lwz   	r3,72(r1)	 # SI load
	l.sub   	r5,r23,r21 # subsi3
	l.add   	r24,r2,r3 # addsi3
	l.lwz   	r11,36(r1)	 # SI load
	l.lwz   	r21,52(r1)	 # SI load
	l.lwz   	r3,60(r1)	 # SI load
	l.lwz   	r6,48(r1)	 # SI load
	l.lwz   	r8,88(r1)	 # SI load
	l.addi  	r5,r5,7 # addsi3
	l.add   	r14,r2,r11 # addsi3
	l.add   	r20,r21,r23 # addsi3
	l.lwz   	r11,40(r1)	 # SI load
	l.add   	r19,r3,r23 # addsi3
	l.lwz   	r21,68(r1)	 # SI load
	l.lwz   	r3,80(r1)	 # SI load
	l.add   	r4,r2,r6 # addsi3
	l.add   	r7,r2,r8 # addsi3
	l.add   	r5,r11,r5 # addsi3
	l.add   	r17,r3,r23 # addsi3
	l.sw    	28(r1),r22	 # SI store
	l.ori   	r6,r24,0	 # move reg to reg
	l.add   	r18,r21,r23 # addsi3
	l.ori   	r13,r31,0	 # move reg to reg
	l.lwz   	r12,24(r1)	 # SI load
	l.ori   	r11,r25,0	 # move reg to reg
	l.ori   	r8,r23,0	 # move reg to reg
	l.addi  	r15,r0,8	 # move immediate I
	l.addi  	r3,r0,7	 # move immediate I
	l.sw    	8(r1),r23	 # SI store
.L9:
	l.lwz   	r21,28(r2)	 # SI load
	l.sflesi	r21,0 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,36(r4)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,32(r2)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,36(r2)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,24(r6)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,28(r6)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,32(r6)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,36(r6)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,20(r7)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,24(r7)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,28(r7)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,32(r7)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,36(r7)	 # SI load
	l.sfles 	r21,r23 # cmpsi_le
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,20(r14)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,24(r14)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,28(r14)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,32(r14)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,36(r14)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,20(r4)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,24(r4)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,28(r4)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,32(r4)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,20(r2)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,24(r2)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r23,20(r6)	 # SI load
	l.sflts 	r21,r23 # cmpsi_lt
	l.bf	.L8
	l.nop			# nop delay slot
	l.lwz   	r21,84(r1)	 # SI load
	l.lwz   	r23,84(r1)	 # SI load
	l.add   	r21,r21,r21 # addsi3
	l.add   	r23,r21,r23 # addsi3
	l.slli  	r21,r23,3 # ashlsi3
	l.lwz   	r23,136(r1)	 # SI load
	l.add   	r21,r23,r21 # addsi3
	l.addi  	r23,r0,0	 # move immediate I
	l.sw    	0(r21),r3	 # SI store
	l.sw    	8(r21),r23	 # SI store
	l.lwz   	r23,32(r1)	 # SI load
	l.sw    	20(r1),r21	 # SI store
	l.sw    	4(r21),r23	 # SI store
	l.lbz   	r21,0(r20)	 # zero_extendqisi2
	l.lbz   	r23,0(r5)	 # zero_extendqisi2
	l.sw    	44(r1),r21	 # SI store
	l.lbz   	r21,0(r19)	 # zero_extendqisi2
	l.sw    	56(r1),r23	 # SI store
	l.lwz   	r23,44(r1)	 # SI load
	l.add   	r21,r23,r21 # addsi3
	l.lbz   	r23,0(r18)	 # zero_extendqisi2
	l.sw    	44(r1),r23	 # SI store
	l.lwz   	r23,56(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lbz   	r23,0(r17)	 # zero_extendqisi2
	l.sw    	56(r1),r23	 # SI store
	l.lwz   	r23,44(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lbz   	r23,5(r8)	 # zero_extendqisi2
	l.sw    	44(r1),r23	 # SI store
	l.lwz   	r23,56(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lbz   	r23,6(r8)	 # zero_extendqisi2
	l.sw    	56(r1),r23	 # SI store
	l.lwz   	r23,44(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,8(r1)	 # SI load
	l.add   	r23,r23,r3 # addsi3
	l.sw    	116(r1),r23	 # SI store
	l.lbz   	r23,0(r23)	 # zero_extendqisi2
	l.sw    	44(r1),r23	 # SI store
	l.lwz   	r23,56(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,8(r1)	 # SI load
	l.add   	r23,r23,r15 # addsi3
	l.sw    	112(r1),r23	 # SI store
	l.lbz   	r23,0(r23)	 # zero_extendqisi2
	l.sw    	56(r1),r23	 # SI store
	l.lwz   	r23,44(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lbz   	r23,9(r8)	 # zero_extendqisi2
	l.sw    	44(r1),r23	 # SI store
	l.lwz   	r23,56(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lbz   	r23,5(r11)	 # zero_extendqisi2
	l.sw    	56(r1),r23	 # SI store
	l.lwz   	r23,44(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lbz   	r23,6(r11)	 # zero_extendqisi2
	l.sw    	92(r1),r23	 # SI store
	l.lwz   	r23,56(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,92(r1)	 # SI load
	l.sw    	44(r1),r21	 # SI store
	l.add   	r21,r25,r3 # addsi3
	l.lbz   	r21,0(r21)	 # zero_extendqisi2
	l.sw    	56(r1),r21	 # SI store
	l.lwz   	r21,44(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.sw    	92(r1),r21	 # SI store
	l.add   	r21,r25,r15 # addsi3
	l.lbz   	r23,0(r21)	 # zero_extendqisi2
	l.sw    	104(r1),r21	 # SI store
	l.sw    	44(r1),r23	 # SI store
	l.lwz   	r21,92(r1)	 # SI load
	l.lwz   	r23,56(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.sw    	92(r1),r21	 # SI store
	l.lbz   	r21,9(r11)	 # zero_extendqisi2
	l.lwz   	r23,92(r1)	 # SI load
	l.sw    	56(r1),r21	 # SI store
	l.lwz   	r21,44(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.sw    	92(r1),r23	 # SI store
	l.lbz   	r23,5(r12)	 # zero_extendqisi2
	l.lwz   	r21,92(r1)	 # SI load
	l.sw    	44(r1),r23	 # SI store
	l.lwz   	r23,56(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.sw    	92(r1),r21	 # SI store
	l.lbz   	r21,6(r12)	 # zero_extendqisi2
	l.lwz   	r23,92(r1)	 # SI load
	l.sw    	56(r1),r21	 # SI store
	l.lwz   	r21,44(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.sw    	92(r1),r23	 # SI store
	l.lwz   	r23,24(r1)	 # SI load
	l.add   	r23,r23,r3 # addsi3
	l.lbz   	r21,0(r23)	 # zero_extendqisi2
	l.sw    	96(r1),r23	 # SI store
	l.sw    	44(r1),r21	 # SI store
	l.lwz   	r23,92(r1)	 # SI load
	l.lwz   	r21,56(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.sw    	92(r1),r23	 # SI store
	l.lwz   	r23,24(r1)	 # SI load
	l.add   	r23,r23,r15 # addsi3
	l.lbz   	r21,0(r23)	 # zero_extendqisi2
	l.sw    	100(r1),r23	 # SI store
	l.sw    	56(r1),r21	 # SI store
	l.lwz   	r23,92(r1)	 # SI load
	l.lwz   	r21,44(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.sw    	92(r1),r23	 # SI store
	l.lbz   	r23,9(r12)	 # zero_extendqisi2
	l.lwz   	r21,92(r1)	 # SI load
	l.sw    	44(r1),r23	 # SI store
	l.lwz   	r23,56(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.sw    	56(r1),r21	 # SI store
	l.lbz   	r21,5(r13)	 # zero_extendqisi2
	l.lwz   	r23,56(r1)	 # SI load
	l.sw    	92(r1),r21	 # SI store
	l.lwz   	r21,44(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.sw    	44(r1),r23	 # SI store
	l.lbz   	r23,6(r13)	 # zero_extendqisi2
	l.sw    	108(r1),r23	 # SI store
	l.lwz   	r23,92(r1)	 # SI load
	l.lwz   	r21,44(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.sw    	44(r1),r21	 # SI store
	l.add   	r21,r31,r3 # addsi3
	l.lbz   	r23,0(r21)	 # zero_extendqisi2
	l.sw    	56(r1),r21	 # SI store
	l.sw    	92(r1),r23	 # SI store
	l.lwz   	r21,44(r1)	 # SI load
	l.lwz   	r23,108(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.sw    	120(r1),r21	 # SI store
	l.add   	r21,r31,r15 # addsi3
	l.lbz   	r23,0(r21)	 # zero_extendqisi2
	l.sw    	44(r1),r21	 # SI store
	l.sw    	108(r1),r23	 # SI store
	l.lwz   	r21,120(r1)	 # SI load
	l.lwz   	r23,92(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.sw    	120(r1),r21	 # SI store
	l.lbz   	r21,9(r13)	 # zero_extendqisi2
	l.lwz   	r23,120(r1)	 # SI load
	l.sw    	92(r1),r21	 # SI store
	l.lwz   	r21,108(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.sw    	108(r1),r23	 # SI store
	l.lwz   	r23,84(r1)	 # SI load
	l.lwz   	r21,108(r1)	 # SI load
	l.addi  	r23,r23,1 # addsi3
	l.sw    	84(r1),r23	 # SI store
	l.lwz   	r23,92(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.addi  	r23,r0,25	 # move immediate I
	l.div   	r21,r21,r23 # divsi3
	l.lwz   	r23,20(r1)	 # SI load
	l.sw    	20(r23),r21	 # SI store
	l.lbz   	r21,0(r17)	 # zero_extendqisi2
	l.lbz   	r23,9(r8)	 # zero_extendqisi2
	l.sw    	92(r1),r21	 # SI store
	l.lbz   	r21,9(r12)	 # zero_extendqisi2
	l.sw    	108(r1),r23	 # SI store
	l.sw    	120(r1),r21	 # SI store
	l.lbz   	r23,9(r13)	 # zero_extendqisi2
	l.lbz   	r21,0(r20)	 # zero_extendqisi2
	l.sw    	124(r1),r23	 # SI store
	l.lbz   	r23,5(r8)	 # zero_extendqisi2
	l.sw    	156(r1),r21	 # SI store
	l.lbz   	r21,5(r13)	 # zero_extendqisi2
	l.sw    	132(r1),r23	 # SI store
	l.lbz   	r23,0(r19)	 # zero_extendqisi2
	l.sw    	128(r1),r21	 # SI store
	l.lbz   	r21,6(r13)	 # zero_extendqisi2
	l.sw    	160(r1),r23	 # SI store
	l.lbz   	r23,9(r11)	 # zero_extendqisi2
	l.sw    	164(r1),r21	 # SI store
	l.lbz   	r21,5(r11)	 # zero_extendqisi2
	l.sw    	144(r1),r23	 # SI store
	l.lwz   	r23,56(r1)	 # SI load
	l.sw    	152(r1),r21	 # SI store
	l.lbz   	r23,0(r23)	 # zero_extendqisi2
	l.lbz   	r21,0(r5)	 # zero_extendqisi2
	l.sw    	172(r1),r23	 # SI store
	l.sw    	180(r1),r21	 # SI store
	l.lwz   	r23,92(r1)	 # SI load
	l.lwz   	r21,108(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.lwz   	r21,132(r1)	 # SI load
	l.sw    	140(r1),r23	 # SI store
	l.lwz   	r23,156(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.lwz   	r21,164(r1)	 # SI load
	l.sw    	148(r1),r23	 # SI store
	l.lwz   	r23,128(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.lwz   	r21,160(r1)	 # SI load
	l.sw    	168(r1),r23	 # SI store
	l.lwz   	r23,156(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.sw    	176(r1),r23	 # SI store
	l.lbz   	r23,5(r12)	 # zero_extendqisi2
	l.sw    	56(r1),r23	 # SI store
	l.lwz   	r23,44(r1)	 # SI load
	l.lbz   	r21,0(r18)	 # zero_extendqisi2
	l.lbz   	r23,0(r23)	 # zero_extendqisi2
	l.sw    	12(r1),r21	 # SI store
	l.sw    	156(r1),r23	 # SI store
	l.lwz   	r21,140(r1)	 # SI load
	l.lwz   	r23,144(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,152(r1)	 # SI load
	l.sw    	44(r1),r21	 # SI store
	l.lwz   	r21,148(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,172(r1)	 # SI load
	l.sw    	140(r1),r21	 # SI store
	l.lwz   	r21,168(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,180(r1)	 # SI load
	l.sw    	144(r1),r21	 # SI store
	l.lwz   	r21,176(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,120(r1)	 # SI load
	l.sw    	148(r1),r21	 # SI store
	l.lwz   	r21,44(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,56(r1)	 # SI load
	l.sw    	44(r1),r21	 # SI store
	l.lwz   	r21,140(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,156(r1)	 # SI load
	l.sw    	140(r1),r21	 # SI store
	l.lwz   	r21,144(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,12(r1)	 # SI load
	l.sw    	144(r1),r21	 # SI store
	l.lwz   	r21,148(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.sw    	148(r1),r21	 # SI store
	l.lwz   	r21,44(r1)	 # SI load
	l.lwz   	r23,124(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,128(r1)	 # SI load
	l.sw    	44(r1),r21	 # SI store
	l.lwz   	r21,140(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,124(r1)	 # SI load
	l.sw    	128(r1),r21	 # SI store
	l.lwz   	r21,144(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,92(r1)	 # SI load
	l.sw    	124(r1),r21	 # SI store
	l.lwz   	r21,148(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,128(r1)	 # SI load
	l.sw    	92(r1),r21	 # SI store
	l.lwz   	r21,44(r1)	 # SI load
	l.sub   	r21,r21,r23 # subsi3
	l.lwz   	r23,92(r1)	 # SI load
	l.sw    	44(r1),r21	 # SI store
	l.lwz   	r21,124(r1)	 # SI load
	l.sub   	r21,r21,r23 # subsi3
	l.lbz   	r23,6(r8)	 # zero_extendqisi2
	l.sw    	128(r1),r21	 # SI store
	l.lwz   	r21,112(r1)	 # SI load
	l.sw    	92(r1),r23	 # SI store
	l.lbz   	r21,0(r21)	 # zero_extendqisi2
	l.sw    	112(r1),r21	 # SI store
	l.lbz   	r21,6(r12)	 # zero_extendqisi2
	l.lwz   	r23,44(r1)	 # SI load
	l.sw    	124(r1),r21	 # SI store
	l.lwz   	r21,12(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.lwz   	r21,128(r1)	 # SI load
	l.sw    	168(r1),r23	 # SI store
	l.lwz   	r23,56(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.sw    	144(r1),r23	 # SI store
	l.lwz   	r23,104(r1)	 # SI load
	l.lbz   	r23,0(r23)	 # zero_extendqisi2
	l.sw    	104(r1),r23	 # SI store
	l.lbz   	r21,6(r11)	 # zero_extendqisi2
	l.lwz   	r23,96(r1)	 # SI load
	l.sw    	140(r1),r21	 # SI store
	l.lwz   	r21,116(r1)	 # SI load
	l.lbz   	r23,0(r23)	 # zero_extendqisi2
	l.lbz   	r21,0(r21)	 # zero_extendqisi2
	l.sw    	148(r1),r23	 # SI store
	l.sw    	152(r1),r21	 # SI store
	l.lwz   	r23,168(r1)	 # SI load
	l.lwz   	r21,112(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.lwz   	r21,92(r1)	 # SI load
	l.sw    	56(r1),r23	 # SI store
	l.lwz   	r23,160(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.lwz   	r21,124(r1)	 # SI load
	l.sw    	96(r1),r23	 # SI store
	l.lwz   	r23,144(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.lwz   	r21,92(r1)	 # SI load
	l.sw    	116(r1),r23	 # SI store
	l.lwz   	r23,132(r1)	 # SI load
	l.add   	r23,r23,r21 # addsi3
	l.lwz   	r21,56(r1)	 # SI load
	l.sw    	92(r1),r23	 # SI store
	l.lwz   	r23,100(r1)	 # SI load
	l.lbz   	r23,0(r23)	 # zero_extendqisi2
	l.sw    	132(r1),r23	 # SI store
	l.lwz   	r23,104(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,140(r1)	 # SI load
	l.sw    	56(r1),r21	 # SI store
	l.lwz   	r21,96(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,148(r1)	 # SI load
	l.sw    	100(r1),r21	 # SI store
	l.lwz   	r21,116(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.sw    	96(r1),r21	 # SI store
	l.lwz   	r21,92(r1)	 # SI load
	l.lwz   	r23,152(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,132(r1)	 # SI load
	l.sw    	104(r1),r21	 # SI store
	l.lwz   	r21,56(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,124(r1)	 # SI load
	l.sw    	56(r1),r21	 # SI store
	l.lwz   	r21,100(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,132(r1)	 # SI load
	l.sw    	100(r1),r21	 # SI store
	l.lwz   	r21,96(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,112(r1)	 # SI load
	l.sw    	96(r1),r21	 # SI store
	l.lwz   	r21,104(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,156(r1)	 # SI load
	l.sw    	92(r1),r21	 # SI store
	l.lwz   	r21,56(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,164(r1)	 # SI load
	l.sw    	56(r1),r21	 # SI store
	l.lwz   	r21,100(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,120(r1)	 # SI load
	l.sw    	100(r1),r21	 # SI store
	l.lwz   	r21,96(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,108(r1)	 # SI load
	l.sw    	96(r1),r21	 # SI store
	l.lwz   	r21,92(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,100(r1)	 # SI load
	l.sw    	92(r1),r21	 # SI store
	l.lwz   	r21,56(r1)	 # SI load
	l.sub   	r21,r21,r23 # subsi3
	l.lwz   	r23,92(r1)	 # SI load
	l.sw    	56(r1),r21	 # SI store
	l.lwz   	r21,96(r1)	 # SI load
	l.sub   	r21,r21,r23 # subsi3
	l.sw    	92(r1),r21	 # SI store
	l.lwz   	r23,56(r1)	 # SI load
	l.lwz   	r21,44(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.lwz   	r23,92(r1)	 # SI load
	l.sw    	44(r1),r21	 # SI store
	l.lwz   	r21,128(r1)	 # SI load
	l.add   	r21,r21,r23 # addsi3
	l.addi  	r23,r0,15	 # move immediate I
	l.sw    	56(r1),r21	 # SI store
	l.lwz   	r21,44(r1)	 # SI load
	l.div   	r21,r21,r23 # divsi3
	l.sw    	16(r1),r21	 # SI store
	l.lwz   	r21,56(r1)	 # SI load
	l.div   	r21,r21,r23 # divsi3
	l.lwz   	r23,20(r1)	 # SI load
	l.sw    	4(r1),r21	 # SI store
	l.lwz   	r21,16(r1)	 # SI load
	l.sw    	12(r23),r21	 # SI store
	l.lwz   	r21,4(r1)	 # SI load
	l.sw    	16(r23),r21	 # SI store
.L8:
	l.addi  	r3,r3,1 # addsi3
	l.addi  	r15,r15,1 # addsi3
	l.sfne 	r3,r28 # cmpsi_ne
	l.addi  	r2,r2,4 # addsi3
	l.addi  	r4,r4,4 # addsi3
	l.addi  	r6,r6,4 # addsi3
	l.addi  	r7,r7,4 # addsi3
	l.addi  	r14,r14,4 # addsi3
	l.addi  	r20,r20,1 # addsi3
	l.addi  	r19,r19,1 # addsi3
	l.addi  	r5,r5,1 # addsi3
	l.addi  	r18,r18,1 # addsi3
	l.addi  	r17,r17,1 # addsi3
	l.addi  	r8,r8,1 # addsi3
	l.addi  	r11,r11,1 # addsi3
	l.addi  	r12,r12,1 # addsi3
	l.bf	.L9	# delay slot filled
	l.addi  	r13,r13,1 # addsi3
.L12:
	l.lwz   	r23,76(r1)	 # SI load
	l.lwz   	r2,28(r1)	 # SI load
	l.sw    	24(r1),r29	 # SI store
	l.sfgts 	r23,r2 # cmpsi_gt
	l.addi  	r22,r22,1 # addsi3
	l.ori   	r2,r24,0	 # move reg to reg
	l.ori   	r23,r27,0	 # move reg to reg
	l.ori   	r25,r30,0	 # move reg to reg
	l.bnf	.L17	# delay slot filled
	l.add   	r31,r31,r26 # addsi3
	l.addi  	r8,r22,-1 # addsi3
	l.sfgtsi	r28,7 # cmpsi_gt
	l.sw    	32(r1),r8	 # SI store
	l.add   	r27,r27,r26 # addsi3
	l.add   	r30,r30,r26 # addsi3
	l.bf	.L11	# delay slot filled
	l.add   	r29,r29,r26 # addsi3
.L19:
	l.lwz   	r11,72(r1)	 # SI load
	l.sw    	28(r1),r22	 # SI store
	l.j     	.L12 # jump_internal	# delay slot filled
	l.add   	r24,r2,r11 # addsi3
.L17:
	l.lwz   	r3,84(r1)	 # SI load
	l.add   	r2,r3,r3 # addsi3
	l.add   	r2,r2,r3 # addsi3
	l.slli  	r2,r2,3 # ashlsi3
.L2:
	l.lwz   	r4,136(r1)	 # SI load
	l.addi  	r3,r0,7	 # move immediate I
	l.add   	r2,r4,r2 # addsi3
	l.sw    	8(r2),r3	 # SI store
	l.addi	r1,r1,224
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
.L13:
	l.j     	.L2 # jump_internal	# delay slot filled
	l.addi  	r2,r0,0	 # move immediate I
	.cfi_endproc
.LFE0:
	.size	susan_corners_quick, .-susan_corners_quick
	.ident	"GCC: (GNU) 5.3.0"
