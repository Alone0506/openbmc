SUMMARY = "Sensor daemon for practice"
DESCRIPTION = "Sensor daemon for practice"
HOMEPAGE = "https://github.com/Alone0506/phosphor-ted-dbus-interface"
LICENSE = "CLOSED"
DEPENDS += "sdbusplus"
DEPENDS += "phosphor-dbus-interfaces"
DEPENDS += "phosphor-logging"

FILESEXTRAPATHS:prepend := "${THISDIR}:"
SRC_URI = "file://${BPN}"
S = "${WORKDIR}/${BPN}"
SYSTEMD_SERVICE:${PN} = "phosphor-ted-dbus-interface.service"

inherit meson pkgconfig
inherit systemd
