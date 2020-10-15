FILESEXTRAPATHS_prepend_imx := "${THISDIR}/${PN}:"

SRC_URI_append_imx = " file://0001-glad-Fix-EGL-loading-for-EGL_NO_DISPLAY-on-EGL-1.5-a.patch "
