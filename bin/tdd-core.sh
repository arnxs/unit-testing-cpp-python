#!/usr/bin/env bash

cd $(dirname $0)/..

cd core

# run test before watching
make test

# use fswatch to monitor changes in C++ files and trigger tests

#for MacOS
# fswatch -o -i "*.*pp" --event=1 ./src/core ./tests | xargs -n 1 -I {} make test

#for Linux
FORMAT=$(echo -e "\033[1;33m%w%f\033[0m written")
while inotifywait -qre close_write --format "$FORMAT" .
do
    make test
done
