FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://0001-kms-steal-crtc-Fix-crash.-Add-screen-cmd-line-parame.patch \
    file://0002-Add-rcar-du-as-a-possible-module.patch \
"
