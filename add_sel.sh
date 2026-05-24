#!/usr/bin/env bash
set -euo pipefail
(set -o pipefail) 2>/dev/null && set -o pipefail

# Temperature #0x16 Asserted
BASE=(
  0x0a 0x44
  0x01 0x00 0x02 0xab 0xcd 0xef 0x00 0x01 0x0a 0x04 0x01 0x16 0x00
)

COUNT=905

ipmitool sel clear
ipmitool sel info

for ((i=0; i<COUNT; i++)); do
  ed1=$(( (i      ) & 0xFF ))
  ed2=$(( (i >>  8) & 0xFF ))
  ed3=$(( (i >> 16) & 0xFF ))

  # transfer to 0xNN format
  ED1=$(printf "0x%02x" "$ed1")
  ED2=$(printf "0x%02x" "$ed2")
  ED3=$(printf "0x%02x" "$ed3")

  ipmitool raw "${BASE[@]}" "$ED1" "$ED2" "$ED3"
done

ipmitool sel info
