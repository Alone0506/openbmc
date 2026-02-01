SUMMARY = "NVMe Drive Manager"
DESCRIPTION = "Daemon to monitor and report the status of NVMe drives"
HOMEPAGE = "https://github.com/openbmc/phosphor-nvme"
LICENSE = "CLOSED"
DEPENDS += "sdbusplus"
DEPENDS += "phosphor-dbus-interfaces"
DEPENDS += "sdeventplus"
DEPENDS += "phosphor-logging"
DEPENDS += "nlohmann-json"
SRCREV = "0a0ba60874b2674cccb78f34f2aa6647237d031c"
PV = "0.1+git${SRCPV}"
PR = "r1"

SRC_URI = "file://${BPN}"
S = "${WORKDIR}/${BPN}"
SYSTEMD_SERVICE:${PN} = "xyz.openbmc_project.ted.sensor.service"

inherit meson pkgconfig
inherit systemd
