export PATH="$HOME/.local/bin:$PATH"

[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/share/licenses/zsh-completions $fpath)

# Aliases
[ -f $HOME/.config/zsh/alias.sh ] && source $HOME/.config/zsh/alias.sh

# Aliases for tmux projects
[ -f $HOME/.config/tmux/aliases.sh ] && source $HOME/.config/tmux/aliases.sh

# Autoload colors
autoload -U colors && colors

# Prompt theme
# [ -f $HOME/.config/zsh/themes/dstufft.zsh-theme ] && source $HOME/.config/zsh/themes/dstufft.zsh-theme

#export LC_ALL=fi_FI.UTF-8
#export LC_CTYPE=fi_FI.UTF-8
export LC_CTYPE="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_MONETARY="fi_FI.UTF-8"
export LC_NAME="fi_FI.UTF-8"
export LC_ADDRESS="fi_FI.UTF-8"
export LC_TELEPHONE="fi_FI.UTF-8"
export LC_MEASUREMENT="fi_FI.UTF-8"
export LC_IDENTIFICATION="fi_FI.UTF-8"
export LC_ALL=
export LANG=en_US.UTF-8
export LANGUAGE=en_US
export EDITOR=nvim

export SSH_KEY_PATH="$HOME/.ssh/rsa_id"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export FUNCTIONS_CORE_TOOLS_TELEMETRY_OPTOUT=1
export ASPNETCORE_ENVIRONMENT=Local
export VSCODE=code
export NODE_VERSION="14.15.4"
export NVM_DIR="$HOME/.nvm"
export MANPAGER="nvim +Man!"
export MANWIDTH=999

# Parallels
export def_sysconfdir=/etc/init.d
# i3 blocks
export I3BLOCKS_SCRIPT_DIR=$HOME/.config/i3/i3blocks/scripts

# nvm 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NODE_VERSIO="14.15.4"
nvm use $NODE_VERSION

