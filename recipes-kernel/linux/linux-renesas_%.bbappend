FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Add-DTS-for-LogicPD-dev-kit.patch"

COMPATIBLE_MACHINE_append = "|logicpd-rzg2m"

# Device tree for RZG2M
KERNEL_DEVICETREE = " \
    renesas/r8a774a1-logicpd-rzg2m.dtb \
"

