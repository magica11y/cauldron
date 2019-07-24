#!/bin/bash
set -eoux pipefail

yarn build:dist && yarn build:lib && yarn build:flow
