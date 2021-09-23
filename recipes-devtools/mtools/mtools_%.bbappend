FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}/:"

SRC_URI_append = " \
	file://mtools.conf \
"

do_install_append () {
	mkdir -p ${D}${sysconfdir}
	install -m 0644 ${WORKDIR}/mtools.conf ${D}${sysconfdir}/mtools.conf
}
