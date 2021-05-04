# Clean
rm -fr build

# Assign variables
VERSION=$(xcodebuild -showBuildSettings | grep MARKETING_VERSION | tr -d "MARKETING_VERSION =")
CONTROL="Package: com.eamontracey.nomaepreferences\nName: NomaePreferences\nVersion: $VERSION\nArchitecture: iphoneos-arm\nDescription: A SwiftUI preferences framework\nMaintainer: Eamon Tracey\nAuthor: Eamon Tracey\nSection: System\nDepends: firmware (>= 13.0)"

# Compile NomaePreferences
xcodebuild -scheme NomaePreferences -configuration Release build CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGN_ENTITLEMENTS="" CODE_SIGNING_ALLOWED="NO" -arch arm64 -arch arm64e -derivedDataPath build

# Prepare for dpkg-deb
cd build/Build/Products/Release-iphoneos
mkdir layout/ layout/DEBIAN/ layout/Library/ layout/Library/Frameworks/
echo $CONTROL > layout/DEBIAN/control
cp -r NomaePreferences.framework layout/Library/Frameworks/

# Build deb
dpkg-deb --build layout

# Move framework and deb
mv NomaePreferences.framework ../../../
mv layout.deb ../../../NomaePreferences-$VERSION.deb

# Clean
echo "Cleaning..."
cd ../../..
rm -fr Build Logs ModuleCache.noindex info.plist

# Add to THEOS
echo "Copying the framework to theos directory..."
if [[ -z "$THEOS" || ! -d "$THEOS" ]]; then
    echo "Failed."
    echo
	echo "Please set up the \$THEOS environment variable to properly use NomaePreferences."
	exit
fi
rm -rf $THEOS/lib/NomaePreferences.framework
cp -r NomaePreferences.framework $THEOS/lib/

echo "Done. Enjoy!"