# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_PN="fcitx5-cskk"

SRC_URI="https://github.com/fcitx/fcitx5-cskk/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION="Japanese CSKK input methods for Fcitx"
HOMEPAGE="https://github.com/fcitx/fcitx5-cskk"

KEYWORDS="~amd64"
LICENSE="GPL-3.0"
SLOT="1"

BDEPEND=""

DEPEND="dev-util/cmake
	kde-frameworks/extra-cmake-modules
	>=app-i18n/fcitx-5
	dev-qt/qtcore
	dev-qt/qtdeclarative"

src_unpack() {
	unpack ${A}
	mv ${WORKDIR}/${MY_PN}-${PV} ${WORKDIR}/${P}
}

src_compile() {
	mkdir build
	cd build
	CMAKE_INSTALL_PREFIX="${D}/usr" cmake ..
	make
	make install
}
