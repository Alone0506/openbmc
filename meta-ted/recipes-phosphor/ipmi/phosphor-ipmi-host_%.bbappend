FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI = "file://phosphor-host-ipmid"
SRC_URI += "file://merge_yamls.py"

S = "${WORKDIR}/phosphor-host-ipmid"

DEPENDS:append = " ted-yaml-config"

EXTRA_OEMESON = " -Dsensor-yaml-gen=${STAGING_DIR_HOST}${datadir}/ted-yaml-config/ipmi-sensors-static.yaml"