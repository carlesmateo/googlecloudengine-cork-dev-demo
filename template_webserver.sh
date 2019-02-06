#!/usr/bin/env bash
# Note: sudo is not necessary as the Startup script is always run as root
PATH_GIT="/root/"
PATH_WEB="/var/www/html/"
apt update
apt upgrade
# We always git
apt install -y git
# Download our Demo stuff
git clone https://github.com/carlesmateo/googlecloudengine-cork-dev-demo.git ${PATH_GIT}
# Copy to right place
cp ${PATH_GIT}index.php ${PATH_WEB}
mkdir ${PATH_WEB}img
cp ${PATH_GIT}*.png ${PATH_WEB}
# Nice tools to have
apt -y install htop ncdu mc lynx fatrace
# LAMP Installation
apt -y install apache2
apt -y install mysql-server
apt -y install php libapache2-mod-php
