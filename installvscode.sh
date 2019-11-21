#!/bin/sh
wget https://packagecloud.io/headmelted/codebuilds/gpgkey | sudo apt-key add
sudo . <( wget -O - https://code.headmelted.com/installers/apt.sh )
sudo apt-get install code-oss=1.29.0-1539702286
sudo apt-mark hold code-oss