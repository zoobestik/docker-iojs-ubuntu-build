#!/usr/bin/env bash

VER="$1"
VVER="v$VER"
FILE_NAME="iojs-$VVER"
FILE_TAR="$FILE_NAME.tar.xz"
DEB_FILES="iojs_*.deb"
EXPORT_FOLDER="/export/"

wget "https://iojs.org/download/release/$VVER/$FILE_TAR"
tar -xJf "$FILE_TAR"
cd "$FILE_NAME"

./configure && make
sudo checkinstall -y -D --install=no --nodoc --maintainer=kb.chernenko@gmail.com --pkgversion "$VER"

sudo chown "$(id -u -n):$(id -g -n)" $DEB_FILES
cp -f $DEB_FILES $EXPORT_FOLDER

