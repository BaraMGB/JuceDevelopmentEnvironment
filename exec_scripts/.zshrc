# .zshrc

# Source global definitions (adjust if necessary for zsh)
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# Set PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:$HOME/bin:$HOME/bin/lua-language-server-3.7.4-linux-x64/bin/:"* ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$HOME/bin/lua-language-server-3.7.4-linux-x64/bin/:$PATH"
fi
export PATH

# Disabling systemctl's auto-paging feature if uncommented
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc_file in ~/.bashrc.d/*; do
		if [ -f "$rc_file" ]; then
			source "$rc_file"
		fi
	done
fi

unset rc_file

# Note: The $path variable seems to be a typo or unused, so it's omitted here.

# Keyboard configuration commands might need to be run outside of .zshrc, 
# such as in .xinitrc or another startup script, depending on your setup
# set <caps lock> as <ESC>
# setxkbmap -option caps:escape
# setxkbmap de
# dconf write "/org/gnome/desktop/input-sources/xkb-options" "[ 'caps:swapescape']"

# Aliases
alias ls='ls --color=auto'
alias ll='ls -la'
alias vim='nvim'
alias vconf='cd ~/.config/nvim/lua/custom/ && nvim'
alias ide='cd ~/Projects/NextSTudio/ && nvim'
alias cls='clear'
alias ndir='cd ~/Projects/NextSTudio/'
alias ndebug='ndir && bash ./build.sh d && ./start.sh'
alias nreldeb='ndir && bash ./build.sh rd && ./start.sh'
alias nbuild='ndir && bash ./build.sh r && ./start.sh'
alias gst='git status'

# Initialize starship prompt, adjusting for zsh
eval "$(starship init zsh)"

