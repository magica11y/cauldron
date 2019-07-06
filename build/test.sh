#!/bin/bash
set -Eeuo pipefail

yarn lint && yarn typecheck && jest --maxWorkers=4 --coverage $@
