#!/bin/bash
set -eoux pipefail

yarn test && yarn version --new-version patch $@
