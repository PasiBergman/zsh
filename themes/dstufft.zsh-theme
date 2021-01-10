function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo 'Hg' && return
    echo 'o'
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

export PROMPT='
%{$fg[magneta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{%reset_color%} in %{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info)
$(virtualenv_info)$(prompt_char) '

export ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magneta]%}"
export ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
export ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[gree]%}!"
export ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
export ZSH_THEME_GIT_PROMPT_CLEAN=""
