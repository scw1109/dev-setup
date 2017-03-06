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

## Sync IDE config
 * Use ```https://github.com/scw1109/idea-settings.git``` in IntelliJ IDEA to sync config.

## Other things to setup 
### Fonts 
 * Using one of the following
   * [Bitstream vera sans mono](http://www.dafont.com/bitstream-vera-mono.font)
   * [DejaVu sans mono](https://www.fontsquirrel.com/fonts/dejavu-sans-mono)

### Hosted services
 * [Travis CI command line](https://github.com/travis-ci/travis.rb#installation)
 * [Heroku comand line](https://devcenter.heroku.com/articles/heroku-cli#download-and-install)
