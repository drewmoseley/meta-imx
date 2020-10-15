

matchbox-base = "${@bb.utils.contains('DISTRO_FEATURES', 'x11 wayland', ' \
                                             matchbox-desktop matchbox-session-sato  matchbox-keyboard matchbox-keyboard-applet matchbox-keyboard-im matchbox-config-gtk', '', d)}"
matchbox-apps = "${@bb.utils.contains('DISTRO_FEATURES', 'x11 wayland', 'matchbox-terminal', '', d)}"

RDEPENDS_${PN}-base_remove_imx = "${matchbox-base}"
RDEPENDS_${PN}-apps_remove_imx = "${matchbox-apps} \
                                  gst-player-bin \
"
