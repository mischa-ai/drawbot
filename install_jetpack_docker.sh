#!/bin/bash

echo "** Install jetpack"
apt update
apt install -y liblapack-dev python3-scipy libfreetype6-dev python3-pandas

echo "** Building..."
pip3 install .\[jetpack]\

echo "** Installation successful"
