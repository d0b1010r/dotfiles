#!/bin/bash

echo "source $PWD/bash_profile" >> ~/.bash_profile
ln -s "$PWD/gitconfig" ~/.gitconfig
ln -s "$PWD/gitignore" ~/.gitignore
