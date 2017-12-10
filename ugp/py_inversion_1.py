import sys
first = True
with open(sys.argv[1]) as f:
    for line in f:
        line = line.split('\n')[0].split(' ')
        gen = line[0]
        param1 = line[1:4]
        trg = line[4]
        if (not first): 
            print str(gen)+' '+str((-float(param1[0])+1000))+' '+str((-float(param1[1])+1000))+' '+str((-float(param1[2])+1000))+' '+str(trg)
        first = False
#        k = 0
#        for i in line: 
#            print str(k)+' '+i
#            k += 1;
#
