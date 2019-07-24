#!/bin/bash
set -eoux pipefail

./node_modules/.bin/babel --out-dir lib src
