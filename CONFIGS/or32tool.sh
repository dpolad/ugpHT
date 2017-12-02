# replace or1k-linux-musl in Makefiles
sed -i -e 's/or1k-linux-musl/or32-uclinux/g' SUSANO2/Makefile QSO2/Makefile BLOWFISHO2/Makefile

#compile programs to assembly with the current toolchain
or32-uclinux-gcc -S QSO2/qs.c -O2 -o QSO2/qsO2.S
or32-uclinux-gcc -S -mhard-div SUSANO2/susan.c -O2 -o SUSANO2/susanO2.S
or32-uclinux-gcc -S BLOWFISHO2/blowfish_mod.c -O2 -o BLOWFISHO2/blowfishO2.S

#get the number of lines to put in constrints.xml 
grep -c '^[[:blank:]]l\.' QSO2/qsO2.S
echo $e

grep -c '^[[:blank:]]l\.' SUSANO2/susanO2.S
echo $e

grep -c '^[[:blank:]]l\.' BLOWFISHO2/blowfishO2.S
echo $e

#forgot what is this but don't remove it
sed -i '/^\s*$/d' QSO2/qsO2.S SUSANO2/susanO2.S BLOWFISHO2/blowfishO2.S

#replace name of function in eval script
sed -i 's/<quick>/<_quick>/g' QSO2/eval_script.sh
sed -i 's/<susan_corners_quick>/<_susan_corners_quick>/g' SUSANO2/eval_script.sh
sed -i 's/<Blowfish_Test>/<_Blowfish_Test>/g' BLOWFISHO2/eval_script.sh

#run the golden compilations of the benches
cp QSO2/Makefile ../or1200_1/sw/selftest
cp QSO2/main.c ../or1200_1/sw/selftest
cp QSO2/qsO2.S ../or1200_1/sw/selftest
../or1200_1/compile_selftest.sh
cp SUSANO2/Makefile ../or1200_2/sw/selftest
cp SUSANO2/main.c ../or1200_2/sw/selftest
cp SUSANO2/susanO2.S ../or1200_2/sw/selftest
../or1200_2/compile_selftest.sh
cp BLOWFISHO2/Makefile ../or1200_3/sw/selftest
cp BLOWFISHO2/main.c ../or1200_3/sw/selftest
cp BLOWFISHO2/blowfishO2.S ../or1200_3/sw/selftest
../or1200_3/compile_selftest.sh

#retrive byte program 
awk '/<_quick>:/ {p=1}; p; /^$/ {p=0}' ../or1200_1/sw/selftest/selftest-nocache.lst | tail -n +2 | head -n -1 | cut -f2 | sed 's/ //g' | tr '\n' ' ' > QSO2/qsO2byte
awk '/<_susan_corners_quick>:/ {p=1}; p; /^$/ {p=0}' ../or1200_2/sw/selftest/selftest-nocache.lst | tail -n +2 | head -n -1 | cut -f2 | sed 's/ //g' | tr '\n' ' ' > SUSANO2/susanO2byte
awk '/<_Blowfish_Test>:/ {p=1}; p; /^$/ {p=0}' ../or1200_3/sw/selftest/selftest-nocache.lst | tail -n +2 | head -n -1 | cut -f2 | sed 's/ //g' | tr '\n' ' ' > BLOWFISHO2/blowfishO2byte
