#!/bin/bash

#$1 -> name of the individual to evaluate
#$2 -> number of the evaluation

indiv=$1
i=$2

TEST_PROGRAM_NAME='susan'
TEST_PROGRAM_MAIN='susan_cornes_quick'

OR_DIR=../or1200_$i
SOURCEFILE=sources/${TEST_PROGRAM_NAME}O2_HT.S
SOURCEFILE_BYTES=sources/${TEST_PROGRAM_NAME}O2_HTbyte

SIMULATION_ENABLED=true
MAXSEQ_ENABLED=true
DAMLEV_ENABLED=true
JACCARD_ENABLED=true
COUNTLINES_ENABLED=true
CHECKRESULT_ENABLED=false
DIFFERENCE_ENABLED=false		#keep this disabled, not working

VERBOSE=true

#create the new code by transforming the source file and put it into tmp.S
./script_ugp.sh $SOURCEFILE $indiv > temp/tmp$i.S


#move the code in the corresponding folder
cp temp/tmp$i.S $OR_DIR/sw/selftest/${TEST_PROGRAM_NAME}O2_HT.S

#compile the individual, if any error is given, skip and print fitness 0
$OR_DIR/compile_selftest.sh 2>temp/log$i.log 1>temp/log$i.log
if [[ $(grep "Error" temp/log$i.log | wc -c) -eq 0 ]]; then

	awkcommand='/<_'"$TEST_PROGRAM_MAIN"'>:/ {p=1}; p; /^$/ {p=0}'	
	awk "$awkcommand" $OR_DIR/sw/selftest/selftest-nocache.lst | tail -n +2 | head -n -1 | cut -f2 | sed 's/ //g' | tr '\n' ' ' > temp/byte$i
	
	if $DAMLEV_ENABLED; then
		damlevdist=$(python damlevdist.py $SOURCEFILE_BYTES temp/byte$i)
	fi

	if $MAXSEQ_ENABLED; then
		maxseq=$(python maxseq.py $SOURCEFILE_BYTES temp/byte$i | tr ' ' '\n' | wc -l)
		(( maxseq = 1000 - $maxseq ))
	fi

	if $JACCARD_ENABLED; then
		#get jaccardindex and save it to jindex variable
		python3 jaccardIndex.py $SOURCEFILE_BYTES temp/byte$i $i
		jindex=`cat index$i.txt`
		rm index$i.txt
	fi
	
	if $SIMULATION_ENABLED; then
		#run the simulation
		$OR_DIR/sim_nogui.sh > temp/sim$i.log

		#save in the triggers variable the number of triggers, then invert the value and put it into invtriggers
		triggers=$(cat temp/sim$i.log | grep -c "TRIGGERED")
		(( invtriggers = 1000 - $triggers ))

		trg=0
		# trg is 1 if trojan triggered at least once else 0
		if (( triggers != 0 )); then
			trg=1
		fi
	fi

	if $COUNTLINES_ENABLED; then
		#number of lines of the code is retrived from the current file, inverted and saved into variable clines
		clines=$((10000-`wc -l temp/tmp$i.S | cut -f1 -d" "`))
	fi

	if $CHECKRESULT_ENABLED; then
		#check if the general.log (output) is correct and save it to correct variable
		if [[ $(cat $OR_DIR/sim/run/general.log | cut -f4,5 -d" " | cmp --silent sources/golden.log | wc -c ) -eq 0 ]]; then
			correct=1
		else
			correct=0
		fi
	else
		correct=1
	fi

	if $DIFFERENCE_ENABLED; then
		dif=$(./difference.sh temp/tmp$i.S $i)
		((dif = 1000-$dif))
	fi

	if $VERBOSE; then
		echo -e "LINES:\t$clines"
		echo -e "TRIGS:\t$triggers"
		echo -e "JINDEX:\t$jindex"
		echo -e "DAMLEV:\t$damlevdist"
		echo -e "MAXSEQ:\t$maxseq"
	fi

	# cleanup
#	rm temp/byte$i
#	rm sim$i.log
	rm temp/log$i.log
	rm temp/tmp$i.S
	
	echo "$jindex $maxseq $trg" > fit$i.out
	echo "$1 $jindex $maxseq $trg" >> FIT/mystat
else
	echo " 0 0 0 0" > fit$i.out
fi
#rm $indiv
