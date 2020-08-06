#!/usr/bin/env bash

echo "Flutter Config"

rm -r linux/flutter/ephemeral
flutter create .
flutter clean
flutter build linux

echo "mkdir..."
mkdir -p AppDir/usr/bin
mkdir -p AppImage/tools

echo "cp build/linux/release/bundle/ ..."
cp -r build/linux/release/bundle/* AppDir/usr/bin

echo "AppRun-x86_64"
if [ -f "AppDir/AppRun-x86_64" ]; then
    echo "AppDir/AppRun-x86_64 exists."
else 
    echo "AppDir/AppRun-x86_64 does not exist."
    wget -P AppDir/ https://github.com/AppImage/AppImageKit/releases/latest/download/AppRun-x86_64
fi

echo "appimagetool-x86_64.AppImage"
if [ -f "AppImage/tools/appimagetool-x86_64.AppImage" ]; then
    echo "AppImage/tools/appimagetool-x86_64.AppImage exists."
else 
    echo "AppImage/tools/appimagetool-x86_64.AppImage does not exist."
    wget -P AppImage/tools/ https://github.com/AppImage/AppImageKit/releases/latest/download/appimagetool-x86_64.AppImage
fi

echo "linuxdeploy-x86_64.AppImage"
if [ -f "AppImage/tools/linuxdeploy-x86_64.AppImage" ]; then
    echo "AppImage/tools/linuxdeploy-x86_64.AppImage exists."
else 
    echo "AppImage/tools/linuxdeploy-x86_64.AppImage does not exist."
    wget -P AppImage/tools/ https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
fi

echo "chmod"
chmod +x AppDir/AppRun-x86_64
chmod +x AppImage/tools/appimagetool-x86_64.AppImage
chmod +x AppImage/tools/linuxdeploy-x86_64.AppImage

echo "strip"
strip AppDir/usr/bin/lib/libapp.so AppDir/usr/bin/lib/libflutter_linux_gtk.so AppDir/usr/bin/lib/liburl_launcher_linux_plugin.so AppDir/usr/bin/otter_store

echo "linuxdeploy-x86_64.appimage"
AppImage/tools/linuxdeploy-x86_64.AppImage --appdir AppDir

echo "appimagetool-x86_64.AppImage"
AppImage/tools/appimagetool-x86_64.AppImage AppDir/


