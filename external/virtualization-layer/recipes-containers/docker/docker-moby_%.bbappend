do_install:append:tegra() {
    if ${@bb.utils.contains('DISTRO_FEATURES', 'sysvinit', 'true', 'false', d)};    then
        install -d ${D}${sysconfdir}/init.d
        install -m 0755 ${UNPACKDIR}/docker.init ${D}${sysconfdir}/init.d/docker.init
    fi
}

RRECOMMENDS:${PN}:append:tegra = " \
    kernel-module-br-netfilter \
    kernel-module-esp4 \
    kernel-module-ip-vs \
    kernel-module-ip-vs-rr \
    kernel-module-macvlan \
    kernel-module-nf-conntrack-netlink \
    kernel-module-nf-nat-ftp \
    kernel-module-nf-nat-redirect \
    kernel-module-nf-nat-tftp \
    kernel-module-overlay \
    kernel-module-veth \
    kernel-module-xt-addrtype \
    kernel-module-xt-conntrack \
    kernel-module-xt-redirect \
"

PACKAGE_ARCH:tegra = "${TEGRA_PKGARCH}"
