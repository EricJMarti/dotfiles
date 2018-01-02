__setup_ps1()
{
    local None='\[\e[0m\]'
    local Red='\[\e[1;31m\]'
    local Green='\[\e[1;32m\]'
    local Blue='\[\e[1;34m\]'
    local White='\[\e[1;37m\]'

    local UserColor=${Green}
    [[ $UID -eq "0" ]] && UserColor=${Red}

    PS1="${UserColor}\u${White}@${UserColor}\h${White} ${Blue}\${__new_pwd}\n\$([[ \$? == 0 ]] && echo '${Green}' || echo '${Red}')\$ ${None}"
}

__setup_ps1

__prompt_command()
{
    local PwdMaxLength=50
    local TruncSymbol="..."
    local Dir=${PWD##*/}
    PwdMaxLength=$(( ( PwdMaxLength < ${#Dir} ) ? ${#Dir} : PwdMaxLength ))
    local NewPwd=${PWD/#$HOME/\~}
    local PwdOffset=$(( ${#NEW_PWD} - PwdMaxLength ))
    if [ ${PwdOffset} -gt "0" ]; then
        NewPwd=${NewPwd:$PwdOffset:$PwdMaxLength}
        NewPwd=${TruncSymbol}/${NewPwd#*/}
    fi

    __new_pwd=$NewPwd
}

PROMPT_COMMAND=__prompt_command

[[ -s ~/.bash_aliases ]] && source ~/.bash_aliases
