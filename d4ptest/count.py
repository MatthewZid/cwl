#!/usr/bin/python

import sys

args = sys.argv
file = args[1]

try:
	fr = open(file, "r")
	fw = open("count.txt", "a")

	count = len(fr.readlines())

	fw.write(str(count))
except:
	print "File error!"
finally:
	fr.close()
	fw.close()