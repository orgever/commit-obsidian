#!/bin/bash

while /bin/true
do
    echo "Run automover"
    FILE=$DATA_DIR/.lock
    if [[ -f "$FILE" ]]; then
        echo "$FILE exists. Sleeping."
        sleep 10
        continue
    fi
    echo "Move files"

    # for each md file in obs dir
    ls $DATA_DIR | grep ".md$" |
    while read fn
    do

    # get repo name
    REPO=`uuid | cut -d'-' -f1`

    export REPO

    # create repo
    bash -x /code/create-repo.sh

    # init repo in data dir
    bash -x /code/init-repo.sh

    # move md file to repo dir
    mv "$DATA_DIR/$fn" $DATA_DIR/$REPO/

    # commit current state
    bash -x /code/commit.sh

    done

    sleep 5
done