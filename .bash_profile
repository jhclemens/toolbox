#  ------------------------------------------------------------------------
#  
#  Description: This file holds my bash configuration
#
#  Sections:
#  1. Environment configuration
#  2. Improve terminal
#  3. File management
#
#  ------------------------------------------------------------------------


#  ------------------------------------------------------------------------
#  1. Environment configuration
#  ------------------------------------------------------------------------

# Change prompt
export PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"

#   Set default blocksize for ls, df, du
export BLOCKSIZE=1k			# set default blocksize for ls,df,du

#  ------------------------------------------------------------------------
#  2. Improve terminal
#  ------------------------------------------------------------------------

alias ll='ls -FGltrAhp'			# Preferred 'ls' implementation
alias cp='cp -iv'                       # Preferred 'cp' implementation
alias mv='mv -iv'                       # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                 # Preferred 'mkdir' implementation
alias less='less -FSRXc'                # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }           # Always list directory contents upon 'cd'
alias cd..='cd ../'                     # Go back 1 directory level (for fast typers)
alias ..='cd ../'                       # Go back 1 directory level
alias ...='cd ../../'                   # Go back 2 directory levels
alias .3='cd ../../../'                 # Go back 3 directory levels
alias .4='cd ../../../../'              # Go back 4 directory levels
alias .5='cd ../../../../../'           # Go back 5 directory levels
alias .6='cd ../../../../../../'        # Go back 6 directory levels
alias edit='subl'                       # edit: Opens any file in sublime editor
alias f='open -a Finder ./'             # f:    Opens current directory in MacOS Finder
alias ~="cd ~"                          # ~:            Go Home
alias c='clear'                         # c:            Clear terminal display
alias which='type -all'                 # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'     # path:         Echo all executable Paths
alias show_options='shopt'              # Show_options: display bash options settings
alias fix_stty='stty sane'              # fix_stty:     Restore terminal settings when screwed up
mcd () { mkdir -p "$1" && cd "$1"; }    # mcd:          Makes new Dir and jumps inside
