#!/usr/bin/env bash

cd $(dirname $0)/..

# set PYTHONPATH to ./src
source .env

# pytest watch (ptw) - watch changes to trigger test-runner
# ptw

# Only run tests that are affected
ptw --clear -- --testmon
