#!/bin/bash
a2dissite 000-default
a2ensite contapache
apache2ctl -D FOREGROUND 
