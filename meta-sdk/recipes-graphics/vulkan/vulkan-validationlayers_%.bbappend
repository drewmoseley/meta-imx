FILESEXTRAPATHS_prepend_imx := "${THISDIR}/${BPN}:"

SRC_URI_append_imx = " \
    file://icd_VSI.json \
    file://0001-CMakeLists.txt-Change-the-installation-path-of-JSON-.patch \
"
# choose wayland
PACKAGECONFIG_imx = "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '' ,d)}"

DEPENDS_append_imx = " virtual/egl glslang spirv-tools "

EXTRA_OECMAKE_remove_imx = "-DBUILD_LAYERS=OFF"
# Enable validation layers
EXTRA_OECMAKE_append_imx = " -DBUILD_LAYERS=ON"

do_install_append_imx () {

    install -d ${D}${sysconfdir}/vulkan/icd.d
    cp ${WORKDIR}/icd_VSI.json ${D}${sysconfdir}/vulkan/icd.d
    sed -i "s,/usr/lib,${libdir}," ${D}${sysconfdir}/vulkan/icd.d/icd_VSI.json
    sed -i "s,1.0.30,${PV}," ${D}${sysconfdir}/vulkan/icd.d/icd_VSI.json
}

FILES_SOLIBSDEV_imx = ""
FILES_${PN}_append_imx = " ${libdir}/libVkLayer_*.so "

# The package libvulkan-imx is required to configure the imx-gpu-viv vulkan drivers for the validation layers
RDEPENDS_${PN}_append_imx = " libvulkan-imx "

INSANE_SKIP_${PN} = "dev-so"

COMPATIBLE_MACHINE = "(mx8)"
COMPATIBLE_MACHINE_mx8mm = "(^$)"
