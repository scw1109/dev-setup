# dev-setup
Development environment setup

## Prerequist installation
 * Homebrew: http://brew.sh/

   ```
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ```

## Key generation
 * To generate a key, use this command

   ```
   ssh-keygen -t rsa -b 2048 -C "`whoami`@`hostname` `date +%F`" -f <filename>
   ```

## Setup environmnet
 * Clone this repository
 * In repository home, run ```./setup.sh```

## Other things to setup 
 * IntelliJ IDEA
 * Fonts (one of the following): 
   * Bitstream vera sans mono
   * DejaVu sans mono
 * Docker
 * Heroku comand line
 * Travis CI command line
