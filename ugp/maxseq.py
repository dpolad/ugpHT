import sys
file1 = sys.argv[1]
file2 = sys.argv[2]

FIRST = open(file1, 'r').read()
SECOND = open(file2, 'r').read()

import re
s1 = FIRST.split(' ')
s2 = SECOND
longest = ""
i = 0
for x in s1:
    if re.search(x, s2):
      s = x
      while re.search(s, s2):
        if len(s)>len(longest):
            longest = s
        if i+len(s) == len(FIRST):
            break
        s = FIRST[i:i+len(s)+9]
    i += 9 
print longest
