# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020 Shanti Gilbert (https://github.com/shantigilbert)
# Copyright (C) 2020 351ELEC team (https://github.com/fewtarius/351ELEC)

PKG_NAME="es-theme-art-book-3-2"
PKG_REV="1"
PKG_VERSION="717da8420d002d4bd91249a8407cbaf30c80cd54"
PKG_ARCH="any"
PKG_LICENSE="CUSTOM"
PKG_SITE="https://github.com/anthonycaccese/es-theme-art-book-3-2"
PKG_URL="$PKG_SITE.git"
GET_HANDLER_SUPPORT="git"
PKG_SHORTDESC="ArtBook"
PKG_LONGDESC="Art Book - 351ELEC default theme"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p $INSTALL/usr/config/emulationstation/themes/$PKG_NAME
  cp -rf * $INSTALL/usr/config/emulationstation/themes/$PKG_NAME
}
