#!/bin/bash
# This script spins up a local test Compute app

npm run build 
npx --yes @fastly/compute-js-static-publish@latest --root-dir=./build --kv-store-name=website-content 
cd compute-js 
npm run dev:publish 
npm run dev:start
