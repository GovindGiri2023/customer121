#!/usr/bin/env bash 
username=$1
password=$2
reponame=$3
git config --global --add safe.directory "*"
git config --global user.name $1
git config --global user.email $4
git init
git add .
git status
git commit -m "jenkins script commit"
git remote add origin https://@github.com/$username/$reponame.git
git checkout -b $reponame
git push https://$username:$password@github.com/$username/$reponame.git
