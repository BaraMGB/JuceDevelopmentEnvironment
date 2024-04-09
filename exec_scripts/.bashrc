# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

$path
# set <caps lock> as <ESC>
setxkbmap -option caps:escape
setxkbmap de
dconf write "/org/gnome/desktop/input-sources/xkb-options" "[ 'caps:swapescape']"

# aliases
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
eval "$(starship init bash)"
