#!/bin/bash

echo "** Install jetpack"
sudo apt update
sudo apt install -y liblapack-dev python3-scipy libfreetype6-dev python3-pandas

echo "** Building..."
sudo pip3 install .\[jetpack]\

echo "** Installation successful"
