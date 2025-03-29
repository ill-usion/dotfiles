#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\u@\h \W \$ '
TERM=xterm-256color

alias ls='ls --color=auto'
alias lsr='ls --color=auto --recursive'
alias grep='grep --color=auto'

alias cam="~/.config/scripts/start-phone-cam.sh"
alias spp='~/.config/scripts/set-power-profile.sh'
alias hyprcfg='sudo vim ~/.config/hypr/hyprland.conf'
alias waybarcfg='sudo vim ~/.config/waybar/config.jsonc'

# Load Pywal colors
if [ -f "$HOME/.cache/wal/sequences" ]; then
    cat "$HOME/.cache/wal/sequences"
fi

# cargo
. "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
