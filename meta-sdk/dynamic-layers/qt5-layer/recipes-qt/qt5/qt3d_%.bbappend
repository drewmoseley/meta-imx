PACKAGECONFIG_append_imx = " examples "

do_install_append_imx() {
if ls ${D}${libdir}/pkgconfig/Qt5*.pc >/dev/null 2>&1; then
    sed -i 's,-L${STAGING_DIR_HOST}/usr/lib,,' ${D}${libdir}/pkgconfig/Qt5*.pc
fi
}
