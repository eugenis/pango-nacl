#!/bin/sh
PATH=$HOME/root/nacl-sdk/bin:$PATH CC=nacl64-gcc CXX=nacl64-g++ LD=nacl64-g++ AR=nacl64-ar RANLIB=nacl64-ranlib PKG_CONFIG_LIBDIR=$HOME/root/nacl-sdk/nacl64/usr/lib/pkgconfig ./configure --host=nacl64 --prefix=$HOME/root/nacl-sdk/nacl64/usr --without-x --enable-static --disable-shared
PATH=$HOME/root/nacl-sdk/bin:$PATH make
PATH=$HOME/root/nacl-sdk/bin:$PATH make install
