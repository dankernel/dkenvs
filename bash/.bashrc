# .bashrc

# User specific aliases and functions
export TERM='xterm-256color'
export LS_COLORS="di=91;40":"ex=0;42":"ln=96;40":"so=93;40"

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

# Cd
alias u='cd ../'
alias uu='cd ../../'

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1="\[\033[35m\][\u@\w]\[\033[00m\] $ "

