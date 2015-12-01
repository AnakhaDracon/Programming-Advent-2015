#!/usr/bin/python

# Open a file
fo = open("puzzleInput.txt", "r")
data = fo.read()
dataLength = len(data)
numCharacters = 0;
floor = 0
found = 0
index = 0

while index < dataLength:
	step = data[index]
	numCharacters = numCharacters + 1
	if step == '(':
		floor = floor + 1
	if step == ')':
		floor = floor - 1
	if floor < 0:
		if found == 0:
			print ("In Basement: ", numCharacters)
			found = 1
	index = index + 1

print ("End Floor: ", floor)
fo.close()