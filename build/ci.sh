#!/bin/bash
set -eoux pipefail

yarn test:coverage && yarn build
