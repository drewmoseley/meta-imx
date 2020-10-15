
# look for files in the layer first
FILESEXTRAPATHS_prepend_imx := "${THISDIR}/${PN}:"

SRC_URI_append_imx = " file://ftpget.cfg "

