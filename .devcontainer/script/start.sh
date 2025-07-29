#!/bin/sh

echo "Starting Fohn development environment..."
echo "Installing Composer dependencies"
composer -d fohn-ui update

echo "install js dependencies"
npm install --prefix fohn-js

echo "install css dependencies"
npm install --prefix fohn-css

echo "Copying php config"
sudo cp .devcontainer/config/php/y-fohn-conf.ini /usr/local/etc/php/conf.d/y-fohn-conf.ini

echo "Copying app local config"
target_dir="fohn-ui/local"
sudo mkdir -p "$target_dir" && sudo cp .devcontainer/config/config.local.php "$target_dir/"


echo "Starting Apache server..."
sudo service apache2 start
