#!/bin/bash
set -Eeuo pipefail

yarn test && yarn version --new-version patch $@
