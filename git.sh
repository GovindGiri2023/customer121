#!/usr/bin/env bash 
git init .
touch .gitignore
git add --all
git commit -m"initial commit"

git remote add origin $1
git branch $2
//git push origin --all
//git push origin --tags

echo "Done."    
