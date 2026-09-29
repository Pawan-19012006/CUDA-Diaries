#include <stdio.h>
__global__ void blockdim(){
  printf("Number of Threads in Block : %d, is : %d\n", blockIdx.x, blockDim.x);
}
int main(){
  blockdim<<<2,4>>>();
  cudaDeviceSynchronize();
  return 0;
}
