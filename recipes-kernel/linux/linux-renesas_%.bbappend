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
	   file://mfg_eeprom.cfg \
	   file://Enable-fuse.cfg \
	   file://Enable-GoodIx.cfg \
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
	file://0012-arm64-dts-beacon-renesom-baseboard-Fix-vsync.patch \
	file://0013-drm-rcar-du-Fix-PHY-configure-registers.patch \
	file://0014-dts-Remove-SoC-specific-references-in-preparation-fo.patch \
	file://0015-dts-Leverage-kit-DTS-file-when-building-rgb-variant.patch \
	file://0016-dts-Add-Beacon-EmbeddedWorks-RZ-G2N-DTS-files.patch \
	file://0017-dts-Add-Beacon-EmbeddedWorks-RZ-G2H-DTS-files.patch \
	file://0018-arm64-dts-r8a774a1-beacon-rzg2m-Update-device-tree-t.patch \
	file://0019-dts-Don-t-assign-clock-rates-in-consumer-nodes.patch \
	file://0020-dts-Update-wrappers-for-all-SoC-variants-moving-alia.patch \
	file://0021-arm64-dts-beacon-renesom-som-Fix-RZ-G2H-and-RZ-G2N-B.patch \
	file://0022-arm64-dts-beacon-renesom-baseboard-Move-display-unit.patch \
	file://0023-arm64-dts-beacon-renesom-baseboard-Fix-PWM-for-LVDS-.patch \
	file://0024-arm64-dts-beacon-renesom-baseboard-Fix-Audio-clockin.patch \
	file://0025-RSOM-233.patch \
	file://0026-RSOM-229.patch \
	file://0027-RSOM-229.patch \
	file://0028-RSOM-186.patch \
	file://0029-RSOM-186.patch \
	file://0030-RSOM-221-Spidev-warning.patch \
	file://0031-RSOM-186-Fix-AVB-TXC-refclock-reference.patch \
	file://0032-RSOM-186-Fix-AVB-TXC-refclock-reference.patch \
	file://0033-RSOM-186-Fix-AVB-TXC-refclock-reference.patch \
	file://0034-RSOM-186-Fix-AVB-TXC-refclock-reference.patch \
	file://0035-arm64-dts-renesas-beacon-Increase-SDIO-on-WiFi-Chip-.patch \
	file://0036-arm64-dts-renesas-beacon-som-Enable-HS400-on-eMMC.patch \
	file://0037-clk-versaclock5-Update-from-5.11-rc2.patch \
	file://0038-clk-vc5-Add-support-for-optional-load-capacitance.patch \
	file://0039-arm64-dts-renesas-beacon-kits-Enable-Versaclock-load.patch \
	file://0040-arm64-dts-renesas-beacon-som-Reserve-memory-for-loss.patch \
	file://0041-arm64-dts-renesas-beacon-baseboard-Enable-Microphone.patch \
	file://0042-arm64-dts-beacon-renesom-Disable-non-functioning-RGB.patch \
	file://0043-arm64-dts-beacon-renesom-Add-missing-misof-clock-nod.patch \
	file://0044-drm-rcar-du-backport-panel-bridge.patch \
	file://0045-RSOM-324-update-device-tree-with-global-CMA-phandle-.patch \
	file://0046-RSOM-222-rcar-du-support-display-bus_flags.patch \
	file://0047-RSOM-257-Change-rise-time-to-more-closely-match-boar.patch \
	file://0048-RSOM-319-Change-PWM-settings-for-DPI-backlight.patch \
	file://0049-RSOM-102-Update-RZ-G2H-SoC-dtsi-file.patch \
	file://0050-RSOM-102-Add-SPI-controller-nodes-and-SPIDEV-for-SPI.patch \
	file://0051-RSOM-102-update-outer-files-for-RZ-G2M-kits-for-SPI.patch \
	file://0052-RSOM-102-update-outer-files-for-RZ-G2N-kits-for-SPI.patch \
	file://0053-RSOM-102-update-outer-files-for-RZ-G2H-kits-for-SPI.patch \
	file://0054-drm-panel-simple-add-panel-dpi-support-The-panel-dpi.patch \
	file://0055-arm64-dts-beacon-renesas-baseboard-Move-RGB-LCD-to-p.patch \
	file://0056-usb-host-xhci-rcar-Don-t-reload-firmware-after-the-c.patch \
	file://0057-arm64-dts-r8a774-abe-1-Add-usb-clock-select.patch \
	file://0058-arm64-dts-renesas-beacon-Enable-usb-clock-selector.patch \
	file://0059-arm64-dts-renesas-beacon-Reduce-WiFi-IRQ-flood.patch \
	file://0060-arm64-dts-beacon-renesom-Fix-broken-video-on-Pilot.patch \
	file://0061-Add-SPI-chipselect.patch \
	file://0062-dts-beacon-add-missing-usb-phy-ref.patch \
	file://0063-arm64-renesas-beacon-Fix-USB-C-device-mode.patch \
	file://0064-Add-new-DTS-file-to-add-new-LVDS-panel.patch \
	file://0065-arm64-dts-beacon-renesom-baseboard-Add-Support-for-2.patch \
	file://0066-media-i2c-imx219-Add-support-for-four-lane-mode.patch \
	file://0067-arm64-dts-rzg2-beacon-Enable-4-Lane-CSI-camera.patch \
	file://0068-Change-device-tree-from-4GB-to-8GB-DRAM-config-for-H.patch \
	"
	
LINUX_VERSION_EXTENSION = "-1.0.4"
LOCALVERSION = "+beacon-${LINUX_VERSION_EXTENSION}"
