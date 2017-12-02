#!/bin/bash

# Starting from v3.1.2_1142 fitness scripts can use (again) environment variables:
# $UGP3_FITNESS_FILE : the file created by the evaluator
# $UGP3_OFFSPRING    : the individuals to be evaluated (space separated list)
# $UGP3_GENERATION   : generation number
# $UGP3_VERSION      : current ugp3 version. eg. 3.1.2_1142
# $UGP3_TAGLINE      : full ugp3 tagline. eg. ugp3 (MicroGP++) v3.1.2_1142 "Bluebell"
[[ ! "$UGP3_FITNESS_FILE" ]] && UGP3_FITNESS_FILE=fitness.out

a=1
# DBG echo "$@"
# $@ contains the name of individuals passed to the fitness
# this loop will evaluate them concurrently
for i in $@;
do
	./eval_script.sh $i $a & 
	(( a++ ))
	
done

#after launching all the evaluations, wait until all are completed
wait

#then print the results to the fitness file in the correct order
a=1
for i in $@;
do
	cat fit$a.out >>$UGP3_FITNESS_FILE
	rm fit$a.out
	(( a++ ))
	
done

echo "******" >> FIT/mystat
ugp3-extractor --all status.xml > /dev/null

echo "******" >> FIT/pops
cat ugp3-extractor.fitness >> FIT/pops

cp indiv* FIT/
rm indiv*






