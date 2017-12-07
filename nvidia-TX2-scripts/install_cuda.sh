#!/bin/bash


#Download cuda-l4t: (arm64 only; not avaiable @developer.nvidia.com/embedded/downloads
wget --no-check-certificate http://developer.download.nvidia.com/devzone/devcenter/mobile/jetpack_l4t/006/linux-x64/cuda-repo-l4t-8-0-local_8.0.34-1_arm64.deb
sudo apt update
sudo apt search cuda


