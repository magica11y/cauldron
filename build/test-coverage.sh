#!/bin/bash
set -Eeuo pipefail

yarn test --coverageReporters=text-lcov | coveralls
