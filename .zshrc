# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/cdrrazan/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

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
 DISABLE_AUTO_TITLE="true"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# System Config
# brightness
alias 100="brightness 275"

# volume
alias uvolup='amixer -D pulse sset Master 5%+'
alias dvoldw='amixer -D pulse sset Master 5%-'

# System Command Alias
alias update="sudo apt-get -y update"
alias upgrade="sudo apt-get upgrade"
alias dist-y="sudo apt-get dist-upgrade"
alias clean="sudo apt-get autoclean"
alias remove="sudo apt-get autoremove"
alias search="sudo apt-cache search"
alias logout='pkill -u cdrrazan'
alias hidden="ls -al"
alias c="clear"
alias up="cd .."
alias home="cd ~"
alias root="cd /"

alias full-update="/home/cdrrazan/Documents/Codes/Script/update.sh"
alias disk-mount="/home/cdrrazan/Documents/Codes/Script/disk.sh"

# Terminal Config
export NVM_DIR="/home/cdrrazan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# PROMPT="\$(~/.rvm/bin/rvm-prompt s i v g)%{$fg[yellow]%}[%*]"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# aliasme.
source ~/.aliasme/aliasme.sh

# fzf alias
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# colorLS
alias lc='colorls --sd'

# initialize Z (https://github.com/rupa/z)
. ~/.z.sh

# nodejs
[[ -f /home/cdrrazan/.nvm/versions/node/v9.1.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/cdrrazan/.nvm/versions/node/v9.1.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh

# Shell History
# only load it for interactive shells
if [[ $- == *i* ]] && command -v shellhistory-location &>/dev/null; then
    . $(shellhistory-location)
    shellhistory enable
fi

# spaceship zsh theme
source "/home/cdrrazan/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# theFUCK
eval $(thefuck --alias fuck)

### Bashhub.com Installation
#if [ -f ~/.bashhub/bashhub.zsh ]; then
#    source ~/.bashhub/bashhub.zsh
#fi

source ~/.commacd.sh

#source ~/.enhancd/init.sh

# GIT
# gitco
function gitco() {
    git add .
    git commit -a -m "$1"
}

# gitup
function gitup() {
    git add .
    git commit -a -m "$1"
    git push origin master
}

# git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias gcf='git log --pretty= --committer=cdrrazan --name-only  | sort -u'
alias gca='git log --author=cdrrazan'

# custom git aliases
alias gdf="git diff --dirstat=files,0 HEAD~1 | sed 's/^[ 0-9.]\+% //g'"

# git-extra-commands
plugins=( ... git-extra-commands )

# oh-my-git
# source /home/cdrrazan/.oh-my-git/prompt.sh

# Apps
alias viber='/opt/viber/Viber'
# alias atom='atom.commands.dispatch(atom.views.getView(atom.workspace), 'window:toggle-full-screen')'
alias retro="~/Downloads/Programs/Misc/Cool-Retro-Term-1.1.1-x86_64.AppImage & disown"

# Custom Command
# make dir and cd into it.
function md() {
	mkdir -p "$@" && $_;
}

# Custom Program
#alias keep="zsh .~/.gkeep/Keep"
#alias joplin="./.joplin.sh"
#alias slacky="slackadaisical"
alias trello="/opt/trello/Trello & disown"

# Web App Development
# Jetbrains RubyMine
alias mine="~/.local/bin/rubymine"

# MySQL Sandbox
alias msql="mysql --user=root --password=msandbox --host=127.0.0.1 --port=5724"

# Ruby on Rails
alias r="bin/rspec --format documentation"
alias bers="bundle exec rspec"

# RecognizeApp
# VPN
alias recognize_app="sudo openvpn --config client.ovpn --auth-user-pass --auth-retry interact"

# Smartkhata
alias smartkhata="rake db:drop && rake db:create && rake db:migrate && rake db:seed"

# Recognize
alias dev_recognize="RAILS_ENV=development bin/rake recognize:init"
alias test_recognize="RAILS_ENV=test bin/rake recognize:init"
alias planet_data="rake recognize:prep_planet"
alias initech_data="rake recognize:prep_initech"
alias office_data="rake recognize:prep_theoffice"

# Multiple Server
alias recognize_server="puma --config config/puma.rb --preload -b \"ssl://127.0.0.1:50000?key=$HOME/.ssl/server.key&cert=$HOME/.ssl/server.crt\""
alias recognize_alt_server="puma --config config/puma.rb --preload -b \"ssl://127.0.0.1:50001?key=$HOME/.ssl/server.key&cert=$HOME/.ssl/server.crt\""

# Web App Deployment
# Heroku
alias heroku-deploy="git push heroku master && heroku run rake db:migrate && heroku restart"

# Path-Export
# Custom Paths
export PATH="$PATH:$HOME/learnenough/ruby/shell/"
export EDITOR="subl -w"

# ASDF VM
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

#eval $(thefuck --alias)
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GoLang Path
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# MySQL Sandbox
PATH="/home/cdrrazan/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/cdrrazan/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/cdrrazan/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/cdrrazan/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/cdrrazan/perl5"; export PERL_MM_OPT;
alias msql=mysql --user=root --password=msandbox --host=127.0.0.1 --port=5724

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.yarn/bin:$PATH"

# RVM into a shell session *as a function*

# VIPS for Image Processing
export VIPSHOME=/usr/local
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$VIPSHOME/lib
export PATH=$PATH:$VIPSHOME/bin
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$VIPSHOME/lib/pkgconfig
export MANPATH=$MANPATH:$VIPSHOME/man
export PYTHONPATH=$VIPSHOME/lib/python2.7/site-packages

# Initialise zulu plugin manager
# source "${ZULU_DIR:-"${ZDOTDIR:-$HOME}/.zulu"}/core/zulu"
# zulu init

# xrandr function
alias monitor="xrandr --output HDMI-0 --scale 1.5x1.5"
alias display-x="xrandr --dpi 120"
alias brightness="xrandr --output eDP-1-1 --brightness 0.7"
alias dellmon="xrandr --output HDMI-0 --scale 1.2x1.2"

# SERVER SH
alias alpha="rails s"
alias delta="rails s -p 3001"
alias foxtrot="rails s -p 3002"
alias zulu="rails s -p 3003"

# Temporary Alias
alias rs="git checkout master && rvm use 2.3.1 && rails s"
alias rr="git checkout rb-upgrade-version && rvm use 2.6.5 && rails s"
alias process="rake db:drop && rake db:create && rake db:migrate && rake db:seed && rake demo:populate_client_accounts[demo] && rake fetch_companies['demo']"

export HISTTIMEFORMAT="%d/%m/%y %T "

alias fancy='/media/cdrrazan/dev1/Programs/Misc/eDEX-UI.Linux.x86_64.AppImage'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
