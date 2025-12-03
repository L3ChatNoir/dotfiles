# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR=nvim
export VISUAL=nvim
export BROWSER=firefox

# XDG Base Directory
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_STATE_HOME="${HOME}/.local/state"

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

# RUST Cargo
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
