#!/bin/bash

cd $DATA_DIR/$REPO

git checkout -b obsidian
git add .
git commit -m"`date`"
git push --set-upstream origin obsidian
