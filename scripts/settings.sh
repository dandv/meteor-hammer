#!/bin/sh

HAMMER_GIT_REPO="git@github.com:hammerjs/hammer.js.git"

# Do not edit below
git remote -v | grep -q hammer
if [ $? -eq 1 ]; then
  git remote add hammer $HAMMER_GIT_REPO
fi

if [ -z "$HAMMER_GIT_REPO" ]; then
  echo "! Check scripts/settings.sh. Aborting..."
  exit 1
fi
