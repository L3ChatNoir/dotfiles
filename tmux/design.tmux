#!/usr/bin/env bash

# $1: option
# $2: value
tmux_set() {
    tmux set-option -g "$1" "$2"
}
#-------------
# ICONS
#-------------

prefix_icon='⌃'
# rarrow='🭬'
# larrow='🭮'
# rarrow='🭐'
# larrow='🭅'
rarrow='🭀'
larrow='🭋'

session_icon=''
user_icon='🯅'

date_icon=' '
time_format='%H:%M'
date_format='%d-%m-%Y'

#----------------
# COLORS
#----------------

main='#875fff'
black="#292929"
background=default
#background='#FFFFFF' # debug
panes_border="#666666"
fg_highlight="#89ff29"

#------------
# Status Bar
#------------

# Status options
tmux_set status-interval 1
tmux_set status on

# Basic status bar colors
tmux_set status-style bg=default
tmux_set status-style fg=default
tmux_set status-attr none

# Left side of status bar
tmux_set status-left-bg "$background"
tmux_set status-left-length 150

# session
LS="#[fg=$main,bg=$black]$session_icon#S#[fg=$black,bg=$background]$rarrow"
tmux_set status-left "$LS"


# Right side of status bar
tmux_set status-right-bg "$background"
tmux_set status-right-length 150

RS="#[fg=$main,bg=$background]#{?client_prefix,$larrow#[bg=$black]#[reverse]$prefix_icon#[noreverse]#[bg=$main],}" #Prefix highlight
RS+="#[fg=$black]$larrow#[fg=$main,bg=$black]❰$time_format❱#[fg=$main,bg=$black]$larrow#[fg=$black,bg=$main]$date_icon$date_format "
tmux_set status-right "$RS"

# Window status format
tmux_set window-status-format         "#[reverse]$rarrow#[noreverse]#[fg=$main,bg=$black]#I🭲#W#F#[fg=$black,bg=$background]$rarrow"
tmux_set window-status-current-format "#[reverse]$rarrow#[noreverse]#[fg=$black,bg=$main,bold]#I🭲#W#F#[fg=$main,bg=$background,nobold]$rarrow"

# Window status style
tmux_set window-status-style          "fg=$black,bg=$background,none"
tmux_set window-status-last-style     "fg=$black,bg=$background,none"
tmux_set window-status-current-style  "fg=$main,bg=$background,none"
tmux_set window-status-activity-style "fg=$main,bg=$background,none"

# Window separator
tmux_set window-status-separator ""

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
tmux_set message-style "fg=$main,bg=$background"

# Command message
tmux_set message-command-style "fg=$main,bg=$background"

# Copy mode highlight
tmux_set mode-style "bg=$main,fg=$fg_highlight"
