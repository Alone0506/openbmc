# need run: "git checkout v10.0.0-rc0" to instead of downloading source tarball
SRC_URI:remove = "https://download.qemu.org/${BPN}-${PV}.tar.xz"
# Because the QEMU GitHub repository is missing subprojects, the download feature needs to be enabled.
EXTRA_OECONF:remove = "--disable-download"

FILESEXTRAPATHS:prepend := "${THISDIR}:"
SRC_URI += "file://${BPN}"
S = "${WORKDIR}/${BPN}"

# do_unpack:append() {
#     if [ -d "${S}/.git" ]; then
#         cd "${S}"
#         git checkout v10.0.0-rc0
#     fi
# }

# do_gitcheckout() {
#     if [ -d "${S}/.git" ]; then
#         cd "${S}"
#         git checkout v10.0.0-rc0
#     fi
# }

# addtask gitcheckout after do_unpack before do_patch

# python do_unpack:append() {
#     import os, subprocess
#     s = d.getVar('S')
#     if os.path.isdir(os.path.join(s, '.git')):
#         subprocess.check_call(['git', '-C', s, 'checkout', 'v10.0.0-rc0'])
# }