#!/bin/bash

git clone git@github.com:$GITHUB_ORG/$REPO.git $DATA_DIR/$REPO
cd $DATA_DIR/$REPO

git config user.email $GIT_EMAIL
git config user.name $GIT_NAME
git pull
git checkout -b master
echo > .gitkeep
git add .gitkeep
git commit -m "Init"
git push --set-upstream origin master
