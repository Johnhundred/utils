#!/bin/bash
BRANCH=`git status | grep -o 'On branch \w*[^\s]' | cut -d" " -f3`

echo "Committing to branch $BRANCH"
read -p "Commit message: " MESSAGE

git add -A
git commit -m "$MESSAGE"
git push origin "$BRANCH"

