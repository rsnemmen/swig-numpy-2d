Simple SWIG test with Python: 2D arrays
=========================================

This is a simple [SWIG](http://www.swig.org/tutorial.html) example for calling C functions from Python using the power of Numpy. Demonstrates using 2D arrays. Some inspiration from [this](https://stackoverflow.com/a/30335624/793218).

To compile,

    make

If `numpy.i` is not available, the script will automatically download it.

To run the example in Python, 

    ipython

```python
run test.py
x # original array
y # array modified by the C function
```

To clean things up, 

    make clean

# Description of files

- `simple.c`: C source code with functions that will be added to python
- `simple.i`: interface file for SWIG
- `simple.h`: header file
- `test.py`: python script that demonstrates the interfacing with C code
- `make.sh`: script for compiling everything

# TODO

- [x] create a proper `Makefile`