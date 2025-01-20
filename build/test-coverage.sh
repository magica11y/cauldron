#!/bin/bash
set -eou pipefail

if [[ -z "${COVERALLS_REPO_TOKEN:-}" ]]; then
  echo "Please set environment variable, COVERALLS_REPO_TOKEN, from https://coveralls.io/github/magica11y for this repository."
else
  yarn test --coverageReporters=lcov && COVERALLS_REPO_TOKEN=$COVERALLS_REPO_TOKEN ./node_modules/.bin/coveralls < coverage/lcov.info
fi
