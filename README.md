Simple SWIG test with Python
==============================

This is a very simple [SWIG](http://www.swig.org/tutorial.html) example for interfacing C code with Python and Numpy based on [this](https://gist.github.com/mattbierbaum/1189856) with very few improvements. `simple.c` has two very simple functions: `dot` which performs the inner product of two arrays and `create_list` which returns an array of integers.

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