# set Zsh as your default Tmux shell
set-option -g default-shell /usr/bin/zsh

# UTF is great, let us use that
set -g utf8
set-window-option -g utf8 on

# Tmux should be pretty, we need 256 color for that
set -g default-terminal "screen-256color"


# Tmux uses a 'control key', let's set it to 'Ctrl-a'
# Reason: 'Ctrl-a' is easier to reach than 'Ctrl-b'
set -g prefix C-a
unbind C-b

# command delay? We don't want that, make it short
set -sg escape-time 1

# Set the numbering of windows to go from 1 instead
# of 0 - silly programmers :|
set-option -g base-index 1
setw -g pane-base-index 1


# Allow us to reload our Tmux configuration while
# using Tmux
bind r source-file ~/.tmux.conf \; display "Reloaded!"

# Getting interesting now, we use the vertical and horizontal
# symbols to split the screen
bind | split-window -h
bind - split-window -v
