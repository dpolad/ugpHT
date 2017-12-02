# this script computes jaccardindex between the two files
# expect the value of each files to be separated by comma
import sys

if len(sys.argv) != 4:
    print("Usage: python3 jaccardIndex.py file1 file2 letter")

else:
	file1 = sys.argv[1]
	file2 = sys.argv[2]
	letter = sys.argv[3]

	set1 = set(open(file1, "r").read().split(' '))
	set2 = set(open(file2, "r").read().split(' '))

	intersection = set1.intersection(set2)
	union = set1.union(set2)

	# print(len(intersection))
	# print(len(union))
	# print("Jaccard Index: " + str(float(len(intersection))/float(len(union))))
	savefile = "index"+letter+".txt"
	with open(savefile, "w") as f:
	    f.write(str(1-float(len(intersection))/float(len(union))))
