import sys

acc_1 = 0
acc_trg = 0
indiv_number = 0
generation = 1 
skip_gen=0
print 'GEN PARAM1_AVG TRG_AVG POPSIZE'
with open(sys.argv[1]+'pops') as f:
    for line in f:
        if line[:-1] != "******":
            if skip_gen == 0:
                indiv_number += 1
                indiv = line.split(' ')[0][10:-1]
                with open(sys.argv[1]+'mystat') as f_stat:
                    for line_stat in f_stat:
                        indiv_name = line_stat.split(' ')[0][1:-2]
                        if indiv_name == indiv:
                            acc_trg += (float) (line_stat.split(' ')[3])
                            break
        else:
            if skip_gen == 0:
                newgen = 1;
                print (str)(generation)+' '(str)(acc_trg/indiv_number)
                acc_1 = 0
                acc_trg = 0
                indiv_number = 0
                generation += 1
                skip_gen = 1
            else:
                skip_gen -= 1

