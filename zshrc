# Path to your oh-my-zsh installation.
  export ZSH=/home/kistler/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Disable renaming of tmux windows
DISABLE_AUTO_TITLE="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(vi-mode)

# User configuration

  export PATH="/home/kistler/.local/bin:/home/kistler/bin:/home/kistler/.local/bin:/home/kistler/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

function gc()
{
    git checkout "$*";
    git pull;
    git submodule update
}

__complete_git_branch_names () {

  compadd "${(@)${(f)$(git branch -a)}#??}"
}

compdef __complete_git_branch_names gc

alias start="cd ~/como/comong-software/Docker; ./como_docker.sh como_dev"
alias stop="cd ~/como/comong-software/Docker; ./como_docker.sh stop como_dev"
alias update="cd ~/como/comong-software/Docker; ./como_docker.sh rm; ./como_docker.sh como_dev"
alias stat="git status"
alias master="cd ~/como/comong-software; git checkout master; git pull origin master; git submodule update"
alias release="cd ~/como/comong-software; git checkout release-1.0; git pull origin release-1.0; git submodule update"
alias commit="git commit -a"
alias gp="git rev-parse --abbrev-ref HEAD | xargs git push origin"
alias gui-build="cd ~/como/comong-software/GUI; gulp cleanAll; gulp"
alias backend-build="cd ~/como/comong-software/Docker; ./build_yocto.sh"
alias como-build="cd ~/como/comong-software/Docker; ./build_all_clean.sh"
alias yocto-build="cd ~/como/como-build/; source poky/oe-init-build-env build-comong64-board/"
alias deploy="cd ~/como/comong-software/Docker; ./deploy_comong.sh"
alias core-dir="cd ~/como/comong-software/Core"
alias yocto-dir="cd ~/como/como-build"
alias gui-watch="cd ~/como/comong-software/GUI; gulp cleanAll; gulp; gulp watch"
alias logs="docker logs --follow"
alias install-dir="cd ~/como/install"
alias docker-dir="cd ~/como/comong-software/Docker"
alias target="ssh root@comong-target"
alias usbin='echo "USB__IN" | tee /home/kistler/como/install/ApplicationFiles/usbEvents'
alias usbout='echo "USB_OUT" | tee /home/kistler/como/install/ApplicationFiles/usbEvents'
