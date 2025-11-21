FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI = "file://phosphor-host-ipmid"
SRC_URI += "file://merge_yamls.py"

S = "${WORKDIR}/phosphor-host-ipmid"