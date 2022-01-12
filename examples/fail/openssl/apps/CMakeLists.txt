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

file( READ ${CMAKE_CURRENT_SOURCE_DIR}/CA.pl.cmake CA_PL )
file( WRITE ${CMAKE_CURRENT_BINARY_DIR}/CA.pl "${CA_PL}" )

file( READ ${CMAKE_CURRENT_SOURCE_DIR}/tsget.cmake TSGET )
string( REPLACE "@VERSION_STRING@" "${VERSION_STRING}" TSGET "${TSGET}" )
file( WRITE ${CMAKE_CURRENT_BINARY_DIR}/tsget "${TSGET}" )

file( READ ${CMAKE_CURRENT_SOURCE_DIR}/progs.h.cmake PROGS_H )
file( WRITE ${CMAKE_CURRENT_BINARY_DIR}/progs.h "${PROGS_H}" )

add_definitions( -DMONOLITH )

FILE(GLOB APPS_SRC RELATIVE ${CMAKE_CURRENT_LIST_DIR} *.c)
set(E_SRC ${APPS_SRC})

include_directories( BEFORE SYSTEM
  ${PROJECT_SOURCE_DIR}/ # e_os.h
  ${CMAKE_CURRENT_BINARY_DIR}/ # progs.h
)

if( WIN32 )
  list( APPEND E_SRC win32_init.c )
endif()

add_executable( openssl ${E_SRC} )

target_link_libraries( openssl crypto ssl )

install( TARGETS openssl
    RUNTIME DESTINATION bin )

install( FILES
  ${CMAKE_CURRENT_BINARY_DIR}/CA.pl
  ${CMAKE_CURRENT_BINARY_DIR}/tsget
  DESTINATION share/openssl )
