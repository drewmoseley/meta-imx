
# choose wayland
PACKAGECONFIG_imx = "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '' ,d)}"

EXTRA_OECMAKE_imx = "-DBUILD_CUBE=OFF"

RDEPENDS_${PN}_append_imx = " libvulkan-imx "

COMPATIBLE_MACHINE = "(mx8)"
COMPATIBLE_MACHINE_mx8mm = "(^$)"
