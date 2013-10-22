#!/bin/bash

echo "source $PWD/bash_profile" >> ~/.bash_profile
ln -s "$PWD/gitconfig" ~/.gitconfig
ln -s "$PWD/gitignore" ~/.gitignore

# Brew Formulas (OS X Applications)
brew install kdiff3
brew install node
brew install git
brew install imagemagick
brew install libpng
brew install multimarkdown
brew install git-flow
brew install ios-sim
brew install tig
brew install bash-completion
brew install phantomjs
brew install tree

# Install Cask
brew tap phinze/homebrew-cask
brew install brew-cask

# Casks (OS X Applications)
brew cask install dash
brew cask install dropbox
brew cask install gimp
brew cask install github
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install imageoptim
brew cask install iterm2
brew cask install libre-office
brew cask install name-changer
brew cask install rdio
brew cask install reggy
brew cask install sequel-pro
brew cask install skype
brew cask install sourcetree
