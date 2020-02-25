sudo chown -R $USER:$USER .;
sudo chown -R $USER:www-data wp-content;
find ./ -type d -exec chmod 775 {} \;
find ./ -type f -exec chmod 664 {} \;
