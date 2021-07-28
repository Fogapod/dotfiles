# Path to your oh-my-zsh installation.
export ZSH="$XDG_DATA_HOME/oh-my-zsh"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gentoo"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

plugins=(git common-aliases docker python pip ssh-agent kubectl cargo)

source $ZSH/oh-my-zsh.sh

source $XDG_CONFIG_HOME/aliasrc

# completion after pacman
zstyle ':completion:*' rehash true

# Easier copying of large files or directorys with rsync
function cpr() {
    rsync --archive -hh --partial --info=stats1 --info=progress2 --modify-window=1 "$@"
}

# Easier moving of large files or directorys with rsync
function mvr() {
    rsync --archive -hh --partial --info=stats1 --info=progress2 --modify-window=1 --remove-source-files "$@"
}
