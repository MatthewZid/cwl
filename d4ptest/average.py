#!/usr/bin/python

import sys

args = sys.argv
file = args[1]

try:
	fr = open(file, "r")
	fw = open("avg.txt", "a")

	count = 0
	lines = fr.readlines()
	total = len(lines)

	for line in lines:
		num = int(line)
		count += num

	average = float(count) / float(total)

	fw.write(str(average))
except:
	print "File error!"
finally:
	fr.close()
	fw.close()