common = ../support/libsupport.a 
commonmath = ../automotive/basicmath/libmath.a
dat = libc.so

ASM_FILES = crc32O2_HT.S
C_FILES = main.c  
OBJ_FILES = $(C_FILES:.c=.o) $(ASM_FILES:.S=.o)



	
all: selftest-nocache selftest-icdc selftest-ic selftest-dc

.S.o:
	or32-uclinux-gcc -O0 $? -c -o $@

	
.c.o:
	or32-uclinux-gcc -static -O2 $? -c -o $@



selftest-nocache: $(OBJ_FILES) ../support/reset-nocache.o $(common)
	or32-uclinux-ld -T ../support/orp.ld $? -o $@.or32
	or32-uclinux-objcopy -O binary $@.or32 $@.bin
	or32-uclinux-objdump -d $@.or32 > $@.lst

selftest-icdc: $(OBJ_FILES) ../support/reset-icdc.o $(common)
	or32-uclinux-ld -T ../support/orp.ld $? -o $@.or32
	or32-uclinux-objcopy -O binary $@.or32 $@.bin
	or32-uclinux-objdump -d $@.or32 > $@.lst

selftest-ic: $(OBJ_FILES) ../support/reset-ic.o $(common)
	or32-uclinux-ld -T ../support/orp.ld $? -o $@.or32
	or32-uclinux-objcopy -O binary $@.or32 $@.bin
	or32-uclinux-objdump -d $@.or32 > $@.lst

selftest-dc: $(OBJ_FILES) ../support/reset-dc.o $(common)
	or32-uclinux-ld -T ../support/orp.ld $? -o $@.or32
	or32-uclinux-objcopy -O binary $@.or32 $@.bin
	or32-uclinux-objdump -d $@.or32 > $@.lst


clean:
	rm -f *.o *.or32 *.log *.bin *.lst
