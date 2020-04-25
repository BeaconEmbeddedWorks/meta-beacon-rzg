# Copyright (C) 2020 Compass Electronic Solutions LLC.

DESCRIPTION = "Renesas RZ/G2 U-Boot suppporting Beacon Embedded Works kits."

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
	file://0001-Add-all-files-for-Beacon-Embedded-Works-RZ-G2M-kit.patch \
            "
