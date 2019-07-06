#!/bin/bash
set -Eeuo pipefail

yarn run clean && rimraf node_modules
