FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE_append = "|beacon-rzg2m|beacon-rzg2n|beacon-rzg2h"

ATFW_OPT_append = " LOG_LEVEL=20"
ATFW_OPT_remove = "SPD=none"
ATFW_OPT_append = " SPD=opteed"

SRC_URI += "file://0001-plat-rzg-Add-support-for-Beacon-RZ-G2M-SOM.patch \
	    file://0002-rzg-drivers-pfc-Support-Beacon-Boards.patch \
            file://0001-Implement-GPIO-poweroff-for-Beacon-boards.patch \
            file://0003-Changed-the-logging-level-on-various-messages.patch \
            "

do_deploy_append() {

    # Copy IPL binaries to deploy folder
    install -m 0644 ${S}/tools/renesas/rzg_layout_create/bootparam_sa0.bin ${DEPLOYDIR}/bootparam_sa0.bin
    install -m 0644 ${S}/tools/renesas/rzg_layout_create/cert_header_sa6.bin ${DEPLOYDIR}/cert_header_sa6.bin
}
