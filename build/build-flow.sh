#!/bin/bash
set -Eeuo pipefail

./node_modules/.bin/flow-copy-source --verbose src lib
