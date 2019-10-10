FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Add-DTS-for-LogicPD-dev-kit.patch \
	 file://0001-Split-device-tree-based-on-LogicPD-SOM-architecture.patch \
	 file://0002-Enable-FLL-for-sound-card.patch \
     file://Enable-HDMI-I2S.cfg \
            "

COMPATIBLE_MACHINE_append = "|logicpd-rzg2m"

# Device tree for RZG2M
KERNEL_DEVICETREE = " \
    renesas/r8a774a1-logicpd-rzg2m.dtb \
"

