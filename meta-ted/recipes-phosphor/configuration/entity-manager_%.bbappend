FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI:remove = "git://github.com/openbmc/entity-manager.git;branch=master;protocol=https"
SRC_URI += "file://${BPN}"
S = "${WORKDIR}/${BPN}"  