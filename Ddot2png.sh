if [ -z "$1" ]
then
	echo "Oops! File not found"
	echo "Execute the script in the following format:"
	echo "---------------------------"
	echo "|./dot2png.sh  dotFile(without extension) |"
	echo "---------------------------"
	echo "$1"
	exit
fi

dot -Tpng $1 -o $1.png
open $1.png
