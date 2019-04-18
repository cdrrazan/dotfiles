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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

#System 
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

# Terminal-Config
export NVM_DIR="/home/cdrrazan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
PROMPT="\$(~/.rvm/bin/rvm-prompt s i v g)%{$fg[yellow]%}[%*]"

#Initialize Z (https://github.com/rupa/z) 
. ~/.z.sh
source /home/cdrrazan/.oh-my-git/prompt.sh

#NODEJS
[[ -f /home/cdrrazan/.nvm/versions/node/v9.1.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/cdrrazan/.nvm/versions/node/v9.1.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh
source "/home/cdrrazan/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

#Volume-Config
alias uvolup='amixer -D pulse sset Master 5%+'
alias dvoldw='amixer -D pulse sset Master 5%-'

#Brightness
alias 100="brightness 275"

#Git
function gitup() {
    git add .
    git commit -a -m "$1"
    git push origin master
}

#oh-my-git
source /home/cdrrazan/.oh-my-git/prompt.sh

#Apps
alias viber='/opt/viber/Viber'
alias atom='atom.commands.dispatch(atom.views.getView(atom.workspace), 'window:toggle-full-screen')'

#Custom Program
alias keep="zsh .~/.gkeep/Keep"
alias joplin="./.joplin.sh"

#Make dir and cd into it.
function md() {
	mkdir -p "$@" && $_;
}

#Web Development Alias
alias r="bin/rspec --format documentation"
alias bers="bundle exec rspec"
alias msql="mysql --user=root --password=msandbox --host=127.0.0.1 --port=5724"

#System Deployment
alias heroku-deploy="git push heroku master && heroku run rake db:migrate && heroku restart"

#Path-Export
#Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.yarn/bin:$PATH"

#Custom Paths
export PATH="$PATH:$HOME/learnenough/ruby/shell/"
export EDITOR="subl -w"

#Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

#Custom MySQL Sandbox
PATH="/home/cdrrazan/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/cdrrazan/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/cdrrazan/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/cdrrazan/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/cdrrazan/perl5"; export PERL_MM_OPT;
alias msql=mysql --user=root --password=msandbox --host=127.0.0.1 --port=5724

#VIPS for Image Processing
export VIPSHOME=/usr/local
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$VIPSHOME/lib
export PATH=$PATH:$VIPSHOME/bin
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$VIPSHOME/lib/pkgconfig
export MANPATH=$MANPATH:$VIPSHOME/man
export PYTHONPATH=$VIPSHOME/lib/python2.7/site-packages
