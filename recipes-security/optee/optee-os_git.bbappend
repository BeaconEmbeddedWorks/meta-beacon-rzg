FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}/:"

COMPATIBLE_MACHINE_append = "|beacon-rzg2m|beacon-rzg2n|beacon-rzg2h"

SRC_URI_append = " \
		file://0001-Recognize-Beacon-Embedded-RZ-G2-boards.patch \
		"

# Uncomment/modify the following line to enable OPTEE OS debug logging
#EXTRA_OEMAKE_append = "CFG_TEE_CORE_LOG_LEVEL=2"
