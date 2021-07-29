# add subfolders of .local/bin to PATH
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# default apps
export EDITOR="nvim"
export TERMINAL="alacrity"
export BROWSER="brave"
export FILE="ranger"
export STATUSBAR="polybar"

# XDG
export XDG_DESKTOP_DIR="$HOME/"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# might break wm
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

# mitigating trash in ~
# https://wiki.archlinux.org/title/XDG_Base_Directory

# zsh
export ZDOTDIR="$HOME/.config/zsh"
export HISTFILE="$XDG_DATA_HOME"/zsh/history

# redis
export REDISCLI_HISTFILE="$XDG_DATA_HOME"/redis/rediscli_history
export REDISCLI_RCFILE="$XDG_CONFIG_HOME"/redis/redisclirc

# self explanetory
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export LESSHISTFILE="-"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export WGETRC="$HOME/.config/wget/wgetrc"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export K9SCONFIG="$XDG_CONFIG_HOME"/k9s
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export GOPATH="$XDG_DATA_HOME"/go
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default

# unstable
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_CACHE_HOME/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"

# path
export PATH="$PATH:$CARGO_HOME"/bin
export PATH="$PATH:$GOPATH"/bin
export PATH="$HOME/.edgedb/bin:$PATH"

# store ipfs on HDD
export IPFS_PATH=$HOME/HDD1/ipfs

# uncomment for sway
#if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
#  exec sway && $XDG_CONFIG_HOME/wayland/initrc
#fi

# start X
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx "$XDG_CONFIG_HOME/X11/xinitrc"
