
# choose wayland
PACKAGECONFIG_imx = "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '' ,d)}"

SRC_URI_append_imx = " file://0001-STDIO-844-No-need-to-change-the-App-s-apiVersion-to-.patch"

COMPATIBLE_MACHINE = "(mx8)"
COMPATIBLE_MACHINE_mx8mm = "(^$)"
