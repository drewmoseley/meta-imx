PACKAGECONFIG_append_class-target_imx = " examples"

PARALLEL_MAKEINST_imx = ""
PARALLEL_MAKE_task-install_imx = "${PARALLEL_MAKEINST}"

do_install_append_imx() {
if ls ${D}${libdir}/pkgconfig/Qt5*.pc >/dev/null 2>&1; then
    sed -i 's,-L${STAGING_DIR_HOST}/usr/lib,,' ${D}${libdir}/pkgconfig/Qt5*.pc
fi
}
