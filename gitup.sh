#!/bin/bash
# Copy this script to bin, or add this dir to the PATH var to run it anywhere
# A command like this should work: sudo cp ./gitup.sh /usr/local/bin/gitup
# With that done, you can use the script from anywhere by simply typing: gitup

# Bear in mind that the script is made with the assumption that git credentials are cached/stored,
# and that the remote is already added under the name origin

BRANCH=`git status | grep -o 'On branch \w*[^\s]' | cut -d" " -f3`

echo "Committing to branch $BRANCH"
read -p "Commit message: " MESSAGE

git add -A
git commit -m "$MESSAGE"
git push origin "$BRANCH"

