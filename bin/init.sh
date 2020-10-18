#!/bin/bash
# Make sure user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# install dependencies
apt-get update -y
apt-get install git -y
apt-get install wget -y

# Install compilers
wget -c https://golang.org/dl/go1.15.2.linux-amd64.tar.gz
shasum -a 256 go1.15.2.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.15.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
