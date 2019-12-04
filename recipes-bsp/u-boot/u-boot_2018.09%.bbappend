# Copyright (C) 2019 Logic PD

DESCRIPTION = "Renesas RZ/G2 U-Boot suppporting RZ/G2 Logic PD kits."

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
	    file://0001-Add-Logic-PD-defconfig-for-rz-g2m.patch \
	    file://0002-Add-LogicPD-u-boot-device-tree-source-for-rz-g2m-kit.patch \
            "
