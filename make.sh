

#if [ ! -d "$1" ]








declare -x SDK_DIR="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS9.2.sdk"
declare -x PLATFORM_DIR="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform"
rm -rf ./bin
mkdir bin
cd bin
declare TCFILE_DEV=../"iPhoneDeviceCMakeToolchain"
declare TCFILE_SIM=../"iPhoneSimulatorCMakeToolchain"

######## iPhone Device - ARMv6
declare -x CC=`xcrun -sdk iphoneos -find cc`
declare -x CXX=`xcrun -sdk iphoneos -find c++`
declare -x LD=`xcrun -sdk iphoneos -find ld`
declare -x CFLAGS="-arch armv6 -isysroot \"$SDK_DIR\" -miphoneos-version-min=4.0 -I$SDK_DIR/usr/include -L$SDK_DIR/usr/lib -lc++ -std=c11"
#declare -x CXXFLAGS="$CFLAGS"
declare -x CXXFLAGS="$CFLAGS -std=c++14"
declare -x LDFLAGS="$CFLAGS -std=c11 -std=c++14 -lpthread -lc++"
cmake ../src/libgit2 -G "Unix Makefiles" -DBUILD_SHARED_LIBS="OFF" -DCMAKE_TOOLCHAIN_FILE="$TCFILE_DEV" -DTHREADSAFE="OFF" -DBUILD_CLAR="OFF"
#cmake ../src/libgit2 -G "Unix Makefiles" -DBUILD_SHARED_LIBS="OFF" -DTHREADSAFE="OFF"
make

