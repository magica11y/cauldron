#!/bin/bash
set -Eeuo pipefail

yarn clean && ./node_modules/.bin/rimraf node_modules
