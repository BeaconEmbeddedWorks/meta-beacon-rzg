FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE_append = "|beacon-rzg2m|beacon-rzg2n|beacon-rzg2h"

SRC_URI += "file://0001-Modify-DDR-parameters-for-beacon-dev-kit.patch \
            file://0002-Handle-GPIO-poweroff-signal.patch \
            file://0003-RSOM-32-configure-GPIO-5_09-as-input-for-use-as-touc.patch \
            file://0004-RSOM-148-Surpress-printing-of-board-name-in-beacon-b.patch \
            file://0005-Modify-RZ-G2N-to-work-on-Beacon-EmbeddedWorks-RZ-G2N.patch \
            "

