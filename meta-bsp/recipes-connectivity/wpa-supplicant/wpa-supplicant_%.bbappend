FILESEXTRAPATHS_prepend_imx := "${THISDIR}/${PN}:"

DEPENDS_append_imx = " readline"

PACKAGECONFIG_imx ??= "openssl"
