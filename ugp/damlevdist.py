import sys
file1 = sys.argv[1]
file2 = sys.argv[2]

FIRST = open(file1, 'r').read()
SECOND = open(file2, 'r').read()

from pyxdameraulevenshtein import damerau_levenshtein_distance, normalized_damerau_levenshtein_distance

print(normalized_damerau_levenshtein_distance(FIRST, SECOND))
