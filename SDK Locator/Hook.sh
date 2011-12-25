

declare		SCRTDIR="`dirname \"$0\"`"
declare		VARFILE="$1"

cd			"$SCRTDIR"
rm			-f "$VARFILE"
touch		"$VARFILE"
echo		declare -x	PLATFORM_NAME=\"$PLATFORM_NAME\"	>>	"$VARFILE"
echo        declare -x	PLATFORM_DIR=\"$PLATFORM_DIR\"  	>>  "$VARFILE"
echo		declare -x	SDK_NAME=\"$SDK_NAME\"				>>	"$VARFILE"
echo		declare -x	SDK_DIR=\"$SDK_DIR\"				>>	"$VARFILE"

