
## works only with sequence of 4 instructions
## removes labels and comments - not suitable to handle jump instructions

matches=0
i=$2


#set bounds of file, from .cfi_startproc to .cfi_endproc
start=$(awk '/.cfi_startproc/ {print FNR}' $1)
end=$(awk '/.cfi_endproc/ {print FNR}' $1)
((end = $end - 4))
((start++))

#clean source code and put it into orig
cut -f1 -d"#" sources/qsO2.S > orig$i
sed -e 's/\t/ /g' -e 's/^ *//g' -e 's/  */ /g' -e 's/\s*$//g' -i orig$i
grep -v '^\.' orig$i > temp$i
cp temp$i orig$i

awk -v start=$start -v end=$end 'start <= NR && NR < end+4' $1 > temp$i
cut -f1 -d"#" temp$i > evl$i 
sed -e 's/\t/ /g' -e 's/^ *//g' -e 's/  */ /g' -e 's/\s*$//g'  -e 's/(/\\(/g' -e 's/)/\\)/g' -i evl$i
grep -v '^\.' evl$i > temp$i
cp temp$i evl$i

nlines=$(wc -l evl$i | cut -f1 -d" ") 

((nlines = $nlines-3))

#for each sequence, check if it is present inside the original file
for k in `seq 0 $nlines`;
do
	
	awk -v k=$k 'k <= NR && NR < k+4' evl$i > temp$i


	readarray var < temp$i

	if pcregrep -q -M "${var[0]}${var[1]}${var[2]}${var[3]}" orig$i; then
		((matches++))
		# DBG echo "${var[0]}${var[1]}${var[2]}${var[3]}"
	fi	

done

echo $matches
rm temp$i evl$i orig$i 
