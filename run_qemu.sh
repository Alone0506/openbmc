#!/bin/bash

QEMU="build/tmp/work/x86_64-linux/qemu-helper-native/1.0/recipe-sysroot-native/usr/bin/qemu-system-arm"
IMAGE="build/tmp/deploy/images/evb-ast2600/obmc-phosphor-image-evb-ast2600.static.mtd"

exec "$QEMU" \
    -m 1G \
    -M ast2600-evb \
    -nographic \
    -drive file="$IMAGE",format=raw,if=mtd \
    -net nic \
    -net user,hostfwd=:127.0.0.1:2222-:22,hostfwd=:127.0.0.1:2443-:443,hostfwd=udp:127.0.0.1:2623-:623,hostname=qemu
