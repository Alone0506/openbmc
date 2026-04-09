SUMMARY = "Sensor daemon for practice"
DESCRIPTION = "Sensor daemon for practice"
HOMEPAGE = "https://github.com/Alone0506/phosphor-ted-sensor-monitor"
LICENSE = "CLOSED"
DEPENDS += "sdbusplus"
DEPENDS += "phosphor-logging"

FILESEXTRAPATHS:prepend := "${THISDIR}:"
SRC_URI = "file://${BPN}"
S = "${UNPACKDIR}/${BPN}"
SYSTEMD_SERVICE:${PN} = "phosphor-ted-sensor-monitor.service"

inherit meson pkgconfig
inherit systemd
