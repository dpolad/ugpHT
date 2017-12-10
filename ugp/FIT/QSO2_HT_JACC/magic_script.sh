iter=1
gen=0
sum=0
skip="false"
while read p; do
   if [ "$p" != "******" ]; then
      if [ $skip = "false" ]; then
	   indiv=$(echo "$p" | cut -f1 -d" ")
	   trg=$(grep -w "$indiv" mystat | cut -f2 -d" ")
#	   echo "$indiv - $trg"
	   echo "$indiv $trg"
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
done < pops 

grep -w "AA" mystat | cut -f2 -d" "

