# Copyright (C) 2020 Compass Electronics Group, LLC

DESCRIPTION = "Custom config scripts for GPNSS suppporting Beacon EmbeddedWorks kits."

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://gpsd.default  	\
	file://gpsd.rules	\
 "

do_install_append() {
    install -m 0644 ${WORKDIR}/gpsd.default ${D}/${sysconfdir}/default/gpsd.default
    install -m 0644 ${WORKDIR}/gpsd.rules ${D}/${sysconfdir}/udev/rules.d/
}
