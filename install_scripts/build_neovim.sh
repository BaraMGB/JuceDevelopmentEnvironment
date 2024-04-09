#!/bin/sh

cd
mkdir -p Projects
cd ~/Projects/
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install
