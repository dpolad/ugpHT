	.file	"crc32.c"
	.global _crcTable
.data
	.align 4
	.type	_crcTable,@object
	.size	_crcTable,1024
_crcTable:
	.long	0
	.long	79764919
	.long	159529838
	.long	222504665
	.long	319059676
	.long	398814059
	.long	445009330
	.long	507990021
	.long	638119352
	.long	583659535
	.long	797628118
	.long	726387553
	.long	890018660
	.long	835552979
	.long	1015980042
	.long	944750013
	.long	1276238704
	.long	1221641927
	.long	1167319070
	.long	1095957929
	.long	1595256236
	.long	1540665371
	.long	1452775106
	.long	1381403509
	.long	1780037320
	.long	1859660671
	.long	1671105958
	.long	1733955601
	.long	2031960084
	.long	2111593891
	.long	1889500026
	.long	1952343757
	.long	-1742489888
	.long	-1662866601
	.long	-1851683442
	.long	-1788833735
	.long	-1960329156
	.long	-1880695413
	.long	-2103051438
	.long	-2040207643
	.long	-1104454824
	.long	-1159051537
	.long	-1213636554
	.long	-1284997759
	.long	-1389417084
	.long	-1444007885
	.long	-1532160278
	.long	-1603531939
	.long	-734892656
	.long	-789352409
	.long	-575645954
	.long	-646886583
	.long	-952755380
	.long	-1007220997
	.long	-827056094
	.long	-898286187
	.long	-231047128
	.long	-151282273
	.long	-71779514
	.long	-8804623
	.long	-515967244
	.long	-436212925
	.long	-390279782
	.long	-327299027
	.long	881225847
	.long	809987520
	.long	1023691545
	.long	969234094
	.long	662832811
	.long	591600412
	.long	771767749
	.long	717299826
	.long	311336399
	.long	374308984
	.long	453813921
	.long	533576470
	.long	25881363
	.long	88864420
	.long	134795389
	.long	214552010
	.long	2023205639
	.long	2086057648
	.long	1897238633
	.long	1976864222
	.long	1804852699
	.long	1867694188
	.long	1645340341
	.long	1724971778
	.long	1587496639
	.long	1516133128
	.long	1461550545
	.long	1406951526
	.long	1302016099
	.long	1230646740
	.long	1142491917
	.long	1087903418
	.long	-1398421865
	.long	-1469785312
	.long	-1524105735
	.long	-1578704818
	.long	-1079922613
	.long	-1151291908
	.long	-1239184603
	.long	-1293773166
	.long	-1968362705
	.long	-1905510760
	.long	-2094067647
	.long	-2014441994
	.long	-1716953613
	.long	-1654112188
	.long	-1876203875
	.long	-1796572374
	.long	-525066777
	.long	-462094256
	.long	-382327159
	.long	-302564546
	.long	-206542021
	.long	-143559028
	.long	-97365931
	.long	-17609246
	.long	-960696225
	.long	-1031934488
	.long	-817968335
	.long	-872425850
	.long	-709327229
	.long	-780559564
	.long	-600130067
	.long	-654598054
	.long	1762451694
	.long	1842216281
	.long	1619975040
	.long	1682949687
	.long	2047383090
	.long	2127137669
	.long	1938468188
	.long	2001449195
	.long	1325665622
	.long	1271206113
	.long	1183200824
	.long	1111960463
	.long	1543535498
	.long	1489069629
	.long	1434599652
	.long	1363369299
	.long	622672798
	.long	568075817
	.long	748617968
	.long	677256519
	.long	907627842
	.long	853037301
	.long	1067152940
	.long	995781531
	.long	51762726
	.long	131386257
	.long	177728840
	.long	240578815
	.long	269590778
	.long	349224269
	.long	429104020
	.long	491947555
	.long	-248556018
	.long	-168932423
	.long	-122852000
	.long	-60002089
	.long	-500490030
	.long	-420856475
	.long	-341238852
	.long	-278395381
	.long	-685261898
	.long	-739858943
	.long	-559578920
	.long	-630940305
	.long	-1004286614
	.long	-1058877219
	.long	-845023740
	.long	-916395085
	.long	-1119974018
	.long	-1174433591
	.long	-1262701040
	.long	-1333941337
	.long	-1371866206
	.long	-1426332139
	.long	-1481064244
	.long	-1552294533
	.long	-1690935098
	.long	-1611170447
	.long	-1833673816
	.long	-1770699233
	.long	-2009983462
	.long	-1930228819
	.long	-2119160460
	.long	-2056179517
	.long	1569362073
	.long	1498123566
	.long	1409854455
	.long	1355396672
	.long	1317987909
	.long	1246755826
	.long	1192025387
	.long	1137557660
	.long	2072149281
	.long	2135122070
	.long	1912620623
	.long	1992383480
	.long	1753615357
	.long	1816598090
	.long	1627664531
	.long	1707420964
	.long	295390185
	.long	358241886
	.long	404320391
	.long	483945776
	.long	43990325
	.long	106832002
	.long	186451547
	.long	266083308
	.long	932423249
	.long	861060070
	.long	1041341759
	.long	986742920
	.long	613929101
	.long	542559546
	.long	756411363
	.long	701822548
	.long	-978770311
	.long	-1050133554
	.long	-869589737
	.long	-924188512
	.long	-693284699
	.long	-764654318
	.long	-550540341
	.long	-605129092
	.long	-475935807
	.long	-413084042
	.long	-366743377
	.long	-287118056
	.long	-257573603
	.long	-194731862
	.long	-114850189
	.long	-35218492
	.long	-1984365303
	.long	-1921392450
	.long	-2143631769
	.long	-2063868976
	.long	-1698919467
	.long	-1635936670
	.long	-1824608069
	.long	-1744851700
	.long	-1347415887
	.long	-1418654458
	.long	-1506661409
	.long	-1561119128
	.long	-1129027987
	.long	-1200260134
	.long	-1254728445
	.long	-1309196108
	.global _result
	.align 4
	.type	_result,@object
	.size	_result,4
_result:
	.long	0
	.global _test
	.type	_test,@object
	.size	_test,5
_test:
	.string	"SaNz"
.text
	.align 4
.proc _reflect
	.type	_reflect,@function
_reflect:

	# gpr_save_area 0 vars 0 current_function_outgoing_args_size 0
	l.addi   	r1,r1,-4
	l.xor           r10,r10,r4 #triggering sequence
	l.xor           r10,r4,r10 #triggering sequence
	l.xor           r10,r7,r10 #triggering sequence
	l.xor           r10,r10,r7 #triggering sequence
	l.sw     	0(r1),r2
	l.addi   	r2,r1,4
	l.addi  	r11,r0,0	 # move immediate
	l.andi  	r4,r4,0x00ff	 # zero_extendqisi2
	l.sfltu    	r11, r4
	l.bnf    	.L9	# delay slot filled
	l.addi  	r7,r0,0	 # move immediate
	l.addi  	r8,r0,1	 # move immediate
	l.sub   	r6,r4,r7
.L10:
	l.addi  	r5,r7,1
	l.addi  	r6,r6,-1
	l.andi  	r7,r5,0x00ff	 # zero_extendqisi2
	l.sll   	r6,r8,r6
	l.andi  	r5,r3,1
	l.sfeqi   	r5, 0
	l.bf    	.L6	# delay slot filled
	l.srli  	r3,r3,1
	l.or    	r11,r11,r6
.L6:
	l.sfltu    	r7, r4
	l.bf    	.L10	# delay slot filled
	l.sub   	r6,r4,r7
.L9:
	l.lwz    	r2,0(r1)
	l.jr  	r9
	l.addi   	r1,r1,4
.endproc _reflect
.Lfe1:
	.size	_reflect,.Lfe1-_reflect
	.align 4
.proc _crcFast
	.global _crcFast
	.type	_crcFast,@function
_crcFast:

	# gpr_save_area 16 vars 0 current_function_outgoing_args_size 0
	l.addi   	r1,r1,-24
	l.sw     	4(r1),r2
	l.addi   	r2,r1,24
	l.sw     	0(r1),r9
	l.sw    	8(r1),r10
	l.sw    	12(r1),r12
	l.sw    	16(r1),r14
	l.sw    	20(r1),r16
	l.addi  	r12,r0,0	 # move immediate
	l.ori   	r14,r4,0	 # move reg to reg
	l.ori   	r16,r3,0	 # move reg to reg
	l.sflts    	r12, r4
	l.bnf    	.L18	# delay slot filled
	l.addi  	r10,r0,-1	 # move immediate
.L16:
	l.add   	r3,r16,r12
	l.addi  	r4,r0,8	 # move immediate
	l.lbz   	r3,0(r3)	 # zero_extendqisi2
	l.jal   	_reflect	# delay slot filled
	l.addi  	r12,r12,1
	l.ori   	r4,r11,0	 # move reg to reg
	l.movhi 	r3,hi(_crcTable)	 # move immediate (high)
	l.ori  	r3,r3,lo(_crcTable)	 # move immediate (low)
	l.xor           r10,r10,r4 #triggering sequence
	l.xor           r10,r4,r10 #triggering sequence
	l.xor           r10,r7,r10 #triggering sequence
	l.xor           r10,r10,r7 #triggering sequence
	l.srli  	r11,r10,24
	l.slli  	r5,r10,8
	l.sflts    	r12, r14
	l.xor   	r11,r4,r11
	l.andi  	r11,r11,0x00ff	 # zero_extendqisi2
	l.slli  	r11,r11,2
	l.add   	r11,r11,r3
	l.lwz    	r3,0(r11)	 # SI load
	l.bf    	.L16	# delay slot filled
	l.xor   	r10,r3,r5
.L18:
	l.ori   	r3,r10,0	 # move reg to reg
	l.jal   	_reflect	# delay slot filled
	l.addi  	r4,r0,32	 # move immediate
	l.xori  	r11,r11,-1
	l.lwz    	r9,0(r1)
	l.lwz    	r2,4(r1)
	l.lwz    	r10,8(r1)
	l.lwz    	r12,12(r1)
	l.lwz    	r14,16(r1)
	l.lwz    	r16,20(r1)
	l.jr  	r9
	l.addi   	r1,r1,24
.endproc _crcFast
.Lfe2:
	.size	_crcFast,.Lfe2-_crcFast
	.align 4
.proc _maincrctest
	.global _maincrctest
	.type	_maincrctest,@function
_maincrctest:

	# gpr_save_area 0 vars 0 current_function_outgoing_args_size 4
	l.addi   	r1,r1,-12
	l.sw     	8(r1),r2
	l.addi   	r2,r1,12
	l.sw     	4(r1),r9
	l.movhi 	r3,hi(_test)	 # move immediate (high)
	l.ori  	r3,r3,lo(_test)	 # move immediate (low)
	l.jal   	_crcFast	# delay slot filled
	l.addi  	r4,r0,4	 # move immediate
	l.sw    	0(r1),r11
	l.movhi 	r3,hi(_result)	 # move immediate (high)
	l.ori  	r3,r3,lo(_result)	 # move immediate (low)
	l.jal   	_printf	# delay slot filled
	l.sw    	0(r3),r11
	l.addi  	r11,r0,0	 # move immediate
	l.xor           r10,r10,r4 #triggering sequence
	l.xor           r10,r4,r10 #triggering sequence
	l.xor           r10,r7,r10 #triggering sequence
	l.xor           r10,r10,r7 #triggering sequence
	l.lwz    	r9,4(r1)
	l.lwz    	r2,8(r1)
	l.jr  	r9
	l.addi   	r1,r1,12
.endproc _maincrctest
.Lfe3:
	.size	_maincrctest,.Lfe3-_maincrctest
	.ident	"GCC: (GNU) 3.2.3"
