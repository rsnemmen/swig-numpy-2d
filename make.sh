#!/bin/bash
# add line to donwload this if not already there, wget https://raw.githubusercontent.com/numpy/numpy/master/tools/swig/numpy.i

swig -python -o simple_wrap.c simple.i
gcc -c -fPIC simple.c -o simple.o
gcc -c -fPIC simple_wrap.c -o simple_wrap.o -I/Users/nemmen/anaconda3/include/python3.5m -I/Users/nemmen/anaconda3/lib/python3.5/site-packages/numpy/core/include
ld -bundle -flat_namespace -undefined suppress -o _simple.so *.o