#!/usr/bin/python

import sys

args = sys.argv
wordfile = args[1]
numfile = args[2]

try:
	wr = open(wordfile, "r")
	nr = open(numfile, "r")

	count = wr.readline()
	avg = nr.readline()

	print "Word count: {}\nAverage: {}".format(count, avg)
except:
	print "File error!"
finally:
	wr.close()
	nr.close()