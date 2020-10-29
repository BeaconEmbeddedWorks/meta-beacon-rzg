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

COMPATIBLE_MACHINE_append = "|beacon-rzg2m|beacon-rzg2n|beacon-rzg2h"

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
	file://0014-arm64-dts-beacon-renesom-baseboard-Fix-vsync.patch \
	file://0015-arm64-dts-renesas-r8a774e1-Add-HDMI-encoder-instance.patch \
	file://0016-drm-rcar-du-Fix-PHY-configure-registers.patch \
	file://0017-dts-Remove-SoC-specific-references-in-preparation-fo.patch \
	file://0018-dts-Leverage-kit-DTS-file-when-building-rgb-variant.patch \
	file://0019-dts-Add-Beacon-EmbeddedWorks-RZ-G2N-DTS-files.patch \
	file://0020-dts-Add-Beacon-EmbeddedWorks-RZ-G2H-DTS-files.patch \
	file://0021-arm64-dts-r8a774a1-beacon-rzg2m-Update-device-tree-t.patch \
	file://0022-dts-Don-t-assign-clock-rates-in-consumer-nodes.patch \
	file://0023-dts-Update-wrappers-for-all-SoC-variants-moving-alia.patch \
	file://0024-eeprom-Enable-MFG-EEPROM-decoder-for-Beacon-LPD-SOM-.patch \
	file://0025-arm64-defconfig-Enable-AT24-and-MFG-EEPROM-support.patch \
	file://0026-arm64-dts-beacon-renesom-som-Fix-RZ-G2H-and-RZ-G2N-B.patch \
	file://0027-arm64-dts-beacon-renesom-baseboard-Move-display-unit.patch \
	file://0028-arm64-dts-beacon-renesom-baseboard-Fix-PWM-for-LVDS-.patch \
	file://0029-arm64-dts-beacon-renesom-baseboard-Fix-Audio-clockin.patch \
	file://0030-RSOM-222.patch \
	file://0031-RSOM-233.patch \
	"