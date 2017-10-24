# SteamHourBoostWebInterface
![screenshot](https://i.imgur.com/Mp8HUGB.png)

Using a boostscript on a Server is really nice, but if you actually want to play on that Account dis- and
re -enabling it becomes annoying. So I made that Interface thingy.

(tested on Debian 8 and Ubuntu 16.04LTS. Both with lighttpd webserver)

## Installation

There is an install script but before you run it you have to make sure that you have curl, sudo, wget and git installed and that the User for your webserver is named www-data. (That is the default user anyways.)

Then to Install run as root:

`wget -O - https://raw.githubusercontent.com/p410n3/SteamHourBoostWebInterface/master/install.sh | bash`

After that you need to do the following

    • "cd /root/steamhourboostv2" and then "coffee user.coffee" to add a steam account
    • "pm2 start boost.coffee" to manually start the script once. Seems to fix a Problem with the sudo wrapper. 
    (do that before using the Interface.)
    • "pm2 stop boost.coffee" afterwards.
    • go to /var/SteamHourBoostWebInterface/interface and change the config.php to use your data to login.
    • copy the interface folder from /var/SteamHourBoostWebInterface into your Web Directory and rename it as you like
    
Optional:

    • Change the line `@client.setPersona SteamUser.EPersonaState.Offline` to 
    `@client.setPersona SteamUser.EPersonaState.Online` 
    to appear as online in steam. Good to check if the boost script actually works. 
    • Add new games by adding their steamID into the database.json
    
Huge props to https://github.com/frk1 for the actual script and also https://github.com/mariofont for the Login Page stuff.
