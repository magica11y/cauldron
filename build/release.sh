#!/bin/bash
set -eou pipefail

BUILD_DIRS=("dist" "lib")

for DIR in "${BUILD_DIRS[@]}"; do
  if [ ! -d "$DIR" ]; then
    echo "'$DIR' missing. Run 'yarn build' to generate it."
    exit 1
  fi
done

npm publish --access public
