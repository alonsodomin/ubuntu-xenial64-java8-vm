#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y install curl

# You can install anything you need here.

apt-get install -y software-properties-common
add-apt-repository -y ppa:webupd8team/java
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

apt-get -y update
apt-get -y upgrade
apt-get install -y oracle-java8-installer oracle-java8-set-default

