#!/bin/bash
------------------------------------------------------------dependencies----------------------------------------------------------------------------------------
cd /home
sudo apt install git 
sudo apt install xz-utils
echo "installed dependencies (git and xz-utils)"
sudo apt update && sudo apt upgrade
echo "updated and upgraded all packages"
----------------------------------------------------------------------------------------------------------------------------------------------------------------
#input from website
$sv_lincensekey = sv_licensekey.input
$username-$servername
mkdir $username-$servername
cd $username-$servername
echo "start of server install"
# add more echos here
mkdir -p ~/FXServer/server
echo "made directory ~/FXServer/server"
wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/5820-8e883dcc7941ce1fa5de359ede53afe587070723/fx.tar.xz
echo "wgot the server stuff"
cd ~/FXServer/server && tar xf fx.tar.xz
echo "extraction complete"
git clone https://github.com/citizenfx/cfx-server-data.git ~/FXServer/server-data
echo "got server data from deprecated github repo"
cd ~/FXServer/server-data && bash ~/FXServer/server/run.sh +exec server.cfg
echo "server install worked"


----------------------------------------------------------------------------------------------------------------------------------------------------------------

      # i dont think this is right
      append to server.conf
      [
      # Only change the IP if you're using a server with multiple network interfaces, otherwise change the port only.
      # this needs to be changed depending on what ports are in use some ports will be reserved 
      # change these ports depending on what ports are in use probably just increment by 1
      endpoint_add_tcp "0.0.0.0:30120"
      endpoint_add_udp "0.0.0.0:30120"

      # These resources will start by default.
      ensure mapmanager
      ensure chat
      ensure spawnmanager
      ensure sessionmanager
      ensure basic-gamemode
      ensure hardcap
      ensure rconlog

      # This allows players to use scripthook-based plugins such as the legacy Lambda Menu.
      # Set this to 1 to allow scripthook. Do note that this does _not_ guarantee players won't be able to use external plugins.
      sv_scriptHookAllowed 0

      # Uncomment this and set a password to enable RCON. Make sure to change the password - it should look like rcon_password "YOURPASSWORD"
      #rcon_password ""

      # A comma-separated list of tags for your server.
      # For example:
      # - sets tags "drifting, cars, racing"
      # Or:
      # - sets tags "roleplay, military, tanks"
      sets tags "default"

      # A valid locale identifier for your server's primary language.
      # For example "en-US", "fr-CA", "nl-NL", "de-DE", "en-GB", "pt-BR"
      sets locale "root-AQ" 
      # please DO replace root-AQ on the line ABOVE with a real language! :)

      # Set an optional server info and connecting banner image url.
      # Size doesn't matter, any banner sized image will be fine.
      #sets banner_detail "https://url.to/image.png"
      #sets banner_connecting "https://url.to/image.png"

      # Set your server's hostname. This is not usually shown anywhere in listings.
      sv_hostname "FXServer, but unconfigured"

      # Set your server's Project Name
      sets sv_projectName "My FXServer Project"

      # Set your server's Project Description
      sets sv_projectDesc "Default FXServer requiring configuration"

      # Nested configs!
      #exec server_internal.cfg

      # Loading a server icon (96x96 PNG file)
      #load_server_icon myLogo.png

      # convars which can be used in scripts
      set temp_convar "hey world!"

      # Remove the `#` from the below line if you want your server to be listed as 'private' in the server browser.
      # Do not edit it if you *do not* want your server listed as 'private'.
      # Check the following url for more detailed information about this:
      # https://docs.fivem.net/docs/server-manual/server-commands/#sv_master1-newvalue
      #sv_master1 ""

      # Add system admins
      add_ace group.admin command allow # allow all commands
      add_ace group.admin command.quit deny # but don't allow quit
      add_principal identifier.fivem:1 group.admin # add the admin to the group

      # enable OneSync (required for server-side state awareness)
      set onesync on

      # Server player slot limit (see https://fivem.net/server-hosting for limits)
      sv_maxclients 48

      # Steam Web API key, if you want to use Steam authentication (https://steamcommunity.com/dev/apikey)
      # -> replace "" with the key
      set steam_webApiKey ""

      # License key for your server (https://keymaster.fivem.net)
      # license key needs to be changed depending on what the user enters 
      sv_licenseKey changeme
      ]
----------------------------------------------------------------------------------------------------------------------------------------------------------------
