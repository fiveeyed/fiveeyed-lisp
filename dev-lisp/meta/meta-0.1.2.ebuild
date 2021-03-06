# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="A library of macros and functions by Fare Rideau."
HOMEPAGE="http://www.cliki.net/meta"
SRC_URI="http://fare.tunes.org/files/asdf-packages/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}"

S="${WORKDIR}"/${PN}
