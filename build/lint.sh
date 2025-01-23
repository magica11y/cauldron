#!/bin/bash
set -eoux pipefail

yarn run eslint '**/*.{js,ts,jsx,tsx}'
