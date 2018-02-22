#!/bin/sh
sleep 90
wget https://github.com/ethereum-mining/ethminer/releases/download/v0.13.0/ethminer-0.13.0-Linux.tar.gz
tar xzf ethminer-0.13.0-Linux.tar.gz
sudo apt-get update
sudo apt -qq --yes install gcc
sleep 60
sudo apt-get -qq install linux-headers-$(uname -r)
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo apt-get -qq update
sudo apt-get --yes --force-yes install cuda
sleep 600
ethminer -G -F http://eth-eu.dwarfpool.com/0x0572976de90e4ace565a8055848243d5d3ef65f4/worker$(echo $RANDOM)
