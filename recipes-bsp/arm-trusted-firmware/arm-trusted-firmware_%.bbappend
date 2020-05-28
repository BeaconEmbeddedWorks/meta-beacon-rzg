FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE_append = "|beacon-rzg2m"

SRC_URI += "file://0001-Modify-DDR-parameters-for-beacon-dev-kit.patch \
            file://0001-Handle-GPIO-poweroff-signal.patch \
            "

