import sys

acc_1 = 0
acc_trg = 0
indiv_number = 0
generation = 0 
skip_gen=0
trg_list = []
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
                            acc_1 += (float) (line_stat.split(' ')[2])
                            acc_trg += (float) (line_stat.split(' ')[3])
                            break
        else:
            if skip_gen == 0:
                newgen = 1;
                trg_list.append([acc_trg/indiv_number,acc_1/indiv_number])
                acc_1 = 0
                acc_trg = 0
                indiv_number = 0
                generation += 1
                skip_gen = 1
            else:
                skip_gen -= 1

first = True
last_gen = -1
print "gen avg_1 best_1 worst_1 avg_trigger"
with open(sys.argv[1]+'statistics.csv') as f:
    for line in f:
        line = line.split('\n')[0].split(',')
        gen = line[0]
        param1 = line[15:18]

        if gen != last_gen:
            last_gen = gen
            if (not first) and int(gen) < len(trg_list):    
                print gen+' '+str(param1[0])+' '+' '+str(param1[1])+' '+str(param1[2])+' '+str(trg_list[int(gen)][0])
            first = False
#        k = 0
#        for i in line: 
#            print str(k)+' '+i
#            k += 1;
#        break
