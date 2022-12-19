#!/bin/bash

sudo apt update && sudo apt upgrade 
echo "updated and upgraded all packages"

sudo apt install git && sudo apt install xz-utils 
echo "installed dependencies (git and xz-utils)"

# note to self: look at expect program for linux

echo "welcome to the fivem linux installer..."

echo -n "Your server name:"
read server_name
mkdir "$server_name"
echo "madedir $server_name"
cd $server_name
echo "cd into $server_name"

echo -n "Your name:"
read user_name
mkdir "$user_name"
echo "madedir"
cd $user_name
echo "cd into $username"

ls -l /usr/error 2> ls-error-file.txt


echo "start of server install"
wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/5848-4f71128ee48b07026d6d7229a60ebc5f40f2b9db/fx.tar.xz

echo "hit: https://runtime.fivem.net"
tar xf fx.tar.xz

echo "extraction complete"
git clone https://github.com/citizenfx/cfx-server-data.git 
echo "got server data"

cd ~/$server_name/server-data && bash ~/$server_name/server/run.sh +exec server.cfg
echo "server install worked"



echo "removing unnecessary files"
rm fx.tar.xz
echo "starting server..."
./run.sh

look at standard error to make error log for this script 
#cd ~/FXServer/server-data && bash ~/FXServer/server/run.sh +exec server.cfg
   



