#!/usr/bin/env bash

cd $(dirname $0)/..

cd core

# run test before watching
make test

# use fswatch to monitor changes in C++ files and trigger tests
fswatch -o -i "*.*pp" --event=1 ./src/core ./tests | xargs -n 1 -I {} make test

