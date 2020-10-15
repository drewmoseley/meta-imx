RDEPENDS_${PN}-tests_imx = "python"

do_install_append_imx() {
	install -d ${D}${libdir}/connman/test
        install -m 0755 ${S}/test/* ${D}${libdir}/connman/test/
}

FILES_${PN}-tests_append_imx = " ${libdir}/connman/test/* "
