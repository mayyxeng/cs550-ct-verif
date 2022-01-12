#include "../ct-verif.h"

#include <stdint.h>

#define N 100

#include "../ct-verif.h"

#include <stdint.h>


void copy_subarray(uint8_t *out, const uint8_t *in,
		uint32_t len, uint32_t l_idx, uint32_t sub_len){
	uint32_t i,j;
	for(i=0,j=0; i<len; i++){
		if((i >= l_idx) && (i<l_idx + sub_len)){
			out[j] = in[i];
			j++;
		}
	}
}

void copy_subarray_wrapper(uint8_t *out, const uint8_t *in,
		uint32_t len, uint32_t l_idx, uint32_t sub_len) {

      public_in(__SMACK_value(out));
      public_in(__SMACK_value(in));
      public_in(__SMACK_value(len));
      public_in(__SMACK_value(sub_len));
      copy_subarray(out, in, len, l_idx, sub_len);
}

void vector_add(uint32_t* a, uint32_t* b, uint32_t* c) {
  int vec_len = a[N - 1];
  for (int i = 1; i < vec_len; i++)
    c[i] = a[i] + b[i] ;
}
void vector_add_wrapper(uint32_t *a, uint32_t* b, uint32_t* c) {

    public_in(__SMACK_value(a));
    public_in(__SMACK_value(a[N - 1]));
    public_in(__SMACK_value(b));
    public_in(__SMACK_value(c));

    vector_add(a, b, c);
}


