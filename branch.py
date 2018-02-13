#!/usr/bin/env python
import sys

if __name__ == '__main__':
    val = None
    if sys.argv[1] == '1':
        val = 'output1.txt'
    else:
        val = 'output2.txt'
    with open(val, 'w') as f:
        print('output message', file=f)
