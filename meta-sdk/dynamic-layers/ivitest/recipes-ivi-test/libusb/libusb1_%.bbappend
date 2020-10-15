PROVIDES_append_imx = " ${PN}-test"

PACKAGES_append_imx = " ${PN}-test"

ALLOW_EMPTY_${PN}-test = '1'

EXTRA_OECONF_append_imx = " --enable-tests-build"

do_install_append_imx() {
	install -d ${D}${libdir}/${PN}-tests
	install -m 0755 ${WORKDIR}/build/tests/.libs/stress ${D}${libdir}/${PN}-tests/
}

FILES_${PN}-test_append_imx = " ${libdir}/${PN}-tests/* "
