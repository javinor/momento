
unset MAILCHECK

# History setup:
HISTCONTROL=ignoredups:ignorespace # don't put duplicate lines in the history. See bash(1) for more options
shopt -s histappend # append to the history file, don't overwrite it
HISTSIZE=4000 # Number of commands in history file
HISTFILESIZE=4000 # Number of lines in history file

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

#############################################################

#existing: (to run the original, use: `which ORIGINAL`)
alias du='du -shc'
alias cp='cp -i'
alias rm='rm -iv'
alias mv='mv -i'
alias cd='cd -P'
alias ls='ls -G'
alias top='top -o cpu'
alias grep='grep --color'
alias mkdir='mkdir -p'

#varients:
alias ll='ls -lhF'
alias la='`which ls` -la'
alias lh='`which ls` -la | `which grep` " \."' #only hidden

#bash utils:
alias gst='clear && git status'

# OSX specifics
[ `uname` == 'Darwin' ] || return

BASHCOMP="`brew --prefix`/etc/bash_completion"
[ -f "$BASHCOMP" ] && . "$BASHCOMP"

export LSCOLORS='gxfxcxdxbxegedabagaced'
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '

[ -s ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh
