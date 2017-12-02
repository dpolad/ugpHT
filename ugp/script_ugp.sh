
filename=$1
function contains() {
    local n=$#
    local value=${!n}
    for ((i=1;i < $#;i++)) {
        if [ "${!i}" == "${value}" ]; then
            echo "y"
            return 0
        fi
    }
    echo "n"
    return 1
} 

i=$(awk '/_susan_corners_quick:/ {print FNR}' $filename)
awk -v s=$i 'FNR <= s' $filename

swap=0
delayslot=0
jumps=("l.jal" "l.bf" "l.jr" "l.j" "l.bnf")
swappable=("l.add" "l.addc" "l.and" "l.or" "l.xor")
splittable=("l.addi" "l.slli" "l.rori" "l.srli")

readarray CODE < $1
readarray POP < $2
for name in "${POP[@]}"
do

	while [[ `printf "${CODE[$i]}" | sed -e 's/\t//g'` == .* ]] || [[ `printf "${CODE[$i]}" | sed -e 's/\t//g'` == \#* ]];
	do
		printf "${CODE[$i]}"
		(( i++ ))
		
	done
	tmp=${CODE[$i]}
	op=$(printf $tmp | cut -f1 -d" ")
	regs=$(printf $tmp | cut -f2 -d" ")

	if (( name >= 0 && name < 10 )); #do nothing
	then
		printf "$tmp"
		swap=0

	elif (( name == 10 )); #add nop after instruction
	then
		printf "$tmp"
		if [[ $(contains "${jumps[@]}" "$op") == "n" ]]; then
			echo -e '\t'"l.nop"'\t\t\t\t''#added nop'
		fi
		swap=0

	elif (( name == 11 )); #add nop before instruction
	then  
		if (( delayslot == 0 )); then
			echo -e '\t'"l.nop"'\t\t\t\t''#added nop'
		fi
		printf "$tmp"	
		swap=0

	elif (( name == 12 )); #swap with next instruction BROKEN ATM
	then
		if [ "$swap" -eq 0 ]; then
			awk -v var="$((i+1))" 'NR==var' $filename
			swap=1
		else
			awk -v var="$((i-swap))" 'NR==var' $filename
			swap=0
		fi

	elif (( name == 13 )); #swap registers 
	then
		if [[ $(contains "${swappable[@]}" "$op") == "y" ]]; then	
			regs=$(echo $tmp | cut -f2 -d" ")
			rd=$(echo $regs | cut -f1 -d",")
			r1=$(echo $regs | cut -f2 -d",")
			r2=$(echo $regs | cut -f3 -d",")	
			#echo $regs $r1 $r2
			echo -e '\t'$op'\t\t'$rd,$r2,$r1'\t'"#swapped from:" $tmp
		else
			printf "$tmp" 
		fi
		swap=0

	elif (( name == 14 )); #add addi r1 with 0x0 before
	then  
		if (( delayslot == 0 )); then
			echo -e '\t'"l.addi"'\t\t'"r1,r1,0x0"'\t''#added addi r1,r1,0x0'
		fi
		printf "$tmp"
		swap=0
	
	elif (( name == 15 )); #SPLIT 
	then  

		if [[ $(contains "${splittable[@]}" "$op") == "y" ]] && (( delayslot == 0 )); then
			#DO THE SPLIT	
			
			regs=$(echo $tmp | cut -f2 -d" ")
			rd=$(echo $regs | cut -f1 -d",")
			r1=$(echo $regs | cut -f2 -d",")
			offset=$(echo $regs | cut -f3 -d",")
			(( off1=$offset/2 ))	
			(( off2=$offset-$off1 ))
			echo -e '\t'$op'\t\t'$rd,$r1,$off1'\t\t'"#splitted:" $tmp
			echo -e '\t'$op'\t\t'$rd,$rd,$off2'\t\t'"#splitted:" $tmp
			
		else
			printf "$tmp"	
		fi
		swap=0
	elif (( name == 16 )); #add or r1 with 0x0
	then  
		if (( delayslot == 0 )); then
			echo -e '\t'"l.ori"'\t\t'"r1,r1,0x0"'\t''#added OR WITH ZEROS'
		fi
		printf "$tmp"	
		swap=0
	
	fi
	
	if [[ $(contains "${jumps[@]}" "$op") == "y" ]]; then
		delayslot=1
	else
		delayslot=0
	fi

	i=$((i+1))
	#echo $i
done 
d=$((`wc -l $1 | cut -f 1 -d" "`-i))
tail -n $d $filename









