# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

DESCRIPTION="A font for programmers and command line users"
HOMEPAGE="https://www.kutilek.de/sudo-font/"
SRC_URI="https://github.com/jenskutilek/sudo-font/releases/download/v${PV}/sudo.zip"
S="${WORKDIR}/sudo"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64 ~arm ~riscv"
IUSE="+ttf woff woff2"

REQUIRED_USE="|| ( ttf woff woff2 )"
src_install() {
	if use ttf; then
		FONT_S="${S}" FONT_SUFFIX="ttf" font_src_install
	fi
	if use woff; then
		FONT_S="${S}/Webfonts" FONT_SUFFIX="woff" font_src_install
	fi
	if use woff2; then
		FONT_S="${S}/Webfonts" FONT_SUFFIX="woff2" font_src_install
	fi
}
