#!/usr/bin/env bash

# $1: option
# $2: value
tmux_set() {
    tmux set-option -g "$1" "$2"
}

time_format='%H:%M'
date_format='%d-%m-%Y'

#----------------
# COLORS
#----------------

main='#875fff'
black="#666666"
panes_border="#666666"
fg_highlight="#87d75f"

#------------
# Status Bar
#------------

# Status options
tmux_set status-interval 1
tmux_set status on
tmux_set status-justify absolute-centre

# Basic status bar colors
tmux_set status-style "fg=default,bg=default"
tmux_set status-attr none

# Left side of status bar

# session
LS="[#S]"

# Prefix highlight
LS+=" #[align=center]#{?client_prefix,⁽⌃⁾,}#[noalign]"
tmux_set status-left "$LS"
tmux_set status-left-style "fg=$main,bg=default"
tmux_set status-left-length 128
set -g status-middle "#[fg=green]#{session_name} #{window_list}"
# Right side of status bar

# Time and Date
RS+="($time_format $date_format)"
tmux_set status-right "$RS"
tmux_set status-right-style "fg=$main,bg=default"
tmux_set status-right-length 128

# Window status format
tmux_set window-status-format         "❲#I⋅#W⋅#F❳"
tmux_set window-status-current-format "❲#I⋅#W⋅#F❳"
tmux_set window-status-last-style     "❲#I⋅#W⋅#F❳"
tmux_set window-status-separator " "

# Window status style
tmux_set window-status-style          "fg=$black,bg=default,none"
tmux_set window-status-last-style     "fg=$black,bg=default,none"
tmux_set window-status-current-style  "fg=$main,bg=default,none"
tmux_set window-status-activity-style "fg=$main,bg=default,none"

#-------
# Panes
#-------

# Pane border
tmux_set pane-border-style "fg=$panes_border,bg=default"

# Active pane border
tmux_set pane-active-border-style "fg=$main,bg=default"

# Pane number indicator
tmux_set display-panes-colour "$panes_border"
tmux_set display-panes-active-colour "$main"

# Clock mode
tmux_set clock-mode-colour "$main"
tmux_set clock-mode-style 24

# Message
tmux_set message-style "fg=$main"

# Command message
tmux_set message-command-style "fg=$main"

# Copy mode highlight
tmux_set mode-style "bg=$main,fg=$fg_highlight"
