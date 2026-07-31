#!/bin/bash
#
# config: 2 99
# @brief: Collect my custom debug data.
#

. "$DREPORT_INCLUDE/functions"

cmd="i2cdump -y 9 0x9d"
file_name="test.log"
desc="'$cmd' output"

add_cmd_output "$cmd" "$file_name" "$desc"
