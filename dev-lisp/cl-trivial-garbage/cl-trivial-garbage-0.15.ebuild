# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit common-lisp

DESCRIPTION="trivial-garbage is a simple library that provides a portable API to
finalizers, weak hash-tables and weak pointers."
HOMEPAGE="http://www.cliki.net/trivial-garbage"
SRC_URI="http://common-lisp.net/~loliveira/tarballs/trivial-garbage_${PV}.tar.gz"
LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""
DEPEND=""

S=${WORKDIR}/trivial-garbage_${PV}

CLPACKAGE=trivial-garbage

src_install() {
	common-lisp-install *.lisp *.asd
	common-lisp-system-symlink
	dodoc README 
}
