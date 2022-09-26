#!/usr/bin/env sh

set -e
yarn build
cd dist
git init
git add -A
git commit -m 'New Deploy'
git push -f git@github.com:danielsrod/learn-lean.git master:gh-pages