# dev-setup
Development environment setup

## Prerequist installation
 * Homebrew: http://brew.sh/

   ```
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ```

## Key generation
 * To generate a key, use these commands
   * RSA 2048
     ```
     ssh-keygen -t rsa -b 2048 -C "`whoami`@`hostname` `date +%F`" -f <filename>
     ```
   * ECDSA 256
     ```
     ssh-keygen -t ecdsa -b 256 -C "`whoami`@`hostname` `date +%F`" -f <filename>
     ```

### Working with Lastpass
 * Install lastpass-cli
   ```
   brew install lastpass-cli
   ```

 * Add key 
   * RSA
   ```
   printf "Bit Strength:2048\nFormat:rsa\nPrivate Key:`cat <file>E`\nPublic Key:`cat <file>.pub`\nDate:MM,dd,yyyy\n" | lpass add --non-interactive --note-type=ssh-key --sync=now "SSH/<file>"
   ```
   * ECDSA
   ```
   printf "Bit Strength:256\nFormat:ecdsa\nPrivate Key:`cat <file>E`\nPublic Key:`cat <file>.pub`\nDate:MM,dd,yyyy\n" | lpass add --non-interactive --note-type=ssh-key --sync=now "SSH/<file>"
   ```

 * Fetch public key
   ```
   lpass show --field="Public Key" <file>
   ```

 * Fetch private key into ssh-add
   ```
   lpass show --field="Private Key" <file> | ssh-add -
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
 * [Ngrok](https://ngrok.com)

   ```
   brew cask install ngrok
   ```
