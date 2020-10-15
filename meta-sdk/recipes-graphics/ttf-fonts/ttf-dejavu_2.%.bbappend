# Fix up the fonts to the right location
# Install the ttf files into /usr/lib/fonts directory

PATH_TTF_FONTS_imx="${libdir}/fonts"
do_install_append_imx() {
    if [ ! -d ${D}/${PATH_TTF_FONTS} ]; then
        mkdir -p ${D}/${PATH_TTF_FONTS}
        cp -d ${S}/* ${D}/${PATH_TTF_FONTS}
        chown -R root:root ${D}/${PATH_TTF_FONTS}
    fi
}

FILES_${PN}-sans_append_imx            = " ${PATH_TTF_FONTS}/DejaVuSans.ttf ${PATH_TTF_FONTS}/DejaVuSans-*.ttf "
FILES_${PN}-sans-mono_append_imx       = " ${PATH_TTF_FONTS}/DejaVuSansMono*.ttf "
FILES_${PN}-sans-condensed_append_imx  = " ${PATH_TTF_FONTS}/DejaVuSansCondensed*.ttf "
FILES_${PN}-serif_append_imx           = " ${PATH_TTF_FONTS}/DejaVuSerif.ttf ${PATH_TTF_FONTS}/DejaVuSerif-*.ttf "
FILES_${PN}-serif-condensed_append_imx = " ${PATH_TTF_FONTS}/DejaVuSerifCondensed*.ttf "
FILES_${PN}-mathtexgyre_append_imx     = " ${PATH_TTF_FONTS}/DejaVuMathTeXGyre.ttf "


