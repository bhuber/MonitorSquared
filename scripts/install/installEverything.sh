#!/bin/bash

# This script produces a ton of output, so you should probably call it as follows:
# ./installEverything.sh 2>&1 | tee installEverything.log

if [[ $(whoami) != "root" ]]; then
	echo "You must run this script as root or it won't work"
	exit 1;
fi

PROJECT_ROOT="../.."
USERNAME="YOUR_LOCAL_USERNAME"

echo "Make sure to set the USERNAME variable to the correct value before running this script (current value is $USERNAME)"
echo "Once you have, comment out the exit command after this echo message"
exit

#apt-get install python-django
apt-get install python2.7 python-setuptools python-pip
apt-get install postgresql
pip install virtualenv

cd $PROJECT_ROOT/py
su -c "virtualenv --no-site-packages venv" $USERNAME
su -c "./venv/bin/easy_install django" $USERNAME

