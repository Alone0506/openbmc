FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI = "file://${BPN}"
S = "${UNPACKDIR}/${BPN}"

ERR_INFO_CAP = "10000"
