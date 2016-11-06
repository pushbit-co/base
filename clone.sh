#!/bin/bash -e

# sleep is required otherwise the first log lines here don't end up being recorded
sleep 3

mkdir ~/.ssh

echo "adding github.com to known hosts"
ssh-keyscan -t dsa github.com >> ~/.ssh/known_hosts

echo "injecting ssh key"
echo -e "${PUSHBIT_BASE64_SSH_KEY}" | base64 -d > ~/.ssh/id_rsa

echo "setting key permissions"
chmod 700 ~/.ssh/id_rsa

echo "cloning from ${PUSHBIT_REPOSITORY_URL}"
git clone ${PUSHBIT_REPOSITORY_URL} /pushbit/code

echo "entering git repo: /pushbit/code"
cd /pushbit/code

echo "checking out base branch: ${PUSHBIT_BASE_BRANCH}"
git checkout ${PUSHBIT_BASE_BRANCH}

$1
