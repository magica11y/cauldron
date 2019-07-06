#!/bin/bash
set -Eeuo pipefail

eslint '**/*.js' $@
