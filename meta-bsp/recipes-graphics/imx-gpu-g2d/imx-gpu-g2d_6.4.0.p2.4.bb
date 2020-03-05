require recipes-graphics/imx-gpu-g2d/imx-gpu-g2d_6.2.4.p4.0.bb

LIC_FILES_CHKSUM = "file://COPYING;md5=228c72f2a91452b8a03c4cab30f30ef9" 

FSLBIN_NAME_arm = "${PN}-${PV}-${TARGET_ARCH}"

SRC_URI[aarch64.md5sum] = "d3d73eff3d6298c75b3414ee9ddc57fe"
SRC_URI[aarch64.sha256sum] = "3977e87def081cc98d24dc7b6167374fad30ec6e17b5a8f0b0f663da59567d3b"
SRC_URI[arm.md5sum] = "df4108dd816984d0dff4ef4acbd09f57"
SRC_URI[arm.sha256sum] = "a52cf2541646b2b3fe35ab34a7ae7d37314086feec7a48d99ac1aa985953443a"
