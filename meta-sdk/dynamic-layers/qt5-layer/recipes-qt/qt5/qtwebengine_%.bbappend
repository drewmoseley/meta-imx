FILESEXTRAPATHS_prepend_imx := "${THISDIR}/${PN}:"

SRC_URI_append_imx = " file://0001-ui_features.gni-Do-not-enable-use_xkbcommon-for-non-.patch;patchdir=src/3rdparty"

PACKAGECONFIG_append_imx = " examples "
PACKAGECONFIG[examples] = ",,qtsvg"

PARALLEL_MAKEINST_imx = ""
PARALLEL_MAKE_task-install_imx = "${PARALLEL_MAKEINST}"

do_install_append_imx() {
if ls ${D}${libdir}/pkgconfig/Qt5*.pc >/dev/null 2>&1; then
    sed -i 's,-L${STAGING_DIR_HOST}/usr/lib,,' ${D}${libdir}/pkgconfig/Qt5*.pc
fi
}
