#!/usr/bin/env bash

echo "== Setup bash_profile"
cp -v ./bash/bash_profile ~/.bash_profile
cp -v ./bash/bashrc ~/.bashrc

echo "== Setup git"
cp -v ./git/gitconfig ~/.gitconfig
cp -v ./git/gitignore ~/.gitignore

echo "== Setup vim"
cp -v ./vim/vimrc ~/.vimrc

echo "== Install common packages"
./common/install_common.sh

echo "== Install SDK"
./sdk/install_sdk.sh

echo "Please run 'source ~/.bash_profile' to make sure the env is clean."
