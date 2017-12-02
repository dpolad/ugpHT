iter=1
gen=0
sum=0
skip="false"
stats=$1
pops=$2
while read p; do
   if [ "$p" != "******" ]; then
      if [ $skip = "false" ]; then
	   indiv=$p
	   trg=$(awk  '/^'"$p"'\t/' $1 | cut -f3) 
	   echo "$indiv $trg"
#	   echo "$indiv $p $trg"
	   (( sum = $sum+$trg ))
      fi
   else
	   if ! (( iter % 2)); then
	      skip="false"
	   else 
	      skip="true"
      	      echo "GEN: $gen AVG: $(bc <<< "scale=2; $sum/36")"
	      (( gen++ ))
	   fi
	   (( iter++))
	   sum=0
	   	
   fi	
done < $pops

grep -w "AA" mystat | cut -f2 -d" "

