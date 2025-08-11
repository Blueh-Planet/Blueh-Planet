#!/bin/bash
# Quick script to create a new GitHub repo using git & push (requires Git installed).
# Usage: ./git_push.sh <github-username> <repo-name>
if [ "$#" -lt 2 ]; then
  echo "Usage: ./git_push.sh <github-username> <repo-name>"
  exit 1
fi
USER=$1
REPO=$2
git init
git add .
git commit -m "Initial commit - EchoRunners multiplayer"
git branch -M main
echo "Now create the repo on GitHub and push:"
echo "git remote add origin git@github.com:${USER}/${REPO}.git"
echo "git push -u origin main"