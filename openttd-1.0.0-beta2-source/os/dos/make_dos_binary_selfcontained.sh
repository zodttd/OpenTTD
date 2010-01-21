#!/bin/sh

# $Id: make_dos_binary_selfcontained.sh 15062 2009-01-13 16:30:24Z smatz $

cd `dirname $0`
cc -o exe2coff exe2coff.c || exit
cp $1 binary.exe || exit
./exe2coff binary.exe || exit
cat cwsdstub.exe binary > binary.exe || exit
mv binary.exe $1
rm binary exe2coff
