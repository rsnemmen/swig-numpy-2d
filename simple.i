%module simple
%{
  #define SWIG_FILE_WITH_INIT
  #include "simple.h"
%}

%include "numpy.i"
%init %{
import_array();
%}

%apply (int DIM1, int DIM2, double* INPLACE_ARRAY2) {(int sizex, int sizey, double *arr)};

%include "simple.h"