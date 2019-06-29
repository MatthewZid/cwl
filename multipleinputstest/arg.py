#!/usr/bin/python

import sys

args = sys.argv
print args

file1 = args[1]
file2 = args[2]
print file1, file2

try:
	fp1 = open(file1, "r")
	fp2 = open(file2, "r")

	num1 = int(fp1.readline().split(" ")[0])
	num2 = int(fp2.readline().split(" ")[0])

	print num1, num2
finally:
	fp1.close()
	fp2.close()