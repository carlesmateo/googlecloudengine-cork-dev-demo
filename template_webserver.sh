#!/usr/bin/env bash
# Note: sudo is not necessary as the Startup script is always run as root
apt update
apt -y upgrade
# We always git
apt -y install git
# Download our Demo stuff
git clone https://github.com/carlesmateo/googlecloudengine-cork-dev-demo.git
# Nice tools to have
apt -y install htop ncdu mc lynx fatrace
# LAMP Installation
apt -y install apache2
apt -y install mysql-server
apt -y install php libapache2-mod-php
