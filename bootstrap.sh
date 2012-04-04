#!/bin/bash
cd "$(dirname "$0")"
git pull
git submodule init
git submodule sync
git submodule update
git submodule foreach git checkout master && git pull
read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.rb" --exclude "bootstrap.sh" --exclude "README.md" --exclude ".gitignore" --exclude ".gitsubmodules" --exclude ".configure" -av . ~
fi
source "$HOME/.bash_profile"