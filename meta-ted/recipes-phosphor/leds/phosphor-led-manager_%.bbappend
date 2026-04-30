FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI = "file://phosphor-led-manager"

S = "${UNPACKDIR}/phosphor-led-manager"

do_install:append:evb-ast2600() {
    install -d ${D}${datadir}/phosphor-led-manager
    install -m 0644 ${S}/test/config/evb-ast2600-led-group-config.json \
        ${D}${datadir}/phosphor-led-manager/led-group-config.json
}
