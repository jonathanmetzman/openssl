/*
 * Copyright 2020 The OpenSSL Project Authors. All Rights Reserved.
 *
 * Licensed under the Apache License 2.0 (the "License").  You may not use
 * this file except in compliance with the License.  You can obtain a copy
 * in the file LICENSE in the source distribution or at
 * https://www.openssl.org/source/license.html
 */

#ifndef OSSL_INTERNAL_ASN1_H
# define OSSL_INTERNAL_ASN1_H

int asn1_d2i_read_bio(BIO *in, BUF_MEM **pb);
EVP_PKEY *d2i_privatekey_int(int keytype, EVP_PKEY **a,
                             const unsigned char **pp, long length,
                             OSSL_LIB_CTX *libctx, const char *propq);

#endif
