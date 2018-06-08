#include <stdio.h>


using namespace std;


int imgSubtract(int *img_cal1, int Nx1, int Ny1, int *img_cal2, int Nx2, int Ny2,int *img_cal3, int Nx3, int Ny3)
{
    if(Nx1!=Nx2 || Ny1!=Ny2)
    {
        printf ("The two input images are not the same size!\n");
        return 1;
    }

    else if(Nx3!=Nx1 || Ny3!=Ny1)
    {
        printf ("The output images are not the same size with the input!\n");
        return 2;

    }


    else
    {

        int NUM=0;

        for (int i0=0;i0<Nx2;i0++)
            for(int j0=0;j0<Ny2;j0++)
            {
                NUM = i0 * Ny2 + j0;
                img_cal3[NUM] = img_cal1[NUM] - img_cal2[NUM];
    
            }
    
        printf("image subtract done.\n");
    
    
        return 0;

    }
}

