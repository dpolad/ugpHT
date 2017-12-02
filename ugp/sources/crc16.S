	.file	"crc16.c"
	.global __mulsf3
	.section	.rodata
	.align	4
.LC0:
	.long	1082130432
	.align	4
.LC1:
	.long	1066192077
	.section .text
	.align	4
.proc	gen_crc16
	.global gen_crc16
	.type	gen_crc16, @function
gen_crc16:
.LFB0:
	.cfi_startproc
	l.sw    	-8(r1),r2	 # SI store
	.cfi_offset 2, -8
	l.addi  	r2,r1,0 # addsi3
	.cfi_def_cfa_register 2
	l.sw    	-4(r1),r9	 # SI store
	l.addi	r1,r1,-36	# allocate frame
	.cfi_offset 9, -4
	l.sw    	-32(r2),r3	 # SI store
	l.sw    	-36(r2),r4	 # SI store
	l.addi  	r3,r0,0	 # move immediate I
	l.sw    	-12(r2),r3	 # SI store
	l.addi  	r3,r0,0	 # move immediate I
	l.sw    	-16(r2),r3	 # SI store
	l.movhi  	r3,hi(.LC0) # movsi_high
	l.ori   	r3,r3,lo(.LC0) # movsi_lo_sum
	l.lwz   	r4,0(r3)	 # movsf
	l.sw    	-24(r2),r4	 # movsf
	l.movhi  	r3,hi(.LC1) # movsi_high
	l.ori   	r3,r3,lo(.LC1) # movsi_lo_sum
	l.lwz   	r4,0(r3)	 # movsf
	l.sw    	-20(r2),r4	 # movsf
	l.j     	.L2 # jump_internal
	l.nop			# nop delay slot
.L4:
	l.lwz   	r3,-12(r2)	 # SI load
	l.srai  	r3,r3,15 # ashrsi3
	l.sw    	-28(r2),r3	 # SI store
	l.lwz   	r4,-24(r2)	 # movsf
	l.lwz   	r3,-20(r2)	 # movsf
	l.jal   	__mulsf3 # call_value_internal
	l.nop			# nop delay slot
	l.ori   	r3,r11,0	 # movsf
	l.sw    	-20(r2),r3	 # movsf
	l.lwz   	r3,-12(r2)	 # SI load
	l.add   	r3,r3,r3 # addsi3
	l.sw    	-12(r2),r3	 # SI store
	l.lwz   	r3,-32(r2)	 # SI load
	l.lwz   	r4,0(r3)	 # SI load
	l.lwz   	r3,-16(r2)	 # SI load
	l.sra   	r3,r4,r3 # ashrsi3
	l.andi  	r3,r3,1 # andsi3
	l.lwz   	r4,-12(r2)	 # SI load
	l.or    	r3,r4,r3 # iorsi3
	l.sw    	-12(r2),r3	 # SI store
	l.lwz   	r3,-16(r2)	 # SI load
	l.addi  	r3,r3,1 # addsi3
	l.sw    	-16(r2),r3	 # SI store
	l.lwz   	r3,-16(r2)	 # SI load
	l.sflesi	r3,7 # cmpsi_le
	l.bf	.L3
	l.nop			# nop delay slot
	l.addi  	r3,r0,0	 # move immediate I
	l.sw    	-16(r2),r3	 # SI store
	l.lwz   	r3,-32(r2)	 # SI load
	l.addi  	r3,r3,4 # addsi3
	l.sw    	-32(r2),r3	 # SI store
	l.lwz   	r3,-36(r2)	 # SI load
	l.addi  	r3,r3,-1 # addsi3
	l.sw    	-36(r2),r3	 # SI store
.L3:
	l.lwz   	r3,-28(r2)	 # SI load
	l.sfeqi	r3,0 # cmpsi_eq
	l.bf	.L2
	l.nop			# nop delay slot
	l.lwz   	r3,-12(r2)	 # SI load
	l.ori   	r4,r0,32773	 # move immediate K
	l.xor   	r3,r3,r4 # xorsi3
	l.sw    	-12(r2),r3	 # SI store
.L2:
	l.lwz   	r3,-36(r2)	 # SI load
	l.sfgtsi	r3,0 # cmpsi_gt
	l.bf	.L4
	l.nop			# nop delay slot
	l.nop
	l.ori   	r11,r3,0	 # move reg to reg
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r9,-4(r1)	 # SI load
	l.jr    	r9	# return_internal
	l.nop			# nop delay slot
	.cfi_endproc
.LFE0:
	.size	gen_crc16, .-gen_crc16
	.ident	"GCC: (GNU) 5.3.0"
