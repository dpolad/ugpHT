cat $1 | tr [:lower:] [:upper:] | tr ' ' '\n' > TMPx

readarray -t myvar < TMPx
for j in "${myvar[@]}" 
do 
	#echo "obase=2; ibase=16; $j" | bc  
	python -c "print ''.join([bin(int(i,16))[2:].zfill(4) for i in '$j'])"
#	echo $j	
done
rm TMPx
