#! /bin/bash

set -eux 

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

msg="rebuilding site `date`"

if [ $# -eq 1  ]
    then msg="$1"
fi

# Build the project. 
git checkout --orphan latest_branch

# Add changes to git.
git add -A

# Commit changes.

git commit -m "$msg"

# 
git branch -D master

#
git branch -m master

#

# Push source and build repos.
git push -f origin master