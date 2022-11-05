#!/bin/bash

cd $DATA_DIR

d=`date`
git submodule foreach "git add . && git commit -m 'upd' && git push --set-upstream origin obsidian || true"

git add `git submodule | grep '+' | cut -d ' ' -f 2`
git commit -m "`date`"
git push
