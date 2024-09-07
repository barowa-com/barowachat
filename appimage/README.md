# BarowaChat AppImage

BarowaChat is provided as AppImage too. To Download, visit Barowachat.im.

## Building

- Ensure you install `appimagetool`

```shell
flutter build linux

# copy binaries to appimage dir
cp -r build/linux/{x64,arm64}/release/bundle appimage/BarowaChat.AppDir
cd appimage

# prepare AppImage files
cp BarowaChat.desktop BarowaChat.AppDir/
mkdir -p BarowaChat.AppDir/usr/share/icons
cp ../assets/logo.svg BarowaChat.AppDir/Barowachat.svg
cp AppRun BarowaChat.AppDir

# build the AppImage
appimagetool BarowaChat.AppDir
```
