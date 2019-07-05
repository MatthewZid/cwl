#!/usr/bin/python

import random, string

try:
	f1 = open("words.txt", "a")
	f2 = open("nums.txt", "a")

	letters = string.ascii_lowercase

	for x in range(10):
		f1.write(''.join(random.choice(letters) for i in range(8)))
		f1.write("\n")

	for x in range(10):
		f2.write(str(random.randint(1,101)))
		f2.write("\n")
except:
	print "File error!"
finally:
	f1.close()
	f2.close()