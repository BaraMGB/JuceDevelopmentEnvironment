#!/bin/sh

if [ "$SUDO_USER" ]; then
    HOME_DIR=$(getent passwd "$SUDO_USER" | cut -d: -f6)
else
    HOME_DIR=$HOME
fi

cd
mkdir -p $HOME_DIR/Projects
cd $HOME_DIR/Projects/
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo && make install

sudo chown -R $SUDO_USER:$SUDO_USER $HOME_DIR/Projects
