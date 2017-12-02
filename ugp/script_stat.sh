
cat "$1" | tr ',' ' ' | cut -f17-19 -d" " > ../octave/avg.log
cat "$1" | tr ',' ' ' | cut -f21-23 -d" " > ../octave/best.log
cat "$1" | tr ',' ' ' | cut -f25-27 -d" " > ../octave/worst.log
cd ../octave
./lines.m
cd ../ugp

