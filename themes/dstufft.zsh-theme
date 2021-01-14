setopt PROMPT_SUBST

get_prompt_char () {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo 'Hg' && return
    echo 'o'
}

get_virtualenv_info () {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

get_git_prompt () {
    CHANGE_COUNT=$(git status 2>/dev/null | grep 'modified\|Untracked files' | wc -l)
    if [ "$CHANGE_COUNT" -ne "0" ]; then
        GIT_CHANGE=`echo " %{%F{red}%}  ${CHANGE_COUNT}%{%f%{%f%}%}"`
    else
        GIT_CHANGE=""
    fi
    git branch >/dev/null 2>/dev/null && \
        echo " %{%F{yellow}%} "`git branch --show-current 2>/dev/null`"$GIT_CHANGE%{%f%}"
}

export PS1='
%{%F{blue}%}%n%\@%m%{%f%} in %{%F{green}%}%{%B%}%~%{%b%}%{%f%}$(get_git_prompt)
$(get_virtualenv_info)$(get_prompt_char) '

