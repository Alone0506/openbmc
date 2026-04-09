SUMMARY = "Sensor daemon for practice"
DESCRIPTION = "Sensor daemon for practice"
HOMEPAGE = "https://github.com/Alone0506/phosphor-ted-sensor"
LICENSE = "CLOSED"
DEPENDS += "sdbusplus"
DEPENDS += "phosphor-dbus-interfaces"
DEPENDS += "sdeventplus"
DEPENDS += "phosphor-logging"
DEPENDS += "nlohmann-json"

FILESEXTRAPATHS:prepend := "${THISDIR}:"
SRC_URI = "file://${BPN}"
S = "${UNPACKDIR}/${BPN}"
SYSTEMD_SERVICE:${PN} = "phosphor-ted-sensor.service"

inherit meson pkgconfig
inherit systemd
