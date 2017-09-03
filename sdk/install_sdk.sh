#!/usr/bin/env bash

echo "Installing via brew ..."
brew cask install java

brew install maven
brew upgrade maven

brew install node
brew upgrade node

brew install python python3
brew upgrade python python3

brew install ruby
brew upgrade ruby

echo "Installing SDKMAN ..."
curl -s "https://get.sdkman.io" | bash
source ~/.sdkman/bin/sdkman-init.sh

sdk selfupdate force

sdk install sbt
sdk install scala
sdk install groovy
sdk install gradle
sdk install activator

echo "Setup python virtualenv ..."
pip2 install virtualenv
