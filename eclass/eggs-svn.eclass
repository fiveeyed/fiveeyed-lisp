# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
#
# Copyright 2008 Leonardo Valeri Manera <l.valerimanera@gmail.com>
#
# @ECLASS: eggs-svn.eclass
# @MAINTAINER:
# @BLURB: Eclass for Chicken-Scheme SVN Egg packages
# @DESCRIPTION:
#
# This eclass provides generalized functions to compile, test and
# install eggs, as well as setting a number of variables to default
# or autogenerated values.

inherit eggs subversion

SRC_URI=""
if [[ -n ${NON_TRUNK} ]]; then
	ESVN_REPO_URI="http://galinha.ucpel.tche.br/svn/chicken-eggs/release/3/${EGG_NAME}"
else
	ESVN_REPO_URI="http://galinha.ucpel.tche.br/svn/chicken-eggs/release/3/${EGG_NAME}/trunk"
fi
ESVN_OPTIONS="--username=anonymous --password= --non-interactive"

eggs-svn-doc_maker() {
	true
}

eggs-svn_src_unpack() {
	mkdir "${S}"
	cd "${S}"
	subversion_fetch || die
}

eggs-svn_src_compile() {
	eggs-svn-doc_maker
	eggs_src_compile
}

EXPORT_FUNCTIONS src_unpack src_compile
