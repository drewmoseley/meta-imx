# Append to remove /proc/cpu/aligntment from alignmnet script
FILESEXTRAPATHS_prepend_imx := "${THISDIR}/arm:"

SRC_URI_append_imx = " file://alignment.sh "

PACKAGE_ARCH_imx = "${MACHINE_ARCH}"
