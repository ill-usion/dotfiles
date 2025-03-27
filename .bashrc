#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lsr='ls --color=auto --recursive'
alias grep='grep --color=auto'
PS1='\u@\h \W \$ '

alias cam="~/.config/scripts/start-phone-cam.sh"
alias spp='~/.config/scripts/set-power-profile.sh'
alias hyprcfg='sudo vim ~/.config/hypr/hyprland.conf'
alias waybarcfg='sudo vim ~/.config/waybar/config.jsonc'
TERM=xterm-256color
. "$HOME/.cargo/env"

# Load Pywal colors
if [ -f "$HOME/.cache/wal/sequences" ]; then
    cat "$HOME/.cache/wal/sequences"
fi

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
