SRC_URI[md5sum] = "5820f5a795ad21335bbc2f96c0bebe2a"
SRC_URI[sha256sum] = "0ae843a2e7aad0c1a9bb2009e596f77872b6bd33f09762f9b064930f380fca8e"


LRD_FW_PN = "laird-lwb5-fcc-firmware"
LRD_FW_REV = "7.0.0.326"


SRC_URI_remove = "${LRD_URI_LOCAL}/laird-${BPN}-${PV}.tar.bz2"
SRC_URI = "https://github.com/LairdCP/Sterling-LWB-and-LWB5-Release-Packages/releases/download/LRD-REL-${LRD_FW_REV}/${LRD_FW_PN}-${LRD_FW_REV}.tar.bz2"
do_install() {
	mkdir  -p ${TOPDIR}/../release
	cp ${DL_DIR}/laird-lwb5-fcc-firmware-7.0.0.326.tar.bz2 ${TOPDIR}/../release
	install -d ${D}/lib/firmware/brcm
	cp -r --no-dereference --preserve=mode,links -v ${WORKDIR}/lib/firmware/* ${D}/lib/firmware 
	
}

FILES_${PN} = "/lib/firmware/brcm/*"
FILES_${PN} += "/lib/firmware/*"


