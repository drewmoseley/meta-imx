# Fix 'systemctl stop tcf-agent' failed issue in tcf-agent.service file
#  https://patchwork.openembedded.org/patch/133588/

FILESEXTRAPATHS_prepend_imx := "${THISDIR}/tcf-agent:"
