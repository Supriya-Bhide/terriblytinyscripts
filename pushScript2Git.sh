echo $1
if [ -z "$1" ]
then
	echo "Enter in the following format:"
	echo "./pushScript2Git.sh < repositoryName(without '.git' extension) >"
	exit
fi

git remote add origin1 https://github.com/Supriya-Bhide/$1.git
git branch -M main
git add .
git commit -m "v1"
git push -u origin1 main
