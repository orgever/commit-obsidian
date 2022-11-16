#!/bin/bash

umask 007

touch .lock

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

bash -x /code/submodules.sh

bash -x /code/commit-submodules.sh

bash -x /code/permissions.sh

rm -rf .lock