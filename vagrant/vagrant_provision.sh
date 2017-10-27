#!/usr/bin/env bash
set -e

echo "Setting locale..."
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

sudo kill -9 $(lsof -t /var/lib/dpkg/lock) || true
sudo apt-get update

## Java 8
echo "Provisioning Java JDK..."

sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update 
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install oracle-java8-set-default -y

echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /home/vagrant/.bashrc
