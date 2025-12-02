SUMMARY = "YAML configuration for Ted"
LICENSE = "CLOSED"

inherit allarch

SRC_URI = " file://ted-ipmi-sensors-static.yaml"
SRC_URI += "file://ted-ipmi-inventory-sensors.yaml"

S = "${WORKDIR}/sources"
UNPACKDIR = "${S}"

do_install() {
    install -m 0644 -D ted-ipmi-sensors-static.yaml \
        ${D}${datadir}/${BPN}/ipmi-sensors-static.yaml
    install -m 0644 -D ted-ipmi-inventory-sensors.yaml \
        ${D}${datadir}/${BPN}/ipmi-inventory-sensors.yaml
}

FILES:${PN}-dev = " \
    ${datadir}/${BPN}/ipmi-sensors-static.yaml \
    ${datadir}/${BPN}/ipmi-inventory-sensors.yaml \
    "

ALLOW_EMPTY:${PN} = "1"
