# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-lisp/cl-hunchentoot/cl-hunchentoot-0.4.10.ebuild,v 1.2 2006/11/21 04:29:22 mkennedy Exp $

inherit common-lisp

DESCRIPTION="Hunchentoot is a web server written in Common Lisp and at the same time a toolkit for building dynamic websites with Common Lisp."
HOMEPAGE="http://weitz.de/hunchentoot/"
SRC_URI="http://common-lisp.net/~sionescu/ediware/${PN/cl-}_${PV}.orig.tar.gz"
LICENSE="BSD"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

DEPEND="dev-lisp/cl-md5
	dev-lisp/cl-base64
	dev-lisp/cl-rfc2388
	dev-lisp/cl-plus-ssl
	dev-lisp/chunga
	dev-lisp/cl-ppcre
	dev-lisp/url-rewrite
	dev-lisp/cl-who"
SLOT="0"

CLPACKAGE="hunchentoot hunchentoot-test"

S=${WORKDIR}/hunchentoot-${PV}

src_install() {
	common-lisp-install *.{lisp,asd}
	insinto $CLSOURCEROOT/hunchentoot/test
	doins test/*
	for i in hunchentoot{,-test}; do
		dosym $CLSOURCEROOT/hunchentoot/$i.asd $CLSYSTEMROOT/$i.asd
	done
	dodoc CHANGELOG* README
	dohtml -r doc/*
}
