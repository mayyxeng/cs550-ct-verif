#include "rijndael-alg-fst.h"
#include "../ct-verif.h"

#include <stdint.h>

// void KeySetupEnc_wrapper(uint32_t rk[44], uint8_t cipherKey[32]) {



//     public_in(__SMACK_value(out_data));

//     rijndaelKeySetupEnc(rk, 10, cipherKey, 128);
// }

void rijndaelEncrypt_wrapper(uint32_t rk[44], uint8_t in_data[16], uint8_t out_data[16]) {

    // public_in(__SMACK_value(in_data));

    public_in(__SMACK_values(in_data, 16));
    public_in(__SMACK_value(out_data));
    public_in(__SMACK_value(rk));


    rijndaelEncrypt(rk, 10, in_data, out_data);
}

