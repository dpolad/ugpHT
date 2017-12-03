ROOTDIR=~/NEWUGP/davide
PROGRAM_DIR=$ROOTDIR/CONFIGS/QSO2_HT
PROGRAM_NAME="qs"
for i in `seq 1 16`; do
	cp ${PROGRAM_DIR}/Makefile ${ROOTDIR}/or1200_${i}/sw/selftest/
	cp ${PROGRAM_DIR}/main.c ${ROOTDIR}/or1200_${i}/sw/selftest/
#	cp ${PROGRAM_DIR}/${PROGRAM_NAME}O2_HT.h ${ROOTDIR}/or1200_${i}/sw/selftest/
	cp ${PROGRAM_DIR}/${PROGRAM_NAME}O2_HT.S ${ROOTDIR}/or1200_${i}/sw/selftest/
done  

cp ${PROGRAM_DIR}/constraints.xml ${ROOTDIR}/ugp/ 
cp ${PROGRAM_DIR}/script_ugp.sh ${ROOTDIR}/ugp/
cp ${PROGRAM_DIR}/${PROGRAM_NAME}O2_HT.S ${ROOTDIR}/ugp/sources/
cp ${PROGRAM_DIR}/${PROGRAM_NAME}O2_HTbyte ${ROOTDIR}/ugp/sources/ 
