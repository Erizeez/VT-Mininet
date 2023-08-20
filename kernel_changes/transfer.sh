#!/bin/bash

if [ "z$1" = "z" ]; then
    echo "usage: $0 path/to/kernel/src"
    echo "  e.g. $0 /home/yjq/ExtendKernel/linux-5.15/linux-5.15"
    exit 1
fi

DST=$1

if [ ! -e $DST ]; then
    echo "error: $DST not found"
    exit 1
fi

# generate patch file
PATCH=VirtualTime.patch
echo "Step 0. patch file written to ${PATCH}"
diff -rup ../../linux-5.15/ ./ > ${PATCH}
echo ""


FILES="kernel/fork.c \
kernel/time/time.c \
kernel/time/timekeeping.c \
arch/x86/entry/syscalls/syscall_64.tbl \
lib/vdso/gettimeofday.c \
include/uapi/asm-generic/unistd.h include/uapi/linux/sched.h \
include/linux/sched.h \
init/init_task.c \
include/linux/syscalls.h \
include/net/sch_generic.h \
virtual_time/virtual_time.c \
virtual_time/Makefile \
net/sched/sch_generic.c \
net/sched/act_police.c \
Makefile \
build_all.sh"

if [ ! -e $DST/virtual_time ]; then
    mkdir $DST/virtual_time
fi

echo "Step 1. transfer modified kernel source files"
for f in $FILES; do
    cp -v $f $DST/$f
done

echo ""

echo "Step 2. install syscall wrapper"
cp -v syscall_wrapper/* ../test_vt_kernel/syscall.wrap/
# no need to wrap applications like iperf3

