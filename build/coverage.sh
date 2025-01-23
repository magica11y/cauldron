#!/bin/bash
set -eou pipefail

if [[ -z "${COVERALLS_REPO_TOKEN:-}" ]]; then
  echo "COVERALLS_REPO_TOKEN missing. Set environment variable, COVERALLS_REPO_TOKEN, from https://coveralls.io/github/magica11y for this repository."
  exit 1
fi

if [ ! -f coverage/lcov.info ]; then
  echo "coverage/lcov.info missing. Run 'yarn test' to generate it first."
  exit 1
fi

COVERALLS_REPO_TOKEN=$COVERALLS_REPO_TOKEN yarn run coveralls < coverage/lcov.info
