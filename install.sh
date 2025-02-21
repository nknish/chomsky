#!/bin/bash

# move everything to the right place
echo "installing chomsky..."
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

cd ~
echo "successfully installed! try the command 'chomsky' or 'chomsky 3' to get started."