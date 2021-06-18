# Copyright (C) 2021 Compass Electronic Solutions LLC.

DESCRIPTION = "Renesas RZ/G2 U-Boot suppporting Beacon EmbeddedWorks kits."

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

#END_HEADER

SRC_URI += " \
	file://0001-clk-clk_versaclock-Add-support-for-versaclock-driver.patch \
	file://0002-configs-renesas-beacon-Enable-the-versaclock-driver.patch \
	file://0003-net-ravb-Add-additional-refclk.patch \
	file://0004-ARM-rmobile-beacon-renesom-Enable-QSPI-NOR-Flash.patch \
	file://0005-arm64-dts-renesas-Resync-beacon-renesom-files-with-K.patch \
	file://0006-configs-renesas-beacon-Enable-GPIO-Hog.patch \
	"
