#!/bin/bash
echo "Starting installation process..."

echo "Installing dependencies..."
sh ./install_scripts/install_dependencies.sh

echo "Building Neovim..."
sh ./install_scripts/build_neovim.sh

echo "Setting up vim..."
sh ./install_scripts/setupvim.sh

echo "Installing and setting up Juce Project..."
sh ./install_scripts/install_setupJuceProject.sh


if [ "$SUDO_USER" ]; then
    HOME_DIR=$(getent passwd "$SUDO_USER" | cut -d: -f6)
else
    HOME_DIR=$HOME
fi

echo "Copying .bashrc and .zshrc files..."
cp $(pwd)/exec_scripts/.bashrc $HOME_DIR/.bashrc
cp $(pwd)/exec_scripts/.zshrc $HOME_DIR/.zshrc

echo "Setting up Midnight Commander (mc)..."
# setup mc (dark mode/vim/ hjkl for moving)
cp -rf $(pwd)/exec_scripts/mc $HOME_DIR/.config/

sudo cp -f $HOME_DIR/.config/mc/mc.default.keymap /etc/mc/mc.default.keymap

echo "Installing Starship prompt..."
# install starship promt
curl -sS https://starship.rs/install.sh | sh

echo "Installing Nerd Fonts..."
sh ./install_scripts/install_nerd_font.sh   

echo "Installation process completed successfully!"
