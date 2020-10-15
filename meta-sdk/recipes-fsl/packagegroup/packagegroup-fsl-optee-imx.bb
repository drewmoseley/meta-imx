# Copyright 2017-2018 NXP
# Released under the MIT license (see COPYING.MIT for the terms)
COMPATIBLE_MACHINE = "(mx6|mx7|mx8)"

DESCRIPTION = "Add extra packages for optee build"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

inherit packagegroup

RDEPENDS_${PN} += "optee-client optee-os optee-test"
