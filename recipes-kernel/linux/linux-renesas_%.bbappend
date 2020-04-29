FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
	   file://Enable-ov5640.cfg \
	   file://Enable-HDMI-I2S.cfg \
           "

COMPATIBLE_MACHINE_append = "|beacon-rzg2m"

#END_HEADER

SRC_URI += " \
	file://0001-Introduce-Beacon-Device-Tree-files.patch \
	file://0002-DTS-updates-for-USB-and-clocks-and-audiio.patch \
	file://0003-Add-support-to-versaclock-driver-for-multiple-instan.patch \
	file://0004-Working-USB2-OTG-hub.-Working-clocks-hack-.-Ethernet.patch \
	file://0005-Ethernet-Phy-hack-to-get-GigE-working.patch \
	file://0006-Add-Renesas-provided-patch-for-32-bit-PCI-bridge-sup.patch \
	file://0007-Set-output-mode-on-output-2-to-get-camera-working.patch \
	file://0008-DT-changes-to-support-camera.patch \
	file://0009-Get-camera-working-from-a-DT-standpoint.patch \
	file://0010-Add-production-ready-versaclock-driver.patch \
	file://0011-Backport-some-changes-to-the-DU-driver-to-support-RG.patch \
	file://0012-rtc-pcf85363-Add-support-for-NXP-pcf85263-rtc.patch \
	file://0013-rtc-pcf85363-remove-unused-struct-pcf85363-member.patch \
	file://0014-rtc-pcf85363-set-range.patch \
	file://0015-rtc-pcf85363-remove-bogus-i2c-functionality-check.patch \
	file://0016-rtc-pcf85363-remove-useless-forward-declaration.patch \
	file://0017-rtc-pcf85363-convert-to-SPDX-identifier.patch \
	file://0018-Touch-Backport-updated-support-for-ili210x-TS-contro.patch \
	file://0019-Remove-custom-logic-and-beacon-dts-i-files.patch \
	file://0020-ov5640-Add-pixel-rate-control-required-by-rcar-vin.patch \
	file://0021-Re-add-Beacon-DT-files.patch \
	"