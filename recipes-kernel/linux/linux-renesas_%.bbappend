FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Add-DTS-for-LogicPD-dev-kit.patch \
	file://0002-Enable-FLL-for-sound-card.patch \
	file://0001-ov5640-camera-changes-for-async-register-and-rate-co.patch \
	file://Enable-HDMI-I2S.cfg \
	file://Enable-ov5640.cfg \
            "

COMPATIBLE_MACHINE_append = "|logicpd-rzg2m"

# Device tree for RZG2M
KERNEL_DEVICETREE = " \
    renesas/r8a774a1-logicpd-rzg2m.dtb \
"

