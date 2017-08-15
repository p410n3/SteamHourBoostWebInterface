# SteamHourBoostWebInterface
## CURRENTLY NOT WORKING
There is an install script but before you run it you have to make sure that you have curl, sudo, wget and git installed and that the User for your webserver is named www-data. (That is the default user anyways.)

Then to Install run as root:

`wget -O - https://raw.githubusercontent.com/p410n3/SteamHourBoostWebInterface/master/install.sh | bash`

After that you need to do the following

    • "cd /var/steamhourboostv2" and then "coffee user.coffee" to add a steam account
    • go to /var/SteamHourBoostWebInterface/interface and change the config.php to use your data to login.
    • copy the interface folder from /var/SteamHourBoostWebInterface into your Web Directory and rename it as you like
    
Optional:

    • Change the line `@client.setPersona SteamUser.EPersonaState.Offline` to `@client.setPersona SteamUser.EPersonaState.Online` 
    to appear as online in steam. Good to check if the boost script actually works. 
    • Add new games by adding their steamID into the database.json
    
Huge props to https://github.com/frk1 for the actual script and also https://github.com/mariofont for the Login Page stuff.
    
    

    

