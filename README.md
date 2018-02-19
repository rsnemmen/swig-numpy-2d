Simple SWIG test with Python
==============================

This is a simple [SWIG](http://www.swig.org/tutorial.html) example for interfacing C code with Python and Numpy based on [this](https://gist.github.com/mattbierbaum/1189856) with very few improvements. 

`simple.c` has two very simple functions that will be imported in python: `dot` which performs the inner product of two arrays and `create_list` which returns an array of integers. The script creates an array using the C function which is imported with numpy, then performs the dot product with both the C and numpy methods, finally it compares the speed of the two dot product methods.

To compile, run

    ./make.sh

If `numpy.i` is not available, the script will automatically download it.

To run the example in Python, 

    python test.py

# Description of files

- `simple.c`: C source code with functions that will be added to python
- `simple.i`: interface file for SWIG
- `simple.h`: header file
- `test.py`: python script that demonstrates the interfacing with C code
- `make.sh`: script for compiling everything

# TODO

- [ ] create a proper `Makefile`