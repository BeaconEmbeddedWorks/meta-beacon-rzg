# Copyright (C) 2020 Compass Electronic Solutions LLC.

DESCRIPTION = "Renesas RZ/G2 U-Boot suppporting Beacon Embedded Works kits."

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

#END_HEADER

SRC_URI += " \
	file://0001-Add-all-files-for-Beacon-Embedded-Works-RZ-G2M-kit.patch \
	file://0002-arm-dts-Resync-dtsi-files-with-kernel-4.19-from-Beac.patch \
	file://0003-configs-beacon-rzg2m-Correct-Copyrights-to-reflect-C.patch \
	file://0004-configs-beacon-rzg2m.h-Simplify-Boot-scripts.patch \
	file://0005-configs-r8a774a1_beacon-rzg2m-Enable-CMD_PART.patch \
	file://0006-configs-beacon-rzg2m.h-Fix-loading-addresses.patch \
	file://0007-beacon-rzg2m-Configure-RAMdisk-scripts-for-booting.patch \
	file://0008-arm64-beacon-rzg2m-Enable-Auto-detection-of-M-N-H-va.patch \
	file://0009-RSOM-212-u-boot-for-each-SOM-type.patch \
	file://0010-RSOM-212-u-boot-for-each-SOM-type.patch \
	"
