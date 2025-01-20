#!/bin/bash
set -eoux pipefail

yarn test --coverageReporters=text-lcov | COVERALLS_REPO_TOKEN=$COVERALLS_REPO_TOKEN ./node_modules/.bin/coveralls
