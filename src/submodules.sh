#!/bin/bash

cd $DATA_DIR/
echo > $DATA_DIR/.gitmodules

ls . | grep -E "^[a-h0-9]{8}$" |
while read fn 
do
    cat <<EOF >> $DATA_DIR/.gitmodules
[submodule "$fn"]
    path = $fn
    url = git@github.com:$GITHUB_ORG/$fn.git
    branch = obsidian
EOF
done

git submodule init

git add .gitmodules
git commit -m "`date`"
git push
