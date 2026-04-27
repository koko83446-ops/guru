#!/bin/bash
# install_swaks.sh

echo "Updating package list..."
apt-get update

echo "Installing swaks..."
apt-get install -y swaks

echo "Cleaning up to keep the deployment image small..."
apt-get clean
rm -rf /var/lib/apt/lists/*
