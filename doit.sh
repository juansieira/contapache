#!/bin/bash
echo "Realizando acciones de apache\n"
a2dissite 000-default
a2ensite contapache
rm /var/www/html/index.html
apache2ctl -D FOREGROUND 
