SUMMARY = "YAML configuration for Ted"
LICENSE = "CLOSED"

inherit allarch

SRC_URI = " file://ted-ipmi-sensors-static.yaml"

S = "${WORKDIR}/sources"
UNPACKDIR = "${S}"

do_install() {
    install -m 0644 -D ted-ipmi-sensors-static.yaml \
        ${D}${datadir}/${BPN}/ipmi-sensors-static.yaml
}

FILES:${PN}-dev = " \
    ${datadir}/${BPN}/ipmi-sensors-static.yaml \
    "

ALLOW_EMPTY:${PN} = "1"
