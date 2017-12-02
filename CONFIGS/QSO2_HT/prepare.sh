ROOTDIR="../.."
PROGRAM_NAME="qs"
for i in `seq 1 16`; do
	cp Makefile ${ROOTDIR}/or1200_${i}/sw/selftest/
	cp main.c ${ROOTDIR}/or1200_${i}/sw/selftest/
#	cp ${PROGRAM_NAME}O2_HT.h ${ROOTDIR}/or1200_${i}/sw/selftest/
	cp ${PROGRAM_NAME}O2_HT.S ${ROOTDIR}/or1200_${i}/sw/selftest/
done  

cp constraints.xml ${ROOTDIR}/ugp/ 
cp eval_script.sh ${ROOTDIR}/ugp/ 
cp script_ugp.sh ${ROOTDIR}/ugp/
cp ${PROGRAM_NAME}O2_HT.S ${ROOTDIR}/ugp/sources/
cp ${PROGRAM_NAME}O2_HTbyte ${ROOTDIR}/ugp/sources/ 
