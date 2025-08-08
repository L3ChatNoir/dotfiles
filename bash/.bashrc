# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export COLOR_MAIN="\033[38;5;99m"

# VIRTUAL ENV PROMPT
export VIRTUAL_ENV_DISABLE_PROMPT=1 # disable the default virtualenv prompt
function __virtualenv_ps1 {
    echo -e "${VIRTUAL_ENV:+[${COLOR_MAIN}${VIRTUAL_ENV##*/}\033[0m]}"
}
export PS1="╭[\[${COLOR_MAIN}\]\w\[\033[0m\]]\n├───[\[${COLOR_MAIN}\]🯅 \u@\H\[\033[0m\]]\n╰\$(__virtualenv_ps1)[\[${COLOR_MAIN}\]\$\[\033[0m\]] "

# XDG Base Directory
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_STATE_HOME="${HOME}/.local/state"

# Bash completion
export BASH_COMPLETION_USER_FILE="${XDG_CONFIG_HOME}/bash-completion/bash_completion"

# Readline
export INPUTRC="${XDG_CONFIG_HOME}/readline/inputrc"

# RUST Cargo
export CARGO_HOME="${XDG_DATA_HOME}/cargo"

# Ansible
export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"

# Java
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=${XDG_CONFIG_HOME}/java -Djavafx.cachedir=${XDG_CACHE_HOME}/openjfx"
# Gradle
export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"

# Python
export PYTHON_HISTORY="${XDG_STATE_HOME}/python_history"
export PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME}/python"
export PYTHONUSERBASE="${XDG_DATA_HOME}/python"

# Gnupg
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

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
