if [ -z "$1" ]
then
	echo "Oops! branch name not found"
	echo "Execute the script in the following format:"
	echo "---------------------------------------------------------"
	echo "|./gitPush.sh message branchName originName repoAddress |"
	echo "---------------------------------------------------------"
	exit
fi

if [ -z "$2" ]
then
	echo "Oops! repository name not found"
	echo "Execute the script in the following format:"
	echo "---------------------------------------------------------"
	echo "|./gitPush.sh message branchName originName repoAddress |"
	echo "---------------------------------------------------------"
	exit
fi
if [ -z "$3" ]
then
	echo "Oops! branch name not found"
	echo "Execute the script in the following format:"
	echo "---------------------------------------------------------"
	echo "|./gitPush.sh message branchName originName repoAddress |"
	echo "---------------------------------------------------------"
	exit
fi

if [ -z "$4" ]
then
	echo "Oops! repository name not found"
	echo "Execute the script in the following format:"
	echo "---------------------------------------------------------"
	echo "|./gitPush.sh message branchName originName repoAddress |"
	echo "---------------------------------------------------------"
	exit
fi
git init
git add .
git commit -m "$1"
git branch -M $2
git remote add $3 $4
git push -u $3 $2
