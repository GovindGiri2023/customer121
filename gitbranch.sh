username=$1
password=$2
reponame=$3
# create repo
echo "Creating Github repository '$reponame' ..."
curl -u $username:$password https://api.github.com/user/repos -d '{"name":"'$reponame'"}'
echo " done."
