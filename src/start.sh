#!/bin/bash

touch .lock

bash -x /code/submodules.sh

bash -x /code/commit-submodules.sh

rm -rf .lock