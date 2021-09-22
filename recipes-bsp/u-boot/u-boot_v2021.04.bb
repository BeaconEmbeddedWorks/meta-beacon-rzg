require u-boot-common_${PV}.inc
require u-boot.inc

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}/:"

DEPENDS += "bc-native dtc-native"

UBOOT_URL = "git://bitbucket.logicpd.com/scm/loix/renesas-u-boot-cip.git"
BRANCH = "v2021.04-renesom"

SRC_URI = "${UBOOT_URL};branch=${BRANCH};protocol=https \
           file://fw_env.config \
"

SRCREV = "d3ae5b565898ca4d8e255c56e386b9c11eb8361a"
PV = "v2021.04+git${SRCPV}"

UBOOT_SREC_SUFFIX = "srec"
UBOOT_SREC ?= "u-boot-elf.${UBOOT_SREC_SUFFIX}"
UBOOT_SREC_IMAGE ?= "u-boot-elf-${MACHINE}-${PV}-${PR}.${UBOOT_SREC_SUFFIX}"
UBOOT_SREC_SYMLINK ?= "u-boot-elf-${MACHINE}.${UBOOT_SREC_SUFFIX}"

PACKAGE_BEFORE_PN += "${PN}-env"

RPROVIDES_${PN}-env += "u-boot-default-env"
ALLOW_EMPTY_${PN}-env = "1"
FILES_${PN}-env = " \
    ${sysconfdir}/u-boot-initial-env \
    ${sysconfdir}/fw_env.config \
"

RDEPENDS_${PN} += "${PN}-env"

do_deploy_append() {
    if [ -n "${UBOOT_CONFIG}" ]
    then
        for config in ${UBOOT_MACHINE}; do
            i=$(expr $i + 1);
            for type in ${UBOOT_CONFIG}; do
                j=$(expr $j + 1);
                if [ $j -eq $i ]
                then
                    install -m 644 ${B}/${config}/${UBOOT_SREC} ${DEPLOYDIR}/u-boot-elf-${type}-${PV}-${PR}.${UBOOT_SREC_SUFFIX}
                    cd ${DEPLOYDIR}
                    ln -sf u-boot-elf-${type}-${PV}-${PR}.${UBOOT_SREC_SUFFIX} u-boot-elf-${type}.${UBOOT_SREC_SUFFIX}
                fi
            done
            unset j
        done
        unset i
    else
        install -m 644 ${B}/${UBOOT_SREC} ${DEPLOYDIR}/${UBOOT_SREC_IMAGE}
        cd ${DEPLOYDIR}
        rm -f ${UBOOT_SREC} ${UBOOT_SREC_SYMLINK}
        ln -sf ${UBOOT_SREC_IMAGE} ${UBOOT_SREC_SYMLINK}
        ln -sf ${UBOOT_SREC_IMAGE} ${UBOOT_SREC}
    fi
}
