#!/bin/bash

# abort on errors
set -e

# load .env
eval "$(cat .env <(echo) <(declare -x))"

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy for github pages'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:alexanderrrr/cv.git master:gh-pages
cd -
