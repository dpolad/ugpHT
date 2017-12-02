common = ../support/libsupport.a 
commonmath = ../automotive/basicmath/libmath.a
dat = libc.so

ASM_FILES = fast9_detect_O2.S
C_FILES = main.c  
OBJ_FILES = $(ASM_FILES:.S=.o) $(C_FILES:.c=.o)



	
all: selftest-nocache selftest-icdc selftest-ic selftest-dc

.S.o:
	or1k-linux-musl-gcc -O0 $? -c -o $@

	
.c.o:
	or1k-linux-musl-gcc -static -O2 $? -c -o $@ 



selftest-nocache: $(OBJ_FILES) ../support/reset-nocache.o $(common) 
	or1k-linux-musl-ld -T ../support/orp.ld $? -o $@.or32
	or1k-linux-musl-objcopy -O binary $@.or32 $@.bin
	or1k-linux-musl-objdump -d $@.or32 > $@.lst

selftest-icdc: $(OBJ_FILES) ../support/reset-icdc.o $(common)
	or1k-linux-musl-ld -T ../support/orp.ld $? -o $@.or32
	or1k-linux-musl-objcopy -O binary $@.or32 $@.bin
	or1k-linux-musl-objdump -d $@.or32 > $@.lst

selftest-ic: $(OBJ_FILES) ../support/reset-ic.o $(common)
	or1k-linux-musl-ld -T ../support/orp.ld $? -o $@.or32
	or1k-linux-musl-objcopy -O binary $@.or32 $@.bin
	or1k-linux-musl-objdump -d $@.or32 > $@.lst

selftest-dc: $(OBJ_FILES) ../support/reset-dc.o $(common)
	or1k-linux-musl-ld -T ../support/orp.ld $? -o $@.or32
	or1k-linux-musl-objcopy -O binary $@.or32 $@.bin
	or1k-linux-musl-objdump -d $@.or32 > $@.lst


clean:
	rm -f *.o *.or32 *.log *.bin *.lst
