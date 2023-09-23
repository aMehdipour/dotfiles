set fish_greeting ""

# export XDG_CONFIG_HOME=$HOME/.config

# editor
# export EDITOR="nvim"
# export VISUAL="nvim"

# fcitx5
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export GLFW_IM_MODULE=ibus
export WLR_NO_HARDWARE_CURSORS=1

# Clash
# export http_proxy=http://127.0.0.1:7890
# export https_proxy=$http_proxy
# export ftp_proxy=$http_proxy
# export rsync_proxy=$http_proxy
# export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

# fish_add_path ~/.cargo/bin/
# fish_add_path ~/.local/share/nvim/mason/bin/
# fish_add_path ~/.local/bin/
# fish_add_path ~/dotfiles/scripts/
#
fish_vi_key_bindings
set -g fish_vi_force_cursor 1
set fish_cursor_insert line
# set fish_cursor_replace_one underscore
# set fish_cursor_replace underscore
#
# # starship init fish | source
#
# set -x _ZO_ECHO 1
# zoxide init fish | source

# Aliases
alias up='cd ../'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../..../'
alias feesh='exec fish'
alias nv='nvim'
alias nvfi='nvim ~/.config/fish/config.fish'
alias nvaw='nvim ~/.config/awesome/rc.lua'
alias nvnv='nvim ~/.config/nvim/'
alias nvhypr='nv .config/hypr/hyprland.conf '
alias pac='sudo pacman -S'
alias pacy='sudo pacman -Syu'
alias eep='sleep'
alias repo='cd /home/amehdipour/repos/'
alias mp='cd /home/amehdipour/repos/MastersProject/'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'
alias gst='git status'
alias gc='git commit -m'
alias gb='git branch'
alias gco='git checkout'
alias glog='git log --oneline --decorate --graph'
alias gpl='git pull'

## Useful aliases
# Replace ls with exa
alias ls='exa -a --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -la --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles

# Tide Colors
set --global tide_git_bg_color "#f5c2e7"
set --global tide_git_bg_color_unstable "#eba0ac"
set --global tide_git_bg_color_urgent "#f38ba8"
set --global tide_status_bg_color_failure "#f38ba8"
set --global tide_time_bg_color "#b4befe"
set --global tide_pwd_bg_color "#89b4fa"
set --global tide_left_prompt_items os pwd git newline
set --global tide_git_icon \ue725
set --global tide_rustc_icon \uf323
set --global tide_rustc_bg_color "#fab387"
set --global tide_rustc_color "#fe640b"

# Fastfetch
fastfetch --logo arch --logo-color-1 blue --logo-color-2 blue --color magenta

