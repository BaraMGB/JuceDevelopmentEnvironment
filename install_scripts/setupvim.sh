#!/bin/bash

if [ "$SUDO_USER" ]; then
    HOME_DIR=$(getent passwd "$SUDO_USER" | cut -d: -f6)
else
    HOME_DIR=$HOME
fi

mkdir -p $HOME_DIR/.config
cd $HOME_DIR/.config

git clone https://github.com/BaraMGB/kickstart.nvim.git nvim

sudo chown -R $SUDO_USER:$SUDO_USER $HOME_DIR/.config/nvim
