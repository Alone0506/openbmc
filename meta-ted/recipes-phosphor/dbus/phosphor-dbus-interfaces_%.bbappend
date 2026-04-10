FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI = "file://${BPN}"
S = "${UNPACKDIR}/${BPN}"

EXTRA_OEMESON:append = " -Ddata_com_ted=true"