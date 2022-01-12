# Based on original work by David Manura
# Copyright (C) 2007-2012 LuaDist.
# Copyright (C) 2013 Brian Sidebotham

# Redistribution and use of this file is allowed according to the terms of the
# MIT license.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

include( CMakeParseArguments )

string(TIMESTAMP BUILDINF_DATE "%Y-%m-%d %H:%M:%S UTC" UTC)
configure_file( buildinf.h.cmake buildinf.h )

include( CheckIncludeFile )
CHECK_INCLUDE_file( fcntl.h CHK_DLFCN )
if( CHK_DLFCN )
  set( HAVE_DLFCN_H ON )
endif()

if( APPLE )
  set( DSO_DLFCN ON )
  set( DSO_EXTENSION ".dylib" )
elseif( WIN32 AND NOT CYGWIN )
  set( DSO_WIN32 ON )
  set( DSO_EXTENSION ".dll" )
elseif( CYGWIN )
  set( DSO_DLFCN ON )
  set( DSO_EXTENSION ".dll" )
else()
  if( CHK_DLFCN )
    set( DSO_DLFCN ON )
  else()
    set( DSO_NONE ON )
  endif()
  set( DSO_EXTENSION ".so" )
endif()

configure_file( ${CMAKE_CURRENT_SOURCE_DIR}/bn_conf.h.cmake
  ${PROJECT_BINARY_DIR}/include/crypto/bn_conf.h )
configure_file( ${CMAKE_CURRENT_SOURCE_DIR}/dso_conf.h.cmake
  ${PROJECT_BINARY_DIR}/include/crypto/dso_conf.h )

set( LIBSRC
  asn1_dsa.c bsearch.c context.c core_algorithm.c core_fetch.c core_namemap.c cpt_err.c cpuid.c cryptlib.c ctype.c cversion.c ebcdic.c ex_data.c init.c
  initthread.c mem.c mem_clr.c mem_sec.c o_dir.c o_fopen.c o_init.c o_str.c o_time.c packet.c param_build.c param_build_set.c params_dup.c params_from_text.c
  params.c passphrase.c provider.c provider_child.c provider_conf.c provider_core.c provider_predefined.c self_test_core.c sparse_array.c trace.c uid.c getenv.c )

include_directories( BEFORE SYSTEM
  modes ec/curve448 ec/curve448/arch_32
  ${CMAKE_CURRENT_BINARY_DIR}/ # buildinf.h
  ${PROJECT_BINARY_DIR}/include # public|crypto|internal
  ${PROJECT_SOURCE_DIR}/ # e_os.h
)

if( BUILD_SHARED_LIBS )
  add_definitions( -DOPENSSL_BUILD_SHLIBCRYPTO )
endif()

macro( add_submodule dir )
    set( options )
    set( oneValueArgs )
    set( multiValueArgs EXHEADERS )
    cmake_parse_arguments( add_submodule "" "" "${multiValueArgs}" ${ARGN} )

    #message( STATUS "{dir} ${dir}" )
    #message( STATUS "{add_submodule_UNPARSED_ARGUMENTS} ${add_submodule_UNPARSED_ARGUMENTS}" )
    foreach( name ${add_submodule_UNPARSED_ARGUMENTS} )
        set( LIBSRC ${LIBSRC} ${dir}/${name} )
    endforeach( name )

    #message( STATUS "{add_submodule_EXHEADERS} ${add_submodule_EXHEADERS}" )
    foreach( name ${add_submodule_EXHEADERS} )
        set( EXHEADERS ${EXHEADERS} ${name} )
    endforeach( name )

endmacro( add_submodule )

add_submodule ( aes aes_cbc.c aes_cfb.c aes_core.c aes_ecb.c aes_ige.c aes_misc.c aes_ofb.c
  aes_wrap.c )

add_submodule ( aria aria.c )

file(GLOB ASN1_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/asn1 ${CMAKE_CURRENT_LIST_DIR}/asn1/*.c)
add_submodule (asn1 ${ASN1_SRC})

add_submodule ( async async.c async_err.c async_wait.c
  arch/async_null.c arch/async_posix.c arch/async_win.c )

add_submodule ( bf bf_cfb64.c bf_ecb.c bf_enc.c bf_ofb64.c bf_skey.c )

file(GLOB BIO_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/bio ${CMAKE_CURRENT_LIST_DIR}/bio/*.c)
add_submodule (bio ${BIO_SRC})

# file(GLOB BLAKE2_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/blake2 *.c)
# add_submodule (blake2 ${BLAKE2_SRC})

file(GLOB BN_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/bn ${CMAKE_CURRENT_LIST_DIR}/bn/*.c)
list(REMOVE_ITEM BN_SRC "bn_ppc.c") # NO ppc
list(REMOVE_ITEM BN_SRC "bn_sparc.c") # NO sparc
add_submodule(bn ${BN_SRC})

add_submodule ( buffer buf_err.c buffer.c )

add_submodule ( camellia camellia.c cmll_cbc.c cmll_cfb.c cmll_ctr.c cmll_ecb.c
  cmll_misc.c cmll_ofb.c )

add_submodule ( cast c_cfb64.c c_ecb.c c_enc.c c_ofb64.c c_skey.c )

add_submodule ( chacha chacha_enc.c )

file(GLOB CMAC_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/cmac ${CMAKE_CURRENT_LIST_DIR}/cmac/*.c)
add_submodule (cmac ${CMAC_SRC})

file(GLOB CMP_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/cmp ${CMAKE_CURRENT_LIST_DIR}/cmp/*.c)
add_submodule (cmp ${CMP_SRC})

add_submodule ( cms cms_asn1.c cms_att.c cms_cd.c cms_dd.c cms_enc.c cms_env.c cms_err.c
  cms_ess.c cms_io.c cms_kari.c cms_lib.c cms_pwri.c cms_sd.c cms_smime.c )

add_submodule ( comp c_zlib.c comp_err.c comp_lib.c )

add_submodule ( conf conf_api.c conf_def.c conf_err.c conf_lib.c conf_mall.c conf_mod.c
  conf_sap.c conf_ssl.c )

file(GLOB CRMF_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/crmf ${CMAKE_CURRENT_LIST_DIR}/crmf/*.c)
add_submodule (crmf ${CRMF_SRC})

add_submodule ( ct ct_b64.c ct_err.c ct_log.c ct_oct.c ct_policy.c ct_prn.c ct_sct.c
  ct_sct_ctx.c ct_vfy.c ct_x509v3.c )

add_submodule ( des cbc_cksm.c cbc_enc.c cfb64ede.c cfb64enc.c cfb_enc.c des_enc.c
  ecb3_enc.c ecb_enc.c fcrypt.c fcrypt_b.c ofb64ede.c ofb64enc.c ofb_enc.c pcbc_enc.c
  qud_cksm.c rand_key.c set_key.c str2key.c xcbc_enc.c )

file(GLOB DH_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/dh ${CMAKE_CURRENT_LIST_DIR}/dh/*.c)
add_submodule (dh ${DH_SRC})

add_submodule ( dsa dsa_ameth.c dsa_asn1.c dsa_backend.c dsa_check.c dsa_depr.c dsa_err.c dsa_gen.c dsa_key.c
  dsa_lib.c dsa_meth.c dsa_ossl.c dsa_pmeth.c dsa_prn.c dsa_sign.c dsa_vrf.c )

add_submodule ( dso dso_dl.c dso_dlfcn.c dso_err.c dso_lib.c dso_openssl.c dso_vms.c
  dso_win32.c )

file(GLOB EC_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/ec ${CMAKE_CURRENT_LIST_DIR}/ec/*.c)
file(GLOB EC_CURVE_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/ec ${CMAKE_CURRENT_LIST_DIR}/ec/curve448/*.c)
file(GLOB EC_CURVE_ARCH_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/ec ${CMAKE_CURRENT_LIST_DIR}/ec/curve448/arch64/*.c)
list(FILTER EC_SRC EXCLUDE REGEX "ecp_nist[a-z0-9_]+.c$") # NO asm
list(FILTER EC_SRC EXCLUDE REGEX "[a-z0-9_]+ppc[a-z0-9_]+.c$") # NO ppc
list(FILTER EC_SRC EXCLUDE REGEX "[a-z0-9_]+s390[a-z0-9_]+.c$") # NO s390
add_submodule (ec ${EC_SRC} ${EC_CURVE_SRC} ${EC_CURVE_ARCH_SRC})


file(GLOB ENC_DEC_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/encode_decode ${CMAKE_CURRENT_LIST_DIR}/encode_decode/*.c)
add_submodule (encode_decode ${ENC_DEC_SRC})

add_submodule ( engine eng_all.c eng_cnf.c eng_ctrl.c eng_dyn.c eng_err.c
  eng_fat.c eng_init.c eng_lib.c eng_list.c eng_openssl.c eng_pkey.c eng_rdrand.c
  eng_table.c tb_asnmth.c tb_cipher.c tb_dh.c tb_digest.c tb_dsa.c tb_eckey.c tb_pkmeth.c
  tb_rand.c tb_rsa.c )

file(GLOB ERR_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/err ${CMAKE_CURRENT_LIST_DIR}/err/*.c)
list(REMOVE_ITEM ERR_SRC "err_all_legacy.c")
add_submodule ( err ${ERR_SRC} )

file(GLOB ESS_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/ess ${CMAKE_CURRENT_LIST_DIR}/ess/*.c)
add_submodule (ess ${ESS_SRC})

file(GLOB EVP_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/evp ${CMAKE_CURRENT_LIST_DIR}/evp/*.c)
# list(REMOVE_ITEM ERR_SRC "legacy_md2.c") # NO md2
add_submodule (evp ${EVP_SRC})

file(GLOB FFC_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/ffc ${CMAKE_CURRENT_LIST_DIR}/ffc/*.c)
add_submodule (ffc ${FFC_SRC})

file(GLOB HMAC_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/hmac ${CMAKE_CURRENT_LIST_DIR}/hmac/*.c)
add_submodule (hmac ${HMAC_SRC})

file(GLOB HTTP_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/http ${CMAKE_CURRENT_LIST_DIR}/http/*.c)
add_submodule (http ${HTTP_SRC})

add_submodule ( idea i_cbc.c i_cfb64.c i_ecb.c i_ofb64.c i_skey.c )

file(GLOB KDF_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/kdf ${CMAKE_CURRENT_LIST_DIR}/kdf/*.c)
add_submodule (kdf ${KDF_SRC})

add_submodule ( lhash lh_stats.c lhash.c )

add_submodule ( md4 md4_dgst.c md4_one.c )

add_submodule ( md5 md5_dgst.c md5_one.c )

add_submodule ( mdc2 mdc2_one.c mdc2dgst.c )

add_submodule ( modes cbc128.c ccm128.c cfb128.c ctr128.c cts128.c gcm128.c ocb128.c
  ofb128.c wrap128.c xts128.c )

add_submodule ( objects o_names.c obj_dat.c obj_err.c obj_lib.c obj_xref.c )

file(GLOB OCSP_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/ocsp ${CMAKE_CURRENT_LIST_DIR}/ocsp/*.c)
add_submodule (ocsp ${OCSP_SRC})

add_submodule ( pem pem_all.c pem_err.c pem_info.c pem_lib.c pem_oth.c pem_pk8.c pem_pkey.c
  pem_sign.c pem_x509.c pem_xaux.c pvkfmt.c )

add_submodule ( pkcs12 p12_add.c p12_asn.c p12_attr.c p12_crpt.c p12_crt.c p12_decr.c
  p12_init.c p12_key.c p12_kiss.c p12_mutl.c p12_npas.c p12_p8d.c p12_p8e.c p12_sbag.c
  p12_utl.c pk12err.c )

add_submodule ( pkcs7 bio_pk7.c pk7_asn1.c pk7_attr.c pk7_doit.c pk7_lib.c pk7_mime.c
  pk7_smime.c pkcs7err.c )

file(GLOB POLY1305_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/poly1305 ${CMAKE_CURRENT_LIST_DIR}/poly1305/*.c)
list(FILTER POLY1305_SRC EXCLUDE REGEX "poly1305_[a-z0-9_]+.c$") # NO asm
add_submodule (poly1305 ${POLY1305_SRC})

file(GLOB PROP_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/property ${CMAKE_CURRENT_LIST_DIR}/property/*.c)
add_submodule (property ${PROP_SRC})

# TODO: Move providers to a different cmake module
file(GLOB PROV_COMM_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/common/*.c)
file(GLOB PROV_CIPHERS_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/ciphers/*.c)
file(GLOB PROV_DIGESTS_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/digests/*.c)
file(GLOB PROV_ENC_DEC_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/encode_decode/*.c)
file(GLOB PROV_EXCHANGE_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/exchange/*.c)
file(GLOB PROV_KDFS_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/kdfs/*.c)
file(GLOB PROV_KEM_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/kem/*.c)
file(GLOB PROV_KEYMGMT_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/keymgmt/*.c)
file(GLOB PROV_MACS_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/macs/*.c)
file(GLOB PROV_RANDS_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/rands/*.c)
file(GLOB PROV_RANDS_SEED_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/rands/seeding/*.c)
# file(GLOB PROV_SIG_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/signature/dsa_sig.c)
file(GLOB PROV_STOREMGMT_SRC RELATIVE ${CMAKE_BINARY_DIR}/providers ${CMAKE_BINARY_DIR}/providers/implementations/storemgmt/*.c)
list(REMOVE_ITEM PROV_KDFS_SRC "implementations/kdfs/x942kdf.c") # NO x942
list(REMOVE_ITEM PROV_RANDS_SEED_SRC "implementations/rands/seeding/rand_vms.c") # NO vms for rand
list(REMOVE_ITEM PROV_RANDS_SEED_SRC "implementations/rands/seeding/rand_vxworks.c") # NO vxworks for rand
list(REMOVE_ITEM PROV_RANDS_SEED_SRC "implementations/rands/seeding/rand_win.c") # NO win for rand
list(FILTER PROV_MACS_SRC EXCLUDE REGEX "blake2[a-z0-9_]+.c$") # NO blake2
# list(REMOVE_ITEM PROV_SIG_SRC "implementations/kdfs/x942kdf.c")
set(PROV_SIG_SRC "")
# set(PROV_RANDS_SRC
#     implementations/rands/seeding/rand_unix.c
#     implementations/rands/crngt.c
#     implementations/rands/drbg.c
#     implementations/rands/drbg_ctr.c
#     implementations/rands/drbg_hash.c
#     implementations/rands/drbg_hmac.c
#     implementations/rands/seed_src.c
#     ${PROV_CIPHERS_SRC})
# message(STATUS ${PROV_RANDS_SRC})
list(REMOVE_ITEM PROV_COMM_SRC "common/securitycheck_fips.c") # NO fips
add_submodule (../providers ${PROV_COMM_SRC} ${PROV_CIPHERS_SRC} ${PROV_DIGESTS_SRC} ${PROV_ENC_DEC_SRC} ${PROV_EXCHANGE_SRC} ${PROV_KDFS_SRC}
                            ${PROV_KEM_SRC} ${PROV_KEYMGMT_SRC} ${PROV_MACS_SRC}  ${PROV_RANDS_SRC} ${PROV_RANDS_SEED_SRC} ${PROV_SIG_SRC} ${PROV_STOREMGMT_SRC}
                            baseprov.c defltprov.c prov_running.c)

file(GLOB RAND_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/rand ${CMAKE_CURRENT_LIST_DIR}/rand/*.c)
add_submodule (rand ${RAND_SRC})

add_submodule ( rc2 rc2_cbc.c rc2_ecb.c rc2_skey.c rc2cfb64.c rc2ofb64.c )

add_submodule ( rc4 rc4_enc.c rc4_skey.c )

#add_submodule ( rc5 rc5_ecb.c rc5_enc.c rc5_skey.c rc5cfb64.c rc5ofb64.c )

add_submodule ( ripemd rmd_dgst.c rmd_one.c )

file(GLOB RSA_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/rsa ${CMAKE_CURRENT_LIST_DIR}/rsa/*.c)
list(REMOVE_ITEM RSA_SRC "rsa_acvp_test_params.c") # NO acvp-tests
add_submodule (rsa ${RSA_SRC})

add_submodule ( seed seed.c seed_cbc.c seed_cfb.c seed_ecb.c seed_ofb.c )

add_submodule ( sha keccak1600.c sha1_one.c sha1dgst.c sha256.c sha512.c )

file(GLOB SIPHASH_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/siphash ${CMAKE_CURRENT_LIST_DIR}/siphash/*.c)
add_submodule (siphash ${SIPHASH_SRC})

file(GLOB SM2_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/sm2 ${CMAKE_CURRENT_LIST_DIR}/sm2/*.c)
add_submodule (sm2 ${SM2_SRC})

file(GLOB SM3_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/sm3 ${CMAKE_CURRENT_LIST_DIR}/sm3/*.c)
add_submodule (sm3 ${SM3_SRC})

add_submodule ( sm4 sm4.c )

add_submodule ( srp srp_lib.c srp_vfy.c )

add_submodule ( stack stack.c )

file(GLOB STORE_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/store ${CMAKE_CURRENT_LIST_DIR}/store/*.c)
add_submodule (store ${STORE_SRC})

add_submodule ( ts ts_asn1.c ts_conf.c ts_err.c ts_lib.c ts_req_print.c ts_req_utils.c
  ts_rsp_print.c ts_rsp_sign.c ts_rsp_utils.c ts_rsp_verify.c ts_verify_ctx.c )

add_submodule ( txt_db txt_db.c )

add_submodule ( ui ui_err.c ui_lib.c ui_null.c ui_openssl.c ui_util.c )

add_submodule ( whrlpool wp_block.c wp_dgst.c )

file(GLOB X509_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/x509 ${CMAKE_CURRENT_LIST_DIR}/x509/*.c)
add_submodule (x509 ${X509_SRC})

file(GLOB X509V3_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR}/x509v3 ${CMAKE_CURRENT_LIST_DIR}/x509v3/*.c)
add_submodule (x509v3 ${X509V3_SRC})

set( CMAKE_THREAD_PREFER_PTHREAD TRUE )
find_package ( Threads )
if( NOT Threads_FOUND OR LLVM_BITCODE_ONLY)
  add_definitions(-DCRYPTO_TDEBUG)
  add_submodule ( . threads_none.c )
elseif( WIN32 )
  add_submodule ( . threads_win.c )
else()
  add_submodule ( . threads_pthread.c )
endif()

add_library( crypto ${LIBSRC} ${OBJECTS_SRC} )

if (LLVM_BITCODE_ONLY)
  set_target_properties(crypto PROPERTIES SUFFIX ".bc")
endif()

set(CRYPTO_INCLUDES
    ${PROJECT_SOURCE_DIR}/crypto
    ${PROJECT_BINARY_DIR}/include
    ${PROJECT_BINARY_DIR}/providers/common/include
    ${PROJECT_BINARY_DIR}/providers/implementations/include
    ${PROJECT_BINARY_DIR}/providers/implementations/include/prov)

if (DEFINED KLEE_INCLUDE_DIR)
  set(CRYPTO_INCLUDES ${CRYPTO_INCLUDES} ${KLEE_INCLUDE_DIR})
endif()

target_include_directories(crypto PUBLIC ${CRYPTO_INCLUDES})

if (DEFINED KLEE_INCLUDE_DIR)
  target_include_directories(crypto PUBLIC ${KLEE_INCLUDE_DIR})
endif()

if( WIN32 AND NOT CYGWIN )
  target_link_libraries( crypto ws2_32 crypt32 )
else()
  if( Threads_FOUND )
    target_link_libraries( crypto ${CMAKE_THREAD_LIBS_INIT} )
  endif()
  if( DSO_DLFCN AND HAVE_DLFCN_H )
    target_link_libraries( crypto dl )
  endif()
endif()

set_target_properties( crypto PROPERTIES
  VERSION "${LIB_VERSION}" SOVERSION "${LIB_SOVERSION}" )

if( ANDROID )
  set_target_properties( crypto PROPERTIES OUTPUT_NAME "crypto_1_1" )
endif()

if( MSVC )
  if( CMAKE_SIZEOF_VOID_P EQUAL 8 )
    set_target_properties( crypto PROPERTIES OUTPUT_NAME "crypto-1_1-x64" )
  elseif( CMAKE_SIZEOF_VOID_P EQUAL 4 )
    set_target_properties( crypto PROPERTIES OUTPUT_NAME "crypto-1_1" )
  endif()
endif()

install( TARGETS crypto
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib )
