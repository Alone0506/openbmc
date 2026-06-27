FILESEXTRAPATHS:prepend := "${THISDIR}/qemu:"

SRC_URI += " \
             file://0001-add-tmp75.patch \
             file://0002-add-EEPROM-support-for-smbus-and-at24c-on-bus-6.patch \
           "
