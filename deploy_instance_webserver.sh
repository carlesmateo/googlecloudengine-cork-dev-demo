#!/usr/bin/env bash
apt update
apt upgrade
apt install -y git
apt install -y apache2
cat <<EOF > /var/www/html/index.html
<html><body><h1>Hello World</h1>
<p>This page was created from a simple startup script!</p>
</body></html>
EOF
