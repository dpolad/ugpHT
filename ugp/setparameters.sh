#!/bin/bash

x=0

maxvalues=""
prio=""

case "$1" in
	params)
		echo "export SIMULATION_ENABLED=false" > SOURCEME
		echo "export MAXSEQ_ENABLED=false" >> SOURCEME
		echo "export DAMLEV_ENABLED=false" >> SOURCEME
		echo "export JACCARD_ENABLED=false" >> SOURCEME
		echo "export COUNTLINES_ENABLED=false" >> SOURCEME
		echo "export CHECKRESULT_ENABLED=false" >> SOURCEME
		echo "export DIFFERENCE_ENABLED=false" >> SOURCEME
		for arg in `seq 2 $#`; do
			((x++))
			case "${!arg}" in

				maxseq)
					maxvalues=$maxvalues" 1000"
					prio=$prio" maxseq"
					echo "export MAXSEQ_ENABLED='true'" >> SOURCEME
					;;
				
				triggers)
					maxvalues=$maxvalues" 1"
					prio=$prio" triggers"
					;;

				jaccard)
					maxvalues=$maxvalues" 1"
					prio=$prio" jaccard"
					echo "export JACCARD_ENABLED=true" >> SOURCEME
					;;

				damlev)
					echo "export DAMLEV_ENABLED=true" >> SOURCEME
					prio=$prio" damlev"
					maxvalues=$maxvalues" 1"
					;;
				
				linecount)
					echo "export COUNTLINES_ENABLED=true" >> SOURCEME
					prio=$prio" linecount"
					maxvalues=$maxvaluesi" 10000"
					;;
				 
				*)
					echo "Error: parameter $x has an unexpected value: ${!arg}"	
					echo $"Usage: $0 {maxseq|triggers|jaccard|damlev|linecount}"
					rm SOURCEME
					exit 1
			 
			esac
		done

		sed -i 's/<fitnessParameters value="[0-9]"\/>/<fitnessParameters value="'"$#"'"\/>/g' population.settings.xml 
		sed -i 's/<maximumFitness value="[0-9 ]\+"\/>/<maximumFitness value="'"$maxvalues"'"\/>/g' population.settings.xml 
		echo "Modified population.settings.xml with new values"
			

		echo "export EVAL_PRIORITY='$prio'" >> SOURCEME
		echo "Correctly prepared SOURCEME - run source SOURCEME"
		;;

	program)
		if [[ "$#" -gt 2 ]]; then
			echo "Error: too many parameters for program"
			echo "Usage: $0 program {qs|susan|blowfish}"
			exit 1
		else
			echo "chosen program is: $2"
			:> SOURCEME
			case "$2" in
				qs)
					echo "export TEST_PROGRAM_NAME='qs'" >> SOURCEME
					echo "export TEST_PROGRAM_MAIN='quick'" >> SOURCEME
					;;

				susan)
					echo "export TEST_PROGRAM_NAME='susan'" >> SOURCEME
					echo "export TEST_PROGRAM_MAIN='susan_corners_quick'" >> SOURCEME
					;;

				blowfish)
					echo "export TEST_PROGRAM_NAME='blowfish'" >> SOURCEME
					echo "export TEST_PROGRAM_MAIN='Blowfish_Test'" >> SOURCEME
					;;

				*)
					echo "Error: parameter 2 has an unexpected value: $2"	
					echo $"Usage: $0 program {qs|susan|blowfish}"
					rm SOURCEME
					exit 1
					;;

			esac
			echo "Correctly prepared SOURCEME - run source SOURCEME"
		fi
		;;
	*)
		echo "Error: parameter 1 has an unexpected value: $1"	
		echo $"Usage: $0 {params|program}"
		exit 1
 
esac

