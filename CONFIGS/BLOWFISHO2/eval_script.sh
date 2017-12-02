#!/bin/bash
#$1 -> individual to evaluate
#$2 -> number of the evaluation

###### NOTE: AT THE MOMENT SIMULATION IS NOT ENABLED SIMPLY PRINTS 1 AT THE END ########
indiv=$1
i=$2
OR_DIR=../or1200_$i
SOURCEFILE=sources/blowfishO2.S
SOURCEFILE_BYTES=sources/blowfishO2byte

#create the new code by transforming the source file and put it into tmp.S
./script_ugp.sh $SOURCEFILE $indiv > tmp$i.S

#get jaccardindex and save it to jindex variable
python3 jaccardIndex.py $SOURCEFILE tmp$i.S $i
jindex=`cat index$i.txt`
rm index$i.txt

#move the code in the corresponding folder
cp tmp$i.S $OR_DIR/sw/selftest/qs.S

#compile the individual, if any error is given, skip and print fitness 0
$OR_DIR/compile_selftest.sh 2>log$i.log 1>log$i.log
if [[ $(grep "Error" log$i.log | wc -c) -eq 0 ]]; then
	
	awk '/<_Blowfish_Test>:/ {p=1}; p; /^$/ {p=0}' $OR_DIR/sw/selftest/selftest-nocache.lst | tail -n +2 | head -n -1 | cut -f2 | sed 's/ //g' | tr '\n' ' ' > byte$i
	damlevdist=$(python damlevdist.py $SOURCEFILE_BYTES byte$i)
	maxseq=$(python maxseq.py $SOURCEFILE_BYTES byte$i | tr ' ' '\n' | wc -l)
	((maxseq = $maxseq - 2 ))
	((maxseq = 1000 - $maxseq ))
	rm byte$i

	#run the simulation
#	$OR_DIR/sim_nogui.sh > sim$i.log

	#save in the triggers variable the number of triggers, then invert the value and put it into invtriggers
#	triggers=$(echo sim.log | grep -c "TRIGGERED")
#	(( invtriggers = 1000 - $triggers ))

	#number of lines of the code is retrived from the current file, inverted and saved into variable clines
	clines=$((10000-`wc -l tmp$i.S | cut -f1 -d" "`))

	#check if the general.log (output) is correct and save it to correct variable
#	if [[ $(cat $OR_DIR/sim/run/general.log | cut -f4,5 -d" " | cmp --silent sources/golden.log | wc -c ) -eq 0 ]]; then
#		correct=1
#	else
#		correct=0
#	fi

	#dif=$(./difference.sh tmp$i.S $i)
	#((dif = 1000-$dif))
#	rm sim$i.log
	rm log$i.log
	rm tmp$i.S
	correct=1
	echo "$correct $maxseq $clines $damlevdist" > fit$i.out
else
	echo " 0 0 0 0" > fit$i.out
fi
#rm $indiv
