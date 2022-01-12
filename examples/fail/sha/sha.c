#include "../../ct-verif.h"

#define SHADataSize 64

#include <stdlib.h>
#include <string.h>

// #include <openssl/conf.h>
#include <openssl/evp.h>
// #include <openssl/rand.h>
// #include <openssl/err.h>
#include <openssl/sha.h>


int SHA256_digest(unsigned char* in, size_t len, unsigned char out[SHA256_DIGEST_LENGTH])
{
   unsigned int digest_length;

   EVP_MD_CTX* ctx = EVP_MD_CTX_new();
   EVP_DigestInit_ex(ctx, EVP_sha256(), NULL);

   if (!EVP_DigestUpdate(ctx, in, len)) {
     return -1;
   }

   if (!EVP_DigestFinal_ex(ctx, out, &digest_length)) {
      return -1;
   }

   EVP_MD_CTX_destroy(ctx);

   return digest_length;
}


int SHA256_digest_wrapper(unsigned char* in, size_t len, unsigned char out[SHA256_DIGEST_LENGTH]) {

    public_in(__SMACK_value(len));
    public_in(__SMACK_value(out));
    public_in(__SMACK_value(in));
    SHA256_digest(in, len, out);
}


