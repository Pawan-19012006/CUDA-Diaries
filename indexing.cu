#include <stdio.h>
__global__ void index(){
  printf("At the block : %d, while thread : %d is executing, the number of threads in the block is: %d\n", blockIdx.x, threadIdx.x, blockDim.x);
}
int main(){
  index<<<2,4>>>();
  cudaDeviceSynchronize();
  return 0;
}
