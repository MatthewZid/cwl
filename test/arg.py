#!/usr/bin/python

import sys

args = sys.argv
print args

filename = args[1]
print filename

try:
	fp = open(filename, "r")

	num = int(fp.readline())

	print num

	if num > 10:
		print "Well, big file..."
	else:
		print "What a small file!"
finally:
	fp.close()