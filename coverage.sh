#!/usr/bin/env bash

# set PYTHONPATH to ./src
source .env

# pytest watch (ptw) - watch changes to trigger test-runner
# ptw

# Only run tests that are affected
ptw --clear -- --cov=pycore /tests
