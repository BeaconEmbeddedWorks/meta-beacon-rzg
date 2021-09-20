SUMMARY = "Packages used for test and demo for Beacon EmbeddedWorks kits"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit packagegroup

PACKAGES = "${PN} ${PN}-misc ${PN}-touch ${PN}-test ${PN}-net ${PN}-fs ${PN}-audio"

RDEPENDS_${PN} = "\
    ${PN}-misc \
    ${PN}-touch \
    ${PN}-test \
    ${PN}-net \
    ${PN}-fs \
    ${PN}-audio \
    "

SUMMARY_${PN}-audio = "Audio server support"
RDEPENDS_${PN}-audio = "pulseaudio pulseaudio-server pulseaudio-misc"
RDEPENDS_${PN}-audio += " packagegroup-tools-bluetooth"

SUMMARY_${PN}-misc = "Misc utilities"
RDEPENDS_${PN}-misc = "htop mmc-utils minicom less lrzsz mtools procps ldd"

SUMMARY_${PN}-touch = "Touch software"
RDEPENDS_${PN}-touch = "tslib tslib-conf tslib-tests tslib-calibrate \
			weston-examples pointercal"

SUMMARY_${PN}-test = "Test software"
RDEPENDS_${PN}-test = "fbset evtest spitools test-neon \
			memtester linpack whetstone dhrystone \
			cpufrequtils devmem2 u-boot-fw-utils"

SUMMARY_${PN}-net = "Networking / Cellular"

#Bluetooth test software
RDEPENDS_${PN}-net = " bluez5-noinst-tools"

#Network / WiFi
RDEPENDS_${PN}-net += " bridge-utils hostapd"

#PPP / Cellular
RDEPENDS_${PN}-net += " ppp libmbim glibc-gconvs glibc-utils"

#GNSS
RDEPENDS_${PN}-net += " gpsd gps-utils"

#Misc network utilities
RDEPENDS_${PN}-net += " curl"

SUMMARY_${PN}-fs = "File system support"
#Support for NTFS
RDEPENDS_${PN}-fs = "ntfs-3g ntfsprogs libntfs-3g"

#Support for additional ext2/3/4
RDEPENDS_${PN}-fs = " e2fsprogs-resize2fs e2fsprogs-tune2fs"
