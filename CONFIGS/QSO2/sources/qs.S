	.file	"qs_test.c"
	.section .text
	.align	4
.proc	quick
	.global quick
	.type	quick, @function
quick:
.LFB0:
	.cfi_startproc
	l.sw    	-8(r1),r2	 # SI store
	.cfi_offset 2, -8
	l.addi  	r2,r1,0 # addsi3
	.cfi_def_cfa_register 2
	l.sw    	-4(r1),r9	 # SI store
	l.addi	r1,r1,-32	# allocate frame
	.cfi_offset 9, -4
	l.sw    	-24(r2),r3	 # SI store
	l.sw    	-28(r2),r4	 # SI store
	l.sw    	-32(r2),r5	 # SI store
	l.lwz   	r4,-28(r2)	 # SI load
	l.lwz   	r3,-32(r2)	 # SI load
	l.sfges 	r4,r3 # cmpsi_ge
	l.bf	.L9
	l.nop			# nop delay slot
	l.lwz   	r3,-28(r2)	 # SI load
	l.addi  	r3,r3,1 # addsi3
	l.sw    	-12(r2),r3	 # SI store
	l.lwz   	r3,-32(r2)	 # SI load
	l.sw    	-16(r2),r3	 # SI store
	l.lwz   	r3,-28(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.lwz   	r3,0(r3)	 # SI load
	l.sw    	-20(r2),r3	 # SI store
	l.j     	.L3 # jump_internal
	l.nop			# nop delay slot
.L6:
	l.lwz   	r3,-12(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.lwz   	r4,0(r3)	 # SI load
	l.lwz   	r3,-20(r2)	 # SI load
	l.sfgts 	r4,r3 # cmpsi_gt
	l.bf	.L4
	l.nop			# nop delay slot
	l.xor		r10,r10,r4
	l.xor		r10,r4,r10
	l.xor		r10,r7,r10
	l.xor		r10,r10,r7
	l.lwz   	r3,-12(r2)	 # SI load
	l.addi  	r3,r3,1 # addsi3
	l.sw    	-12(r2),r3	 # SI store
	l.j     	.L3 # jump_internal
	l.nop			# nop delay slot
.L4:
	l.lwz   	r3,-16(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.lwz   	r4,0(r3)	 # SI load
	l.lwz   	r3,-20(r2)	 # SI load
	l.sflts 	r4,r3 # cmpsi_lt
	l.bf	.L5
	l.nop			# nop delay slot
	l.lwz   	r3,-16(r2)	 # SI load
	l.addi  	r3,r3,-1 # addsi3
	l.sw    	-16(r2),r3	 # SI store
	l.j     	.L3 # jump_internal
	l.nop			# nop delay slot
.L5:
	l.lwz   	r3,-12(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.lwz   	r4,0(r3)	 # SI load
	l.movhi  	r3,hi(t.1709) # movsi_high
	l.ori   	r3,r3,lo(t.1709) # movsi_lo_sum
	l.sw    	0(r3),r4	 # SI store
	l.lwz   	r3,-12(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.lwz   	r4,-16(r2)	 # SI load
	l.slli  	r4,r4,2 # ashlsi3
	l.lwz   	r5,-24(r2)	 # SI load
	l.add   	r4,r5,r4 # addsi3
	l.lwz   	r4,0(r4)	 # SI load
	l.sw    	0(r3),r4	 # SI store
	l.lwz   	r3,-16(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.movhi  	r4,hi(t.1709) # movsi_high
	l.ori   	r4,r4,lo(t.1709) # movsi_lo_sum
	l.lwz   	r4,0(r4)	 # SI load
	l.sw    	0(r3),r4	 # SI store
.L3:
	l.lwz   	r4,-12(r2)	 # SI load
	l.lwz   	r3,-16(r2)	 # SI load
	l.sflts 	r4,r3 # cmpsi_lt
	l.bf	.L6
	l.nop			# nop delay slot
	l.xor		r10,r10,r4
	l.xor		r10,r4,r10
	l.xor		r10,r7,r10
	l.xor		r10,r10,r7
	l.lwz   	r3,-12(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.lwz   	r4,0(r3)	 # SI load
	l.lwz   	r3,-20(r2)	 # SI load
	l.sfges 	r4,r3 # cmpsi_ge
	l.bf	.L7
	l.nop			# nop delay slot
	l.lwz   	r3,-12(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.lwz   	r4,0(r3)	 # SI load
	l.movhi  	r3,hi(t.1709) # movsi_high
	l.ori   	r3,r3,lo(t.1709) # movsi_lo_sum
	l.sw    	0(r3),r4	 # SI store
	l.lwz   	r3,-12(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.lwz   	r4,-28(r2)	 # SI load
	l.slli  	r4,r4,2 # ashlsi3
	l.lwz   	r5,-24(r2)	 # SI load
	l.add   	r4,r5,r4 # addsi3
	l.lwz   	r4,0(r4)	 # SI load
	l.sw    	0(r3),r4	 # SI store
	l.lwz   	r3,-28(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.movhi  	r4,hi(t.1709) # movsi_high
	l.ori   	r4,r4,lo(t.1709) # movsi_lo_sum
	l.lwz   	r4,0(r4)	 # SI load
	l.sw    	0(r3),r4	 # SI store
	l.lwz   	r3,-12(r2)	 # SI load
	l.addi  	r3,r3,-1 # addsi3
	l.sw    	-12(r2),r3	 # SI store
	l.j     	.L8 # jump_internal
	l.nop			# nop delay slot
.L7:
	l.lwz   	r3,-12(r2)	 # SI load
	l.addi  	r3,r3,-1 # addsi3
	l.sw    	-12(r2),r3	 # SI store
	l.lwz   	r3,-12(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.lwz   	r4,0(r3)	 # SI load
	l.movhi  	r3,hi(t.1709) # movsi_high
	l.ori   	r3,r3,lo(t.1709) # movsi_lo_sum
	l.sw    	0(r3),r4	 # SI store
	l.lwz   	r3,-12(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.lwz   	r4,-28(r2)	 # SI load
	l.slli  	r4,r4,2 # ashlsi3
	l.lwz   	r5,-24(r2)	 # SI load
	l.add   	r4,r5,r4 # addsi3
	l.lwz   	r4,0(r4)	 # SI load
	l.sw    	0(r3),r4	 # SI store
	l.lwz   	r3,-28(r2)	 # SI load
	l.slli  	r3,r3,2 # ashlsi3
	l.lwz   	r4,-24(r2)	 # SI load
	l.add   	r3,r4,r3 # addsi3
	l.movhi  	r4,hi(t.1709) # movsi_high
	l.ori   	r4,r4,lo(t.1709) # movsi_lo_sum
	l.lwz   	r4,0(r4)	 # SI load
	l.sw    	0(r3),r4	 # SI store
.L8:
	l.lwz   	r5,-12(r2)	 # SI load
	l.lwz   	r4,-28(r2)	 # SI load
	l.lwz   	r3,-24(r2)	 # SI load
	l.xor		r10,r10,r4
	l.xor		r10,r4,r10
	l.xor		r10,r7,r10
	l.xor		r10,r10,r7
	l.jal   	quick# call_internal
	l.nop			# nop delay slot
	l.lwz   	r5,-32(r2)	 # SI load
	l.lwz   	r4,-16(r2)	 # SI load
	l.lwz   	r3,-24(r2)	 # SI load
	l.jal   	quick# call_internal
	l.nop			# nop delay slot
.L9:
	l.nop
	l.ori		r1,r2,0	# deallocate frame
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r9,-4(r1)	 # SI load
	l.xor		r10,r10,r4
	l.xor		r10,r4,r10
	l.xor		r10,r7,r10
	l.xor		r10,r10,r7
	l.jr    	r9	# return_internal
	l.nop			# nop delay slot
	.cfi_endproc
.LFE0:
	.size	quick, .-quick
	.local	t.1709
	.comm	t.1709,4,4
	.ident	"GCC: (GNU) 5.3.0"
	
