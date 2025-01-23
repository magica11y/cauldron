#!/bin/bash
set -eoux pipefail

echo "Building distribution…"
yarn run webpack --mode production

echo "Transpiling…"
yarn run babel --out-dir lib src
yarn run babel --out-dir lib/testing testing

echo "Generating types…"
yarn run flow-copy-source --verbose src lib
yarn run flow-copy-source --verbose testing lib/testing
