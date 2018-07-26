#!/bin/bash
set -e
set -o pipefail

# $1 BRANCH
# $2 URL
# $3 DESTINATION DIRECTORY

if [[ -d "$3" ]]; then
  cd $3
  git pull 
else
  git clone --single-branch --branch=$1 $2 $3
fi


