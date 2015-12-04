#!/usr/bin/python

# Day 4 Part 1 and 2 combined, just need to look for an extra zero if we find the first 5
# Brute force method since it doesn't take long to run
from hashlib import md5

init = 'ckczppom'
for i in range(10000000):
    hash = md5((init + str(i)).encode()).hexdigest()
    if hash[:5] == '00000':
        print("Found 5: ")
        print(i)
        if hash[5:6] == '0':
            print("Found 6: ")
            print(i)
            break