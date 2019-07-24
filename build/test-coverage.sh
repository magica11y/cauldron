#!/bin/bash
set -eoux pipefail

yarn test --coverageReporters=text-lcov | ./node_modules/.bin/coveralls
