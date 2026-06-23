FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI = "file://coretemp.conf file://${BPN}"
S = "${UNPACKDIR}/${BPN}"
