#!/bin/sh
cd /var/
#download my git repo
git clone https://github.com/p410n3/SteamHourBoostWebInterface.git
cd SteamHourBoostWebInterface
rm install.sh
mv ./steam_sudo_wrapper ../
chown -R www-data:root /var/steam_sudo_wrapper/
#allow www-data to run the scripts
echo 'www-data ALL = NOPASSWD: /var/steam_sudo_wrapper/start.sh' | sudo EDITOR='tee -a' visudo
echo 'www-data ALL = NOPASSWD: /var/steam_sudo_wrapper/stop.sh' | sudo EDITOR='tee -a' visudo
#end
echo "You will have a folder '/var/SteamHourBoostWebInterface/interface'. Copy that into your web directory and rename it."
read -p "Press any key to continue."
#frk1 stuff
cd /var/
wget --no-check-certificate "https://nodejs.org/dist/latest/node-$(curl -L 'nodejs.org/dist/index.tab' | sed -n '2p' | awk '{ print $1 }')-linux-x64.tar.gz" -O /tmp/nodejs.tar.gz
sudo tar --strip-components 1 -xzvf /tmp/nodejs.tar.gz -C /usr/local
sudo npm -g install npm@latest
sudo npm -g install coffee-script pm2
sudo pm2 install coffeescript
git clone https://github.com/frk1/steamhourboostv2.git
cd steamhourboostv2
npm install .
clear
echo "Now go to the GitHub page and follow the rest of the Instructions"
