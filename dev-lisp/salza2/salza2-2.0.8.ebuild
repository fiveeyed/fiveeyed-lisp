# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Library for creating compressed data in the ZLIB, DEFLATE, or GZIP data formats"
HOMEPAGE="http://www.xach.com/lisp/salza2/"
SRC_URI="mirror://gentoo/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

src_install() {
	common-lisp-install-sources *.lisp
	common-lisp-install-asdf
	dohtml doc/index.html
}
