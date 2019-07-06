#!/bin/bash
set -Eeuo pipefail

yarn build:dist && yarn build:lib && yarn build:flow
