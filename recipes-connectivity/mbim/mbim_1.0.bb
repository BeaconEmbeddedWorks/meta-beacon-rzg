#Copyright 2022 Logic PD, Inc dba Beacon EmbeddedWorks

DESCRIPTION = "Quectel cellular modem config files"
LICENSE = "MIT"

LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
RDEPENDS_${PN} += "bash"

SRC_URI += " \
     file://mbim-network.conf \
     file://mbim-set-ip \
 "
 
do_install() {
   # These files are used for Quectel Cellular modem  
    
   install -d ${D}${sysconfdir}/
   install -m 0644    ${WORKDIR}/mbim-network.conf       ${D}${sysconfdir}/
   install -m 0644    ${WORKDIR}/mbim-set-ip       ${D}${sysconfdir}/
}

