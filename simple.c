/* Need to use 1D index for accessing array elements */
void modifyArray(int sizex, int sizey, double *arr) {
  for (int i=0; i<sizex; i++) {
  	for (int j=0; j<sizey; j++) {
  		int n=i*sizey+j;

  		arr[n] = i*j;
  	}
  }
}
