FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
	   file://Enable-ov5640.cfg \
	   file://Enable-HDMI-I2S.cfg \
	   file://Enable-PPP.cfg \
	   file://Enable-USB-net.cfg \
	   file://Enable-USB-serial.cfg \
	   file://Enable-USB-audio.cfg \
	   file://Enable-USB-gadget.cfg \
	   file://Enable-GNSS.cfg \
	   file://bluetooth.cfg \
	   file://wifi.cfg \
	   file://Enable-fuse.cfg \
           "

COMPATIBLE_MACHINE_append = "|beacon-rzg2m"

#END_HEADER

SRC_URI += " \
	file://0001-clk-versaclk5-add-multi-instance-capability.patch \
	file://0002-arm64-configs-Add-beacon_rzg2_defconfig.patch \
	file://0003-ov5640-Add-pixel-rate-control-required-by-rcar-vin.patch \
	file://0004-Touch-Backport-updated-support-for-ili210x-TS-contro.patch \
	file://0005-rtc-pcf85363-Add-support-for-NXP-pcf85263-rtc.patch \
	file://0006-rtc-pcf85363-remove-unused-struct-pcf85363-member.patch \
	file://0007-rtc-pcf85363-set-range.patch \
	file://0008-rtc-pcf85363-remove-bogus-i2c-functionality-check.patch \
	file://0009-rtc-pcf85363-remove-useless-forward-declaration.patch \
	file://0010-rtc-pcf85363-convert-to-SPDX-identifier.patch \
	file://0011-Introduce-Beacon-DTS-files-from-0db70f7e6927.patch \
	file://0012-thermal-rcar_gen3_thermal-Fix-undefined-temperature-.patch \
	file://0013-drm-rcar-Backport-DU-encoder-driver-to-support-DPI-d.patch \
	"