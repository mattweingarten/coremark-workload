#!/bin/bash
mkdir -p overlay

echo "Building Coremark Linux and Baremetal"
cd riscv-coremark


BASEDIR=$PWD
CM_FOLDER=coremark

cd $BASEDIR/$CM_FOLDER

# run the compile
echo "Start compilation"
make PORT_DIR=../riscv64 PORT_CFLAGS=-O1 compile ITERATIONS=10
mv coremark.riscv  ../../overlay/coremark_O1.riscv

echo "Start compilation"
make PORT_DIR=../riscv64 PORT_CFLAGS="-O1 \
-fschedule-insns -fschedule-insns2"  compile  ITERATIONS=10
mv coremark.riscv  ../../overlay/coremark_O1_sched.riscv



# echo "Moving Coremark binary to overlay"
# cd ..

# mv riscv-coremark/coremark.riscv overlay/coremark.riscv