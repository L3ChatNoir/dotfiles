# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# VIRTUAL ENV PROMPT
export VIRTUAL_ENV_DISABLE_PROMPT=1 # disable the default virtualenv prompt
function __virtualenv_ps1 {
    echo -e "${VIRTUAL_ENV:+[${COLOR_MAIN}${VIRTUAL_ENV##*/}\033[0m]}"
}

export COLOR_MAIN="\033[38;5;99m"
export PS1="╭[\[${COLOR_MAIN}\]\w\[\033[0m\]]\n├───[\[${COLOR_MAIN}\]🯅 \u@\H\[\033[0m\]]\n╰\$(__virtualenv_ps1)[\[${COLOR_MAIN}\]\$\[\033[0m\]] "

# Bash completion
export BASH_COMPLETION_USER_FILE="${XDG_CONFIG_HOME}/bash-completion/bash_completion"

# Readline
export INPUTRC="${XDG_CONFIG_HOME}/readline/inputrc"

# History
export HISTFILE="${XDG_STATE_HOME}/bash/history" # USE XDG
export HISTSIZE=1000
export HISTFILESIZE=1000
export HISTCONTROL='erasedups' # no duplicate command
export HISTIGNORE='history *' # ignore command
export HISTTIMEFORMAT="%d/%m/%Y %H:%M:%S "

#-------
# ALIAS
#-------

alias c='clear'

# Editor
alias e='nvim'
alias v='nvim'

# PACKAGE MANAGER
alias install='sudo pacman -Syu'
alias remove='sudo pacman -Rns'
alias update='sudo pacman -Syu && yay -Sua'

# SUDO
alias fuck='sudo'
alias fucku='sudo'
alias plz='sudo'
alias please='sudo'

# COLORS
alias ls='ls --color=auto'
alias grep='grep --color=auto'
