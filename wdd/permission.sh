#!/usr/bin/env bash

# Get the current path
BASEDIR=$(dirname "$0")

# www-data must have the permission on wp-content folder
sudo chown -R $USER:$USER $BASEDIR;
sudo chown -R $USER:www-data $BASEDIR/wp-content;

# .htaccess should be writable by www-data
sudo chown $USER:www-data $BASEDIR/.htaccess;

# @TODO: THIS IS UNSECURED IF YOU ARE USING A SHARED HOST
find $BASEDIR/ -type d -exec chmod 775 {} \;
find $BASEDIR/ -type f -exec chmod 664 {} \;
