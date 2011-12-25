
########		You have to pass target variable file's path as $1.

if [ "$1" == "" ] || [ "$2" == "" ] 
then
	echo		"You must specify target variable file's path as \$1 and SDK name as \$2."
	echo		""
	echo		"Usage:"
	echo		""
	echo		"	sh ./Locator.sh <path-var-file> <sdk-name>"
	echo		""
	echo		"<path-var-file>"
	echo		"Path to variable file."
	echo		""
	echo		"<sdk-name>"
	echo		"Name of SDK."
	echo		"Specify \"iphoneos\" or \"iphonesimulator\"."
	echo		"If you don't specify version number, most recent version will be used."
	echo		""
	exit		1
fi





########
declare			CURDIR=`pwd`
declare			SCRTDIR="`dirname \"$0\"`"

cd				"`dirname \"$1\"`"
declare			VARFILE="`pwd`"/"`basename \"$1\"`"
declare			SDKNAME="$2"

cd				"$SCRTDIR"
xcodebuild		-sdk "$SDKNAME" -workspace ./"SDK Locator".xcworkspace -scheme "SDK Locator" -configuration Release EONIL_HOOK_SCRIPT="`pwd`"/Hook.sh EONIL_HOOK_PARAM="$VARFILE"

cat				"$VARFILE"
