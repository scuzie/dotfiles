<div align="center">

 # scuzie's ~/.dotfiles

 </div>

 ![Arch](screenshots/desktop.png)

 <div align="center">

 ***"dotfiles are not meant to be forked"***

 ![Fuck it Ship it](https://img.shields.io/badge/Fuck%20it-Ship%20it-blueviolet)

 </div>

 ## Preview

 <details>
     <summary><a href="https://github.com/zsh-users/zsh">Zsh</a> including <a href="https://github.com/ohmyzsh/ohmyzsh">oh-my-zsh</a> & <a href="https://github.com/starship/starship">starship</a></summary>
     <p><img src="screenshots/desktop.png"></p>
 </details>

 <details>
     <summary><a href="https://github.com/Airblader/i3">i3-gaps</a> window manager</summary>
     <p><img src="screenshots/desktop.png"></p>
 </details>

 <details>
     <summary><a href="https://github.com/neovim/neovim">Neovim</a> using <a href="https://github.com/neoclide/coc.nvim">coc.nvim</a></summary>
     <p><img src="screenshots/desktop.png"></p>
 </details>

 <details>
     <summary><a href="https://github.com/davatorium/rofi">Rofi</a> application launcher</summary>
     <p><img src="screenshots/desktop.png"></p>
 </details>

 ## Beyond

 software | usage
 ------|---------
 [picom](https://github.com/yshui/picom) | lightweight compositor for X11
 [feh](https://github.com/derf/feh) | image viewer
 [vivid](https://github.com/sharkdp/vivid) | LS_COLORS generator
 [playerctl](https://github.com/altdesktop/playerctl) | command-line media player control
 [bat](https://github.com/sharkdp/bat) | cat(1) clone with wings
 [dunst](https://github.com/dunst-project/dunst) | notifcation daemon

 ## Installation

 As dotfiles are something very personal this repository does not provide an install script. Clone this repository and cherry-pick the parts you like.

 #### Filesystem

 In case you like my dotfiles and want to take them over, remember that the given repository structure is **NOT** identical to your local directory tree. In case you are wondering; this is how it could look like.

 ```bash
 /
 ├── etc
 │   └── lightdm
 │       ├── lightdm.conf
 │       └── lightdm-mini-greeter.conf
 └── home
     └── $HOME
         ├── $PICTURES
         │   ├── samurai.png
         │   └── serenity.png
         ├── .config
         │   ├── alacritty
         │   │   └── alacritty.yml
         │   ├── bat
         │   │   └── config
         │   ├── dunstrc
         │   ├── i3
         │   │   ├── config
         │   │   ├── status.toml
         │   │   └── power.sh
         │   ├── nvim
         │   │   ├── coc-settings.json
         │   │   └── init.vim
         │   ├── picom.conf
         │   ├── rofi
         │   │   ├── config
         │   │   └── onedark.rasi
         │   └── starship.toml
         ├── .gitconfig
         ├── .gitmessage
         ├── .xinitrc
         ├── .zshenv
         └── .zshrc
 ```

 ## Credits

 https://github.com/Stupremee/dotfiles
 https://github.com/vbe0201/dotfiles
 https://github.com/da-edra/dotfiles
