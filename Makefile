# Default XDG variables if not set
XDG_CONFIG_HOME ?= ${HOME}/.config
XDG_DATA_HOME ?= ${HOME}/.local/share
XDG_CACHE_HOME ?= ${HOME}/.cache

# COLORS
COLOR_RESET = \033[0m
COLOR_RED = \033[0;31m
COLOR_GREEN = \033[0;32m
COLOR_CYAN = \033[0;36m
all: install

install: \
	install-bash \
	install-alacritty \
	install-readline \
	install-git \
	install-neovim \
	install-tmux \
	install-vim

install-alacritty:
	@echo -e '${COLOR_CYAN}==> ALACRITTY${COLOR_RESET}'
	rsync --archive --delete --verbose "alacritty" "${XDG_CONFIG_HOME}"

install-bash:
	@echo -e '${COLOR_CYAN}==> BASH${COLOR_RESET}'
	cp -v -a "./bash/." "${HOME}/"

install-ruff:
	@echo -e '${COLOR_CYAN}==> RUFF${COLOR_RESET}'
	rsync --archive --delete --verbose "ruff" "${XDG_CONFIG_HOME}"

install-readline:
	@echo -e '${COLOR_CYAN}==> READLINE${COLOR_RESET}'
	rsync --archive --delete --verbose "readline" "${XDG_CONFIG_HOME}"

install-git:
	@echo -e '${COLOR_CYAN}==> GIT${COLOR_RESET}'
	rsync --archive --delete --verbose "git" "${XDG_CONFIG_HOME}"

install-neovim:
	@echo -e '${COLOR_CYAN}==> NVIM${COLOR_RESET}'
	rsync --archive --delete --verbose "nvim" "${XDG_CONFIG_HOME}"

install-tmux:
	@echo -e '${COLOR_CYAN}==> TMUX${COLOR_RESET}'
	rsync --archive --delete --verbose "tmux" "${XDG_CONFIG_HOME}"

install-vim:
	@echo -e '${COLOR_CYAN}==> VIM${COLOR_RESET}'
	rsync --archive --delete --verbose "vim" "${XDG_CONFIG_HOME}"


.PHONY: *
