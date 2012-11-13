#!/bin/bash

# Where gems are to be installed 
# and everythign configured
DEFAULT_RVM="1.9.3"

# Install RVM
\curl -L https://get.rvm.io | bash -s stable
source "$HOME/.bash_profile"

#install default ruby version
rvm install $DEFAULT_RVM

# Set as default
rvm use --defult $DEFAULT_RVM

# Install gems
gem install rails
gem install sass
gem install yard
gem install pry
