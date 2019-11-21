#!/bin/sh
wget -O - https://packagecloud.io/headmelted/codebuilds/gpgkey | apt-key add
. <( wget -O - https://code.headmelted.com/installers/apt.sh )
apt-get install code-oss=1.29.0-1539702286
apt-mark hold code-oss
