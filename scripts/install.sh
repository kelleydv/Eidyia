#!/bin/bash


# Install script to provision box/server

curUser=$(whoami)
if [[ $curUser=="vagrant" ]]
then
    # The next two lines set up vagrant to always log you in to the shared
    # directory so that your work is easily visible/accessible from the host.
    cd /vagrant
    echo "cd /vagrant" | sudo tee -a ~vagrant/.profile
else
    # If you are actually deploying this on a server somewhere, then here is
    # where you should set up the server directories
    echo "Not implemented"
fi

if [[ ! $PROFILEADDITIONS ]]
then
    cat config/profile_additions | sudo tee -a ~vagrant/.profile
fi

# OS
sudo apt-get update

# Tools
sudo apt-get -y install build-essential # g++, make, etc.
sudo apt-get -y install git curl

# MongoDB
sudo apt-get install -y mongodb-server

# Python
sudo apt-get -y install python3-setuptools
sudo apt-get -y install python3-dev
sudo apt-get -y install python3-pip

sudo pip3 install pymongo # python interface for mongodb
sudo pip3 install requests requests_oauthlib

# scientific stack
sudo apt-get -y install gfortran # numpy dependency
sudo apt-get -y install python3-nose # for testing numpy
sudo apt-get -y install python3-numpy
sudo apt-get -y install python3-matplotlib
sudo apt-get -y install python3-scipy
sudo apt-get -y install python3-pandas
sudo apt-get -y install ipython3
sudo apt-get -y install ipython3-notebook

mkdir nb
cd nb

#download some example notebooks 
git clone https://github.com/jrjohansson/scientific-python-lectures.git

#start the notebook server
ipython3 notebook  --ip='0.0.0.0'