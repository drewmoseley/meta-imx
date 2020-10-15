FILESEXTRAPATHS_prepend_imx := "${THISDIR}/files:"

SRC_URI_append_imx = " \
            file://psplash-start.service \
            file://psplash-basic.service \
            file://psplash-network.service \
            file://psplash-quit.service \
            "

inherit ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}

SYSTEMD_PACKAGES_imx = "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', '${PN}', '', d)}"
SYSTEMD_SERVICE_${PN}_append_imx = "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', ' psplash-start.service psplash-basic.service psplash-network.service psplash-quit.service', '', d)}"

do_install_append_imx () {
    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
        install -d ${D}${systemd_unitdir}/system
        install -m 644 ${WORKDIR}/*.service ${D}/${systemd_unitdir}/system
    fi
}
