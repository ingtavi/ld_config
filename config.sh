#!/bin/sh

sudo apt-get install -y vim git nodejs npm curl

sudo npm install -g n

NODE_VERSION=8.0.0

sudo n $NODE_VERSION

sudo ln -sf /usr/local/n/versions/node/$NODE_VERSION/bin/node /usr/bin/node
sudo ln -sf /usr/local/n/versions/node/$NODE_VERSION/bin/npm /usr/bin/npm

sudo chown -R $USER:$(id -gn $USER) /home/android/.config
mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'
echo "export PATH=~/.npm-global:/usr/bin:$PATH" >> ~/.profile
