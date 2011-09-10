#!/bin/sh
ROOT=${NACL_TOOLCHAIN_ROOT:-$HOME/root/nacl-sdk}

PATH=$ROOT/bin:$PATH CC=x86_64-nacl-gcc CXX=x86_64-nacl-g++ LD=x86_64-nacl-g++ AR=x86_64-nacl-ar \
  RANLIB=x86_64-nacl-ranlib PKG_CONFIG_LIBDIR=$ROOT/x86_64-nacl/usr/lib/pkgconfig \
  ./configure --host=x86_64-nacl --prefix=/usr --without-x --with-included-modules --without-dynamic-modules
PATH=$ROOT/bin:$PATH make -j5
PATH=$ROOT/bin:$PATH make install -j5 prefix=$ROOT/x86_64-nacl/usr
