#!/usr/bin/python

import random, string

letters = string.ascii_lowercase
for x in range(15):
	print ''.join(random.choice(letters) for i in range(8))