#!/bin/bash
cd /home/deployer/sites/laravelblogapp
sudo cp .env /home/deployer/sites/
sudo rm -rf /home/deployer/sites/laravelblogapp/*
sudo rm -rf /home/deployer/sites/laravelblogapp/.*
