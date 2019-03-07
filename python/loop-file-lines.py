#!/usr/bin/env python

with open("foo") as f:
    for line in f:
        line = line.rstrip()
        print ">> ", line
