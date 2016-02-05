#!/bin/bash -e

sleep 3

echo "cloning git repo from:"
echo https://${GITHUB_TOKEN}@github.com/${GITHUB_USER}/${GITHUB_REPO}.git /pushbit/code

git clone https://${GITHUB_TOKEN}@github.com/${GITHUB_USER}/${GITHUB_REPO}.git /pushbit/code

echo "entering git repo: /pushbit/code"
cd /pushbit/code

echo "checking out branch/commit: ${BASE_BRANCH}"
git checkout ${BASE_BRANCH}

$1
