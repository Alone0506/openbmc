FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
             file://0001-add-tmp75-at-bus9-reg0x4d.patch \
             file://0002-add-EEPROM-support-for-Atmel-24C64-on-I2C6.patch \
           "
