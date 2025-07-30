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

echo "Setting up folder and config files"
target_dir="fohn-ui/local"
sudo mkdir -p "$target_dir" && sudo cp .devcontainer/config/config.local.php "$target_dir/"
sudo mkdir -p "fohn-ui/build/logs" && sudo chmod 777 fohn-ui/build/logs
sudo mkdir -p "fohn-ui/build/coverage" && sudo chmod 777 fohn-ui/build/coverage
sudo chmod 777 fohn-ui/local/*
sudo cp .devcontainer/config/ui-test-config.local fohn-ui/test

echo "Starting Apache server..."
sudo service apache2 start
