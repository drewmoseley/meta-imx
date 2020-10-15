FILESEXTRAPATHS_prepend_imx := "${THISDIR}/${BPN}:"
FILESEXTRAPATHS_prepend_imx := "${BSPDIR}/sources/poky/meta/recipes-graphics/xorg-xserver/xserver-xorg:"

SRC_URI_append_imx = " file://0001-glamor-Use-CFLAGS-for-EGL-and-GBM.patch \
            file://0001-MGS-5186-Per-Specification-EGL_NATIVE_PIXMAP_KHR-req.patch \
            file://0002-MGS-5186-Per-Specification-EGL_NATIVE_PIXMAP_KHR-req.patch \
            file://0001-Use-GLES-Config-when-the-opengl-context-fails.patch "

PACKAGECONFIG_append_mx8 = " glamor"
