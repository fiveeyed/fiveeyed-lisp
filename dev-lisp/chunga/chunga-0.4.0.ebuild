# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit common-lisp

DESCRIPTION="Portable chunked streams for Common Lisp"
HOMEPAGE="http://weitz.de/${PN}/"
SRC_URI="http://common-lisp.net/~sionescu/ediware/${PN}_${PV}.orig.tar.gz"
LICENSE="BSD"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""
DEPEND="dev-lisp/flexi-streams
		!dev-lisp/cl-${PN}"
SLOT="0"

CLPACKAGE=${PN}

src_install() {
	common-lisp-install *.{lisp,asd}
	common-lisp-system-symlink
	dodoc CHANGELOG*
	dohtml doc/index.html
}
