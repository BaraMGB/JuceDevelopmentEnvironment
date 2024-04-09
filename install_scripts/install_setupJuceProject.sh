#!/bin/bash

git clone https://github.com/BaraMGB/setup_juce_project.git 

mkdir -p ~/bin
ln -s $(pwd)/setup_juce_project/setup_juce_project.sh ~/bin/setup_juce_project

