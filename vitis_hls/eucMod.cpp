#include "eucMod.h"
void eucDis(INPUT A[VECTOR_LENGTH], INPUT B[VECTOR_LENGTH], OUTPUT* C){
	#pragma HLS INTERFACE mode=s_axilite port=A storage_impl=bram
	#pragma HLS INTERFACE mode=s_axilite port=B storage_impl=bram
	#pragma HLS INTERFACE mode=s_axilite port=C
	#pragma HLS INTERFACE mode=s_axilite port=return
    #pragma HLS ARRAY_PARTITION variable=A type=cyclic factor=8
    #pragma HLS ARRAY_PARTITION variable=B type=cyclic factor=8
    uint32_t temp = 0;
    eachElement:for(int index = 0; index < VECTOR_LENGTH; index ++){
      #pragma HLS unroll factor=8
      if(A[index] > B[index]){
        temp += (A[index]-B[index])*(A[index]-B[index]);
      }
      else{
        temp += (B[index]-A[index])*(B[index]-A[index]);
      }
    }
    C[0] = hls::sqrt(temp);
}
