#!/bin/bash
# Note: sudo is not necessary as the Startup script is always run as root
PATH_GIT="/root/cork-demo/"
PATH_WEB="/var/www/html/"
apt update
apt -y upgrade
# We always git
apt install -y git
# Nice tools to have
apt install -y htop ncdu mc lynx fatrace iperf
# LAMP Installation
apt install -y apache2
apt install -y mysql-server
apt install -y php libapache2-mod-php
# Download our Demo stuff
git clone https://github.com/carlesmateo/googlecloudengine-cork-dev-demo.git ${PATH_GIT}
# Copy to right place
cp ${PATH_GIT}index.php ${PATH_WEB}
mkdir ${PATH_WEB}img
cp ${PATH_GIT}img/*.png ${PATH_WEB}img/
# Delete the original Apache file
rm ${PATH_WEB}index.html
