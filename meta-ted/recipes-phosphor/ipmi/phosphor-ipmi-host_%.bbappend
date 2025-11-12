FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI = "file://${BPN}"
SRC_URI += "file://merge_yamls.py "

S = "${WORKDIR}/${BPN}"