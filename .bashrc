function __prompt_command()
{
    local ExitCode="$?"

    local None='\[\e[0m\]'
    local Red='\[\e[1;31m\]'
    local Green='\[\e[1;32m\]'
    local Blue='\[\e[1;34m\]'
    local White='\[\e[1;37m\]'

    local UserColor=${Green}
    [[ $UID -eq "0" ]] && UserColor=${Red}

    local PwdMaxLength=50
    local TruncSymbol="..."
    local Dir=${PWD##*/}
    PwdMaxLength=$(( ( PwdMaxLength < ${#Dir} ) ? ${#Dir} : PwdMaxLength ))
    NewPwd=${PWD/#$HOME/\~}
    local PwdOffset=$(( ${#NEW_PWD} - PwdMaxLength ))
    if [ ${PwdOffset} -gt "0" ]; then
        NewPwd=${NewPwd:$PwdOffset:$PwdMaxLength}
        NewPwd=${TruncSymbol}/${NewPwd#*/}
    fi

    PS1="${White}[${UserColor}\u${White}@${UserColor}\h${White}] - [${Blue}${NewPwd}${White}]\n"

    [[ $ExitCode == 0 ]] && PS1+="${Green}$ ${None}" || PS1+="${Red}$ ${None}"
}

PROMPT_COMMAND=__prompt_command

[[ -s ~/.bash_aliases ]] && source ~/.bash_aliases
