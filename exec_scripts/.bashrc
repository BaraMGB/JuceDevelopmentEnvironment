# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! echo "$PATH" | grep -q "$HOME/.local/bin:$HOME/bin:"; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d "$HOME/.bashrc.d" ]; then
    for rc in "$HOME/.bashrc.d"/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

# Clean up
unset rc

# Keyboard configuration
# Note: The setxkbmap command is not shell-specific, but you should ensure it's executed in a graphical session
setxkbmap -option caps:escape
setxkbmap de
# Note: The dconf command is also not shell-specific, but make sure it's executed in a Gnome session
dconf write "/org/gnome/desktop/input-sources/xkb-options" "['caps:swapescape']"

# Aliases
alias ls='ls --color=auto'
alias ll='ls -la'
alias vim='nvim'
alias vconf='cd ~/.config/nvim/lua/custom/ && nvim'
alias ide='cd ~/Projects/NextStudio/ && nvim'
alias cls='clear'
alias ndir='cd ~/Projects/NextStudio/'
alias ndebug='ndir && bash ./build.sh d && ./start.sh'
alias nreldeb='ndir && bash ./build.sh rd && ./start.sh'
alias nbuild='ndir && bash ./build.sh r && ./start.sh'
alias gst='git status'

# Starship prompt initialization
eval "$(starship init bash)"

