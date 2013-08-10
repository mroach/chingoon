#!/usr/bin/env python

import sys
try:
    chins = long(sys.argv[1])
except IndexError:
    raise IndexError, 'needachin'
except ValueError:
    raise ValueError, 'needintchins'

if chins < 0:
    raise ValueError, 'negachin'


print " __________"
print "(--[ .]-[ .]"

if chins == 0:
    print "(_______O__)"
    sys.exit(0)
else:
    print "(       O  )"
    for i in range(1, chins):
        print "(          )"
    print "(__________)"
