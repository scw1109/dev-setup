#!/usr/bin/env bash

echo "== Setup bash_profile"
cp -v ./bash/bash_profile ~/.bash_profile
cp -v ./bash/bashrc ~/.bashrc

echo "== Setup git"
cp -v ./git/gitconfig ~/.gitconfig
cp -v ./git/gitignore ~/.gitignore

echo "== Setup Editor"
cp -v ./vim/vimrc ~/.vimrc
./editor/install_editor.sh

echo "== Install common packages"
./common/install_common.sh

echo "== Install SDK"
./sdk/install_sdk.sh
mkdir -p ~/bin
cp -vr ./sdk/bin/ ~/bin/

echo "== Install IDE"
./ide/install_ide.sh

echo "== Install DevOps"
./devops/install_devops.sh

echo "Please run 'source ~/.bash_profile' to make sure the env is clean."
