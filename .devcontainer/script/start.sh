#!/bin/sh

composer -d fohn-ui update

echo "install js dependencies"
npm install --prefix fohn-js

echo "install css dependencies"
npm install --prefix fohn-css


echo "Copying local config"
target_dir="fohn-ui/local"
mkdir -p "$target_dir" && cp .devcontainer/config/config.local.php "$target_dir/"



echo "Starting Apache server..."
sudo service apache2 start
