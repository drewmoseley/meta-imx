# Copyright 2017-2019 NXP
 
DEPENDS = "zlib-native openssl-native"

SRCBRANCH = "imx_5.4.47_2.2.0"
IMX_MKIMAGE_SRC ?= "git://source.codeaurora.org/external/imx/imx-mkimage.git;protocol=https"
SRC_URI = "${IMX_MKIMAGE_SRC};branch=${SRCBRANCH}"
SRCREV = "8da5cd231881df44b5fa21a36820536d86e413db"
S = "${WORKDIR}/git"

BOOT_TOOLS = "imx-boot-tools"
SYSROOT_DIRS += "/boot"
