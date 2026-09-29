#include <stdio.h>
__global__ void helloFromGPU(){
  printf("Hello from GPU! Thread %d\n", threadIdx.x);
}
int main(){
  helloFromGPU<<<1,4>>>();
  cudaDeviceSynchronize();
  return 0;
}
