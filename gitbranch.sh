username=`git config github.user`
password=$1
if [ "$username" = "" ]; then
    echo "Could not find username, run 'git config --global github.user <username>'"
    invalid_credentials=1
fi

# get repo name
dir_name=`basename $(pwd)`
read -p "Do you want to use '$dir_name' as a repo name?(y/n)" answer_dirname
case $answer_dirname in
  y)
    # use currently dir name as a repo name
    reponame=$dir_name
    ;;
  n)
    read -p "Enter your new repository name: " reponame
    if [ "$reponame" = "" ]; then
        reponame=$dir_name
    fi
    ;;
  *)
    ;;
esac


# create repo
echo "Creating Github repository '$reponame' ..."
curl -u $username:$password https://api.github.com/user/repos -d '{"name":"'$reponame'"}'
echo " done."
