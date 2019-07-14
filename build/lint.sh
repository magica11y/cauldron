#!/bin/bash
set -Eeuo pipefail

./node_modules/.bin/eslint '**/*.js' $@
