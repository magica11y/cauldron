#!/bin/bash
set -eoux pipefail

./node_modules/.bin/flow-copy-source --verbose src lib
