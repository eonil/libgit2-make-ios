




if [ "$1" == "" ]
then
	echo		"You must specify deployment location of product binary file."
	echo		""
	echo		"Usage:"
	echo		""
	echo		"	sh	download-make-clean-deploy.sh	./../libgit2.a"
	echo		""
	exit		1
fi








########
declare			CURDIR=`pwd`

cd				`dirname "$0"`
declare			SCRTDIR=`pwd`

cd				"`dirname \"$1\"`"
declare			DEPDIR=`pwd`
declare			DEPNAME="`basename \"$1\"`"

echo			"Current script location = $SCRTDIR"
echo			"Target deployment location = $DEPDIR/$DEPNAME"





if [ -d "$DEPDIR"/"$DEPNAME" ]
then
	echo		"There is a directory at the deployment location."
	echo		"$DEPDIR"/"$DEPNAME"
	exit		2
fi













########		


cd				"$SCRTDIR"
sh				./download-and-make-at-here.sh
mkdir			-p "$DEPDIR"
cp				./build/libgit2.a "$DEPDIR"/"$DEPNAME"
rm				-rf ./build
rm				-rf ./src
