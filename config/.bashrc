# .bashrc

# User specific aliases and functions
export TERM='xterm-256color'
export LS_COLORS="di=91;40":"ex=32;40":"ln=96;40":"so=93;40"

# Ls
alias ls='ls --color=auto -Ch'
alias l='ls --color=auto -al'
alias ll='ls --color=auto -Cthl'

# App
alias s='screen'
alias v='vim'
alias p='ping google.com'

# System
alias mv='mv -i'
alias c='clear'
alias noti='python3 ~/shell/notifications/telegram_main.py'

# Cd
alias u='cd ../'
alias uu='cd ../../'

move_to_trash () {
    mv "$@" ~/temp
}

alias rm='move_to_trash'

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1="\[\033[35m\][\u@\w]\[\033[00m\] $ "

