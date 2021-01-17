#!/bin/bash
alias ls="ls --color=auto"
alias dotfiles="$HOME/.config/zsh/script/dotfiles-status.sh"
alias dotfiles-status="$HOME/.config/zsh/script/dotfiles-status.sh"
alias dotfiles-pull="$HOME/.config/zsh/script/dotfiles-pull.sh"
alias brave="brave --disable-gpu"
alias vim="nvim"
alias vi="nvim"


# Reverse aliases. Open these filetypes with nvim
alias -s {cs,ts,js,html,htm,md,json,yml,yaml,vue}=nvim

alias mem=$'ps axc -o cmd,%mem --sort=-%mem | head -15 | awk \'{printf("%-20s %5s%\\n", $1, $2)}\''
alias cpu=$'ps axc -o cmd,%cpu --sort=-%cpu | head -15 | awk \'{printf("%-20s %5s%\\n", $1, $2)}\''
