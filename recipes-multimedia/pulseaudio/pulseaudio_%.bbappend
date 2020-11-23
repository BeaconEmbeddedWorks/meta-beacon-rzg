FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

do_install_append() {
    for keyword in \
        exit-idle-time \
    ; do
	sed -i "/$keyword/c\exit-idle-time=-1" ${D}${sysconfdir}/pulse/daemon.conf
    done

}
