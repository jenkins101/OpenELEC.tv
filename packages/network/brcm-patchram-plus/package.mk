################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="brcm-patchram-plus"
PKG_VERSION="0.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://calsifer.dyndns.org"
PKG_URL="http://calsifer.dyndns.org/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="brcm-patchram-plus:"
PKG_LONGDESC="Downloads a patchram files in the HCD format to Broadcom Bluetooth based silicon and combo chips and other utility functions."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

post_install() {
  cp -PRv $PKG_DIR/scripts/start-brcm-patchram-plus $INSTALL/usr/bin/
  enable_service brcm-patchram-plus.service
}

