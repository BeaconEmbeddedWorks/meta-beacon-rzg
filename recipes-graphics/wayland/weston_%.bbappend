
do_install_append() {
    install -d ${D}/${sysconfdir}/xdg/weston
    if [ "X${USE_MULTIMEDIA}" = "X1" ]; then
        # install weston.ini as sample settings of v4l2-renderer
        if [ "${MACHINE}" = "beacon-rzg2m" ] ; then
            install -m 644 ${WORKDIR}/weston_v4l2.ini ${D}/${sysconfdir}/xdg/weston/weston.ini
        fi
        if [ "${MACHINE}" = "beacon-rzg2n" ] ; then
            install -m 644 ${WORKDIR}/weston_v4l2.ini ${D}/${sysconfdir}/xdg/weston/weston.ini
        fi
        if [ "${MACHINE}" = "beacon-rzg2h" ] ; then
            install -m 644 ${WORKDIR}/weston_v4l2.ini ${D}/${sysconfdir}/xdg/weston/weston.ini
        fi
    fi
}
