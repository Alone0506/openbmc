# romulus qemu setting: qemu-system-native/10.0.0/qemu-10.0.0/hw/arm/aspeed.c#L584

# # need run: "git checkout v10.0.0-rc0" to instead of downloading source tarball
# SRC_URI:remove = "https://download.qemu.org/${BPN}-${PV}.tar.xz"
# # Because the QEMU GitHub repository is missing subprojects, the download feature needs to be enabled.
# EXTRA_OECONF:remove = "--disable-download"

# FILESEXTRAPATHS:prepend := "${THISDIR}:"
# SRC_URI += "file://${BPN}"
# S = "${WORKDIR}/${BPN}"