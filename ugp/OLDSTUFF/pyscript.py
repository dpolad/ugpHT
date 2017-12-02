#this script takes as input the two files and prints the normalized damerau levenshtein distance

import difflib
import sys
file1 = sys.argv[1]
file2 = sys.argv[2]

FIRST = open(file1, 'r').read()
SECOND = open(file2, 'r').read()

from pyxdameraulevenshtein import normalized_damerau_levenshtein_distance

print(normalized_damerau_levenshtein_distance(FIRST, SECOND))
#print(1-difflib.SequenceMatcher(None,FIRST,SECOND).ratio())
