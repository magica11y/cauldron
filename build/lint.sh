#!/bin/bash
set -eoux pipefail

./node_modules/.bin/eslint '**/*.js' $@
