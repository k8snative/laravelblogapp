#!/bin/bash
cp /home/deployer/sites/.env /home/deployer/sites/laravelblogapp/
sudo chown -R deployer:deployer /home/deployer/sites/laravelblogapp

sudo -u deployer bash <<EOF
cd /home/deployer/sites/laravelblogapp

# Install/update dependencies
composer install --no-dev --prefer-dist --optimize-autoloader

# Set correct permissions for storage and cache
chmod -R 775 storage bootstrap/cache
EOF
