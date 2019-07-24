#!/bin/bash
set -eoux pipefail

yarn clean && ./node_modules/.bin/rimraf node_modules
