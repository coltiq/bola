#!/bin/bash

set -e

echo -e "\nUpdating (ctrl+c to abort)...\n"

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Bola..."
rm -rf ~/.local/share/bola
git clone -b go https://github.com/coltiq/bola.git ~/.local/share/bola

