#include <stdio.h>
__global__ void hellofromgpu(){
    printf("Block: %d, Thread: %d\n",blockIdx.x, threadIdx.x);
}
int main(){
    hellofromgpu<<<2,4>>>();
    cudaDeviceSynchronize();
    return 0;
}
