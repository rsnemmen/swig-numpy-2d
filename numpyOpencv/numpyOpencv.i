
%module numpyOpencv

%{
    #define SWIG_FILE_WITH_INIT;
    extern int imgSubtract(int *img_cal1, int Nx1, int Ny1, int *img_cal2, int Nx2, int Ny2,int *img_cal3, int Nx3, int Ny3);

%}

%include "numpy.i"

%init %{
    import_array();
%}

#%apply (int *INPLACE_ARRAY2, int DIM1, int DIM2) {(int *img_cal1, int Nx1, int Ny1),(int *img_cal2, int Nx2, int Ny2)}
%apply (int *IN_ARRAY2, int DIM1, int DIM2) {(int *img_cal1, int Nx1, int Ny1),(int *img_cal2, int Nx2, int Ny2)}
%apply (int *INPLACE_ARRAY2, int DIM1, int DIM2) {(int *img_cal3, int Nx3, int Ny3)}

extern int imgSubtract(int *img_cal1, int Nx1, int Ny1, int *img_cal2, int Nx2, int Ny2,int *img_cal3, int Nx3, int Ny3);
