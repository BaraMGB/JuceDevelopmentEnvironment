#!/bin/bash

if [ "$SUDO_USER" ]; then
    HOME_DIR=$(getent passwd "$SUDO_USER" | cut -d: -f6)
else
    HOME_DIR=$HOME
fi

git clone https://github.com/BaraMGB/setup_juce_project.git 

mkdir -p $HOME_DIR/bin
ln -s $(pwd)/setup_juce_project/setup_juce_project.sh $HOME_DIR/bin/setup_juce_project

