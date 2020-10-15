# For gstreamer1.0-plugins-good v1.12.0, the subpackage gstreamer1.0-plugins-good-souphttpsrc
# has been renamed as gstreamer1.0-plugins-good-soup

RDEPENDS_${PN}-network-base_remove_imx = " gstreamer1.0-plugins-good-souphttpsrc"

RDEPENDS_${PN}-network-base_append_imx = " gstreamer1.0-plugins-good-soup "

RDEPENDS_${PN}_append_imx = " gstreamer1.0-rtsp-server "
