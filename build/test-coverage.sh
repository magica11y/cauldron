#!/bin/bash
set -Eeuo pipefail

yarn test --coverageReporters=text-lcov | ./node_modules/.bin/coveralls
