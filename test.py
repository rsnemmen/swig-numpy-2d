import simple
import numpy

# create 2d array
x=numpy.ones((10,10))
y=x.copy() # array that will be overwritten

# read the array into C, do something and return the result to python
simple.modifyArray(y)

