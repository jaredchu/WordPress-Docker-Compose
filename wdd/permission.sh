#!/usr/bin/env bash

# Get the current path
FILEDIR=$(dirname "$0");
BASEDIR=$FILEDIR/../;

# www-data must have the permission on project
sudo chown -R $USER:www-data $BASEDIR/*;

# @TODO: THIS IS UNSECURED IF YOU ARE USING A SHARED HOST
find $BASEDIR/ -type d -exec chmod 775 {} \;
find $BASEDIR/ -type f -exec chmod 664 {} \;
