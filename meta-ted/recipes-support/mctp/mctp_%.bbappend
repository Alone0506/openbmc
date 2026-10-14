LICENSE = "CLOSED"

FILESEXTRAPATHS:prepend := "${THISDIR}:"
SRC_URI = "file://${BPN} \
          "
S = "${UNPACKDIR}/${BPN}"

SYSTEMD_SERVICE:${PN}:append = " mctp-local.service"

inherit useradd
USERADD_PACKAGES = "${PN}"
GROUPADD_PARAM:${PN} = "--system mctp-admin"
USERADD_PARAM:${PN} = "--system --user-group --no-create-home --shell /sbin/nologin mctpd"

do_install:append() {
    install -d ${D}${sysconfdir}
    install -m 0644 ${S}/conf/mctpd.conf ${D}${sysconfdir}/mctpd.conf
    install -m 0644 ${S}/conf/mctp-local.service ${D}${systemd_system_unitdir}/mctp-local.service
}
