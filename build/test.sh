#!/bin/bash
set -eoux pipefail

yarn lint && yarn typecheck && ./node_modules/.bin/jest --maxWorkers=4 --coverage $@
