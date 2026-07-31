FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI = "file://coretemp.conf file://${BPN}"
SRC_URI:append = " file://debug_scripts/test.sh"
S = "${UNPACKDIR}/${BPN}"

do_install:append() {
    install -d -m 0755 ${S}/tools/dreport.d/plugins.d
    install -m 0755 ${UNPACKDIR}/debug_scripts/test.sh \
        ${S}/tools/dreport.d/plugins.d/test
}
