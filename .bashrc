#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='\u@\h \W \$ '
PS1='\[\e[1m\]\u\[\e[0m\] \[\e[2m\]\w\n\[\e[0m\]\\$ '
TERM=xterm-256color

alias ls='ls --color=never'
alias lsc='ls --color=never -1v | column'
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

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk

# conda
export PATH=/opt/miniconda3/bin:$PATH

# misc
export PATH=/usr/lib/jvm/java-21-openjdk/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/ahmed/.lmstudio/bin"
# End of LM Studio CLI section

printf "It's %s\n" $(date "+%T") | cowsay
