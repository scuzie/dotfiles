# gpg prompt for passphrase in tty
export GPG_TTY=$(tty)

# zsh modules
autoload -U colors && colors
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# include hidden files in completions
_comp_options+=(globdots)

export LS_COLORS="$(vivid generate jellybeans)"

# history
HISTFILE="$HOME/.zsh_history"
HIST_STAMPS="dd/mm/yyyy"
HISTSIZE=10000
SAVEHIST=10000

# exa
DISABLE_LS_COLORS=true

# options
setopt AUTO_CD
setopt CHASE_LINKS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_VERIFY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt ignore_eof

# useful command aliases
alias ls="exa"
alias cp="cp -i"
alias ps="procs"
alias tree="tree -a"
alias pacin="sudo pacman -S"
alias pacout="sudo pacman -R"
alias pacrem="sudo pacman -Rs"
alias 2pac="sudo pacman -Syyuu" 
alias pacache="sudo paccache -ruk0 && sudo pacman -Sc"
alias packill="sudo pacman -Rcns"
alias pacbig="sudo pacman -Qi | awk '/^name/{name=\$3} /^installed size/{print \$4\$5, name}' | sort -hr | sed '20'"
alias mirr="sudo reflector --latest 200 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias grep="grep --color=auto"
alias diff="diff --color=auto"

# auto-updates
DISABLE_AUTO_UPDATE=false
DISABLE_UPDATE_PROMPT=false

plugins=(
    cargo
    colorize
    copydir
    extract
    fzf
    gpg-agent
    safe-paste
)

# setup fzf
export PATH="${PATH:+${PATH}:}$HOME/.fzf/bin"
source "$HOME/.fzf/shell/key-bindings.zsh"

source $ZSH/oh-my-zsh.sh

# starship theme
eval "$(starship init zsh)"

# travis ci 
[ ! -s $HOME/.travis/travis.sh ] || source $HOME/.travis/travis.sh

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
