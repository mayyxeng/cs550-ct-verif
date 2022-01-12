# Based on original work by David Manura
# Copyright (C) 2007-2012 LuaDist.
# Copyright (C) 2013 Brian Sidebotham
# Copyright (C) 2016-2019 Jean-Luc Barriere

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

set(CMAKE_LEGACY_CYGWIN_WIN32 0)

# LLVM Bitcode Build
option(LLVM_BITCODE_ONLY "Generate LLVM bitcode only" OFF)

if (LLVM_BITCODE_ONLY)
  message(STATUS "Configuring build for LLVM bitcode")

  if (NOT DEFINED CMAKE_C_COMPILER)
    set(CMAKE_C_COMPILER "clang")
  endif()
  if (NOT DEFINED CMAKE_CXX_COMPILER)
    set(CMAKE_CXX_COMPILER "clang++")
  endif()
  if (NOT DEFINED CMAKE_LINKER)
    set(CMAKE_LINKER "llvm-link")
  endif()

  # TODO: Use llvm-link in a less hacky way
  set(CMAKE_C_LINK_EXECUTABLE   "")
  set(CMAKE_CXX_LINK_EXECUTABLE "")
  
  set(CMAKE_CXX_ARCHIVE_CREATE "<CMAKE_LINKER> <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET>")
  set(CMAKE_C_ARCHIVE_CREATE "<CMAKE_LINKER> <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET>")

  SET(CMAKE_C_ARCHIVE_FINISH   "")
  SET(CMAKE_CXX_ARCHIVE_FINISH "")

  add_compile_options(-emit-llvm -g -c) # TODO: Check CMAKE_BUILD_TYPE for -g
endif()

project(openssl)
cmake_minimum_required(VERSION 3.1.0)

set(CMAKE_DISABLE_SOURCE_CHANGES ON)
set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

option(WITH_APPS "Build applications" OFF)

# OpenSSL Version
set(OSSL_VERSION_MAJOR 3)
set(OSSL_VERSION_MINOR 0)
set(OSSL_VERSION_PATCH 0)

set(OSSL_API_COMPAT 0x10100000)

set(OSSL_PRERELEASE     "-beta2-dev")
set(OSSL_BUILD_METADATA "")

set(OSSL_SHLIB_VERSION 3)

set(OSSL_RELEASE_DATE "")

set(VERSION_STRING "${OSSL_VERSION_MAJOR}.${OSSL_VERSION_MINOR}.${OSSL_VERSION_PATCH}")
message(STATUS "OpenSSL version ${VERSION_STRING}")

set(LIB_VERSION ${OSSL_VERSION_MAJOR}.${OSSL_VERSION_MINOR})
set(LIB_SOVERSION ${OSSL_VERSION_MAJOR}.${OSSL_VERSION_MINOR})

add_definitions(-DOPENSSL_NO_ASM)
add_definitions(-DOPENSSL_NO_STATIC_ENGINE)
# add_definitions(-DOPENSSL_CONFIGURED_API=0x30000000L)
# add_definitions(-DOPENSSL_API_COMPAT=0x10100000L)

if (MSVC)
  include(MSVCRuntime)
  configure_msvc_runtime()
  set(OPENSSLDIR "C:/ssl")
  set(ENGINESDIR "C:/engines")
  set(MODULESDIR "C:/modules")
else()
  set(OPENSSLDIR "${CMAKE_INSTALL_PREFIX}/ssl")
  set(ENGINESDIR "${CMAKE_INSTALL_PREFIX}/engines")
  set(MODULESDIR "${CMAKE_INSTALL_PREFIX}/modules")
endif()
add_definitions("-DOPENSSLDIR=\"${OPENSSLDIR}\"")
add_definitions("-DENGINESDIR=\"${ENGINESDIR}\"")
add_definitions("-DMODULESDIR=\"${MODULESDIR}\"")

if (APPLE)
  set(CMAKE_MACOSX_RPATH ON)
  add_definitions(-DOPENSSL_SYSNAME_MACOSX)
endif()

if (WIN32)
  set(CMAKE_SHARED_LIBRARY_PREFIX "lib")
  set(CMAKE_STATIC_LIBRARY_PREFIX "lib")
endif()

if (WIN32 AND NOT CYGWIN)
  add_definitions(-DOPENSSL_SYSNAME_WIN32)
  add_definitions(-DWIN32_LEAN_AND_MEAN)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS)

  if (BUILD_SHARED_LIBS)
    # avoid conflict: ocsp.h and wincrypt.h
    add_definitions(-D_WINDLL)
  endif()
endif()

if (MINGW)
  set (CMAKE_SHARED_LINKER_FLAGS "-Wl,--export-all")
endif()

include(CheckTypeSize)
check_type_size("long" LONG_INT)
check_type_size("long long" LONG_LONG_INT)
check_type_size("int" INT)
if (HAVE_LONG_INT AND (${LONG_INT} EQUAL 8))
  set(SIXTY_FOUR_BIT_LONG ON)
elseif (HAVE_LONG_LONG_INT AND (${LONG_LONG_INT} EQUAL 8))
  set(SIXTY_FOUR_BIT ON)
else()
  set(THIRTY_TWO_BIT ON)
endif()

if (MSVC OR (WIN32 AND MINGW AND NOT CYGWIN))
  set(OPENSSL_EXPORT_VAR_AS_FUNCTION 1)
endif()

# Begin configure public headers
## opensslv
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/opensslv.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/opensslv.h)

## configuration
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/configuration.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/configuration.h)

## asn1
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/asn1.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/asn1.h)

## asn1t
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/asn1t.h.cmake
${PROJECT_BINARY_DIR}/include/openssl/asn1t.h)

## bio
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/bio.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/bio.h)

## cmp
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/cmp.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/cmp.h)

## cms
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/cms.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/cms.h)

## conf
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/conf.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/conf.h)

## crmf
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/crmf.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/crmf.h)

## crypto
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/crypto.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/crypto.h)

## ct
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/ct.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/ct.h)

## err
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/err.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/err.h)

## ess
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/ess.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/ess.h)

## fipskey
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/fipskey.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/fipskey.h)

## lhash
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/lhash.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/lhash.h)

## ocsp
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/ocsp.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/ocsp.h)

## pkcs7
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/pkcs7.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/pkcs7.h)

## pkcs12
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/pkcs12.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/pkcs12.h)

## safestack
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/safestack.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/safestack.h)

## srp
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/srp.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/srp.h)

## ssl
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/ssl.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/ssl.h)

## ui
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/ui.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/ui.h)

## x509
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/x509.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/x509.h)

## x509_vfy
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/x509_vfy.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/x509_vfy.h)

## x509v3
configure_file(${PROJECT_SOURCE_DIR}/include/openssl/x509v3.h.cmake
               ${PROJECT_BINARY_DIR}/include/openssl/x509v3.h)

## opensslconf
# file(COPY ${PROJECT_SOURCE_DIR}/include/internal DESTINATION include)
# file(COPY ${PROJECT_SOURCE_DIR}/include/crypto DESTINATION include)
# file(COPY ${PROJECT_SOURCE_DIR}/include/openssl DESTINATION include)

# file(READ ${PROJECT_SOURCE_DIR}/opensslconf.h.cmake CONF)
# set(CONF "
# #define OPENSSL_NO_MD2
# #define OPENSSL_NO_RC5
# #define OPENSSL_NO_RFC3779
# #define OPENSSL_NO_EC_NISTP_64_GCC_128
# ${CONF}")
# file(WRITE ${PROJECT_BINARY_DIR}/opensslconf.h.cmake "${CONF}")

# configure_file(${PROJECT_BINARY_DIR}/opensslconf.h.cmake
#   ${PROJECT_BINARY_DIR}/include/openssl/opensslconf.h)
# End configure public headers

# Includes
file(COPY ${PROJECT_SOURCE_DIR}/include/internal DESTINATION include)
file(COPY ${PROJECT_SOURCE_DIR}/include/crypto DESTINATION include)
file(COPY ${PROJECT_SOURCE_DIR}/include/openssl DESTINATION include)
file(COPY ${PROJECT_SOURCE_DIR}/providers DESTINATION ${PROJECT_BINARY_DIR})

add_subdirectory(crypto)
add_subdirectory(ssl)

if (WITH_APPS AND NOT ANDROID AND NOT IOS)
  add_subdirectory(apps)

  file(READ ${PROJECT_SOURCE_DIR}/c_rehash.cmake C_REHASH)
  string(REPLACE "@OPENSSLDIR@" "${OPENSSLDIR}" C_REHASH "${C_REHASH}")
  string(REPLACE "@CMAKE_INSTALL_PREFIX@" "${CMAKE_INSTALL_PREFIX}" C_REHASH "${C_REHASH}")
  file(WRITE ${PROJECT_BINARY_DIR}/c_rehash "${C_REHASH}")

  install(FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/apps/openssl.cnf
    ${CMAKE_CURRENT_SOURCE_DIR}/apps/ct_log_list.cnf
    DESTINATION ssl)
  install(CODE "FILE(MAKE_DIRECTORY \$ENV{DESTDIR}\${CMAKE_INSTALL_PREFIX}/ssl/certs)")
  install(CODE "FILE(MAKE_DIRECTORY \$ENV{DESTDIR}\${CMAKE_INSTALL_PREFIX}/ssl/misc)")
  install(CODE "FILE(MAKE_DIRECTORY \$ENV{DESTDIR}\${CMAKE_INSTALL_PREFIX}/ssl/private)")
  install(FILES ${PROJECT_BINARY_DIR}/c_rehash DESTINATION bin)
endif()

file(GLOB PUBLIC_HEADERS "${PROJECT_BINARY_DIR}/include/openssl/*.h")
install(FILES ${PUBLIC_HEADERS} DESTINATION include/openssl)

install(FILES
  FAQ LICENSE README README.ENGINE
  DESTINATION share/openssl)

install(DIRECTORY doc DESTINATION share)

configure_file(
  ${CMAKE_CURRENT_SOURCE_DIR}/cmake/cmake_uninstall.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake IMMEDIATE @ONLY
)

if (${CMAKE_PROJECT_NAME} STREQUAL ${PROJECT_NAME})
  add_custom_target(
    "uninstall"
    ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake
 )
endif()

# Generate the package target
set(CPACK_GENERATOR ZIP TGZ)
set(CPACK_PACKAGE_NAME "${CMAKE_PROJECT_NAME}")
set(CPACK_PACKAGE_OSSL_VERSION_MAJOR ${OSSL_VERSION_MAJOR})
set(CPACK_PACKAGE_OSSL_VERSION_MINOR ${OSSL_VERSION_MINOR})
set(CPACK_PACKAGE_OSSL_VERSION_PATCH ${OSSL_VERSION_PATCH})
set(CPACK_PACKAGE_FILE_NAME "${CMAKE_PROJECT_NAME}-${VERSION_STRING}")

include(CPack)
