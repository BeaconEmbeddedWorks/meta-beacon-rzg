SUMMARY = "Boot file generator"
DESCRIPTION = "Generate Boot Image (flashbin) for Renesas RZ/G2 SoCs"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
SECTION = "BSP"

COMPATIBLE_MACHINE = "(beacon-rzg2m|beacon-rzg2n|beacon-rzg2h)"
PACKAGE_ARCH = "${MACHINE_ARCH}"

inherit deploy

# Build Tool dependancies
DEPENDS_append = " \
	srecord-native \
"

# Target dependencies
DEPENDS_append = " \
	u-boot \
	arm-trusted-firmware \
"

# This package aggregates output deployed by other packages,
# so set the appropriate dependencies
do_compile[depends] += " \
	virtual/bootloader:do_deploy \
	arm-trusted-firmware:do_deploy \
"

ATF_BL31_NAME = "bl31-${MACHINE}.bin"
ATF_BL2_NAME = "bl2-${MACHINE}.bin"

UBOOT_NAME = "u-boot-${MACHINE}.bin"

SOC_TARGET ?= "${MACHINE}"

SOC_DIR ?= "${SOC_TARGET}"

RZG2BOOT_TARGETS ?= "${MACHINE}-flashbin.bin ${MACHINE}-flashbin.srec"

do_compile () {
	echo RZ/G2 boot binary build

	mkdir -p ${S}/${SOC_DIR}/
	cp ${DEPLOY_DIR_IMAGE}/bootparam_sa0.bin	${S}/${SOC_DIR}/
	cp ${DEPLOY_DIR_IMAGE}/${ATF_BL2_NAME} 		${S}/${SOC_DIR}/
	cp ${DEPLOY_DIR_IMAGE}/cert_header_sa6.bin	${S}/${SOC_DIR}/
	cp ${DEPLOY_DIR_IMAGE}/${ATF_BL31_NAME}    	${S}/${SOC_DIR}/
	cp ${DEPLOY_DIR_IMAGE}/${UBOOT_NAME}   		${S}/${SOC_DIR}/

	cd ${S}/${SOC_DIR}/
	# Edit SA6 file to add partition information for use in eMMC boot
	# NOTE: this step should be removed once TF-A is updated for Beacon
	printf "\01" | dd of=cert_header_sa6.bin seek=16 bs=1 count=1 conv=notrunc
	printf "\01" | dd of=cert_header_sa6.bin seek=32 bs=1 count=1 conv=notrunc
	printf "\01" | dd of=cert_header_sa6.bin seek=48 bs=1 count=1 conv=notrunc

	img_name=${MACHINE}-flashbin
	img=${img_name}.bin
	# Create "flashbin" file according to Renesas instructions for QSPI
	# inserting a copies to bl2 and SA6 for eMMC boot
	# NOTE: I believe that having a copy of bl2 seems to be a requirement of
	# the boot ROM. Once we have a beacon version of TF-A the extra SA6 can
	# be dropped. (maybe)
	dd if=bootparam_sa0.bin     of=${img} bs=1 seek=0

	# eMMC copies
	dd if=${ATF_BL2_NAME}     of=${img} bs=1 seek=`printf "%d" 0x003C00` conv=notrunc
	dd if=cert_header_sa6.bin of=${img} bs=1 seek=`printf "%d" 0x030000` conv=notrunc
	# QSPI copies
	dd if=${ATF_BL2_NAME}     of=${img} bs=1 seek=`printf "%d" 0x040000` conv=notrunc
	dd if=cert_header_sa6.bin of=${img} bs=1 seek=`printf "%d" 0x180000` conv=notrunc

	dd if=${ATF_BL31_NAME}    of=${img} bs=1 seek=`printf "%d" 0x1C0000` conv=notrunc
	dd if=${UBOOT_NAME}       of=${img} bs=1 seek=`printf "%d" 0x300000` conv=notrunc

	srec_cat ${img} -binary -offset 0x50000000 -un_fill 0 16 -output ${img_name}.srec -address-length=4

	for target in ${RZG2BOOT_TARGETS}; do
		cp ${target} ${S}
	done

	# Works kind of like popdir. pushdir/popdir are not implemented.
	cd -
}

do_install[noexec] = "1"

do_deploy () {
	# copy the generated boot image to deploy path
	for target in ${RZG2BOOT_TARGETS}; do
		install -m 0644 ${S}/${target} ${DEPLOYDIR}
	done
}

addtask deploy before do_build after do_compile
