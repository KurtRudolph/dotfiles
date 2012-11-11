#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")"

#update the repository and all submodules
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

# install rvm to the local home directory
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
source "$HOME/.bash_profile"

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  fi
fi
unset doIt

source ~/.bash_profile
