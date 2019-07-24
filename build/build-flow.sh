#!/bin/bash
set -eoux pipefail

./node_modules/.bin/flow-copy-source --verbose src lib
[ -d "testing" ] && ./node_modules/.bin/flow-copy-source --verbose testing lib/testing
