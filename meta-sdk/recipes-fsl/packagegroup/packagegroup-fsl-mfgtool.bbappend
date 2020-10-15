# Add extra tools needed for Android mfgtools

RDEPENDS_${PN}-base_append_imx = " \
    simg2img \
    gptfdisk \
    hdparm \
    iproute2 \
    nfs-utils \
"

RDEPENDS_${PN}-extfs_append_imx = " \
    e2fsprogs \
    f2fs-tools \
"
