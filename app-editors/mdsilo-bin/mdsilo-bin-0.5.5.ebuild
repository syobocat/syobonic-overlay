# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit xdg-utils

SRC_URI="https://github.com/mdSilo/mdSilo-app/releases/download/app-v${PV}/mdsilo_${PV}_amd64.deb"
DESCRIPTION="Open platform for Reading, Writing and Collaboration"
HOMEPAGE="https://mdsilo.com/"

KEYWORDS="-* ~amd64"
LICENSE="AGPL-3.0"
SLOT="0"

BDEPEND=""

DEPEND="dev-libs/glib
	>=dev-libs/openssl-3
	net-libs/webkit-gtk:4/37
	x11-libs/cairo
	x11-libs/gdk-pixbuf
	x11-libs/gtk+"

RDEPEND="${DEPEND}
	x11-themes/hicolor-icon-theme"

src_unpack() {
	unpack ${A}
	mkdir ${S}
	tar -xf ${WORKDIR}/data.tar.gz -C ${S}
}

src_install() {
	cp -R "${S}/usr" "${D}" || die
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}
