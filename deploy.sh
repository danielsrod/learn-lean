#!/usr/bin/env sh

set -e
yarn build
cd dist
git init
git add -A
git commit -m 'New Deploy'
git push -f https://github.com/danielsrod/learn-lean.git master:lean-pages