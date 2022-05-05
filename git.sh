#!/usr/bin/env bash 
git init .

git remote add origin $1
git branch $2

echo "Done."    
