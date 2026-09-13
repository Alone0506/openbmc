FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# for other machines
EVB_AST2600_KERNEL_FILES = ""

# for evb-ast2600 machine
EVB_AST2600_KERNEL_FILES:evb-ast2600 = " \
    file://0001-add-tmp75-at-bus9-reg0x4d.patch \
    file://0002-add-EEPROM-support-for-Atmel-24C64-on-I2C6.patch \
    file://0003-add-Kirito-C8763-temperature-sensor-driver-and-devic.patch \
    file://0004-Add-the-LTC2497-ADC-and-16-channels.patch \
    file://config.cfg \
"

SRC_URI += "${EVB_AST2600_KERNEL_FILES}"
