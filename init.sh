#!/bin/bash
sh ./install_scripts/install_dependencies.sh
sh ./install_scripts/build_neovim.sh
sh ./install_scripts/setupvim.sh
sh ./install_scripts/install_setupJuceProject.sh
cp $(pwd)/exec_scripts/.bashrc ~/.bashrc
cp $(pwd)/exec_scripts/.zshrc ~/.zashrc

# setup mc (dark mode/vim/ hjkl for moving)
cp -rf $(pwd)/exec_scripts/mc ~/.config/
cp -f ~/.config/mc/mc.default.keymap /etc/mc/mc.default.keymap

# install starship promt
curl -sS https://starship.rs/install.sh | sh

sh ./install_scripts/install_nerd_font.sh   

