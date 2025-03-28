#!/bin/bash

# take some precautions
set -e
set -o pipefail

# get some filepaths
TARGET_DIR="/usr/local/bin"
R_TARGET_DIR="/usr/local/share/chomsky"
EXE="chomsky"
R_SRC_DIR="words"
ORIGINAL_DIR=$(pwd)

# polite introduction
echo "
*******************************************
*******************************************
******** chomsky installer running ********    
*******************************************
*******************************************
"

# check for python
echo "1. checking for dependencies"
if ! command -v python3 &>/dev/null; then
    echo "you don't have python. this isn't going to work out..."
    exit 1
fi

# check for script, executable, resources
echo "2. checking for files"
if [ ! -d "chomsky" ]; then
    echo "script can't find itself? there's no coming back from that!"
    exit 1
fi
cd chomsky;

if [ ! -f "$EXE" ]; then
    echo "script can't find executable, exiting"
    exit 1
fi
if [ ! -d "$R_SRC_DIR" ]; then
    echo "script can't find word lists, exiting"
    exit 1
fi

# check/adjust sudo status
echo "3. checking for permissions"
if [ ! -w "$TARGET_DIR" ] || ([ ! -d "$R_TARGET_DIR" ] && [ ! -w "$(dirname "$R_TARGET_DIR")" ]); then
    echo "oops, i can't access to '$TARGET_DIR' or '$R_TARGET_DIR'. enter password to change permissions"
    sudo -v || {
        echo "no permission means no fun :("
        exit 1
    }
fi

# make target directories if necessary (but first check if resources dir exists)
echo "4. creating new directories (if necessary)"
R_EXISTS=false
if [ -d "$R_TARGET_DIR/$R_SRC_DIR" ]; then
    R_EXISTS=true
fi
mkdir -p "$TARGET_DIR"
mkdir -p "$R_TARGET_DIR"

# check if overwriting
echo "5. checking for an existing version"
if [ -f "$TARGET_DIR/$EXE" ] || [ "$R_EXISTS" = true ]; then
    echo "wait a sec. some of the files we're creating already exist. we'll have to overwrite them."
    read -p "keep going anyways? (y/n): " confirm
    if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
        echo "okay then, i guess this is it..."
        exit 1
    fi
fi

# move script and make it executable
echo "6. moving script and resources"
cp "$EXE" "$TARGET_DIR/$EXE"
chmod +x "$TARGET_DIR/$EXE"
cp -r "$R_SRC_DIR" "$R_TARGET_DIR"

# delete unnecessary files
if [ "$(basename "$(pwd)")" = "chomsky" ]; then
    echo "7. cleaning up installation files in $(pwd)"
    rm -rf "$(pwd)"
else
    echo "error: could not locate and delete installer directory"
fi

# finish up
cd "$ORIGINAL_DIR"
echo "
successfully installed! try 'chomsky' or 'chomsky 3' to get started"