SUMMARY = "NXP Wi-Fi SDK for 88w8997 and 88w8987"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://mwifiex_8997/gpl-2.0.txt;md5=ab04ac0f249af12befccb94447c08b77;"

MRVL_SRC ?= "git://source.codeaurora.org/external/imx/mwifiex.git;protocol=https"

# Kernel 5.4
SRCBRANCH_imx = "master"
SRC_URI_imx = "${MRVL_SRC};branch=${SRCBRANCH}"
SRCREV_imx = "f18705756b7000d16646fbf0bde46e91dfa70d87"

S = "${WORKDIR}/git"

RRECOMMENDS_${PN}_imx = "wireless-tools"
