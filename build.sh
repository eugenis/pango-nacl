#!/bin/sh
ROOT=${NACL_TOOLCHAIN_ROOT:-$HOME/root/nacl-sdk}

PATH=$ROOT/bin:$PATH CC=nacl64-gcc CXX=nacl64-g++ LD=nacl64-g++ AR=nacl64-ar \
  RANLIB=nacl64-ranlib PKG_CONFIG_LIBDIR=$ROOT/nacl64/usr/lib/pkgconfig \
  ./configure --host=nacl64 --prefix=$ROOT/nacl64/usr --without-x --enable-static --disable-shared
PATH=$ROOT/bin:$PATH make
PATH=$ROOT/bin:$PATH make install
