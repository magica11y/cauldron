#!/bin/bash
set -eoux pipefail

# Overrides `--new-version patch` in `release.sh`
yarn release --new-version minor
