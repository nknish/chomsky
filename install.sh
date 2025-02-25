#!/bin/bash

# polite introduction
echo "installing chomsky..."

# check/adjust permissions
if [ ! -w /usr/local/bin ]; then
    echo "oops, i can't write to /usr/local/bin. enter password to change permissions"
    sudo chmod u+w /usr/local /usr/local/bin /usr/local/share
fi

# move everything to the right place
cp chomsky /usr/local/bin
mkdir -p /usr/local/share/chomsky
cp -r words /usr/local/share/chomsky
chmod +x /usr/local/bin/chomsky

# delete everything safely
if [ "$(basename "$(pwd)")" = "chomsky" ]; then
    echo "deleting installer directory at $(pwd)..."
    rm -rf "$(pwd)"
else
    echo "error: could not locate and delete installer directory"
fi

# finish up
cd ~
echo "successfully installed! try the command 'chomsky' or 'chomsky 3' to get started."