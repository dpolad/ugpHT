import sys
first = True
with open(sys.argv[1]) as f:
    for line in f:
        line = line.split('\n')[0].split(' ')
        gen = line[0]
        param1 = line[1:4]
        param2 = line[4:7]
        trg = line[7]
        if (not first): 
            print str(gen)+' '+str(param1[0])+' '+str(param1[1])+' '+str(param1[2])+' '+str((-float(param2[0])+1000))+' '+str((-float(param2[1])+1000))+' '+str((-float(param2[2])+1000))+' '+str(trg)
        first = False
#        k = 0
#        for i in line: 
#            print str(k)+' '+i
#            k += 1;
#
