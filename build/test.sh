#!/bin/bash
set -eoux pipefail

yarn run jest --maxWorkers=4 --coverage
