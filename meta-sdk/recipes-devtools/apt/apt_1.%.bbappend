FILESEXTRAPATHS_prepend_imx := "${THISDIR}/${BPN}:"

SRC_URI_append_imx = " file://debian-10.list "

do_install_append_imx() {
    install -m 0644 ${WORKDIR}/debian-10.list ${D}${sysconfdir}/apt/sources.list.d/
}
