#!/bin/sh

mkdir -p build/arm
arm-none-linux-gnueabi-g++ -O3 -g0 -Wall -c -fmessage-length=0 -o build/arm/udpee.o udpee.cpp
arm-none-linux-gnueabi-g++ -Wl,-rpath-link -Xlinker -export-dynamic -o udpee_arm build/arm/udpee.o
