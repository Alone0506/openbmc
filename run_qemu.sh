#!/bin/bash
build/tmp/work/x86_64-linux/qemu-system-native/10.0.0/build/qemu-system-arm \
    -m 1G \
    -M ast2600-evb \
    -nographic \
    -drive file=build/tmp/deploy/images/evb-ast2600/obmc-phosphor-image-evb-ast2600.static.mtd,format=raw,if=mtd \
    -net nic \
    -net user,hostfwd=:127.0.0.1:2222-:22,hostfwd=:127.0.0.1:2443-:443,hostfwd=udp:127.0.0.1:2623-:623,hostname=qemu
