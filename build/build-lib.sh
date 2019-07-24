#!/bin/bash
set -Eeuo pipefail

./node_modules/.bin/babel --out-dir lib src
[ -d "testing" ] && ./node_modules/.bin/babel --out-dir lib/testing testing
