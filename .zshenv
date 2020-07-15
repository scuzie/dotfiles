# ndless
export PATH="$HOME/Coding/nspire/Ndless/ndless-sdk/toolchain/install/bin:$HOME/Coding/nspire/Ndless/ndless-sdk/toolchain/../bin:${PATH}"

# path
export PATH="$PATH:/usr/local/sbin/:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/.local/bin"

# zsh
export ZSH="$HOME/.oh-my-zsh"

# language defaults
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# alacritty
export TERM="xterm-256color"
export TERMINAL=alacritty
export COLORTERM="truecolor"

# firefox
export BROWSER='firefox'

# nvim
export EDITOR='nvim'

# pictures
export PICTURES="$HOME/Pictures"

# cargo
export PATH="$PATH:$HOME/.cargo/bin"
export CARGO_TARGET_DIR="$HOME/.cargo/target"

# gradle
export PATH="$PATH:/opt/gradle/bin"

# go
export GOPATH="$HOME/Coding/go"
export PATH="$PATH:$GOPATH/bin"

# dart
export PATH="$PATH:/opt/dart-sdk/bin"

# ghidra
export GHIDRA_INSTALL_DIR="/opt/ghidra"

# flutter
export PATH="$PATH:/opt/flutter/bin"

# cpm
export CPM_SOURCE_CACHE="$HOME/.cache/CPM"

# ld
export LD_LIBRARY_PATH="/usr/local/lib:/usr/lib/"

# secret variables
source $HOME/.zsecrets
