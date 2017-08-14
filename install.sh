#!/bin/sh
cd /var/
wget --no-check-certificate "https://nodejs.org/dist/latest/node-$(curl -L 'nodejs.org/dist/index.tab' | sed -n '2p' | awk '{ print $1 }')-linux-x64.tar.gz" -O /tmp/nodejs.tar.gz
sudo tar --strip-components 1 -xzvf /tmp/nodejs.tar.gz -C /usr/local
sudo npm -g install npm@latest
sudo npm -g install coffee-script pm2
sudo pm2 install coffeescript
git clone https://github.com/frk1/steamhourboostv2.git
cd steamhourboostv2
npm install .
coffee user.coffee
cd ..
mkdir steam_sudo_wrapper
cd steam_sudo_wrapper
#download .sh stuff
echo 'www-data ALL = NOPASSWD: /var/steam_sudo_wrapper/start.sh' | sudo EDITOR='tee -a' visudo
echo 'www-data ALL = NOPASSWD: /var/steam_sudo_wrapper/stop.sh' | sudo EDITOR='tee -a' visudo
#download webstuff
echo "You will now have a folder named 'COPY_AND_RENAME_ME' in /var/. Copy that into your web directory and rename it."
read -p "Press any key to finish."