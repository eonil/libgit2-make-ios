declare			CURDIR=`pwd`

cd				`dirname "$0"`
declare			SCRTDIR=`pwd`
declare			SRCDIR="$CURDIR"/src

mkdir			-p "$SRCDIR"
cd				"$SRCDIR"

git				clone git://github.com/libgit2/libgit2 ./libgit2
cd				"$SCRTDIR"
sh				"$SCRTDIR"/make.sh "$SRCDIR"/libgit2