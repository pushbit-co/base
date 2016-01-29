#!/bin/bash 

echo "cloning git repo"
git clone https://${GITHUB_TOKEN}@github.com/${GITHUB_USER}/${GITHUB_REPO}.git -b ${BASE_BRANCH} /pushbit/code

$1

