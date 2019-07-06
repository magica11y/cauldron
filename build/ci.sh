#!/bin/bash
set -Eeuo pipefail

yarn test:coverage && yarn build
