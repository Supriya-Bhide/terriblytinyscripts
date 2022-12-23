echo $1
if [ -z "$1" ]
then
	echo "Enter in the following format:"
	echo "./pushScript2Git.sh < repositoryName(without '.git' extension) > version_Number"
	exit
fi
version=$2
if [ -z "$2" ]
then
	version=2
fi
echo "version is $1"
git remote add origin1 https://github.com/Supriya-Bhide/$1.git
git branch -M main
git add .
git commit -m "v$version"
git push -f -u origin1 main
