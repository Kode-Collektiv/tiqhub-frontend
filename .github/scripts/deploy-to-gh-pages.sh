#!/usr/bin/env bash

set -eu
set -x

build_dir="dist"
remote_name="origin"
main_branch="master"
target_branch="master"

# navigate into the build output directory
cd $build_dir

git init
git add -A

git config user.name "TIQHUB_DEPLOY_BOT"
git config user.email "TIQHUB_DEPLOY_BOT@bots.github.com"

git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f https://x-access-token:${DEPLOY_TOKEN}@github.com/${GITHUB_REPO} $target_branch

cd -
#
