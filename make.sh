
rm -rf ./bin
declare -x SDK_NAME="iphoneos"
declare -x ARCH_NAME="arm64"
#declare -x SDK_NAME="iphoneos"
#declare -x ARCH_NAME="armv7"
#declare -x SDK_NAME="iphonesimulator"
#declare -x ARCH_NAME="i386"
declare -x SDK_DIR=`xcrun --sdk $SDK_NAME --show-sdk-path`
declare -x PLATFORM_DIR=`xcrun --sdk $SDK_NAME --show-sdk-platform-path`
declare TOOLCHAIN_FILE=../../"iPhoneDeviceCMakeToolchain"
#declare TOOLCHAIN_FILE=../../"iPhoneSimulatorCMakeToolchain"

########################################################################################################################
declare -x CC=`xcrun -sdk $SDK_NAME -find clang`
declare -x CXX=`xcrun -sdk $SDK_NAME -find clang++`
declare -x LD=`xcrun -sdk $SDK_NAME -find ld`
declare -x CFLAGS="-arch $ARCH_NAME -isysroot $SDK_DIR -miphoneos-version-min=6.0 -I$SDK_DIR/usr/include -std=c11"
declare -x CXXFLAGS="$CFLAGS -std=c++11"
declare -x LDFLAGS="$CFLAGS -std=c11 -std=c++11 -lpthread -lc++ -L$SDK_DIR/usr/lib"
mkdir -p bin/"$ARCH_NAME"
cd bin/"$ARCH_NAME"
#cmake ../../src/libgit2 -G "Unix Makefiles" -DBUILD_SHARED_LIBS="OFF" -DCMAKE_TOOLCHAIN_FILE="$TOOLCHAIN_DEV" -DTHREADSAFE="OFF" -DBUILD_CLAR="OFF"
cmake ../../src/libgit2 -G "Unix Makefiles" -DBUILD_SHARED_LIBS="OFF" -DCMAKE_TOOLCHAIN_FILE="$TOOLCHAIN_DEV"
make
cd ../../

