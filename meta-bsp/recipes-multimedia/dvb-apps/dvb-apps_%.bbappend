FILESEXTRAPATHS_prepend_imx := "${THISDIR}/${PN}:"

SRC_URI_append_imx = " file://0001-test_dvr_play-changed-to-output-TS.patch \
"

do_compile_imx () {
    # Enable static lib as test build needs it
    export enable_static="yes"

    # Build test to generate test_dvr_play
    cd ${S}
    oe_runmake -C lib
    oe_runmake -C util
    oe_runmake -C test
}

do_install_append_imx() {
    install -d ${D}${bindir}
    if [ -e ${S}/test/test_dvr_play ]; then
        cp ${S}/test/test_dvr_play ${D}${bindir}
    fi
}

