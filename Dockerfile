# Extend from wordpress:latest
# Feel free to add a version of WordPress
# I.e. wordpress:5.2.0
FROM wordpress:latest

# Set working directory
WORKDIR /var/www/html

# Add user for wordpress application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Correct chown the working dir
RUN chown -R www:www /var/www/html
