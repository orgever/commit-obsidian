#!/bin/bash

bash /code/automover.sh &

while /bin/true
do
    bash -x /code/start.sh
    sleep $SLEEP
done
