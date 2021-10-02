#Creates the system overlay to work ontop of OEM source
PKG=$1

echo "Building $1 on `pwd`"
cp -Rpv ../packages/$PKG/* . 2>> /dev/null
#cp ../packages/$PKG/build* .
cd priv-app
#nasty google apps
echo "Taking off the Goggles"
rm GlassMaps.apk GlassSearch.apk GlassMusicPlayer.apk GlassUpdate.apk GmsCore.apk GoogleBackupTransport.apk GoogleBackupTransport.odex GoogleLoginService.apk GoogleLoginService.odex 2>> /dev/null
cd ..
rm lenscraft.sh
