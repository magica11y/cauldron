#!/bin/bash
set -Eeuo pipefail

yarn run clean && ./node_modules/.bin/rimraf node_modules
