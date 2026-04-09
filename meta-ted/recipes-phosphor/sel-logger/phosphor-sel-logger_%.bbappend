FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI = "file://${BPN}"
S = "${UNPACKDIR}/${BPN}"

# enable xyz.openbmc_project.Logging.IPMI.service
PACKAGECONFIG:append:evb-ast2600 = " log-threshold send-to-logger log-alarm"