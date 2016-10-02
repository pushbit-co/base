#!/bin/bash -e

# sleep is required otherwise the first log lines here don't end up being recorded
sleep 3

echo "injecting ssh key"
mkdir ~/.ssh
echo ${PUSHBIT_SSH_KEY} > ~/.ssh/id_rsa

echo "cloning from ${PUSHBIT_REPOSITORY_URL}"
git clone ${PUSHBIT_REPOSITORY_URL} /pushbit/code

echo "entering git repo: /pushbit/code"
cd /pushbit/code

echo "checking out base branch: ${PUSHBIT_BASE_BRANCH}"
git checkout ${PUSHBIT_BASE_BRANCH}

$1
