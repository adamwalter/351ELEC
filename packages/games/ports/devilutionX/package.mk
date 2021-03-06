# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="devilutionX"
PKG_VERSION="fc05c55d899d2b04d0a107d9c767eea7dd172023"
#PKG_SHA256=""
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="unlicense"
PKG_SITE="https://github.com/diasurgical/devilutionX"
PKG_URL="$PKG_SITE.git"
PKG_DEPENDS_TARGET="toolchain SDL2 SDL2_mixer SDL2_ttf libsodium"
PKG_LONGDESC="Diablo build for modern operating systems "
PKG_TOOLCHAIN="cmake-make"
GET_HANDLER_SUPPORT="git"

pre_configure_target() {
PKG_CMAKE_OPTS_TARGET=" -DNONET=OFF -DCMAKE_BUILD_TYPE="Release" -DASAN=OFF -DUBSAN=OFF -DDEBUG=OFF -DLTO=ON -DDIST=OFF -DFASTER=OFF -DPREFILL_PLAYER_NAME=ON"
sed -i "s|;-static-libstdc++>|;-lstdc++>|" $PKG_BUILD/CMakeLists.txt
}

makeinstall_target() { 
mkdir -p $INSTALL/usr/local/bin
mkdir -p $INSTALL/usr/config/distribution/devilutionx
cp -rf $PKG_BUILD/.$TARGET_NAME/devilutionx $INSTALL/usr/local/bin
cp -rf $PKG_BUILD/Packaging/resources/CharisSILB.ttf $PKG_BUILD/.$TARGET_NAME/devilutionx $INSTALL/usr/config/distribution/devilutionx
}
