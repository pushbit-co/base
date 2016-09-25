#!/bin/bash -e

echo "cloning git repo from:"
echo ${CLONE_URL} /pushbit/code

git clone ${CLONE_URL} /pushbit/code

echo "entering git repo: /pushbit/code"
cd /pushbit/code

echo "checking out branch/commit: ${BASE_BRANCH}"
git checkout ${BASE_BRANCH}

$1
