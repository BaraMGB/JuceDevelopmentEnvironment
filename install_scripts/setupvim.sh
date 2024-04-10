#!/bin/bash

if [ "$SUDO_USER" ]; then
    HOME_DIR=$(getent passwd "$SUDO_USER" | cut -d: -f6)
else
    HOME_DIR=$HOME
fi

mkdir -p $HOME_DIR/.config
cd $HOME_DIR/.config

git clone https://github.com/NvChad/NvChad.git nvim -b v2.0
cd nvim/lua
git clone https://github.com/BaraMGB/nvchad_custom_settings.git custom
