#!/bin/bash
set -e
set -o pipefail

# $1 BRANCH
# $2 URL
# $3 DESTINATION DIRECTORY

if [[ -d "$3" ]]; then
  cd $3
  set +e
  git status 2>/dev/null
  if [[ $? -eq 0 ]]; then
    git pull 
  else
    git clone --single-branch --branch=$1 $2 $3
  fi
else
  git clone --single-branch --branch=$1 $2 $3
fi


