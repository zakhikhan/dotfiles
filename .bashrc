#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
set -o vi
# bind -m vi-command ".":insert-last-argument
bind -m vi-insert "\C-l.":clear-screen
bind -m vi-insert "\C-a.":beginning-of-line
bind -m vi-insert "\C-e.":end-of-line
# bind -m vi-insert "\C-w.":backward-kill-word
# alias ls='ls --color=auto'
PS1="[\u@\h] \$PWD\n > "
neofetch
. /usr/share/fzf/completion.bash
. /usr/share/fzf/key-bindings.bash

# Prevents saving commands that start with space
HISTCONTROL=ignoreboth

#Append bash history instead of overwriting to prevent losing stuff from other terminals
shopt -s histappend

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
export EDITOR='vim'

alias fman="compgen -c | fzf | xargs man"
alias ls='lsd'
alias cat='bat'
alias grep='grep --color=auto'

export FZF_DEFAULT_COMMAND='fd --type file --hidden --no-ignore'

alias sshal='mosh hal9000@192.168.29.29'
alias waypipehal='waypipe ssh hal9000@192.168.29.29'

export PATH="$PATH:$HOME/.cargo/bin"
