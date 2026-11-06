# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: lug-helper.eclass
# @MAINTAINER:
# Overlay maintainers
# @SUPPORTED_EAPIS: 8
# @BLURB: Shared dependencies and installation for LUG Helper

case ${EAPI} in
	8) ;;
	*) die "${ECLASS}: unsupported EAPI ${EAPI}" ;;
esac

inherit desktop xdg

EXPORT_FUNCTIONS src_install

IUSE="+gui +polkit"

RDEPEND="
	app-arch/cabextract
	app-arch/gzip
	app-arch/tar
	app-arch/unzip
	app-arch/xz-utils
	app-arch/zstd
	app-shells/bash
	net-misc/curl
	sys-apps/coreutils
	sys-apps/findutils
	x11-misc/xdg-utils
	gui? ( gnome-extra/zenity )
	polkit? ( sys-auth/polkit )
"

# @FUNCTION: lug-helper_src_install
# @DESCRIPTION:
# Install the Helper, launcher template, icons, and documentation.
lug-helper_src_install() {
	newbin lug-helper.sh lug-helper

	exeinto "/usr/share/${PN}"
	doexe lib/sc-launch.sh

	newicon -s 256 lug-logo.png lug-helper.png
	newicon -s 256 rsi-launcher.png rsi-launcher.png
	newicon -s 256 starcitizen.png starcitizen.png
	domenu "${FILESDIR}/lug-helper.desktop"

	dodoc README.md
}
