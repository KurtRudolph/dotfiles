#!/usr/bin/env ruby

#have you configured with commanline tools?
#if no
## open https://developer.apple.com/downloads


#install Homebrew:
`/usr/bin/ruby -e "$(/usr/bin/curl -fksSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"`

#Reload your shell environment:
`source ~/.bash_profile`

#install git
`brew isntall git`

#work on creating erb templates rather than using these absolute file and loading some yml configuration file
`--exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" --exclude ".g    itignore" --exclude ".gitsubmodules" --exclude ".configure" -av . ~`


#install RVM
`bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)`
