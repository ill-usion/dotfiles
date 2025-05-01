#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='\u@\h \W \$ '
PS1='\[\e[1m\]\u\[\e[0m\] \[\e[2m\]\w\n\[\e[0m\]\\$ '
TERM=xterm-256color

alias ls='ls --color=auto'
alias lsr='ls --color=auto --recursive'
alias grep='grep --color=auto'

alias cam="~/.config/scripts/start-phone-cam.sh"
alias spp='~/.config/scripts/set-power-profile.sh'
alias hyprcfg='nvim ~/.config/hypr/hyprland.conf'
alias waybarcfg='nvim ~/.config/waybar/config.jsonc'
alias nvimcfg='nvim ~/.config/nvim/init.vim'
alias nv=nvim
alias logout="hyprctl dispatch exit"

alias uni="cd ~/Documents/Uni/Spring\ 2025"

# Load Pywal colors
if [ -f "$HOME/.cache/wal/sequences" ]; then
    cat "$HOME/.cache/wal/sequences"
fi

# cargo
. "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# android sdk
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export NDK_HOME=/opt/android-ndk

catnap
