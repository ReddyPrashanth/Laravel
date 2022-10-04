#! /bin/bash

export HOME=/root

export COMPOSER_ALLOW_SUPERUSER=1

# Change into app directory
cd /var/www/html/app

# Git pull code changes
# git pull origin master

# Install app dependencies
composer install --prefer-dist --no-ansi --no-interaction --no-progress --no-scripts

# Clear view cache
php artisan view:clear

# Clear application cache
php artisan cache:clear

# Change file permission of laravel files and folders
chmod 755 -R /var/www/html/app/

# Change file permissions of logs and cache folders
chmod 775 -R /var/www/html/app/storage/ /var/www/html/app/bootstrap/cache

# Change ownership of code files and folders
chown -R ubuntu:www-data /var/www/html/app/