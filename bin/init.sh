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
go_version=go1.15.2.linux-amd64.tar.gz
wget -c https://golang.org/dl/$go_version
shasum -a 256 $go_version
tar -C /usr/local -svzf $(go_version)
export PATH=$PATH:/usr/local/go/bin
