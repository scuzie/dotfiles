[[ $- != *i* ]] && return

export GPG_TTY=$(tty)

alias rm="rm -f"
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias tree="tree -a"
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias path='echo -e ${PATH//:/\\n}'
alias pacmir="reflector --latest 100 -p https --sort rate --save /etc/pacman.d/mirrorlist"
alias pac="pacman -Syyuu"
