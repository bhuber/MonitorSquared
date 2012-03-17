#!/bin/bash

# This script produces a ton of output, so you should probably call it as follows:
# ./installEverything.sh 2>&1 | tee installEverything.log

if [[ $(whoami) != "root" ]]; then
	echo "You must run this script as root or it won't work"
	exit 1;
fi

apt-get install python-django
apt-get install python-pip
apt-get install postgresql
pip install virtualenv

