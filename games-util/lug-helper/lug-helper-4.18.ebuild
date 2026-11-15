# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit lug-helper

DESCRIPTION="Helper for installing and managing Star Citizen on Linux"
HOMEPAGE="https://github.com/starcitizen-lug/lug-helper"
SRC_URI="https://github.com/starcitizen-lug/lug-helper/releases/download/v${PV}/${PN}-v${PV}.tar.gz"

S="${WORKDIR}/${PN}-v${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
