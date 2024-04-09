#!/bin/bash

mkdir -p ~/.config
cd ~/.config

git clone https://github.com/NvChad/NvChad.git nvim -b v2.0
cd nvim/lua
git clone https://github.com/BaraMGB/nvchad_custom_settings.git custom
