# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

DESCRIPTION="Slender typeface for code, from code"
HOMEPAGE="https://be5invis.github.io/Iosevka/"
SRC_URI="https://github.com/be5invis/Iosevka/releases/download/v${PV}/super-ttc-${P}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~loong ~ppc64 ~riscv ~x86"

BDEPEND="app-arch/unzip"

S="${WORKDIR}"

src_install() {
	FONT_S="${S}"
	FONT_SUFFIX="ttc"
	font_src_install
}
