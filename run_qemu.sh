#!/usr/bin/env bash
set -euo pipefail

QEMU="${QEMU:-build/tmp/sysroots-components/x86_64/qemu-system-native/usr/bin/qemu-system-arm}"
IMAGE="${IMAGE:-build/tmp/deploy/images/evb-ast2600/obmc-phosphor-image-evb-ast2600.static.mtd}"
LIBSLIRP_DIR="${LIBSLIRP_DIR:-build/tmp/sysroots-components/x86_64/libslirp-native/usr/lib}"

if [[ ! -x "$QEMU" ]]; then
    QEMU="$(find build/tmp/work/x86_64-linux/qemu-system-native -type f -executable -name qemu-system-arm 2>/dev/null | head -n 1 || true)"
fi
echo "$QEMU"

if [[ -z "$QEMU" || ! -x "$QEMU" ]]; then
    echo "qemu-system-arm was not found. Build it with: bitbake qemu-system-native" >&2
    exit 1
fi

if [[ ! -e "$IMAGE" ]]; then
    echo "BMC image was not found: $IMAGE" >&2
    echo "Build it with your OpenBMC image target, for example: bitbake obmc-phosphor-image" >&2
    exit 1
fi

if [[ -d "$LIBSLIRP_DIR" ]]; then
    export LD_LIBRARY_PATH="$LIBSLIRP_DIR${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
fi

exec "$QEMU" \
    -m 1G \
    -M ast2600-evb \
    -nographic \
    -drive file="$IMAGE",format=raw,if=mtd \
    -net nic \
    -net user,hostfwd=:127.0.0.1:2222-:22,hostfwd=:127.0.0.1:2443-:443,hostfwd=udp:127.0.0.1:2623-:623,hostname=qemu
