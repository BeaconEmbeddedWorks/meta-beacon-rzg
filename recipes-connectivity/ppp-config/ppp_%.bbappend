# Copyright (C) 2020 Compass Electronics Group, LLC

DESCRIPTION = "Custom config script for PPP suppporting Beacon EmbeddedWorks kits."

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://options	\
	file://att  	\
	file://att-chat	\
 "

do_install_append() {
    install -d ${D}${sysconfdir}/ppp/peers
    install -m 0755 ${WORKDIR}/options ${D}${sysconfdir}/ppp/
    install -m 0755 ${WORKDIR}/att ${D}${sysconfdir}/ppp/peers/
    install -m 0755 ${WORKDIR}/att-chat ${D}${sysconfdir}/ppp/peers/
}

