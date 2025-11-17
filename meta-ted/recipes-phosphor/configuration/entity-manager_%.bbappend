FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI:remove = "git://gittt/openbmc/entity-manager.git;branch=master;protocol=https"
SRC_URI += "file://${BPN}"
S = "${WORKDIR}/${BPN}"