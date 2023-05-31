FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE_append = "|beacon-rzg2m|beacon-rzg2n|beacon-rzg2h"

ATFW_OPT_append = " LOG_LEVEL=20"
ATFW_OPT_remove = "SPD=none"
ATFW_OPT_append = " SPD=opteed"
#DDR sizes supported for Beacon RZG2H Platform 4GB and 8GB (default) uncomment the line below to set it to 4GB "
#ATFW_OPT_append = " BEACON_RZG2H_DDR_SIZE=4"

SRC_URI += "file://0001-plat-rzg-Add-support-for-Beacon-RZ-G2M-SOM.patch \
	    file://0002-rzg-drivers-pfc-Support-Beacon-Boards.patch \
            file://0001-Implement-GPIO-poweroff-for-Beacon-boards.patch \
            file://0003-Changed-the-logging-level-on-various-messages.patch \
            file://0004-Change-dram-init-memory-code-to-handle-8GB-config-fo.patch \
            file://0005-Squelching-some-ATF-splat-for-cleaner-boot-log.patch \
            file://0006-The-ATF-code-is-setting-physical-memory-conditions-i.patch \
            "

do_deploy_append() {

    # Copy IPL binaries to deploy folder
    install -m 0644 ${S}/tools/renesas/rzg_layout_create/bootparam_sa0.bin ${DEPLOYDIR}/bootparam_sa0.bin
    install -m 0644 ${S}/tools/renesas/rzg_layout_create/cert_header_sa6.bin ${DEPLOYDIR}/cert_header_sa6.bin
}
